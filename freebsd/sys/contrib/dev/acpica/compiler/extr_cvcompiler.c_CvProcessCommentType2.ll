; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_cvcompiler.c_CvProcessCommentType2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_cvcompiler.c_CvProcessCommentType2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64 }

@AcpiGbl_CaptureComments = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Single-line comment\0A\00", align 1
@AslGbl_MsgBuffer = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c" */\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CvProcessCommentType2(i64 %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = bitcast %struct.TYPE_3__* %4 to { i64, i64 }*
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  store i64 %0, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  store i64 %1, i64* %11, align 8
  store i8* %2, i8** %5, align 8
  %12 = load i64, i64* @AcpiGbl_CaptureComments, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %91

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %91

18:                                               ; preds = %14
  %19 = load i8*, i8** %5, align 8
  store i8 0, i8* %19, align 1
  %20 = call i32 @CvDbgPrint(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %21 = load i8*, i8** @AslGbl_MsgBuffer, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = add nsw i32 %22, 1
  %24 = call i8* @UtLocalCacheCalloc(i32 %23)
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i8*, i8** @AslGbl_MsgBuffer, align 8
  %27 = call i32 @strcpy(i8* %25, i8* %26)
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = add nsw i32 %29, %31
  %33 = add nsw i32 %32, 3
  %34 = add nsw i32 %33, 1
  %35 = call i8* @UtLocalCacheCalloc(i32 %34)
  store i8* %35, i8** %8, align 8
  store i64 0, i64* %6, align 8
  br label %36

36:                                               ; preds = %52, %18
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = icmp ult i64 %41, %44
  br label %46

46:                                               ; preds = %40, %36
  %47 = phi i1 [ false, %36 ], [ %45, %40 ]
  br i1 %47, label %48, label %55

48:                                               ; preds = %46
  %49 = load i8*, i8** %8, align 8
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8 32, i8* %51, align 1
  br label %52

52:                                               ; preds = %48
  %53 = load i64, i64* %6, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %6, align 8
  br label %36

55:                                               ; preds = %46
  %56 = load i8*, i8** %8, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @strcat(i8* %56, i8* %57)
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @strcat(i8* %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @strlen(i8* %64)
  %66 = add nsw i32 %63, %65
  %67 = add nsw i32 %66, 3
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %61, i64 %68
  store i8 0, i8* %69, align 1
  %70 = load i8*, i8** %8, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 @strlen(i8* %71)
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %70, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 13
  br i1 %78, label %79, label %86

79:                                               ; preds = %55
  %80 = load i8*, i8** %8, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 @strlen(i8* %81)
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %80, i64 %84
  store i8 0, i8* %85, align 1
  br label %86

86:                                               ; preds = %79, %55
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i8*, i8** %8, align 8
  %90 = call i32 @CvPlaceComment(i32 %88, i8* %89)
  br label %91

91:                                               ; preds = %86, %14, %3
  ret void
}

declare dso_local i32 @CvDbgPrint(i8*) #1

declare dso_local i8* @UtLocalCacheCalloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @CvPlaceComment(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
