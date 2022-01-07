; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc.c_mdoc_isdelim.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc.c_mdoc_isdelim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DELIM_NONE = common dso_local global i32 0, align 4
@DELIM_OPEN = common dso_local global i32 0, align 4
@DELIM_MIDDLE = common dso_local global i32 0, align 4
@DELIM_CLOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"fR|\\fP\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdoc_isdelim(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds i8, i8* %4, i64 0
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 0, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @DELIM_NONE, align 4
  store i32 %10, i32* %2, align 4
  br label %54

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 0, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %11
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  switch i32 %21, label %28 [
    i32 40, label %22
    i32 91, label %22
    i32 124, label %24
    i32 46, label %26
    i32 44, label %26
    i32 59, label %26
    i32 58, label %26
    i32 63, label %26
    i32 33, label %26
    i32 41, label %26
    i32 93, label %26
  ]

22:                                               ; preds = %17, %17
  %23 = load i32, i32* @DELIM_OPEN, align 4
  store i32 %23, i32* %2, align 4
  br label %54

24:                                               ; preds = %17
  %25 = load i32, i32* @DELIM_MIDDLE, align 4
  store i32 %25, i32* %2, align 4
  br label %54

26:                                               ; preds = %17, %17, %17, %17, %17, %17, %17, %17
  %27 = load i32, i32* @DELIM_CLOSE, align 4
  store i32 %27, i32* %2, align 4
  br label %54

28:                                               ; preds = %17
  %29 = load i32, i32* @DELIM_NONE, align 4
  store i32 %29, i32* %2, align 4
  br label %54

30:                                               ; preds = %11
  %31 = load i8*, i8** %3, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 92, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @DELIM_NONE, align 4
  store i32 %37, i32* %2, align 4
  br label %54

38:                                               ; preds = %30
  %39 = load i8*, i8** %3, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %42 = icmp eq i64 0, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @DELIM_CLOSE, align 4
  store i32 %44, i32* %2, align 4
  br label %54

45:                                               ; preds = %38
  %46 = load i8*, i8** %3, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %49 = icmp eq i64 0, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @DELIM_MIDDLE, align 4
  store i32 %51, i32* %2, align 4
  br label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @DELIM_NONE, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %50, %43, %36, %28, %26, %24, %22, %9
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
