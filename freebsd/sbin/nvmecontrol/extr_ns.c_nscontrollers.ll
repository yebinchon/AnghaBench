; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_ns.c_nscontrollers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_ns.c_nscontrollers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.cmd = type { i32 }
%struct.nvme_pt_command = type { i32, i32, i32, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.nvme_controller_data = type { i32 }

@controllers_opt = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@NVME_CTRLR_DATA_OACS_NSMGMT_SHIFT = common dso_local global i32 0, align 4
@NVME_CTRLR_DATA_OACS_NSMGMT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"controller does not support namespace management\00", align 1
@NVME_OPC_IDENTIFY = common dso_local global i32 0, align 4
@NVME_PASSTHROUGH_CMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"identify request failed\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"identify request returned error\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"NVM subsystem includes %d controller(s):\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"  0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmd*, i32, i8**)* @nscontrollers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nscontrollers(%struct.cmd* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.nvme_pt_command, align 8
  %8 = alloca %struct.nvme_controller_data, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2048 x i32], align 16
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i8**, i8*** %6, align 8
  %15 = load %struct.cmd*, %struct.cmd** %4, align 8
  %16 = call i64 @arg_parse(i32 %13, i8** %14, %struct.cmd* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  ret void

19:                                               ; preds = %3
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @controllers_opt, i32 0, i32 0), align 4
  %21 = call i32 @open_dev(i32 %20, i32* %9, i32 1, i32 1)
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @read_controller_data(i32 %22, %struct.nvme_controller_data* %8)
  %24 = getelementptr inbounds %struct.nvme_controller_data, %struct.nvme_controller_data* %8, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @NVME_CTRLR_DATA_OACS_NSMGMT_SHIFT, align 4
  %27 = ashr i32 %25, %26
  %28 = load i32, i32* @NVME_CTRLR_DATA_OACS_NSMGMT_MASK, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = call i32 @errx(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %19
  %34 = call i32 @memset(%struct.nvme_pt_command* %7, i32 0, i32 32)
  %35 = load i32, i32* @NVME_OPC_IDENTIFY, align 4
  %36 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = call i32 @htole32(i32 19)
  %39 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = getelementptr inbounds [2048 x i32], [2048 x i32]* %12, i64 0, i64 0
  %42 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 3
  store i32* %41, i32** %42, align 8
  %43 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 0
  store i32 8192, i32* %43, align 8
  %44 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 1
  store i32 1, i32* %44, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @NVME_PASSTHROUGH_CMD, align 4
  %47 = call i64 @ioctl(i32 %45, i32 %46, %struct.nvme_pt_command* %7)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %33
  %50 = call i32 @err(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %33
  %52 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 2
  %53 = call i64 @nvme_completion_is_error(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = call i32 @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %51
  %58 = getelementptr inbounds [2048 x i32], [2048 x i32]* %12, i64 0, i64 0
  %59 = load i32, i32* %58, align 16
  %60 = call i32 @le16toh(i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  store i32 0, i32* %10, align 4
  br label %63

63:                                               ; preds = %75, %57
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %63
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [2048 x i32], [2048 x i32]* %12, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @le16toh(i32 %72)
  %74 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %67
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %63

78:                                               ; preds = %63
  %79 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i64 @arg_parse(i32, i8**, %struct.cmd*) #1

declare dso_local i32 @open_dev(i32, i32*, i32, i32) #1

declare dso_local i32 @read_controller_data(i32, %struct.nvme_controller_data*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @memset(%struct.nvme_pt_command*, i32, i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.nvme_pt_command*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @nvme_completion_is_error(i32*) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

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
