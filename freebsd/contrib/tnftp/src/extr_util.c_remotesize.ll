; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_util.c_remotesize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_util.c_remotesize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@verbose = common dso_local global i32 0, align 4
@ftp_debug = common dso_local global i64 0, align 8
@features = common dso_local global i32* null, align 8
@FEAT_SIZE = common dso_local global i64 0, align 8
@ttyout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"SIZE is not supported by remote server.\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"SIZE %s\00", align 1
@COMPLETE = common dso_local global i32 0, align 4
@reply_string = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@code = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @remotesize(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @verbose, align 4
  store i32 %10, i32* %5, align 4
  store i32 -1, i32* %7, align 4
  %11 = load i64, i64* @ftp_debug, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* @verbose, align 4
  br label %14

14:                                               ; preds = %13, %2
  %15 = load i32*, i32** @features, align 8
  %16 = load i64, i64* @FEAT_SIZE, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* @ttyout, align 4
  %25 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %20
  br label %86

27:                                               ; preds = %14
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @command(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @COMPLETE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %55

33:                                               ; preds = %27
  %34 = load i32, i32* @reply_string, align 4
  %35 = call i8* @strchr(i32 %34, i8 signext 32)
  store i8* %35, i8** %8, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %54

38:                                               ; preds = %33
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %8, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @STRTOLL(i8* %41, i8** %9, i32 10)
  store i32 %42, i32* %7, align 4
  %43 = load i8*, i8** %9, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %38
  %48 = load i8*, i8** %9, align 8
  %49 = load i8, i8* %48, align 1
  %50 = call i32 @isspace(i8 zeroext %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  store i32 -1, i32* %7, align 4
  br label %53

53:                                               ; preds = %52, %47, %38
  br label %54

54:                                               ; preds = %53, %33
  br label %85

55:                                               ; preds = %27
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @ERROR, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %55
  %60 = load i32, i32* @code, align 4
  %61 = icmp eq i32 %60, 500
  br i1 %61, label %62, label %72

62:                                               ; preds = %59
  %63 = load i32*, i32** @features, align 8
  %64 = load i64, i64* @FEAT_SIZE, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load i32*, i32** @features, align 8
  %70 = load i64, i64* @FEAT_SIZE, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32 0, i32* %71, align 4
  br label %72

72:                                               ; preds = %68, %62, %59, %55
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load i64, i64* @ftp_debug, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load i32, i32* @reply_string, align 4
  %80 = load i32, i32* @ttyout, align 4
  %81 = call i32 @fputs(i32 %79, i32 %80)
  %82 = load i32, i32* @ttyout, align 4
  %83 = call i32 @putc(i8 signext 10, i32 %82)
  br label %84

84:                                               ; preds = %78, %75, %72
  br label %85

85:                                               ; preds = %84, %54
  br label %86

86:                                               ; preds = %85, %26
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* @verbose, align 4
  %88 = load i32, i32* %7, align 4
  ret i32 %88
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @command(i8*, i8*) #1

declare dso_local i8* @strchr(i32, i8 signext) #1

declare dso_local i32 @STRTOLL(i8*, i8**, i32) #1

declare dso_local i32 @isspace(i8 zeroext) #1

declare dso_local i32 @fputs(i32, i32) #1

declare dso_local i32 @putc(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
