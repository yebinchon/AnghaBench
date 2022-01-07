; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_util.c_proc_wstatus.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_util.c_proc_wstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_handle = type { i32, i32 }

@WUNTRACED = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"waitpid\00", align 1
@PS_STOP = common dso_local global i32 0, align 4
@PS_UNDEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_wstatus(%struct.proc_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.proc_handle*, align 8
  %4 = alloca i32, align 4
  store %struct.proc_handle* %0, %struct.proc_handle** %3, align 8
  %5 = load %struct.proc_handle*, %struct.proc_handle** %3, align 8
  %6 = icmp eq %struct.proc_handle* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %48

8:                                                ; preds = %1
  %9 = load %struct.proc_handle*, %struct.proc_handle** %3, align 8
  %10 = call i32 @proc_getpid(%struct.proc_handle* %9)
  %11 = load i32, i32* @WUNTRACED, align 4
  %12 = call i64 @waitpid(i32 %10, i32* %4, i32 %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %8
  %15 = load i64, i64* @errno, align 8
  %16 = load i64, i64* @EINTR, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i32 @DPRINTF(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %14
  store i32 -1, i32* %2, align 4
  br label %48

21:                                               ; preds = %8
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @WIFSTOPPED(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* @PS_STOP, align 4
  %27 = load %struct.proc_handle*, %struct.proc_handle** %3, align 8
  %28 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %25, %21
  %30 = load i32, i32* %4, align 4
  %31 = call i64 @WIFEXITED(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = call i64 @WIFSIGNALED(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33, %29
  %38 = load i32, i32* @PS_UNDEAD, align 4
  %39 = load %struct.proc_handle*, %struct.proc_handle** %3, align 8
  %40 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %33
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.proc_handle*, %struct.proc_handle** %3, align 8
  %44 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.proc_handle*, %struct.proc_handle** %3, align 8
  %46 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %41, %20, %7
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i64 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @proc_getpid(%struct.proc_handle*) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i64 @WIFSTOPPED(i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
