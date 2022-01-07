; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_confirm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZ = common dso_local global i32 0, align 4
@interactive = common dso_local global i64 0, align 8
@confirmrest = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Continue with\00", align 1
@ttyout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"%s %s [anpqy?]? \00", align 1
@stdin = common dso_local global i32 0, align 4
@mflag = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"%s; %s aborted\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Prompting off for duration of %s.\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Interactive mode: off.\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"%s aborted.\0A\00", align 1
@.str.6 = private unnamed_addr constant [196 x i8] c"  confirmation options:\0A\09a  answer `yes' for the duration of %s\0A\09n  answer `no' for this file\0A\09p  turn off `prompt' mode\0A\09q  stop the current %s\0A\09y  answer `yes' for this file\0A\09?  this help list\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @confirm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @confirm(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i32, i32* @BUFSIZ, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i64, i64* @interactive, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @confirmrest, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %2
  store i32 1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %69

22:                                               ; preds = %18
  %23 = load i8*, i8** %5, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %26 = load i8*, i8** %4, align 8
  store i8* %26, i8** %10, align 8
  br label %30

27:                                               ; preds = %22
  %28 = load i8*, i8** %4, align 8
  store i8* %28, i8** %9, align 8
  %29 = load i8*, i8** %5, align 8
  store i8* %29, i8** %10, align 8
  br label %30

30:                                               ; preds = %27, %25
  br label %31

31:                                               ; preds = %63, %30
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* @ttyout, align 4
  %34 = load i8*, i8** %9, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %34, i8* %35)
  %37 = load i32, i32* @ttyout, align 4
  %38 = call i32 @fflush(i32 %37)
  %39 = load i32, i32* @stdin, align 4
  %40 = trunc i64 %13 to i32
  %41 = call i64 @get_line(i32 %39, i8* %15, i32 %40, i8** %6)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %32
  store i64 0, i64* @mflag, align 8
  %44 = load i32, i32* @ttyout, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %45, i8* %46)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %69

48:                                               ; preds = %32
  %49 = load i8, i8* %15, align 16
  %50 = call i32 @tolower(i8 zeroext %49)
  switch i32 %50, label %68 [
    i32 97, label %51
    i32 112, label %55
    i32 113, label %58
    i32 110, label %62
    i32 63, label %63
  ]

51:                                               ; preds = %48
  store i32 1, i32* @confirmrest, align 4
  %52 = load i32, i32* @ttyout, align 4
  %53 = load i8*, i8** %4, align 8
  %54 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %52, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %53)
  br label %68

55:                                               ; preds = %48
  store i64 0, i64* @interactive, align 8
  %56 = load i32, i32* @ttyout, align 4
  %57 = call i32 @fputs(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %56)
  br label %68

58:                                               ; preds = %48
  store i64 0, i64* @mflag, align 8
  %59 = load i32, i32* @ttyout, align 4
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %60)
  br label %62

62:                                               ; preds = %48, %58
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %69

63:                                               ; preds = %48
  %64 = load i32, i32* @ttyout, align 4
  %65 = load i8*, i8** %4, align 8
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([196 x i8], [196 x i8]* @.str.6, i64 0, i64 0), i8* %65, i8* %66)
  br label %31

68:                                               ; preds = %48, %55, %51
  store i32 1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %69

69:                                               ; preds = %68, %62, %43, %21
  %70 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #2

declare dso_local i32 @fflush(i32) #2

declare dso_local i64 @get_line(i32, i8*, i32, i8**) #2

declare dso_local i32 @tolower(i8 zeroext) #2

declare dso_local i32 @fputs(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
