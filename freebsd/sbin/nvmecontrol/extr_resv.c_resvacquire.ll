; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_resv.c_resvacquire.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_resv.c_resvacquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.cmd = type { i32 }
%struct.nvme_pt_command = type { i32, i32, i64, i32**, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@acquire_opt = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"This command require namespace-id\0A\00", align 1
@NVME_OPC_RESERVATION_ACQUIRE = common dso_local global i32 0, align 4
@NVME_PASSTHROUGH_CMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"acquire request failed\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"acquire request returned error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmd*, i32, i8**)* @resvacquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resvacquire(%struct.cmd* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.nvme_pt_command, align 8
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
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
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acquire_opt, i32 0, i32 4), align 4
  %19 = call i32 @open_dev(i32 %18, i32* %9, i32 1, i32 1)
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @get_nsid(i32 %20, i32* null, i64* %10)
  %22 = load i64, i64* %10, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %5, align 4
  %28 = load i8**, i8*** %6, align 8
  %29 = load %struct.cmd*, %struct.cmd** %4, align 8
  %30 = call i32 @arg_help(i32 %27, i8** %28, %struct.cmd* %29)
  br label %31

31:                                               ; preds = %24, %17
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acquire_opt, i32 0, i32 3), align 4
  %33 = call i32 @htole64(i32 %32)
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acquire_opt, i32 0, i32 2), align 4
  %36 = call i32 @htole64(i32 %35)
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %36, i32* %37, align 4
  %38 = call i32 @memset(%struct.nvme_pt_command* %7, i32 0, i32 32)
  %39 = load i32, i32* @NVME_OPC_RESERVATION_ACQUIRE, align 4
  %40 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acquire_opt, i32 0, i32 0), align 4
  %43 = and i32 %42, 7
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acquire_opt, i32 0, i32 1), align 4
  %45 = shl i32 %44, 8
  %46 = or i32 %43, %45
  %47 = call i32 @htole32(i32 %46)
  %48 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = bitcast [2 x i32]* %8 to i32**
  %51 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 3
  store i32** %50, i32*** %51, align 8
  %52 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 0
  store i32 8, i32* %52, align 8
  %53 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 2
  store i64 0, i64* %53, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @NVME_PASSTHROUGH_CMD, align 4
  %56 = call i64 @ioctl(i32 %54, i32 %55, %struct.nvme_pt_command* %7)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %31
  %59 = call i32 @err(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %31
  %61 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %7, i32 0, i32 1
  %62 = call i64 @nvme_completion_is_error(i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = call i32 @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %60
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @close(i32 %67)
  %69 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i64 @arg_parse(i32, i8**, %struct.cmd*) #1

declare dso_local i32 @open_dev(i32, i32*, i32, i32) #1

declare dso_local i32 @get_nsid(i32, i32*, i64*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @arg_help(i32, i8**, %struct.cmd*) #1

declare dso_local i32 @htole64(i32) #1

declare dso_local i32 @memset(%struct.nvme_pt_command*, i32, i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.nvme_pt_command*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @nvme_completion_is_error(i32*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @close(i32) #1

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
