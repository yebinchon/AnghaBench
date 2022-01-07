; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.refresh.c_PutPlusOne.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.refresh.c_PutPlusOne.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CursorH = common dso_local global i64 0, align 8
@TermH = common dso_local global i64 0, align 8
@LITERAL = common dso_local global i32 0, align 4
@litptr = common dso_local global i32* null, align 8
@LIT_FACTOR = common dso_local global i32 0, align 4
@Display = common dso_local global i32** null, align 8
@CursorV = common dso_local global i64 0, align 8
@CHAR_DBWIDTH = common dso_local global i32 0, align 4
@OldvcV = common dso_local global i32 0, align 4
@T_Margin = common dso_local global i32 0, align 4
@MARGIN_AUTO = common dso_local global i32 0, align 4
@MARGIN_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @PutPlusOne to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PutPlusOne(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  br label %6

6:                                                ; preds = %18, %2
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = load i64, i64* @CursorH, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %10, %12
  %14 = load i64, i64* @TermH, align 8
  %15 = icmp sgt i64 %13, %14
  br label %16

16:                                               ; preds = %9, %6
  %17 = phi i1 [ false, %6 ], [ %15, %9 ]
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  call void @PutPlusOne(i32 32, i32 1)
  br label %6

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @LITERAL, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %19
  %25 = load i32*, i32** @litptr, align 8
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @LITERAL, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = load i32, i32* @LIT_FACTOR, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %25, i64 %32
  store i32* %33, i32** %5, align 8
  br label %34

34:                                               ; preds = %42, %24
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @putwraw(i32 %40)
  br label %42

42:                                               ; preds = %38
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %5, align 8
  br label %34

45:                                               ; preds = %34
  br label %49

46:                                               ; preds = %19
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @putwraw(i32 %47)
  br label %49

49:                                               ; preds = %46, %45
  %50 = load i32, i32* %3, align 4
  %51 = load i32**, i32*** @Display, align 8
  %52 = load i64, i64* @CursorV, align 8
  %53 = getelementptr inbounds i32*, i32** %51, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @CursorH, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* @CursorH, align 8
  %57 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32 %50, i32* %57, align 4
  br label %58

58:                                               ; preds = %62, %49
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %4, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %58
  %63 = load i32, i32* @CHAR_DBWIDTH, align 4
  %64 = load i32**, i32*** @Display, align 8
  %65 = load i64, i64* @CursorV, align 8
  %66 = getelementptr inbounds i32*, i32** %64, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @CursorH, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* @CursorH, align 8
  %70 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32 %63, i32* %70, align 4
  br label %58

71:                                               ; preds = %58
  %72 = load i64, i64* @CursorH, align 8
  %73 = load i64, i64* @TermH, align 8
  %74 = icmp sge i64 %72, %73
  br i1 %74, label %75, label %97

75:                                               ; preds = %71
  store i64 0, i64* @CursorH, align 8
  %76 = load i64, i64* @CursorV, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* @CursorV, align 8
  %78 = load i32, i32* @OldvcV, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* @OldvcV, align 4
  %80 = load i32, i32* @T_Margin, align 4
  %81 = load i32, i32* @MARGIN_AUTO, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %75
  %85 = load i32, i32* @T_Margin, align 4
  %86 = load i32, i32* @MARGIN_MAGIC, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = call i32 @putraw(i8 signext 32)
  %91 = call i32 @putraw(i8 signext 8)
  br label %92

92:                                               ; preds = %89, %84
  br label %96

93:                                               ; preds = %75
  %94 = call i32 @putraw(i8 signext 13)
  %95 = call i32 @putraw(i8 signext 10)
  br label %96

96:                                               ; preds = %93, %92
  br label %97

97:                                               ; preds = %96, %71
  ret void
}

declare dso_local i32 @putwraw(i32) #1

declare dso_local i32 @putraw(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
