; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_cvcompiler.c_CvProcessCommentState.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_cvcompiler.c_CvProcessCommentState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32*, i64 }

@AslGbl_CommentState = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ASL_COMMENT_STANDARD = common dso_local global i8* null, align 8
@ASL_COMMENT_OPEN_PAREN = common dso_local global i8* null, align 8
@ASL_COMMENT_CLOSE_PAREN = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"End Parsing paren/Brace node!\0A\00", align 1
@ASL_COMMENT_CLOSE_BRACE = common dso_local global i8* null, align 8
@ASLCOMMENT_INLINE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CvProcessCommentState(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp ne i32 %4, 32
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AslGbl_CommentState, i32 0, i32 2), align 8
  br label %7

7:                                                ; preds = %6, %1
  %8 = load i8, i8* %2, align 1
  %9 = sext i8 %8 to i32
  switch i32 %9, label %26 [
    i32 10, label %10
    i32 32, label %12
    i32 40, label %15
    i32 41, label %17
    i32 123, label %19
    i32 125, label %22
    i32 44, label %24
  ]

10:                                               ; preds = %7
  %11 = load i8*, i8** @ASL_COMMENT_STANDARD, align 8
  store i8* %11, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AslGbl_CommentState, i32 0, i32 0), align 8
  br label %28

12:                                               ; preds = %7
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AslGbl_CommentState, i32 0, i32 2), align 8
  %14 = add nsw i64 %13, 1
  store i64 %14, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AslGbl_CommentState, i32 0, i32 2), align 8
  br label %28

15:                                               ; preds = %7
  %16 = load i8*, i8** @ASL_COMMENT_OPEN_PAREN, align 8
  store i8* %16, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AslGbl_CommentState, i32 0, i32 0), align 8
  br label %28

17:                                               ; preds = %7
  %18 = load i8*, i8** @ASL_COMMENT_CLOSE_PAREN, align 8
  store i8* %18, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AslGbl_CommentState, i32 0, i32 0), align 8
  br label %28

19:                                               ; preds = %7
  %20 = load i8*, i8** @ASL_COMMENT_STANDARD, align 8
  store i8* %20, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AslGbl_CommentState, i32 0, i32 0), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AslGbl_CommentState, i32 0, i32 1), align 8
  %21 = call i32 @CvDbgPrint(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %28

22:                                               ; preds = %7
  %23 = load i8*, i8** @ASL_COMMENT_CLOSE_BRACE, align 8
  store i8* %23, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AslGbl_CommentState, i32 0, i32 0), align 8
  br label %28

24:                                               ; preds = %7
  %25 = load i8*, i8** @ASLCOMMENT_INLINE, align 8
  store i8* %25, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AslGbl_CommentState, i32 0, i32 0), align 8
  br label %28

26:                                               ; preds = %7
  %27 = load i8*, i8** @ASLCOMMENT_INLINE, align 8
  store i8* %27, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AslGbl_CommentState, i32 0, i32 0), align 8
  br label %28

28:                                               ; preds = %26, %24, %22, %19, %17, %15, %12, %10
  ret void
}

declare dso_local i32 @CvDbgPrint(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
