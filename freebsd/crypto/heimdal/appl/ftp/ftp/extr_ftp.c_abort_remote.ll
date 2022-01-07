; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_ftp.c_abort_remote.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_ftp.c_abort_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%c%c%c\00", align 1
@IAC = common dso_local global i32 0, align 4
@IP = common dso_local global i32 0, align 4
@cout = common dso_local global i32* null, align 8
@MSG_OOB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"abort\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@DM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"ABOR\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@cin = common dso_local global i32* null, align 8
@FD_SETSIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"fd too large\00", align 1
@ptabflg = common dso_local global i64 0, align 8
@code = common dso_local global i32 0, align 4
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
  %11 = trunc i64 %8 to i32
  %12 = load i32, i32* @IAC, align 4
  %13 = load i32, i32* @IP, align 4
  %14 = load i32, i32* @IAC, align 4
  %15 = call i32 @snprintf(i8* %10, i32 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13, i32 %14)
  %16 = load i32*, i32** @cout, align 8
  %17 = call i32 @fileno(i32* %16)
  %18 = load i32, i32* @MSG_OOB, align 4
  %19 = call i32 @send(i32 %17, i8* %10, i32 3, i32 %18)
  %20 = icmp ne i32 %19, 3
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = call i32 @warn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %1
  %24 = load i32*, i32** @cout, align 8
  %25 = load i32, i32* @DM, align 4
  %26 = call i32 (i32*, i8*, ...) @fprintf(i32* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = load i32*, i32** @cout, align 8
  %28 = call i32 @sec_fprintf(i32* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %29 = load i32*, i32** @cout, align 8
  %30 = call i32 @sec_fflush(i32* %29)
  %31 = load i32*, i32** @cout, align 8
  %32 = call i32 (i32*, i8*, ...) @fprintf(i32* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %33 = load i32*, i32** @cout, align 8
  %34 = call i32 @fflush(i32* %33)
  %35 = call i32 @FD_ZERO(i32* %6)
  %36 = load i32*, i32** @cin, align 8
  %37 = call i32 @fileno(i32* %36)
  %38 = load i32, i32* @FD_SETSIZE, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %23
  %41 = call i32 @errx(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %23
  %43 = load i32*, i32** @cin, align 8
  %44 = call i32 @fileno(i32* %43)
  %45 = call i32 @FD_SET(i32 %44, i32* %6)
  %46 = load i32*, i32** %2, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %59

48:                                               ; preds = %42
  %49 = load i32*, i32** %2, align 8
  %50 = call i32 @fileno(i32* %49)
  %51 = load i32, i32* @FD_SETSIZE, align 4
  %52 = icmp sge i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = call i32 @errx(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %48
  %56 = load i32*, i32** %2, align 8
  %57 = call i32 @fileno(i32* %56)
  %58 = call i32 @FD_SET(i32 %57, i32* %6)
  br label %59

59:                                               ; preds = %55, %42
  %60 = call i32 @empty(i32* %6, i32 10)
  store i32 %60, i32* %5, align 4
  %61 = icmp sle i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %59
  %63 = load i32, i32* %5, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = call i32 @warn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %62
  %68 = load i64, i64* @ptabflg, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 -1, i32* @code, align 4
  br label %71

71:                                               ; preds = %70, %67
  %72 = call i32 @lostpeer(i32 0)
  br label %73

73:                                               ; preds = %71, %59
  %74 = load i32*, i32** %2, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %90

76:                                               ; preds = %73
  %77 = load i32*, i32** %2, align 8
  %78 = call i32 @fileno(i32* %77)
  %79 = call i64 @FD_ISSET(i32 %78, i32* %6)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %88, %81
  %83 = load i32*, i32** %2, align 8
  %84 = call i32 @fileno(i32* %83)
  %85 = load i32, i32* @BUFSIZ, align 4
  %86 = call i64 @read(i32 %84, i8* %10, i32 %85)
  %87 = icmp sgt i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %82

89:                                               ; preds = %82
  br label %90

90:                                               ; preds = %89, %76, %73
  %91 = call i64 @getreply(i32 0)
  %92 = load i64, i64* @ERROR, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load i32, i32* @code, align 4
  %96 = icmp eq i32 %95, 552
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = call i64 @getreply(i32 0)
  br label %99

99:                                               ; preds = %97, %94, %90
  %100 = call i64 @getreply(i32 0)
  %101 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %101)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32) #2

declare dso_local i32 @send(i32, i8*, i32, i32) #2

declare dso_local i32 @fileno(i32*) #2

declare dso_local i32 @warn(i8*) #2

declare dso_local i32 @fprintf(i32*, i8*, ...) #2

declare dso_local i32 @sec_fprintf(i32*, i8*) #2

declare dso_local i32 @sec_fflush(i32*) #2

declare dso_local i32 @fflush(i32*) #2

declare dso_local i32 @FD_ZERO(i32*) #2

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i32 @FD_SET(i32, i32*) #2

declare dso_local i32 @empty(i32*, i32) #2

declare dso_local i32 @lostpeer(i32) #2

declare dso_local i64 @FD_ISSET(i32, i32*) #2

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
