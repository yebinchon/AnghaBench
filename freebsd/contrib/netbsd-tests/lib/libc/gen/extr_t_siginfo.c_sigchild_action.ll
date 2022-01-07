; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/gen/extr_t_siginfo.c_sigchild_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/gen/extr_t_siginfo.c_sigchild_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [9 x i8] c"info=%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ptr=%p\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"si_signo=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"si_errno=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"si_code=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"si_uid=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"si_pid=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"si_status=%d\0A\00", align 1
@code = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@child = common dso_local global i32 0, align 4
@status = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_3__*, i8*)* @sigchild_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sigchild_action(i32 %0, %struct.TYPE_3__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %8 = icmp ne %struct.TYPE_3__* %7, null
  br i1 %8, label %9, label %38

9:                                                ; preds = %3
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.TYPE_3__* %10)
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %12)
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %16)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i64 %20)
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i64 %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i64 %28)
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i64 %32)
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i64 %36)
  br label %38

38:                                               ; preds = %9, %3
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* @code, align 4
  %44 = call i32 @ATF_REQUIRE_EQ(i32 %42, i32 %43)
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = load i32, i32* @SIGCHLD, align 4
  %50 = call i32 @ATF_REQUIRE_EQ(i32 %48, i32 %49)
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 (...) @getuid()
  %56 = call i32 @ATF_REQUIRE_EQ(i32 %54, i32 %55)
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = load i32, i32* @child, align 4
  %62 = call i32 @ATF_REQUIRE_EQ(i32 %60, i32 %61)
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = call i64 @WIFEXITED(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %38
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 5
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 @WEXITSTATUS(i32 %73)
  %75 = load i32, i32* @status, align 4
  %76 = call i32 @ATF_REQUIRE_EQ(i32 %74, i32 %75)
  br label %109

77:                                               ; preds = %38
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i32
  %82 = call i64 @WIFSTOPPED(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %77
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  %88 = trunc i64 %87 to i32
  %89 = call i32 @WSTOPSIG(i32 %88)
  %90 = load i32, i32* @status, align 4
  %91 = call i32 @ATF_REQUIRE_EQ(i32 %89, i32 %90)
  br label %108

92:                                               ; preds = %77
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 5
  %95 = load i64, i64* %94, align 8
  %96 = trunc i64 %95 to i32
  %97 = call i64 @WIFSIGNALED(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %92
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 5
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i32
  %104 = call i32 @WTERMSIG(i32 %103)
  %105 = load i32, i32* @status, align 4
  %106 = call i32 @ATF_REQUIRE_EQ(i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %99, %92
  br label %108

108:                                              ; preds = %107, %84
  br label %109

109:                                              ; preds = %108, %69
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ATF_REQUIRE_EQ(i32, i32) #1

declare dso_local i32 @getuid(...) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

declare dso_local i64 @WIFSTOPPED(i32) #1

declare dso_local i32 @WSTOPSIG(i32) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i32 @WTERMSIG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
