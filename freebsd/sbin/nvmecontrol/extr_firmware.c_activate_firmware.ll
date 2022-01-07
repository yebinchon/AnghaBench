; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_firmware.c_activate_firmware.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_firmware.c_activate_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_pt_command = type { %struct.TYPE_4__, i64, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@NVME_OPC_FIRMWARE_ACTIVATE = common dso_local global i32 0, align 4
@NVME_PASSTHROUGH_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"firmware activate request failed\00", align 1
@NVME_SCT_COMMAND_SPECIFIC = common dso_local global i64 0, align 8
@NVME_SC_FIRMWARE_REQUIRES_RESET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"firmware activate request returned error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @activate_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @activate_firmware(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvme_pt_command, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = call i32 @memset(%struct.nvme_pt_command* %8, i32 0, i32 24)
  %12 = load i32, i32* @NVME_OPC_FIRMWARE_ACTIVATE, align 4
  %13 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %8, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %7, align 4
  %16 = shl i32 %15, 3
  %17 = load i32, i32* %6, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @htole32(i32 %18)
  %20 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %8, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %8, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @NVME_PASSTHROUGH_CMD, align 4
  %25 = call i64 @ioctl(i32 %23, i32 %24, %struct.nvme_pt_command* %8)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = call i32 @err(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %3
  %30 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %8, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @NVME_STATUS_GET_SCT(i32 %32)
  store i64 %33, i64* %9, align 8
  %34 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %8, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @NVME_STATUS_GET_SC(i32 %36)
  store i64 %37, i64* %10, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* @NVME_SCT_COMMAND_SPECIFIC, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %29
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* @NVME_SC_FIRMWARE_REQUIRES_RESET, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 1, i32* %4, align 4
  br label %53

46:                                               ; preds = %41, %29
  %47 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %8, i32 0, i32 0
  %48 = call i64 @nvme_completion_is_error(%struct.TYPE_4__* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = call i32 @errx(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %46
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %45
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @memset(%struct.nvme_pt_command*, i32, i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.nvme_pt_command*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @NVME_STATUS_GET_SCT(i32) #1

declare dso_local i64 @NVME_STATUS_GET_SC(i32) #1

declare dso_local i64 @nvme_completion_is_error(%struct.TYPE_4__*) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
