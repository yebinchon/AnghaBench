; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_power.c_power_show.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_power.c_power_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_pt_command = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@NVME_OPC_GET_FEATURES = common dso_local global i32 0, align 4
@NVME_FEAT_POWER_MANAGEMENT = common dso_local global i32 0, align 4
@NVME_PASSTHROUGH_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"set feature power mgmt request failed\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"set feature power mgmt request returned error\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Current Power Mode is %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @power_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @power_show(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_pt_command, align 4
  store i32 %0, i32* %2, align 4
  %4 = call i32 @memset(%struct.nvme_pt_command* %3, i32 0, i32 12)
  %5 = load i32, i32* @NVME_OPC_GET_FEATURES, align 4
  %6 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %3, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @NVME_FEAT_POWER_MANAGEMENT, align 4
  %9 = call i32 @htole32(i32 %8)
  %10 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %3, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @NVME_PASSTHROUGH_CMD, align 4
  %14 = call i64 @ioctl(i32 %12, i32 %13, %struct.nvme_pt_command* %3)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 @err(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %1
  %19 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %3, i32 0, i32 0
  %20 = call i64 @nvme_completion_is_error(%struct.TYPE_4__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call i32 @errx(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %18
  %25 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %3, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  ret void
}

declare dso_local i32 @memset(%struct.nvme_pt_command*, i32, i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.nvme_pt_command*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @nvme_completion_is_error(%struct.TYPE_4__*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
