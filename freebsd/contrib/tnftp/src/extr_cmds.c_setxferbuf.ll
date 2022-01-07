; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_setxferbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_setxferbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"usage: %s size\0A\00", align 1
@code = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"sndbuf\00", align 1
@RATE_PUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"rcvbuf\00", align 1
@RATE_GET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"xferbuf\00", align 1
@RATE_ALL = common dso_local global i32 0, align 4
@ttyout = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"%s: size must be positive.\0A\00", align 1
@sndbuf_size = common dso_local global i32 0, align 4
@rcvbuf_size = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"Socket buffer sizes: send %d, receive %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setxferbuf(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 2
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %52, %48, %39, %9
  %11 = load i8**, i8*** %4, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @UPRINTF(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %13)
  store i32 -1, i32* @code, align 4
  br label %77

15:                                               ; preds = %2
  %16 = load i8**, i8*** %4, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i64 @strcasecmp(i8* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @RATE_PUT, align 4
  store i32 %22, i32* %6, align 4
  br label %42

23:                                               ; preds = %15
  %24 = load i8**, i8*** %4, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @strcasecmp(i8* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @RATE_GET, align 4
  store i32 %30, i32* %6, align 4
  br label %41

31:                                               ; preds = %23
  %32 = load i8**, i8*** %4, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @strcasecmp(i8* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @RATE_ALL, align 4
  store i32 %38, i32* %6, align 4
  br label %40

39:                                               ; preds = %31
  br label %10

40:                                               ; preds = %37
  br label %41

41:                                               ; preds = %40, %29
  br label %42

42:                                               ; preds = %41, %21
  %43 = load i8**, i8*** %4, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @strsuftoi(i8* %45)
  store i32 %46, i32* %5, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %10

49:                                               ; preds = %42
  %50 = load i32, i32* %5, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i32, i32* @ttyout, align 4
  %54 = load i8**, i8*** %4, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %56)
  br label %10

58:                                               ; preds = %49
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @RATE_PUT, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* @sndbuf_size, align 4
  br label %65

65:                                               ; preds = %63, %58
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @RATE_GET, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* @rcvbuf_size, align 4
  br label %72

72:                                               ; preds = %70, %65
  %73 = load i32, i32* @ttyout, align 4
  %74 = load i32, i32* @sndbuf_size, align 4
  %75 = load i32, i32* @rcvbuf_size, align 4
  %76 = call i32 (i32, i8*, ...) @fprintf(i32 %73, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %74, i32 %75)
  store i32 0, i32* @code, align 4
  br label %77

77:                                               ; preds = %72, %10
  ret void
}

declare dso_local i32 @UPRINTF(i8*, i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @strsuftoi(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
