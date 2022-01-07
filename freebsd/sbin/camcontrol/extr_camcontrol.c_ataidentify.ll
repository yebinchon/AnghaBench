; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_ataidentify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_ataidentify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i8*, i32 }
%union.ccb = type { i32 }
%struct.ata_params = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"couldn't allocate CCB\00", align 1
@arglist = common dso_local global i32 0, align 4
@CAM_ARG_VERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"%s%d: Raw identify data:\0A\00", align 1
@ATA_SUPPORT_PROTECTED = common dso_local global i32 0, align 4
@ATA_SUPPORT_AMAX_ADDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"%s%d: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_device*, i32, i32)* @ataidentify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ataidentify(%struct.cam_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cam_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.ccb*, align 8
  %9 = alloca %struct.ata_params*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cam_device* %0, %struct.cam_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.cam_device*, %struct.cam_device** %5, align 8
  %13 = call %union.ccb* @cam_getccb(%struct.cam_device* %12)
  store %union.ccb* %13, %union.ccb** %8, align 8
  %14 = icmp eq %union.ccb* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = call i32 @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %95

17:                                               ; preds = %3
  %18 = load %struct.cam_device*, %struct.cam_device** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load %union.ccb*, %union.ccb** %8, align 8
  %22 = call i64 @ata_do_identify(%struct.cam_device* %18, i32 %19, i32 %20, %union.ccb* %21, %struct.ata_params** %9)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load %union.ccb*, %union.ccb** %8, align 8
  %26 = call i32 @cam_freeccb(%union.ccb* %25)
  store i32 1, i32* %4, align 4
  br label %95

27:                                               ; preds = %17
  %28 = load i32, i32* @arglist, align 4
  %29 = load i32, i32* @CAM_ARG_VERBOSE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = load %struct.cam_device*, %struct.cam_device** %5, align 8
  %34 = getelementptr inbounds %struct.cam_device, %struct.cam_device* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.cam_device*, %struct.cam_device** %5, align 8
  %37 = getelementptr inbounds %struct.cam_device, %struct.cam_device* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %35, i32 %38)
  %40 = load %struct.ata_params*, %struct.ata_params** %9, align 8
  %41 = bitcast %struct.ata_params* %40 to i8*
  %42 = call i32 @dump_data(i8* %41, i32 8)
  br label %43

43:                                               ; preds = %32, %27
  %44 = load %struct.ata_params*, %struct.ata_params** %9, align 8
  %45 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @ATA_SUPPORT_PROTECTED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %43
  %52 = load %struct.cam_device*, %struct.cam_device** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load %union.ccb*, %union.ccb** %8, align 8
  %56 = load %struct.ata_params*, %struct.ata_params** %9, align 8
  %57 = call i32 @ata_read_native_max(%struct.cam_device* %52, i32 %53, i32 %54, %union.ccb* %55, %struct.ata_params* %56, i32* %10)
  br label %58

58:                                               ; preds = %51, %43
  %59 = load %struct.ata_params*, %struct.ata_params** %9, align 8
  %60 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @ATA_SUPPORT_AMAX_ADDR, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load %struct.cam_device*, %struct.cam_device** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load %union.ccb*, %union.ccb** %8, align 8
  %70 = call i32 @ata_get_native_max(%struct.cam_device* %66, i32 %67, i32 %68, %union.ccb* %69, i32* %11)
  br label %71

71:                                               ; preds = %65, %58
  %72 = load %struct.cam_device*, %struct.cam_device** %5, align 8
  %73 = getelementptr inbounds %struct.cam_device, %struct.cam_device* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.cam_device*, %struct.cam_device** %5, align 8
  %76 = getelementptr inbounds %struct.cam_device, %struct.cam_device* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %74, i32 %77)
  %79 = load %struct.ata_params*, %struct.ata_params** %9, align 8
  %80 = call i32 @ata_print_ident(%struct.ata_params* %79)
  %81 = load %struct.cam_device*, %struct.cam_device** %5, align 8
  %82 = call i32 @camxferrate(%struct.cam_device* %81)
  %83 = load %struct.ata_params*, %struct.ata_params** %9, align 8
  %84 = call i32 @atacapprint(%struct.ata_params* %83)
  %85 = load %struct.ata_params*, %struct.ata_params** %9, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @atahpa_print(%struct.ata_params* %85, i32 %86, i32 0)
  %88 = load %struct.ata_params*, %struct.ata_params** %9, align 8
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @ataama_print(%struct.ata_params* %88, i32 %89, i32 0)
  %91 = load %struct.ata_params*, %struct.ata_params** %9, align 8
  %92 = call i32 @free(%struct.ata_params* %91)
  %93 = load %union.ccb*, %union.ccb** %8, align 8
  %94 = call i32 @cam_freeccb(%union.ccb* %93)
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %71, %24, %15
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local %union.ccb* @cam_getccb(%struct.cam_device*) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i64 @ata_do_identify(%struct.cam_device*, i32, i32, %union.ccb*, %struct.ata_params**) #1

declare dso_local i32 @cam_freeccb(%union.ccb*) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i32 @dump_data(i8*, i32) #1

declare dso_local i32 @ata_read_native_max(%struct.cam_device*, i32, i32, %union.ccb*, %struct.ata_params*, i32*) #1

declare dso_local i32 @ata_get_native_max(%struct.cam_device*, i32, i32, %union.ccb*, i32*) #1

declare dso_local i32 @ata_print_ident(%struct.ata_params*) #1

declare dso_local i32 @camxferrate(%struct.cam_device*) #1

declare dso_local i32 @atacapprint(%struct.ata_params*) #1

declare dso_local i32 @atahpa_print(%struct.ata_params*, i32, i32) #1

declare dso_local i32 @ataama_print(%struct.ata_params*, i32, i32) #1

declare dso_local i32 @free(%struct.ata_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
