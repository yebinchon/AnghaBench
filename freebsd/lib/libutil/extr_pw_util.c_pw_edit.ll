; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_pw_util.c_pw_edit.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_pw_util.c_pw_edit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i64, i32, i32 }
%struct.stat = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c"EDITOR\00", align 1
@_PATH_VI = common dso_local global i8* null, align 8
@tempname = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@editpid = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@WUNTRACED = common dso_local global i32 0, align 4
@EINTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pw_edit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sigaction, align 8
  %5 = alloca %struct.sigaction, align 8
  %6 = alloca %struct.sigaction, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.stat, align 8
  %10 = alloca %struct.stat, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %13 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %11, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i8*, i8** @_PATH_VI, align 8
  store i8* %16, i8** %11, align 8
  br label %17

17:                                               ; preds = %15, %1
  %18 = load i32, i32* @tempname, align 4
  %19 = call i32 @stat(i32 %18, %struct.stat* %9)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 -1, i32* %2, align 4
  br label %127

22:                                               ; preds = %17
  %23 = load i32, i32* @SIG_IGN, align 4
  %24 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i32 0, i32 2
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i32 0, i32 1
  %26 = call i32 @sigemptyset(i32* %25)
  %27 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* @SIGINT, align 4
  %29 = call i32 @sigaction(i32 %28, %struct.sigaction* %4, %struct.sigaction* %5)
  %30 = load i32, i32* @SIGQUIT, align 4
  %31 = call i32 @sigaction(i32 %30, %struct.sigaction* %4, %struct.sigaction* %6)
  %32 = call i32 @sigemptyset(i32* %8)
  %33 = load i32, i32* @SIGCHLD, align 4
  %34 = call i32 @sigaddset(i32* %8, i32 %33)
  %35 = load i32, i32* @SIG_BLOCK, align 4
  %36 = call i32 @sigprocmask(i32 %35, i32* %8, i32* %7)
  %37 = call i32 (...) @fork()
  store i32 %37, i32* @editpid, align 4
  switch i32 %37, label %60 [
    i32 -1, label %38
    i32 0, label %39
  ]

38:                                               ; preds = %22
  store i32 -1, i32* %2, align 4
  br label %127

39:                                               ; preds = %22
  %40 = load i32, i32* @SIGINT, align 4
  %41 = call i32 @sigaction(i32 %40, %struct.sigaction* %5, %struct.sigaction* null)
  %42 = load i32, i32* @SIGQUIT, align 4
  %43 = call i32 @sigaction(i32 %42, %struct.sigaction* %6, %struct.sigaction* null)
  %44 = load i32, i32* @SIG_SETMASK, align 4
  %45 = call i32 @sigprocmask(i32 %44, i32* %7, i32* null)
  %46 = load i32, i32* %3, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %39
  %49 = call i32 (...) @getgid()
  %50 = call i32 @setgid(i32 %49)
  %51 = call i32 (...) @getuid()
  %52 = call i32 @setuid(i32 %51)
  br label %53

53:                                               ; preds = %48, %39
  store i64 0, i64* @errno, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = load i32, i32* @tempname, align 4
  %57 = call i32 @execlp(i8* %54, i8* %55, i32 %56, i8* null)
  %58 = load i64, i64* @errno, align 8
  %59 = call i32 @_exit(i64 %58) #3
  unreachable

60:                                               ; preds = %22
  br label %61

61:                                               ; preds = %60
  br label %62

62:                                               ; preds = %96, %71, %61
  %63 = load i32, i32* @editpid, align 4
  %64 = load i32, i32* @WUNTRACED, align 4
  %65 = call i32 @waitpid(i32 %63, i32* %12, i32 %64)
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = load i64, i64* @errno, align 8
  %69 = load i64, i64* @EINTR, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %62

72:                                               ; preds = %67
  %73 = load i32, i32* @tempname, align 4
  %74 = call i32 @unlink(i32 %73)
  store i32 -1, i32* @editpid, align 4
  br label %97

75:                                               ; preds = %62
  %76 = load i32, i32* %12, align 4
  %77 = call i64 @WIFSTOPPED(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @WSTOPSIG(i32 %80)
  %82 = call i32 @raise(i32 %81)
  br label %95

83:                                               ; preds = %75
  %84 = load i32, i32* %12, align 4
  %85 = call i64 @WIFEXITED(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load i32, i32* %12, align 4
  %89 = call i64 @WEXITSTATUS(i32 %88)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i32 -1, i32* @editpid, align 4
  br label %97

92:                                               ; preds = %87, %83
  %93 = load i32, i32* @tempname, align 4
  %94 = call i32 @unlink(i32 %93)
  store i32 -1, i32* @editpid, align 4
  br label %97

95:                                               ; preds = %79
  br label %96

96:                                               ; preds = %95
  br label %62

97:                                               ; preds = %92, %91, %72
  %98 = load i32, i32* @SIGINT, align 4
  %99 = call i32 @sigaction(i32 %98, %struct.sigaction* %5, %struct.sigaction* null)
  %100 = load i32, i32* @SIGQUIT, align 4
  %101 = call i32 @sigaction(i32 %100, %struct.sigaction* %6, %struct.sigaction* null)
  %102 = load i32, i32* @SIG_SETMASK, align 4
  %103 = call i32 @sigprocmask(i32 %102, i32* %7, i32* null)
  %104 = load i32, i32* @tempname, align 4
  %105 = call i32 @stat(i32 %104, %struct.stat* %10)
  %106 = icmp eq i32 %105, -1
  br i1 %106, label %107, label %108

107:                                              ; preds = %97
  store i32 -1, i32* %2, align 4
  br label %127

108:                                              ; preds = %97
  %109 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %111, %114
  br i1 %115, label %124, label %116

116:                                              ; preds = %108
  %117 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %119, %122
  br label %124

124:                                              ; preds = %116, %108
  %125 = phi i1 [ true, %108 ], [ %123, %116 ]
  %126 = zext i1 %125 to i32
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %124, %107, %38, %21
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @stat(i32, %struct.stat*) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @setgid(i32) #1

declare dso_local i32 @getgid(...) #1

declare dso_local i32 @setuid(i32) #1

declare dso_local i32 @getuid(...) #1

declare dso_local i32 @execlp(i8*, i8*, i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i64) #2

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @unlink(i32) #1

declare dso_local i64 @WIFSTOPPED(i32) #1

declare dso_local i32 @raise(i32) #1

declare dso_local i32 @WSTOPSIG(i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
