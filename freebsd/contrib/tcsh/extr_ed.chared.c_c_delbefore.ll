; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.chared.c_c_delbefore.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.chared.c_c_delbefore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Cursor = common dso_local global i32 0, align 4
@InputBuf = common dso_local global i32 0, align 4
@VImode = common dso_local global i64 0, align 8
@UndoBuf = common dso_local global i32* null, align 8
@TCSHOP_INSERT = common dso_local global i32 0, align 4
@UndoAction = common dso_local global i32 0, align 4
@UndoSize = common dso_local global i32 0, align 4
@UndoPtr = common dso_local global i32 0, align 4
@LastChar = common dso_local global i32* null, align 8
@Mark = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c_delbefore(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %4, align 8
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @Cursor, align 4
  %7 = load i32, i32* @InputBuf, align 4
  %8 = sub nsw i32 %6, %7
  %9 = icmp sgt i32 %5, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @Cursor, align 4
  %12 = load i32, i32* @InputBuf, align 4
  %13 = sub nsw i32 %11, %12
  store i32 %13, i32* %2, align 4
  br label %14

14:                                               ; preds = %10, %1
  %15 = load i32, i32* %2, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %111

17:                                               ; preds = %14
  %18 = load i64, i64* @VImode, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %51

20:                                               ; preds = %17
  %21 = load i32*, i32** @UndoBuf, align 8
  store i32* %21, i32** %4, align 8
  %22 = load i32, i32* @TCSHOP_INSERT, align 4
  store i32 %22, i32* @UndoAction, align 4
  %23 = load i32, i32* %2, align 4
  store i32 %23, i32* @UndoSize, align 4
  %24 = load i32, i32* @Cursor, align 4
  %25 = load i32, i32* %2, align 4
  %26 = sub nsw i32 %24, %25
  store i32 %26, i32* @UndoPtr, align 4
  %27 = load i32, i32* @Cursor, align 4
  %28 = load i32, i32* %2, align 4
  %29 = sub nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** %3, align 8
  br label %32

32:                                               ; preds = %47, %20
  %33 = load i32*, i32** %3, align 8
  %34 = load i32*, i32** @LastChar, align 8
  %35 = icmp ule i32* %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %32
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %4, align 8
  store i32 %38, i32* %39, align 4
  %41 = load i32*, i32** %3, align 8
  %42 = load i32, i32* %2, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %3, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %36
  %48 = load i32*, i32** %3, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %3, align 8
  br label %32

50:                                               ; preds = %32
  br label %75

51:                                               ; preds = %17
  %52 = load i32, i32* @Cursor, align 4
  %53 = load i32, i32* %2, align 4
  %54 = sub nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i32*
  store i32* %56, i32** %3, align 8
  br label %57

57:                                               ; preds = %71, %51
  %58 = load i32*, i32** %3, align 8
  %59 = load i32, i32* %2, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32*, i32** @LastChar, align 8
  %63 = icmp ule i32* %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %57
  %65 = load i32*, i32** %3, align 8
  %66 = load i32, i32* %2, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %3, align 8
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %64
  %72 = load i32*, i32** %3, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %3, align 8
  br label %57

74:                                               ; preds = %57
  br label %75

75:                                               ; preds = %74, %50
  %76 = load i32, i32* %2, align 4
  %77 = load i32*, i32** @LastChar, align 8
  %78 = sext i32 %76 to i64
  %79 = sub i64 0, %78
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32* %80, i32** @LastChar, align 8
  %81 = load i32, i32* %2, align 4
  %82 = load i32, i32* @Cursor, align 4
  %83 = sub nsw i32 %82, %81
  store i32 %83, i32* @Cursor, align 4
  %84 = load i32, i32* @Mark, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %75
  %87 = load i32, i32* @Mark, align 4
  %88 = load i32, i32* @Cursor, align 4
  %89 = icmp sgt i32 %87, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %86
  %91 = load i32, i32* @Mark, align 4
  %92 = load i32, i32* @Cursor, align 4
  %93 = load i32, i32* %2, align 4
  %94 = add nsw i32 %92, %93
  %95 = icmp sle i32 %91, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = load i32, i32* @Cursor, align 4
  store i32 %97, i32* @Mark, align 4
  br label %110

98:                                               ; preds = %90, %86, %75
  %99 = load i32, i32* @Mark, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %98
  %102 = load i32, i32* @Mark, align 4
  %103 = load i32, i32* @Cursor, align 4
  %104 = icmp sgt i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load i32, i32* %2, align 4
  %107 = load i32, i32* @Mark, align 4
  %108 = sub nsw i32 %107, %106
  store i32 %108, i32* @Mark, align 4
  br label %109

109:                                              ; preds = %105, %101, %98
  br label %110

110:                                              ; preds = %109, %96
  br label %111

111:                                              ; preds = %110, %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
