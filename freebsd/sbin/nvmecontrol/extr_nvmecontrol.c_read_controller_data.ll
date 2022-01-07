; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_nvmecontrol.c_read_controller_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_nvmecontrol.c_read_controller_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_controller_data = type { i32 }
%struct.nvme_pt_command = type { i32, i32, i32, %struct.nvme_controller_data*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@NVME_OPC_IDENTIFY = common dso_local global i32 0, align 4
@NVME_PASSTHROUGH_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"identify request failed\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"identify request returned error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_controller_data(i32 %0, %struct.nvme_controller_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvme_controller_data*, align 8
  %5 = alloca %struct.nvme_pt_command, align 8
  store i32 %0, i32* %3, align 4
  store %struct.nvme_controller_data* %1, %struct.nvme_controller_data** %4, align 8
  %6 = call i32 @memset(%struct.nvme_pt_command* %5, i32 0, i32 32)
  %7 = load i32, i32* @NVME_OPC_IDENTIFY, align 4
  %8 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %5, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 4
  %10 = call i32 @htole32(i32 1)
  %11 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %5, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %4, align 8
  %14 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %5, i32 0, i32 3
  store %struct.nvme_controller_data* %13, %struct.nvme_controller_data** %14, align 8
  %15 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %5, i32 0, i32 0
  store i32 4, i32* %15, align 8
  %16 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %5, i32 0, i32 1
  store i32 1, i32* %16, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @NVME_PASSTHROUGH_CMD, align 4
  %19 = call i64 @ioctl(i32 %17, i32 %18, %struct.nvme_pt_command* %5)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = call i32 @err(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %2
  %24 = load %struct.nvme_controller_data*, %struct.nvme_controller_data** %4, align 8
  %25 = call i32 @nvme_controller_data_swapbytes(%struct.nvme_controller_data* %24)
  %26 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %5, i32 0, i32 2
  %27 = call i64 @nvme_completion_is_error(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = call i32 @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %23
  ret void
}

declare dso_local i32 @memset(%struct.nvme_pt_command*, i32, i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.nvme_pt_command*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @nvme_controller_data_swapbytes(%struct.nvme_controller_data*) #1

declare dso_local i64 @nvme_completion_is_error(i32*) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
