; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.chared.c_v_csearch_back.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.chared.c_v_csearch_back.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Cursor = common dso_local global i64* null, align 8
@InputBuf = common dso_local global i64* null, align 8
@CC_ERROR = common dso_local global i32 0, align 4
@ActionFlag = common dso_local global i32 0, align 4
@TCSHOP_DELETE = common dso_local global i32 0, align 4
@CC_REFRESH = common dso_local global i32 0, align 4
@CC_NORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32)* @v_csearch_back to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v_csearch_back(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i64*, i64** @Cursor, align 8
  store i64* %9, i64** %8, align 8
  br label %10

10:                                               ; preds = %37, %3
  %11 = load i32, i32* %6, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %6, align 4
  %13 = icmp ne i32 %11, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %10
  %15 = load i64*, i64** %8, align 8
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i64*, i64** %8, align 8
  %21 = getelementptr inbounds i64, i64* %20, i32 -1
  store i64* %21, i64** %8, align 8
  br label %22

22:                                               ; preds = %19, %14
  br label %23

23:                                               ; preds = %34, %22
  %24 = load i64*, i64** %8, align 8
  %25 = load i64*, i64** @InputBuf, align 8
  %26 = icmp ugt i64* %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i64*, i64** %8, align 8
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp ne i64 %29, %30
  br label %32

32:                                               ; preds = %27, %23
  %33 = phi i1 [ false, %23 ], [ %31, %27 ]
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = load i64*, i64** %8, align 8
  %36 = getelementptr inbounds i64, i64* %35, i32 -1
  store i64* %36, i64** %8, align 8
  br label %23

37:                                               ; preds = %32
  br label %10

38:                                               ; preds = %10
  %39 = load i64*, i64** %8, align 8
  %40 = load i64*, i64** @InputBuf, align 8
  %41 = icmp ult i64* %39, %40
  br i1 %41, label %51, label %42

42:                                               ; preds = %38
  %43 = load i64*, i64** %8, align 8
  %44 = load i64*, i64** @InputBuf, align 8
  %45 = icmp eq i64* %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load i64*, i64** %8, align 8
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %5, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %46, %38
  %52 = load i32, i32* @CC_ERROR, align 4
  store i32 %52, i32* %4, align 4
  br label %78

53:                                               ; preds = %46, %42
  %54 = load i64*, i64** %8, align 8
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %5, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i64*, i64** %8, align 8
  %63 = getelementptr inbounds i64, i64* %62, i32 1
  store i64* %63, i64** %8, align 8
  br label %64

64:                                               ; preds = %61, %58, %53
  %65 = load i64*, i64** %8, align 8
  store i64* %65, i64** @Cursor, align 8
  %66 = load i32, i32* @ActionFlag, align 4
  %67 = load i32, i32* @TCSHOP_DELETE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load i64*, i64** @Cursor, align 8
  %72 = getelementptr inbounds i64, i64* %71, i32 1
  store i64* %72, i64** @Cursor, align 8
  %73 = call i32 (...) @c_delfini()
  %74 = load i32, i32* @CC_REFRESH, align 4
  store i32 %74, i32* %4, align 4
  br label %78

75:                                               ; preds = %64
  %76 = call i32 (...) @RefCursor()
  %77 = load i32, i32* @CC_NORM, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %75, %70, %51
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @c_delfini(...) #1

declare dso_local i32 @RefCursor(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
