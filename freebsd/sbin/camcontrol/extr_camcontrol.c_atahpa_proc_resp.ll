; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_atahpa_proc_resp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_atahpa_proc_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i32 }
%union.ccb = type { i32 }

@arglist = common dso_local global i32 0, align 4
@CAM_ARG_VERBOSE = common dso_local global i32 0, align 4
@CAM_ESF_ALL = common dso_local global i32 0, align 4
@CAM_EPF_ALL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Can't get ATA command status\00", align 1
@ATA_STATUS_ERROR = common dso_local global i32 0, align 4
@ATA_ERROR_ID_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"Max address has already been set since last power-on or hardware reset\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Command failed with ATA error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_device*, %union.ccb*, i32*)* @atahpa_proc_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atahpa_proc_resp(%struct.cam_device* %0, %union.ccb* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cam_device*, align 8
  %6 = alloca %union.ccb*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cam_device* %0, %struct.cam_device** %5, align 8
  store %union.ccb* %1, %union.ccb** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = load %struct.cam_device*, %struct.cam_device** %5, align 8
  %15 = load %union.ccb*, %union.ccb** %6, align 8
  %16 = call i32 @get_ata_status(%struct.cam_device* %14, %union.ccb* %15, i32* %8, i32* %11, i32* %12, i32* %9, i32* %10)
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %13, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %34

19:                                               ; preds = %3
  %20 = load i32, i32* @arglist, align 4
  %21 = load i32, i32* @CAM_ARG_VERBOSE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.cam_device*, %struct.cam_device** %5, align 8
  %26 = load %union.ccb*, %union.ccb** %6, align 8
  %27 = load i32, i32* @CAM_ESF_ALL, align 4
  %28 = load i32, i32* @CAM_EPF_ALL, align 4
  %29 = load i32, i32* @stderr, align 4
  %30 = call i32 @cam_error_print(%struct.cam_device* %25, %union.ccb* %26, i32 %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %24, %19
  %32 = call i32 @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %13, align 4
  store i32 %33, i32* %4, align 4
  br label %79

34:                                               ; preds = %3
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @ATA_STATUS_ERROR, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %65

39:                                               ; preds = %34
  %40 = load i32, i32* @arglist, align 4
  %41 = load i32, i32* @CAM_ARG_VERBOSE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load %struct.cam_device*, %struct.cam_device** %5, align 8
  %46 = load %union.ccb*, %union.ccb** %6, align 8
  %47 = load i32, i32* @CAM_ESF_ALL, align 4
  %48 = load i32, i32* @CAM_EPF_ALL, align 4
  %49 = load i32, i32* @stderr, align 4
  %50 = call i32 @cam_error_print(%struct.cam_device* %45, %union.ccb* %46, i32 %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %44, %39
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @ATA_ERROR_ID_NOT_FOUND, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = call i32 @warnx(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  br label %64

58:                                               ; preds = %51
  %59 = load i32*, i32** %7, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call i32 @warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %58
  br label %64

64:                                               ; preds = %63, %56
  store i32 1, i32* %4, align 4
  br label %79

65:                                               ; preds = %34
  %66 = load i32*, i32** %7, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %78

68:                                               ; preds = %65
  %69 = load i32, i32* %13, align 4
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %13, align 4
  %73 = icmp eq i32 %72, 6
  br i1 %73, label %74, label %75

74:                                               ; preds = %71, %68
  store i32 1, i32* %4, align 4
  br label %79

75:                                               ; preds = %71
  %76 = load i32, i32* %12, align 4
  %77 = load i32*, i32** %7, align 8
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %75, %65
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %78, %74, %64, %31
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @get_ata_status(%struct.cam_device*, %union.ccb*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @cam_error_print(%struct.cam_device*, %union.ccb*, i32, i32, i32) #1

declare dso_local i32 @warnx(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
