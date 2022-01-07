; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_util.c_proc_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_util.c_proc_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_handle = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PRELEASE_HANG = common dso_local global i32 0, align 4
@PRELEASE_KILL = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i32 0, align 4
@PATTACH_RDONLY = common dso_local global i32 0, align 4
@PT_DETACH = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8
@SIGSTOP = common dso_local global i32 0, align 4
@WUNTRACED = common dso_local global i32 0, align 4
@SIGCONT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_detach(%struct.proc_handle* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.proc_handle*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.proc_handle* %0, %struct.proc_handle** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.proc_handle*, %struct.proc_handle** %4, align 8
  %9 = icmp eq %struct.proc_handle* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  store i32 %11, i32* %3, align 4
  br label %68

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @PRELEASE_HANG, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %3, align 4
  br label %68

18:                                               ; preds = %12
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @PRELEASE_KILL, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load %struct.proc_handle*, %struct.proc_handle** %4, align 8
  %24 = call i32 @proc_getpid(%struct.proc_handle* %23)
  %25 = load i32, i32* @SIGKILL, align 4
  %26 = call i32 @kill(i32 %24, i32 %25)
  br label %65

27:                                               ; preds = %18
  %28 = load %struct.proc_handle*, %struct.proc_handle** %4, align 8
  %29 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PATTACH_RDONLY, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %65

35:                                               ; preds = %27
  %36 = load %struct.proc_handle*, %struct.proc_handle** %4, align 8
  %37 = call i32 @proc_getpid(%struct.proc_handle* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* @PT_DETACH, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @ptrace(i32 %38, i32 %39, i32 0, i32 0)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load i64, i64* @errno, align 8
  %44 = load i64, i64* @ESRCH, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %65

47:                                               ; preds = %42, %35
  %48 = load i64, i64* @errno, align 8
  %49 = load i64, i64* @EBUSY, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %47
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @SIGSTOP, align 4
  %54 = call i32 @kill(i32 %52, i32 %53)
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @WUNTRACED, align 4
  %57 = call i32 @waitpid(i32 %55, i32* %6, i32 %56)
  %58 = load i32, i32* @PT_DETACH, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i64 @ptrace(i32 %58, i32 %59, i32 0, i32 0)
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @SIGCONT, align 4
  %63 = call i32 @kill(i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %51, %47
  br label %65

65:                                               ; preds = %64, %46, %34, %22
  %66 = load %struct.proc_handle*, %struct.proc_handle** %4, align 8
  %67 = call i32 @proc_free(%struct.proc_handle* %66)
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %65, %16, %10
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @proc_getpid(%struct.proc_handle*) #1

declare dso_local i64 @ptrace(i32, i32, i32, i32) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @proc_free(%struct.proc_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
