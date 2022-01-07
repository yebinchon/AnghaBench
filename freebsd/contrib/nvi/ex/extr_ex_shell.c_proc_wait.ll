; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_shell.c_proc_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_shell.c_proc_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@M_SYSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"waitpid\00", align 1
@SIGPIPE = common dso_local global i64 0, align 8
@M_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"%.*s%s: received signal: %s%s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" ...\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"; core dumped\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"%.*s%s: exited with status %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_wait(i32* %0, i64 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  br label %16

16:                                               ; preds = %30, %5
  store i64 0, i64* @errno, align 8
  %17 = load i64, i64* %8, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i32 @waitpid(i32 %18, i32* %14, i32 0)
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %31

22:                                               ; preds = %16
  %23 = load i64, i64* @errno, align 8
  %24 = load i64, i64* @EINTR, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* @M_SYSERR, align 4
  %29 = call i32 (i32*, i32, i8*, ...) @msgq(i32* %27, i32 %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %134

30:                                               ; preds = %22
  br label %16

31:                                               ; preds = %21
  %32 = load i32, i32* %14, align 4
  %33 = call i64 @WIFSIGNALED(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %85

35:                                               ; preds = %31
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i32, i32* %14, align 4
  %40 = call i64 @WTERMSIG(i32 %39)
  %41 = load i64, i64* @SIGPIPE, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %85

43:                                               ; preds = %38, %35
  br label %44

44:                                               ; preds = %50, %43
  %45 = load i8*, i8** %9, align 8
  %46 = load i8, i8* %45, align 1
  %47 = call i64 @cmdskip(i8 signext %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %49
  %51 = load i8*, i8** %9, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %9, align 8
  br label %44

53:                                               ; preds = %44
  %54 = load i32*, i32** %7, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = call i8* @msg_print(i32* %54, i8* %55, i32* %13)
  store i8* %56, i8** %15, align 8
  %57 = load i8*, i8** %15, align 8
  %58 = call i64 @strlen(i8* %57)
  store i64 %58, i64* %12, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* @M_ERR, align 4
  %61 = load i64, i64* %12, align 8
  %62 = call i64 @MIN(i64 %61, i32 20)
  %63 = trunc i64 %62 to i32
  %64 = load i8*, i8** %15, align 8
  %65 = load i64, i64* %12, align 8
  %66 = icmp ugt i64 %65, 20
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %69 = load i32, i32* %14, align 4
  %70 = call i64 @WTERMSIG(i32 %69)
  %71 = call i32 @sigmsg(i64 %70)
  %72 = load i32, i32* %14, align 4
  %73 = call i64 @WCOREDUMP(i32 %72)
  %74 = icmp ne i64 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %77 = call i32 (i32*, i32, i8*, ...) @msgq(i32* %59, i32 %60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %63, i8* %64, i8* %68, i32 %71, i8* %76)
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %53
  %81 = load i32*, i32** %7, align 8
  %82 = load i8*, i8** %15, align 8
  %83 = call i32 @FREE_SPACE(i32* %81, i8* %82, i32 0)
  br label %84

84:                                               ; preds = %80, %53
  store i32 1, i32* %6, align 4
  br label %134

85:                                               ; preds = %38, %31
  %86 = load i32, i32* %14, align 4
  %87 = call i64 @WIFEXITED(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %133

89:                                               ; preds = %85
  %90 = load i32, i32* %14, align 4
  %91 = call i64 @WEXITSTATUS(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %133

93:                                               ; preds = %89
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %132, label %96

96:                                               ; preds = %93
  br label %97

97:                                               ; preds = %103, %96
  %98 = load i8*, i8** %9, align 8
  %99 = load i8, i8* %98, align 1
  %100 = call i64 @cmdskip(i8 signext %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  br label %103

103:                                              ; preds = %102
  %104 = load i8*, i8** %9, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %9, align 8
  br label %97

106:                                              ; preds = %97
  %107 = load i32*, i32** %7, align 8
  %108 = load i8*, i8** %9, align 8
  %109 = call i8* @msg_print(i32* %107, i8* %108, i32* %13)
  store i8* %109, i8** %15, align 8
  %110 = load i8*, i8** %15, align 8
  %111 = call i64 @strlen(i8* %110)
  store i64 %111, i64* %12, align 8
  %112 = load i32*, i32** %7, align 8
  %113 = load i32, i32* @M_ERR, align 4
  %114 = load i64, i64* %12, align 8
  %115 = call i64 @MIN(i64 %114, i32 20)
  %116 = trunc i64 %115 to i32
  %117 = load i8*, i8** %15, align 8
  %118 = load i64, i64* %12, align 8
  %119 = icmp ugt i64 %118, 20
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %122 = load i32, i32* %14, align 4
  %123 = call i64 @WEXITSTATUS(i32 %122)
  %124 = call i32 (i32*, i32, i8*, ...) @msgq(i32* %112, i32 %113, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %116, i8* %117, i8* %121, i64 %123)
  %125 = load i32, i32* %13, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %106
  %128 = load i32*, i32** %7, align 8
  %129 = load i8*, i8** %15, align 8
  %130 = call i32 @FREE_SPACE(i32* %128, i8* %129, i32 0)
  br label %131

131:                                              ; preds = %127, %106
  br label %132

132:                                              ; preds = %131, %93
  store i32 1, i32* %6, align 4
  br label %134

133:                                              ; preds = %89, %85
  store i32 0, i32* %6, align 4
  br label %134

134:                                              ; preds = %133, %132, %84, %26
  %135 = load i32, i32* %6, align 4
  ret i32 %135
}

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @msgq(i32*, i32, i8*, ...) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i64 @WTERMSIG(i32) #1

declare dso_local i64 @cmdskip(i8 signext) #1

declare dso_local i8* @msg_print(i32*, i8*, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i32 @sigmsg(i64) #1

declare dso_local i64 @WCOREDUMP(i32) #1

declare dso_local i32 @FREE_SPACE(i32*, i8*, i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
