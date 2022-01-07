; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_power.c_power_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_power.c_power_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_pt_command = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i32 }

@NVME_OPC_SET_FEATURES = common dso_local global i32 0, align 4
@NVME_FEAT_POWER_MANAGEMENT = common dso_local global i32 0, align 4
@NVME_PASSTHROUGH_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"set feature power mgmt request failed\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"set feature power mgmt request returned error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @power_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @power_set(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvme_pt_command, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 -2147483648, i32 0
  store i32 %14, i32* %10, align 4
  %15 = call i32 @memset(%struct.nvme_pt_command* %9, i32 0, i32 32)
  %16 = load i32, i32* @NVME_OPC_SET_FEATURES, align 4
  %17 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %9, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* @NVME_FEAT_POWER_MANAGEMENT, align 4
  %20 = load i32, i32* %10, align 4
  %21 = or i32 %19, %20
  %22 = call i8* @htole32(i32 %21)
  %23 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %9, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = shl i32 %26, 5
  %28 = or i32 %25, %27
  %29 = call i8* @htole32(i32 %28)
  %30 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %9, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @NVME_PASSTHROUGH_CMD, align 4
  %34 = call i64 @ioctl(i32 %32, i32 %33, %struct.nvme_pt_command* %9)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %4
  %37 = call i32 @err(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %4
  %39 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %9, i32 0, i32 0
  %40 = call i64 @nvme_completion_is_error(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 @errx(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %38
  ret void
}

declare dso_local i32 @memset(%struct.nvme_pt_command*, i32, i32) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.nvme_pt_command*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @nvme_completion_is_error(i32*) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
