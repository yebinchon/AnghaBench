; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.chared.c_v_csearch_fwd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.chared.c_v_csearch_fwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Cursor = common dso_local global i64* null, align 8
@LastChar = common dso_local global i64* null, align 8
@CC_ERROR = common dso_local global i32 0, align 4
@ActionFlag = common dso_local global i32 0, align 4
@TCSHOP_DELETE = common dso_local global i32 0, align 4
@CC_REFRESH = common dso_local global i32 0, align 4
@CC_NORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32)* @v_csearch_fwd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v_csearch_fwd(i64 %0, i32 %1, i32 %2) #0 {
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
  %21 = getelementptr inbounds i64, i64* %20, i32 1
  store i64* %21, i64** %8, align 8
  br label %22

22:                                               ; preds = %19, %14
  br label %23

23:                                               ; preds = %34, %22
  %24 = load i64*, i64** %8, align 8
  %25 = load i64*, i64** @LastChar, align 8
  %26 = icmp ult i64* %24, %25
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
  %36 = getelementptr inbounds i64, i64* %35, i32 1
  store i64* %36, i64** %8, align 8
  br label %23

37:                                               ; preds = %32
  br label %10

38:                                               ; preds = %10
  %39 = load i64*, i64** %8, align 8
  %40 = load i64*, i64** @LastChar, align 8
  %41 = icmp uge i64* %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @CC_ERROR, align 4
  store i32 %43, i32* %4, align 4
  br label %69

44:                                               ; preds = %38
  %45 = load i64*, i64** %8, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %5, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i64*, i64** %8, align 8
  %54 = getelementptr inbounds i64, i64* %53, i32 -1
  store i64* %54, i64** %8, align 8
  br label %55

55:                                               ; preds = %52, %49, %44
  %56 = load i64*, i64** %8, align 8
  store i64* %56, i64** @Cursor, align 8
  %57 = load i32, i32* @ActionFlag, align 4
  %58 = load i32, i32* @TCSHOP_DELETE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load i64*, i64** @Cursor, align 8
  %63 = getelementptr inbounds i64, i64* %62, i32 1
  store i64* %63, i64** @Cursor, align 8
  %64 = call i32 (...) @c_delfini()
  %65 = load i32, i32* @CC_REFRESH, align 4
  store i32 %65, i32* %4, align 4
  br label %69

66:                                               ; preds = %55
  %67 = call i32 (...) @RefCursor()
  %68 = load i32, i32* @CC_NORM, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %66, %61, %42
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @c_delfini(...) #1

declare dso_local i32 @RefCursor(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
