; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_hooks.c_hook_check_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_hooks.c_hook_check_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hookproc = type { i32 }

@hookprocs_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unknown process pid=%u\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Hook exited gracefully (pid=%u, cmd=[%s]).\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Hook was killed (pid=%u, signal=%d, cmd=[%s]).\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"Hook exited ungracefully (pid=%u, exitcode=%d, cmd=[%s]).\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hook_check_one(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.hookproc*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = call i32 @mtx_lock(i32* @hookprocs_lock)
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.hookproc* @hook_find(i32 %7)
  store %struct.hookproc* %8, %struct.hookproc** %5, align 8
  %9 = load %struct.hookproc*, %struct.hookproc** %5, align 8
  %10 = icmp eq %struct.hookproc* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = call i32 @mtx_unlock(i32* @hookprocs_lock)
  %13 = load i32, i32* %3, align 4
  %14 = call i32 (i32, i8*, i32, ...) @pjdlog_debug(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %63

15:                                               ; preds = %2
  %16 = load %struct.hookproc*, %struct.hookproc** %5, align 8
  %17 = call i32 @hook_remove(%struct.hookproc* %16)
  %18 = call i32 @mtx_unlock(i32* @hookprocs_lock)
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @WIFEXITED(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %15
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @WEXITSTATUS(i32 %23)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.hookproc*, %struct.hookproc** %5, align 8
  %29 = getelementptr inbounds %struct.hookproc, %struct.hookproc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i32, i8*, i32, ...) @pjdlog_debug(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %30)
  br label %60

32:                                               ; preds = %22, %15
  %33 = load i32, i32* %4, align 4
  %34 = call i64 @WIFSIGNALED(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @WTERMSIG(i32 %38)
  %40 = load %struct.hookproc*, %struct.hookproc** %5, align 8
  %41 = getelementptr inbounds %struct.hookproc, %struct.hookproc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @pjdlog_error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %37, i32 %39, i32 %42)
  br label %59

44:                                               ; preds = %32
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i64 @WIFEXITED(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @WEXITSTATUS(i32 %50)
  br label %53

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52, %49
  %54 = phi i32 [ %51, %49 ], [ -1, %52 ]
  %55 = load %struct.hookproc*, %struct.hookproc** %5, align 8
  %56 = getelementptr inbounds %struct.hookproc, %struct.hookproc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @pjdlog_error(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %45, i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %53, %36
  br label %60

60:                                               ; preds = %59, %26
  %61 = load %struct.hookproc*, %struct.hookproc** %5, align 8
  %62 = call i32 @hook_free(%struct.hookproc* %61)
  br label %63

63:                                               ; preds = %60, %11
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.hookproc* @hook_find(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @pjdlog_debug(i32, i8*, i32, ...) #1

declare dso_local i32 @hook_remove(%struct.hookproc*) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i32 @pjdlog_error(i8*, i32, i32, i32) #1

declare dso_local i32 @WTERMSIG(i32) #1

declare dso_local i32 @hook_free(%struct.hookproc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
