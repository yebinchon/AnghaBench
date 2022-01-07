; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_setdebug.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_setdebug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"usage: %s [ on | off | debuglevel ]\0A\00", align 1
@code = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@ftp_debug = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@ttyout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"%s: bad debugging value.\0A\00", align 1
@SO_DEBUG = common dso_local global i32 0, align 4
@options = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"Debugging %s (ftp_debug=%d).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setdebug(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = icmp sgt i32 %9, 2
  br i1 %10, label %11, label %16

11:                                               ; preds = %8, %2
  %12 = load i8**, i8*** %4, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @UPRINTF(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %14)
  store i32 -1, i32* @code, align 4
  br label %77

16:                                               ; preds = %8
  %17 = load i32, i32* %3, align 4
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %50

19:                                               ; preds = %16
  %20 = load i8**, i8*** %4, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @strcasecmp(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 1, i32* @ftp_debug, align 4
  br label %49

26:                                               ; preds = %19
  %27 = load i8**, i8*** %4, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @strcasecmp(i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 0, i32* @ftp_debug, align 4
  br label %48

33:                                               ; preds = %26
  %34 = load i8**, i8*** %4, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 1
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @strsuftoi(i8* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load i32, i32* @ttyout, align 4
  %42 = load i8**, i8*** %4, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %44)
  store i32 -1, i32* @code, align 4
  br label %77

46:                                               ; preds = %33
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* @ftp_debug, align 4
  br label %48

48:                                               ; preds = %46, %32
  br label %49

49:                                               ; preds = %48, %25
  br label %55

50:                                               ; preds = %16
  %51 = load i32, i32* @ftp_debug, align 4
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  store i32 %54, i32* @ftp_debug, align 4
  br label %55

55:                                               ; preds = %50, %49
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* @ftp_debug, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i32, i32* @SO_DEBUG, align 4
  %61 = load i32, i32* @options, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* @options, align 4
  br label %68

63:                                               ; preds = %56
  %64 = load i32, i32* @SO_DEBUG, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* @options, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* @options, align 4
  br label %68

68:                                               ; preds = %63, %59
  %69 = load i32, i32* @ttyout, align 4
  %70 = load i32, i32* @ftp_debug, align 4
  %71 = call i8* @onoff(i32 %70)
  %72 = load i32, i32* @ftp_debug, align 4
  %73 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %69, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %71, i32 %72)
  %74 = load i32, i32* @ftp_debug, align 4
  %75 = icmp sgt i32 %74, 0
  %76 = zext i1 %75 to i32
  store i32 %76, i32* @code, align 4
  br label %77

77:                                               ; preds = %68, %40, %11
  ret void
}

declare dso_local i32 @UPRINTF(i8*, i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @strsuftoi(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i8* @onoff(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
