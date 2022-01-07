; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_get_device_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_get_device_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i32 }
%struct.ccb_getdev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@CC_DT_ATA = common dso_local global i32 0, align 4
@CC_DT_NVME = common dso_local global i32 0, align 4
@CC_DT_MMCSD = common dso_local global i32 0, align 4
@CC_DT_UNKNOWN = common dso_local global i32 0, align 4
@CC_DT_SATL = common dso_local global i32 0, align 4
@CC_DT_SCSI = common dso_local global i32 0, align 4
@SVPD_ATA_INFORMATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_device_type(%struct.cam_device* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.cam_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ccb_getdev, align 8
  %12 = alloca i32, align 4
  store %struct.cam_device* %0, %struct.cam_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %13 = load %struct.cam_device*, %struct.cam_device** %6, align 8
  %14 = call i32 @get_cgd(%struct.cam_device* %13, %struct.ccb_getdev* %11)
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  br label %66

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.ccb_getdev, %struct.ccb_getdev* %11, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %31 [
    i32 128, label %21
    i32 133, label %22
    i32 132, label %22
    i32 129, label %22
    i32 130, label %25
    i32 131, label %28
  ]

21:                                               ; preds = %18
  br label %34

22:                                               ; preds = %18, %18, %18
  %23 = load i32, i32* @CC_DT_ATA, align 4
  %24 = load i32*, i32** %10, align 8
  store i32 %23, i32* %24, align 4
  br label %66

25:                                               ; preds = %18
  %26 = load i32, i32* @CC_DT_NVME, align 4
  %27 = load i32*, i32** %10, align 8
  store i32 %26, i32* %27, align 4
  br label %66

28:                                               ; preds = %18
  %29 = load i32, i32* @CC_DT_MMCSD, align 4
  %30 = load i32*, i32** %10, align 8
  store i32 %29, i32* %30, align 4
  br label %66

31:                                               ; preds = %18
  %32 = load i32, i32* @CC_DT_UNKNOWN, align 4
  %33 = load i32*, i32** %10, align 8
  store i32 %32, i32* %33, align 4
  br label %66

34:                                               ; preds = %21
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.ccb_getdev, %struct.ccb_getdev* %11, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @CC_DT_SATL, align 4
  %44 = load i32*, i32** %10, align 8
  store i32 %43, i32* %44, align 4
  br label %48

45:                                               ; preds = %37
  %46 = load i32, i32* @CC_DT_SCSI, align 4
  %47 = load i32*, i32** %10, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %42
  br label %65

49:                                               ; preds = %34
  %50 = load %struct.cam_device*, %struct.cam_device** %6, align 8
  %51 = load i32, i32* @SVPD_ATA_INFORMATION, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @dev_has_vpd_page(%struct.cam_device* %50, i32 %51, i32 %52, i32 %53, i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %61

58:                                               ; preds = %49
  %59 = load i32, i32* @CC_DT_SATL, align 4
  %60 = load i32*, i32** %10, align 8
  store i32 %59, i32* %60, align 4
  br label %64

61:                                               ; preds = %49
  %62 = load i32, i32* @CC_DT_SCSI, align 4
  %63 = load i32*, i32** %10, align 8
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %61, %58
  br label %65

65:                                               ; preds = %64, %48
  store i32 0, i32* %12, align 4
  br label %66

66:                                               ; preds = %65, %31, %28, %25, %22, %17
  %67 = load i32, i32* %12, align 4
  ret i32 %67
}

declare dso_local i32 @get_cgd(%struct.cam_device*, %struct.ccb_getdev*) #1

declare dso_local i32 @dev_has_vpd_page(%struct.cam_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
