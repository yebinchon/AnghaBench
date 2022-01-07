; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_cvcompiler.c_CvPlaceComment.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_cvcompiler.c_CvPlaceComment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8*, i8* }

@AslGbl_CommentState = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [32 x i8] c"Placing comment %s for type %d\0A\00", align 1
@AslGbl_InlineCommentBuffer = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CvPlaceComment(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @AslGbl_CommentState, i32 0, i32 1), align 8
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %5, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @AslGbl_CommentState, i32 0, i32 0), align 8
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @CvDbgPrint(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %9, i32 %10)
  %12 = load i32, i32* %3, align 4
  switch i32 %12, label %59 [
    i32 128, label %13
    i32 132, label %16
    i32 129, label %26
    i32 130, label %30
    i32 131, label %54
  ]

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @CvAddToCommentList(i8* %14)
  br label %60

16:                                               ; preds = %2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i8* @CvAppendInlineComment(i8* %20, i8* %21)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  store i8* %22, i8** %25, align 8
  br label %60

26:                                               ; preds = %2
  %27 = load i8*, i8** @AslGbl_InlineCommentBuffer, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i8* @CvAppendInlineComment(i8* %27, i8* %28)
  store i8* %29, i8** @AslGbl_InlineCommentBuffer, align 8
  br label %60

30:                                               ; preds = %2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = icmp ne %struct.TYPE_5__* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = call i8* @CvAppendInlineComment(i8* %37, i8* %38)
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i8* %39, i8** %42, align 8
  br label %53

43:                                               ; preds = %30
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = call i8* @CvAppendInlineComment(i8* %47, i8* %48)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i8* %49, i8** %52, align 8
  br label %53

53:                                               ; preds = %43, %33
  br label %60

54:                                               ; preds = %2
  %55 = load i8*, i8** %4, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i8* %55, i8** %58, align 8
  br label %60

59:                                               ; preds = %2
  br label %60

60:                                               ; preds = %59, %54, %53, %26, %16, %13
  ret void
}

declare dso_local i32 @CvDbgPrint(i8*, i8*, i32) #1

declare dso_local i32 @CvAddToCommentList(i8*) #1

declare dso_local i8* @CvAppendInlineComment(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
