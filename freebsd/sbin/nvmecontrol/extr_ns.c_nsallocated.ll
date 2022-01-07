; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_ns.c_nsallocated.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_ns.c_nsallocated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.cmd = type { i32 }
%struct.nvme_pt_command = type { i64*, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i32 }
%struct.nvme_controller_data = type { i32 }

@active_opt = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@NVME_CTRLR_DATA_OACS_NSMGMT_SHIFT = common dso_local global i32 0, align 4
@NVME_CTRLR_DATA_OACS_NSMGMT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"controller does not support namespace management\00", align 1
@NVME_OPC_IDENTIFY = common dso_local global i32 0, align 4
@NVME_PASSTHROUGH_CMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"identify request failed\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"identify request returned error\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Allocated namespaces:\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%10d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmd*, i32, i8**)* @nsallocated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nsallocated(%struct.cmd* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.nvme_pt_command, align 8
  %8 = alloca %struct.nvme_controller_data, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [1024 x i64], align 16
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i8**, i8*** %6, align 8
  %14 = load %struct.cmd*, %struct.cmd** %4, align 8
  %15 = call i64 @arg_parse(i32 %12, i8** %13, %struct.cmd* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  ret void

18:                                               ; preds = %3
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @active_opt, i32 0, i32 0), align 4
  %20 = call i32 @open_dev(i32 %19, i32* %9, i32 1, i32 1)
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @read_controller_data(i32 %21, %struct.nvme_controller_data* %8)
  %23 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %8, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @NVME_CTRLR_DATA_OACS_NSMGMT_SHIFT, align 4
  %26 = ashr i32 %24, %25
  %27 = load i32, i32* @NVME_CTRLR_DATA_OACS_NSMGMT_MASK, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %18
  %31 = call i32 @errx(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %18
  %33 = call i32 @memset(%struct.nvme_pt_command* %7, i32 0, i32 48)
  %34 = load i32, i32* @NVME_OPC_IDENTIFY, align 4
  %35 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = call i8* @htole32(i32 0)
  %38 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = call i8* @htole32(i32 16)
  %41 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = getelementptr inbounds [1024 x i64], [1024 x i64]* %11, i64 0, i64 0
  %44 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 0
  store i64* %43, i64** %44, align 8
  %45 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 1
  store i32 8192, i32* %45, align 8
  %46 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 2
  store i32 1, i32* %46, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @NVME_PASSTHROUGH_CMD, align 4
  %49 = call i64 @ioctl(i32 %47, i32 %48, %struct.nvme_pt_command* %7)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %32
  %52 = call i32 @err(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %32
  %54 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 3
  %55 = call i64 @nvme_completion_is_error(i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = call i32 @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %53
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %74, %59
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [1024 x i64], [1024 x i64]* %11, i64 0, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %61
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [1024 x i64], [1024 x i64]* %11, i64 0, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @le32toh(i64 %71)
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %67
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %61

77:                                               ; preds = %61
  %78 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i64 @arg_parse(i32, i8**, %struct.cmd*) #1

declare dso_local i32 @open_dev(i32, i32*, i32, i32) #1

declare dso_local i32 @read_controller_data(i32, %struct.nvme_controller_data*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @memset(%struct.nvme_pt_command*, i32, i32) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.nvme_pt_command*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @nvme_completion_is_error(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @le32toh(i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
