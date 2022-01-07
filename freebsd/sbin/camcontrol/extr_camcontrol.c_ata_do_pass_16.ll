; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_ata_do_pass_16.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_ata_do_pass_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i32 }
%union.ccb = type { i32 }

@CAM_DIR_OUT = common dso_local global i32 0, align 4
@AP_FLAG_TDIR_TO_DEV = common dso_local global i32 0, align 4
@AP_FLAG_TDIR_FROM_DEV = common dso_local global i32 0, align 4
@AP_FLAG_TLEN_NO_DATA = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_device*, %union.ccb*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32)* @ata_do_pass_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_do_pass_16(%struct.cam_device* %0, %union.ccb* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32* %11, i32 %12, i32 %13) #0 {
  %15 = alloca %struct.cam_device*, align 8
  %16 = alloca %union.ccb*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.cam_device* %0, %struct.cam_device** %15, align 8
  store %union.ccb* %1, %union.ccb** %16, align 8
  store i32 %2, i32* %17, align 4
  store i32 %3, i32* %18, align 4
  store i32 %4, i32* %19, align 4
  store i32 %5, i32* %20, align 4
  store i32 %6, i32* %21, align 4
  store i32 %7, i32* %22, align 4
  store i32 %8, i32* %23, align 4
  store i32 %9, i32* %24, align 4
  store i32 %10, i32* %25, align 4
  store i32* %11, i32** %26, align 8
  store i32 %12, i32* %27, align 4
  store i32 %13, i32* %28, align 4
  %29 = load i32*, i32** %26, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %45

31:                                               ; preds = %14
  %32 = load i32, i32* %18, align 4
  %33 = load i32, i32* @CAM_DIR_OUT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* @AP_FLAG_TDIR_TO_DEV, align 4
  %38 = load i32, i32* %20, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %20, align 4
  br label %44

40:                                               ; preds = %31
  %41 = load i32, i32* @AP_FLAG_TDIR_FROM_DEV, align 4
  %42 = load i32, i32* %20, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %20, align 4
  br label %44

44:                                               ; preds = %40, %36
  br label %49

45:                                               ; preds = %14
  %46 = load i32, i32* @AP_FLAG_TLEN_NO_DATA, align 4
  %47 = load i32, i32* %20, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %20, align 4
  br label %49

49:                                               ; preds = %45, %44
  %50 = load %union.ccb*, %union.ccb** %16, align 8
  %51 = bitcast %union.ccb* %50 to i32*
  %52 = call i32 @CCB_CLEAR_ALL_EXCEPT_HDR(i32* %51)
  %53 = load %union.ccb*, %union.ccb** %16, align 8
  %54 = bitcast %union.ccb* %53 to i32*
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* %18, align 4
  %57 = load i32, i32* %21, align 4
  %58 = load i32, i32* %19, align 4
  %59 = load i32, i32* %20, align 4
  %60 = load i32, i32* %23, align 4
  %61 = load i32, i32* %25, align 4
  %62 = load i32, i32* %24, align 4
  %63 = load i32, i32* %22, align 4
  %64 = load i32*, i32** %26, align 8
  %65 = load i32, i32* %27, align 4
  %66 = load i32, i32* @SSD_FULL_SIZE, align 4
  %67 = load i32, i32* %28, align 4
  %68 = call i32 @scsi_ata_pass_16(i32* %54, i32 %55, i32* null, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 0, i32* %64, i32 %65, i32 %66, i32 %67)
  %69 = load %struct.cam_device*, %struct.cam_device** %15, align 8
  %70 = load %union.ccb*, %union.ccb** %16, align 8
  %71 = call i32 @scsi_cam_pass_16_send(%struct.cam_device* %69, %union.ccb* %70)
  ret i32 %71
}

declare dso_local i32 @CCB_CLEAR_ALL_EXCEPT_HDR(i32*) #1

declare dso_local i32 @scsi_ata_pass_16(i32*, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @scsi_cam_pass_16_send(%struct.cam_device*, %union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
