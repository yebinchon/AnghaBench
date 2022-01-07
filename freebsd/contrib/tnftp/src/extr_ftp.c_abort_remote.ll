; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_ftp.c_abort_remote.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_ftp.c_abort_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZ = common dso_local global i32 0, align 4
@cout = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"Lost control connection for abort\00", align 1
@ptabflg = common dso_local global i64 0, align 8
@code = common dso_local global i32 0, align 4
@IAC = common dso_local global i8 0, align 1
@IP = common dso_local global i8 0, align 1
@MSG_OOB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Can't send abort message\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%cABOR\0D\0A\00", align 1
@DM = common dso_local global i32 0, align 4
@cin = common dso_local global i32 0, align 4
@ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @abort_remote(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i32, i32* @BUFSIZ, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = load i32*, i32** @cout, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = call i32 @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %15 = load i64, i64* @ptabflg, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 -1, i32* @code, align 4
  br label %18

18:                                               ; preds = %17, %13
  %19 = call i32 @lostpeer(i32 0)
  store i32 1, i32* %6, align 4
  br label %82

20:                                               ; preds = %1
  %21 = load i8, i8* @IAC, align 1
  %22 = getelementptr inbounds i8, i8* %10, i64 0
  store i8 %21, i8* %22, align 16
  %23 = load i8, i8* @IP, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 1
  store i8 %23, i8* %24, align 1
  %25 = load i8, i8* @IAC, align 1
  %26 = getelementptr inbounds i8, i8* %10, i64 2
  store i8 %25, i8* %26, align 2
  %27 = load i32*, i32** @cout, align 8
  %28 = call i32 @fileno(i32* %27)
  %29 = load i32, i32* @MSG_OOB, align 4
  %30 = call i32 @send(i32 %28, i8* %10, i32 3, i32 %29)
  %31 = icmp ne i32 %30, 3
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = call i32 @warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %20
  %35 = load i32*, i32** @cout, align 8
  %36 = load i32, i32* @DM, align 4
  %37 = call i32 @fprintf(i32* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load i32*, i32** @cout, align 8
  %39 = call i32 @fflush(i32* %38)
  %40 = load i32, i32* @cin, align 4
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @empty(i32 %40, i32* %41, i32 10)
  store i32 %42, i32* %5, align 4
  %43 = icmp sle i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %34
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = call i32 @warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %44
  %50 = load i64, i64* @ptabflg, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 -1, i32* @code, align 4
  br label %53

53:                                               ; preds = %52, %49
  %54 = call i32 @lostpeer(i32 0)
  br label %55

55:                                               ; preds = %53, %34
  %56 = load i32*, i32** %2, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %71

58:                                               ; preds = %55
  %59 = load i32, i32* %5, align 4
  %60 = and i32 %59, 2
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %58
  br label %63

63:                                               ; preds = %69, %62
  %64 = load i32*, i32** %2, align 8
  %65 = call i32 @fileno(i32* %64)
  %66 = load i32, i32* @BUFSIZ, align 4
  %67 = call i64 @read(i32 %65, i8* %10, i32 %66)
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %63

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70, %58, %55
  %72 = call i64 @getreply(i32 0)
  %73 = load i64, i64* @ERROR, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load i32, i32* @code, align 4
  %77 = icmp eq i32 %76, 552
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = call i64 @getreply(i32 0)
  br label %80

80:                                               ; preds = %78, %75, %71
  %81 = call i64 @getreply(i32 0)
  store i32 0, i32* %6, align 4
  br label %82

82:                                               ; preds = %80, %18
  %83 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i32, i32* %6, align 4
  switch i32 %84, label %86 [
    i32 0, label %85
    i32 1, label %85
  ]

85:                                               ; preds = %82, %82
  ret void

86:                                               ; preds = %82
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @warnx(i8*) #2

declare dso_local i32 @lostpeer(i32) #2

declare dso_local i32 @send(i32, i8*, i32, i32) #2

declare dso_local i32 @fileno(i32*) #2

declare dso_local i32 @warn(i8*) #2

declare dso_local i32 @fprintf(i32*, i8*, i32) #2

declare dso_local i32 @fflush(i32*) #2

declare dso_local i32 @empty(i32, i32*, i32) #2

declare dso_local i64 @read(i32, i8*, i32) #2

declare dso_local i64 @getreply(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
