; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_ns.c_nsactive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_ns.c_nsactive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.cmd = type { i32 }
%struct.nvme_pt_command = type { i64*, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i32 }

@active_opt = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@NVME_OPC_IDENTIFY = common dso_local global i32 0, align 4
@NVME_PASSTHROUGH_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"identify request failed\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"identify request returned error\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Active namespaces:\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%10d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmd*, i32, i8**)* @nsactive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nsactive(%struct.cmd* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.nvme_pt_command, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [1024 x i64], align 16
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i8**, i8*** %6, align 8
  %13 = load %struct.cmd*, %struct.cmd** %4, align 8
  %14 = call i64 @arg_parse(i32 %11, i8** %12, %struct.cmd* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  ret void

17:                                               ; preds = %3
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @active_opt, i32 0, i32 0), align 4
  %19 = call i32 @open_dev(i32 %18, i32* %8, i32 1, i32 1)
  %20 = call i32 @memset(%struct.nvme_pt_command* %7, i32 0, i32 48)
  %21 = load i32, i32* @NVME_OPC_IDENTIFY, align 4
  %22 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = call i8* @htole32(i32 0)
  %25 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = call i8* @htole32(i32 2)
  %28 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = getelementptr inbounds [1024 x i64], [1024 x i64]* %10, i64 0, i64 0
  %31 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 0
  store i64* %30, i64** %31, align 8
  %32 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 1
  store i32 8192, i32* %32, align 8
  %33 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 2
  store i32 1, i32* %33, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @NVME_PASSTHROUGH_CMD, align 4
  %36 = call i64 @ioctl(i32 %34, i32 %35, %struct.nvme_pt_command* %7)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %17
  %39 = call i32 @err(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %17
  %41 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 3
  %42 = call i64 @nvme_completion_is_error(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = call i32 @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %40
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %61, %46
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [1024 x i64], [1024 x i64]* %10, i64 0, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %48
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [1024 x i64], [1024 x i64]* %10, i64 0, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @le32toh(i64 %58)
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %54
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %48

64:                                               ; preds = %48
  %65 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i64 @arg_parse(i32, i8**, %struct.cmd*) #1

declare dso_local i32 @open_dev(i32, i32*, i32, i32) #1

declare dso_local i32 @memset(%struct.nvme_pt_command*, i32, i32) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.nvme_pt_command*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @nvme_completion_is_error(i32*) #1

declare dso_local i32 @errx(i32, i8*) #1

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
