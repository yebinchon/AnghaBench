; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.chared.c_c_delafter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.chared.c_c_delafter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LastChar = common dso_local global i32* null, align 8
@Cursor = common dso_local global i32* null, align 8
@VImode = common dso_local global i64 0, align 8
@UndoBuf = common dso_local global i32* null, align 8
@TCSHOP_INSERT = common dso_local global i32 0, align 4
@UndoAction = common dso_local global i32 0, align 4
@UndoSize = common dso_local global i32 0, align 4
@UndoPtr = common dso_local global i32* null, align 8
@Mark = common dso_local global i32* null, align 8
@MODE_INSERT = common dso_local global i32 0, align 4
@inputmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c_delafter(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %4, align 8
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = load i32*, i32** @LastChar, align 8
  %8 = load i32*, i32** @Cursor, align 8
  %9 = ptrtoint i32* %7 to i64
  %10 = ptrtoint i32* %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 4
  %13 = icmp sgt i64 %6, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load i32*, i32** @LastChar, align 8
  %16 = load i32*, i32** @Cursor, align 8
  %17 = ptrtoint i32* %15 to i64
  %18 = ptrtoint i32* %16 to i64
  %19 = sub i64 %17, %18
  %20 = sdiv exact i64 %19, 4
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %14, %1
  %23 = load i32, i32* %2, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %109

25:                                               ; preds = %22
  %26 = load i64, i64* @VImode, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %25
  %29 = load i32*, i32** @UndoBuf, align 8
  store i32* %29, i32** %4, align 8
  %30 = load i32, i32* @TCSHOP_INSERT, align 4
  store i32 %30, i32* @UndoAction, align 4
  %31 = load i32, i32* %2, align 4
  store i32 %31, i32* @UndoSize, align 4
  %32 = load i32*, i32** @Cursor, align 8
  store i32* %32, i32** @UndoPtr, align 8
  %33 = load i32*, i32** @Cursor, align 8
  store i32* %33, i32** %3, align 8
  br label %34

34:                                               ; preds = %49, %28
  %35 = load i32*, i32** %3, align 8
  %36 = load i32*, i32** @LastChar, align 8
  %37 = icmp ule i32* %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %4, align 8
  store i32 %40, i32* %41, align 4
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* %2, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %3, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %38
  %50 = load i32*, i32** %3, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %3, align 8
  br label %34

52:                                               ; preds = %34
  br label %73

53:                                               ; preds = %25
  %54 = load i32*, i32** @Cursor, align 8
  store i32* %54, i32** %3, align 8
  br label %55

55:                                               ; preds = %69, %53
  %56 = load i32*, i32** %3, align 8
  %57 = load i32, i32* %2, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32*, i32** @LastChar, align 8
  %61 = icmp ule i32* %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %55
  %63 = load i32*, i32** %3, align 8
  %64 = load i32, i32* %2, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %3, align 8
  store i32 %67, i32* %68, align 4
  br label %69

69:                                               ; preds = %62
  %70 = load i32*, i32** %3, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %3, align 8
  br label %55

72:                                               ; preds = %55
  br label %73

73:                                               ; preds = %72, %52
  %74 = load i32, i32* %2, align 4
  %75 = load i32*, i32** @LastChar, align 8
  %76 = sext i32 %74 to i64
  %77 = sub i64 0, %76
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32* %78, i32** @LastChar, align 8
  %79 = load i32*, i32** @Mark, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %94

81:                                               ; preds = %73
  %82 = load i32*, i32** @Mark, align 8
  %83 = load i32*, i32** @Cursor, align 8
  %84 = icmp ugt i32* %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %81
  %86 = load i32*, i32** @Mark, align 8
  %87 = load i32*, i32** @Cursor, align 8
  %88 = load i32, i32* %2, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = icmp ule i32* %86, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i32*, i32** @Cursor, align 8
  store i32* %93, i32** @Mark, align 8
  br label %108

94:                                               ; preds = %85, %81, %73
  %95 = load i32*, i32** @Mark, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %107

97:                                               ; preds = %94
  %98 = load i32*, i32** @Mark, align 8
  %99 = load i32*, i32** @Cursor, align 8
  %100 = icmp ugt i32* %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %97
  %102 = load i32, i32* %2, align 4
  %103 = load i32*, i32** @Mark, align 8
  %104 = sext i32 %102 to i64
  %105 = sub i64 0, %104
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32* %106, i32** @Mark, align 8
  br label %107

107:                                              ; preds = %101, %97, %94
  br label %108

108:                                              ; preds = %107, %92
  br label %109

109:                                              ; preds = %108, %22
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
