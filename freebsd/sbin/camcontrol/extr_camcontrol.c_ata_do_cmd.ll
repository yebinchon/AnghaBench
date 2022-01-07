; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_ata_do_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_ata_do_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i32 }
%union.ccb = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@ATA_MAX_28BIT_LBA = common dso_local global i64 0, align 8
@AP_FLAG_CHK_COND = common dso_local global i32 0, align 4
@CAM_ATAIO_NEEDRESULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_device*, %union.ccb*, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32*, i32, i32, i32)* @ata_do_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_do_cmd(%struct.cam_device* %0, %union.ccb* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i64 %9, i32 %10, i32* %11, i32 %12, i32 %13, i32 %14) #0 {
  %16 = alloca i32, align 4
  %17 = alloca %struct.cam_device*, align 8
  %18 = alloca %union.ccb*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.cam_device* %0, %struct.cam_device** %17, align 8
  store %union.ccb* %1, %union.ccb** %18, align 8
  store i32 %2, i32* %19, align 4
  store i32 %3, i32* %20, align 4
  store i32 %4, i32* %21, align 4
  store i32 %5, i32* %22, align 4
  store i32 %6, i32* %23, align 4
  store i32 %7, i32* %24, align 4
  store i32 %8, i32* %25, align 4
  store i64 %9, i64* %26, align 8
  store i32 %10, i32* %27, align 4
  store i32* %11, i32** %28, align 8
  store i32 %12, i32* %29, align 4
  store i32 %13, i32* %30, align 4
  store i32 %14, i32* %31, align 4
  %33 = load %struct.cam_device*, %struct.cam_device** %17, align 8
  %34 = call i32 @ata_try_pass_16(%struct.cam_device* %33)
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* %32, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %15
  store i32 1, i32* %16, align 4
  br label %109

38:                                               ; preds = %15
  %39 = load i32, i32* %32, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %57

41:                                               ; preds = %38
  %42 = load %struct.cam_device*, %struct.cam_device** %17, align 8
  %43 = load %union.ccb*, %union.ccb** %18, align 8
  %44 = load i32, i32* %19, align 4
  %45 = load i32, i32* %20, align 4
  %46 = load i32, i32* %21, align 4
  %47 = load i32, i32* %22, align 4
  %48 = load i32, i32* %23, align 4
  %49 = load i32, i32* %24, align 4
  %50 = load i32, i32* %25, align 4
  %51 = load i64, i64* %26, align 8
  %52 = load i32, i32* %27, align 4
  %53 = load i32*, i32** %28, align 8
  %54 = load i32, i32* %29, align 4
  %55 = load i32, i32* %30, align 4
  %56 = call i32 @ata_do_pass_16(%struct.cam_device* %42, %union.ccb* %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49, i32 %50, i64 %51, i32 %52, i32* %53, i32 %54, i32 %55)
  store i32 %56, i32* %16, align 4
  br label %109

57:                                               ; preds = %38
  %58 = load %union.ccb*, %union.ccb** %18, align 8
  %59 = bitcast %union.ccb* %58 to %struct.TYPE_7__*
  %60 = call i32 @CCB_CLEAR_ALL_EXCEPT_HDR(%struct.TYPE_7__* %59)
  %61 = load %union.ccb*, %union.ccb** %18, align 8
  %62 = bitcast %union.ccb* %61 to %struct.TYPE_7__*
  %63 = load i32, i32* %19, align 4
  %64 = load i32, i32* %20, align 4
  %65 = load i32, i32* %23, align 4
  %66 = load i32*, i32** %28, align 8
  %67 = load i32, i32* %29, align 4
  %68 = load i32, i32* %30, align 4
  %69 = call i32 @cam_fill_ataio(%struct.TYPE_7__* %62, i32 %63, i32* null, i32 %64, i32 %65, i32* %66, i32 %67, i32 %68)
  %70 = load i32, i32* %31, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %57
  %73 = load i64, i64* %26, align 8
  %74 = load i64, i64* @ATA_MAX_28BIT_LBA, align 8
  %75 = icmp sgt i64 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %72, %57
  %77 = load %union.ccb*, %union.ccb** %18, align 8
  %78 = bitcast %union.ccb* %77 to %struct.TYPE_7__*
  %79 = load i32, i32* %24, align 4
  %80 = load i32, i32* %25, align 4
  %81 = load i64, i64* %26, align 8
  %82 = load i32, i32* %27, align 4
  %83 = call i32 @ata_48bit_cmd(%struct.TYPE_7__* %78, i32 %79, i32 %80, i64 %81, i32 %82)
  br label %92

84:                                               ; preds = %72
  %85 = load %union.ccb*, %union.ccb** %18, align 8
  %86 = bitcast %union.ccb* %85 to %struct.TYPE_7__*
  %87 = load i32, i32* %24, align 4
  %88 = load i32, i32* %25, align 4
  %89 = load i64, i64* %26, align 8
  %90 = load i32, i32* %27, align 4
  %91 = call i32 @ata_28bit_cmd(%struct.TYPE_7__* %86, i32 %87, i32 %88, i64 %89, i32 %90)
  br label %92

92:                                               ; preds = %84, %76
  %93 = load i32, i32* %22, align 4
  %94 = load i32, i32* @AP_FLAG_CHK_COND, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %92
  %98 = load i32, i32* @CAM_ATAIO_NEEDRESULT, align 4
  %99 = load %union.ccb*, %union.ccb** %18, align 8
  %100 = bitcast %union.ccb* %99 to %struct.TYPE_7__*
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %98
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %97, %92
  %106 = load %struct.cam_device*, %struct.cam_device** %17, align 8
  %107 = load %union.ccb*, %union.ccb** %18, align 8
  %108 = call i32 @ata_cam_send(%struct.cam_device* %106, %union.ccb* %107)
  store i32 %108, i32* %16, align 4
  br label %109

109:                                              ; preds = %105, %41, %37
  %110 = load i32, i32* %16, align 4
  ret i32 %110
}

declare dso_local i32 @ata_try_pass_16(%struct.cam_device*) #1

declare dso_local i32 @ata_do_pass_16(%struct.cam_device*, %union.ccb*, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32*, i32, i32) #1

declare dso_local i32 @CCB_CLEAR_ALL_EXCEPT_HDR(%struct.TYPE_7__*) #1

declare dso_local i32 @cam_fill_ataio(%struct.TYPE_7__*, i32, i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @ata_48bit_cmd(%struct.TYPE_7__*, i32, i32, i64, i32) #1

declare dso_local i32 @ata_28bit_cmd(%struct.TYPE_7__*, i32, i32, i64, i32) #1

declare dso_local i32 @ata_cam_send(%struct.cam_device*, %union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
