; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_shell.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_shell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"usage: %s [command [args]]\0A\00", align 1
@code = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1
@_PATH_BSHELL = common dso_local global i8* null, align 8
@ftp_debug = common dso_local global i64 0, align 8
@ttyout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@altarg = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Can't execute `%s'\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Can't fork a subshell; try again later\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @shell(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %13 = load i32, i32* @MAXPATHLEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load i32, i32* %3, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load i8**, i8*** %4, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @UPRINTF(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %22)
  store i32 -1, i32* @code, align 4
  store i32 1, i32* %12, align 4
  br label %96

24:                                               ; preds = %2
  %25 = load i32, i32* @SIGINT, align 4
  %26 = load i32, i32* @SIG_IGN, align 4
  %27 = call i32 @xsignal(i32 %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = call i32 (...) @fork()
  store i32 %28, i32* %5, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %76

30:                                               ; preds = %24
  %31 = call i32 @closefrom(i32 3)
  %32 = load i32, i32* @SIGINT, align 4
  %33 = load i32, i32* @SIG_DFL, align 4
  %34 = call i32 @xsignal(i32 %32, i32 %33)
  %35 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i8* %35, i8** %9, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i8*, i8** @_PATH_BSHELL, align 8
  store i8* %39, i8** %9, align 8
  br label %40

40:                                               ; preds = %38, %30
  %41 = load i8*, i8** %9, align 8
  %42 = call i8* @strrchr(i8* %41, i8 signext 47)
  store i8* %42, i8** %10, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i8*, i8** %9, align 8
  store i8* %46, i8** %10, align 8
  br label %50

47:                                               ; preds = %40
  %48 = load i8*, i8** %10, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %10, align 8
  br label %50

50:                                               ; preds = %47, %45
  %51 = load i8*, i8** %10, align 8
  %52 = trunc i64 %14 to i32
  %53 = call i32 @strlcpy(i8* %16, i8* %51, i32 %52)
  %54 = load i64, i64* @ftp_debug, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load i8*, i8** %9, align 8
  %58 = load i32, i32* @ttyout, align 4
  %59 = call i32 @fputs(i8* %57, i32 %58)
  %60 = load i32, i32* @ttyout, align 4
  %61 = call i32 @putc(i8 signext 10, i32 %60)
  br label %62

62:                                               ; preds = %56, %50
  %63 = load i32, i32* %3, align 4
  %64 = icmp sgt i32 %63, 1
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i8*, i8** %9, align 8
  %67 = load i32, i32* @altarg, align 4
  %68 = call i32 (i8*, i8*, i8*, ...) @execl(i8* %66, i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %67, i8* null)
  br label %72

69:                                               ; preds = %62
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 (i8*, i8*, i8*, ...) @execl(i8* %70, i8* %16, i8* null)
  br label %72

72:                                               ; preds = %69, %65
  %73 = load i8*, i8** %9, align 8
  %74 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %73)
  store i32 -1, i32* @code, align 4
  %75 = call i32 @exit(i32 1) #4
  unreachable

76:                                               ; preds = %24
  %77 = load i32, i32* %5, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  br label %80

80:                                               ; preds = %84, %79
  %81 = call i32 @wait(i32* %11)
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %80

85:                                               ; preds = %80
  br label %86

86:                                               ; preds = %85, %76
  %87 = load i32, i32* @SIGINT, align 4
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @xsignal(i32 %87, i32 %88)
  %90 = load i32, i32* %5, align 4
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* @code, align 4
  br label %95

94:                                               ; preds = %86
  store i32 0, i32* @code, align 4
  br label %95

95:                                               ; preds = %94, %92
  store i32 0, i32* %12, align 4
  br label %96

96:                                               ; preds = %95, %19
  %97 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %97)
  %98 = load i32, i32* %12, align 4
  switch i32 %98, label %100 [
    i32 0, label %99
    i32 1, label %99
  ]

99:                                               ; preds = %96, %96
  ret void

100:                                              ; preds = %96
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @UPRINTF(i8*, i8*) #2

declare dso_local i32 @xsignal(i32, i32) #2

declare dso_local i32 @fork(...) #2

declare dso_local i32 @closefrom(i32) #2

declare dso_local i8* @getenv(i8*) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @fputs(i8*, i32) #2

declare dso_local i32 @putc(i8 signext, i32) #2

declare dso_local i32 @execl(i8*, i8*, i8*, ...) #2

declare dso_local i32 @warn(i8*, ...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @wait(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
