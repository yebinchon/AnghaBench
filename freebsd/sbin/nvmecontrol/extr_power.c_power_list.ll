; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_power.c_power_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_power.c_power_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_controller_data = type { i32, i32* }

@.str = private unnamed_addr constant [30 x i8] c"\0APower States Supported: %d\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c" #   Max pwr  Enter Lat  Exit Lat RT RL WT WL Idle Pwr  Act Pwr Workloadd\0A\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"--  --------  --------- --------- -- -- -- -- -------- -------- --\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_controller_data*)* @power_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @power_list(%struct.nvme_controller_data* %0) #0 {
  %2 = alloca %struct.nvme_controller_data*, align 8
  %3 = alloca i32, align 4
  store %struct.nvme_controller_data* %0, %struct.nvme_controller_data** %2, align 8
  %4 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %5 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = add nsw i32 %6, 1
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %26, %1
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %14 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sle i32 %12, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %11
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %2, align 8
  %20 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = call i32 @power_list_one(i32 %18, i32* %24)
  br label %26

26:                                               ; preds = %17
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %11

29:                                               ; preds = %11
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @power_list_one(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
