; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_nvmecontrol.c_read_namespace_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_nvmecontrol.c_read_namespace_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_namespace_data = type { i32 }
%struct.nvme_pt_command = type { i32, i32, i32, %struct.nvme_namespace_data*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i32 }

@NVME_OPC_IDENTIFY = common dso_local global i32 0, align 4
@NVME_PASSTHROUGH_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"identify request failed\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"identify request returned error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_namespace_data(i32 %0, i32 %1, %struct.nvme_namespace_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvme_namespace_data*, align 8
  %7 = alloca %struct.nvme_pt_command, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.nvme_namespace_data* %2, %struct.nvme_namespace_data** %6, align 8
  %8 = call i32 @memset(%struct.nvme_pt_command* %7, i32 0, i32 48)
  %9 = load i32, i32* @NVME_OPC_IDENTIFY, align 4
  %10 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i8* @htole32(i32 %12)
  %14 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i8* %13, i8** %15, align 8
  %16 = call i8* @htole32(i32 0)
  %17 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  %19 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %6, align 8
  %20 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 3
  store %struct.nvme_namespace_data* %19, %struct.nvme_namespace_data** %20, align 8
  %21 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 0
  store i32 4, i32* %21, align 8
  %22 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 1
  store i32 1, i32* %22, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @NVME_PASSTHROUGH_CMD, align 4
  %25 = call i64 @ioctl(i32 %23, i32 %24, %struct.nvme_pt_command* %7)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = call i32 @err(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %3
  %30 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %6, align 8
  %31 = call i32 @nvme_namespace_data_swapbytes(%struct.nvme_namespace_data* %30)
  %32 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 2
  %33 = call i64 @nvme_completion_is_error(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = call i32 @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %29
  ret void
}

declare dso_local i32 @memset(%struct.nvme_pt_command*, i32, i32) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.nvme_pt_command*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @nvme_namespace_data_swapbytes(%struct.nvme_namespace_data*) #1

declare dso_local i64 @nvme_completion_is_error(i32*) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
