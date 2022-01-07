; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_regs.c_proc_regset.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_regs.c_proc_regset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_handle = type { i64 }
%struct.reg = type { i64, i64, i64, i64, i64*, i64, i64, i64, i64, i64, i64, i64* }

@PS_DEAD = common dso_local global i64 0, align 8
@PS_UNDEAD = common dso_local global i64 0, align 8
@PS_IDLE = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@PT_GETREGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"ERROR: no support for reg number %d\00", align 1
@PT_SETREGS = common dso_local global i32 0, align 4
@PC = common dso_local global i64 0, align 8
@SP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_regset(%struct.proc_handle* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc_handle*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.reg, align 8
  store %struct.proc_handle* %0, %struct.proc_handle** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load %struct.proc_handle*, %struct.proc_handle** %5, align 8
  %10 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PS_DEAD, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %26, label %14

14:                                               ; preds = %3
  %15 = load %struct.proc_handle*, %struct.proc_handle** %5, align 8
  %16 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PS_UNDEAD, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load %struct.proc_handle*, %struct.proc_handle** %5, align 8
  %22 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PS_IDLE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20, %14, %3
  %27 = load i32, i32* @ENOENT, align 4
  store i32 %27, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %56

28:                                               ; preds = %20
  %29 = load i32, i32* @PT_GETREGS, align 4
  %30 = load %struct.proc_handle*, %struct.proc_handle** %5, align 8
  %31 = call i32 @proc_getpid(%struct.proc_handle* %30)
  %32 = ptrtoint %struct.reg* %8 to i32
  %33 = call i64 @ptrace(i32 %29, i32 %31, i32 %32, i32 0)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 -1, i32* %4, align 4
  br label %56

36:                                               ; preds = %28
  %37 = load i32, i32* %6, align 4
  switch i32 %37, label %44 [
    i32 129, label %38
    i32 128, label %41
  ]

38:                                               ; preds = %36
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds %struct.reg, %struct.reg* %8, i32 0, i32 1
  store i64 %39, i64* %40, align 8
  br label %47

41:                                               ; preds = %36
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds %struct.reg, %struct.reg* %8, i32 0, i32 8
  store i64 %42, i64* %43, align 8
  br label %47

44:                                               ; preds = %36
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @DPRINTFX(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %45)
  store i32 -1, i32* %4, align 4
  br label %56

47:                                               ; preds = %41, %38
  %48 = load i32, i32* @PT_SETREGS, align 4
  %49 = load %struct.proc_handle*, %struct.proc_handle** %5, align 8
  %50 = call i32 @proc_getpid(%struct.proc_handle* %49)
  %51 = ptrtoint %struct.reg* %8 to i32
  %52 = call i64 @ptrace(i32 %48, i32 %50, i32 %51, i32 0)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store i32 -1, i32* %4, align 4
  br label %56

55:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %54, %44, %35, %26
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i64 @ptrace(i32, i32, i32, i32) #1

declare dso_local i32 @proc_getpid(%struct.proc_handle*) #1

declare dso_local i32 @DPRINTFX(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
