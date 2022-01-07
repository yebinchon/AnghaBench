; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_cvparser.c_CvCommentExists.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_cvparser.c_CvCommentExists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64*, %struct.TYPE_4__* }

@AcpiGbl_CommentAddrListHead = common dso_local global %struct.TYPE_4__* null, align 8
@FALSE = common dso_local global i32 0, align 4
@FILENAME_COMMENT = common dso_local global i64 0, align 8
@PARENTFILENAME_COMMENT = common dso_local global i64 0, align 8
@AcpiGbl_RegCommentCache = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*)* @CvCommentExists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CvCommentExists(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @AcpiGbl_CommentAddrListHead, align 8
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %4, align 8
  %7 = load i64*, i64** %3, align 8
  %8 = icmp ne i64* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %2, align 4
  br label %64

11:                                               ; preds = %1
  %12 = load i64*, i64** %3, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @FILENAME_COMMENT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %11
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @PARENTFILENAME_COMMENT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18, %11
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %2, align 4
  br label %64

24:                                               ; preds = %18
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = icmp ne %struct.TYPE_4__* %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @AcpiGbl_RegCommentCache, align 4
  %29 = call %struct.TYPE_4__* @AcpiOsAcquireObject(i32 %28)
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** @AcpiGbl_CommentAddrListHead, align 8
  %30 = load i64*, i64** %3, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @AcpiGbl_CommentAddrListHead, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i64* %30, i64** %32, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @AcpiGbl_CommentAddrListHead, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %34, align 8
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %2, align 4
  br label %64

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %52, %36
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = icmp ne %struct.TYPE_4__* %38, null
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i64*, i64** %3, align 8
  %45 = icmp ne i64* %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  store %struct.TYPE_4__* %49, %struct.TYPE_4__** %4, align 8
  br label %52

50:                                               ; preds = %40
  %51 = load i32, i32* @TRUE, align 4
  store i32 %51, i32* %2, align 4
  br label %64

52:                                               ; preds = %46
  br label %37

53:                                               ; preds = %37
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @AcpiGbl_CommentAddrListHead, align 8
  store %struct.TYPE_4__* %54, %struct.TYPE_4__** %4, align 8
  %55 = load i32, i32* @AcpiGbl_RegCommentCache, align 4
  %56 = call %struct.TYPE_4__* @AcpiOsAcquireObject(i32 %55)
  store %struct.TYPE_4__* %56, %struct.TYPE_4__** @AcpiGbl_CommentAddrListHead, align 8
  %57 = load i64*, i64** %3, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @AcpiGbl_CommentAddrListHead, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i64* %57, i64** %59, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @AcpiGbl_CommentAddrListHead, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  store %struct.TYPE_4__* %60, %struct.TYPE_4__** %62, align 8
  %63 = load i32, i32* @FALSE, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %53, %50, %27, %22, %9
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.TYPE_4__* @AcpiOsAcquireObject(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
