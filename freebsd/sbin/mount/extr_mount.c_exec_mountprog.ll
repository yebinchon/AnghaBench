; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/mount/extr_mount.c_exec_mountprog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/mount/extr_mount.c_exec_mountprog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@_PATH_SYSPATH = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"exec %s not found\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"in path: %s\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"waitpid\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@sys_siglist = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8**)* @exec_mountprog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_mountprog(i8* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %10 = call i32 (...) @fork()
  store i32 %10, i32* %8, align 4
  switch i32 %10, label %38 [
    i32 -1, label %11
    i32 0, label %14
  ]

11:                                               ; preds = %3
  %12 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @exit(i32 1) #3
  unreachable

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* @_PATH_SYSPATH, align 4
  %17 = load i8**, i8*** %7, align 8
  %18 = call i32 @execvP(i8* %15, i32 %16, i8** %17)
  %19 = load i32, i32* @errno, align 4
  %20 = load i32, i32* @ENOENT, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %14
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 47
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load i32, i32* @_PATH_SYSPATH, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %30, %22
  br label %36

36:                                               ; preds = %35, %14
  %37 = call i32 @exit(i32 1) #3
  unreachable

38:                                               ; preds = %3
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @waitpid(i32 %39, i32* %9, i32 0)
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %71

44:                                               ; preds = %38
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @WIFEXITED(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @WEXITSTATUS(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @WEXITSTATUS(i32 %53)
  store i32 %54, i32* %4, align 4
  br label %71

55:                                               ; preds = %48
  br label %69

56:                                               ; preds = %44
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @WIFSIGNALED(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = load i8*, i8** %5, align 8
  %62 = load i32*, i32** @sys_siglist, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i64 @WTERMSIG(i32 %63)
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %61, i32 %66)
  store i32 1, i32* %4, align 4
  br label %71

68:                                               ; preds = %56
  br label %69

69:                                               ; preds = %68, %55
  br label %70

70:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %60, %52, %42
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @fork(...) #1

declare dso_local i32 @warn(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @execvP(i8*, i32, i8**) #1

declare dso_local i32 @warnx(i8*, i8*, ...) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

declare dso_local i32 @WIFSIGNALED(i32) #1

declare dso_local i64 @WTERMSIG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
