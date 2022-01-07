; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_bkpt.c_proc_bkptexec.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_bkpt.c_proc_bkptexec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_handle = type { i32 }

@REG_PC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"ERROR: couldn't get PC register\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"ERROR: couldn't delete breakpoint\00", align 1
@PT_STEP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"ERROR: ptrace step failed\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"ERROR: don't know why process stopped\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"ERROR: couldn't restore breakpoint\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_bkptexec(%struct.proc_handle* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.proc_handle*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.proc_handle* %0, %struct.proc_handle** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.proc_handle*, %struct.proc_handle** %4, align 8
  %10 = load i32, i32* @REG_PC, align 4
  %11 = call i64 @proc_regget(%struct.proc_handle* %9, i32 %10, i64* %6)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 @DPRINTFX(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %59

15:                                               ; preds = %2
  %16 = call i32 @proc_bkptregadj(i64* %6)
  %17 = load %struct.proc_handle*, %struct.proc_handle** %4, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @proc_bkptdel(%struct.proc_handle* %17, i64 %18, i64 %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = call i32 @DPRINTFX(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %59

24:                                               ; preds = %15
  %25 = load %struct.proc_handle*, %struct.proc_handle** %4, align 8
  %26 = load i32, i32* @REG_PC, align 4
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @proc_regset(%struct.proc_handle* %25, i32 %26, i64 %27)
  %29 = load i32, i32* @PT_STEP, align 4
  %30 = load %struct.proc_handle*, %struct.proc_handle** %4, align 8
  %31 = call i32 @proc_getpid(%struct.proc_handle* %30)
  %32 = call i64 @ptrace(i32 %29, i32 %31, i32 1, i32 0)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = call i32 @DPRINTFX(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %59

36:                                               ; preds = %24
  %37 = load %struct.proc_handle*, %struct.proc_handle** %4, align 8
  %38 = call i32 @proc_wstatus(%struct.proc_handle* %37)
  %39 = load %struct.proc_handle*, %struct.proc_handle** %4, align 8
  %40 = call i32 @proc_getwstat(%struct.proc_handle* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @WIFSTOPPED(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %36
  %45 = call i32 @DPRINTFX(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %59

46:                                               ; preds = %36
  %47 = load %struct.proc_handle*, %struct.proc_handle** %4, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i64 @proc_bkptset(%struct.proc_handle* %47, i64 %48, i64* %7)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = call i32 @DPRINTFX(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %59

53:                                               ; preds = %46
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* %5, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %53, %51, %44, %34, %22, %13
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @proc_regget(%struct.proc_handle*, i32, i64*) #1

declare dso_local i32 @DPRINTFX(i8*) #1

declare dso_local i32 @proc_bkptregadj(i64*) #1

declare dso_local i64 @proc_bkptdel(%struct.proc_handle*, i64, i64) #1

declare dso_local i32 @proc_regset(%struct.proc_handle*, i32, i64) #1

declare dso_local i64 @ptrace(i32, i32, i32, i32) #1

declare dso_local i32 @proc_getpid(%struct.proc_handle*) #1

declare dso_local i32 @proc_wstatus(%struct.proc_handle*) #1

declare dso_local i32 @proc_getwstat(%struct.proc_handle*) #1

declare dso_local i32 @WIFSTOPPED(i32) #1

declare dso_local i64 @proc_bkptset(%struct.proc_handle*, i64, i64*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
