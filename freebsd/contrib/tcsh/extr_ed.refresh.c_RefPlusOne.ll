; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.refresh.c_RefPlusOne.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.refresh.c_RefPlusOne.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Cursor = common dso_local global i32 0, align 4
@LastChar = common dso_local global i32 0, align 4
@rprompt_h = common dso_local global i64 0, align 8
@TermH = common dso_local global i64 0, align 8
@CursorH = common dso_local global i64 0, align 8
@CHAR = common dso_local global i32 0, align 4
@InputBuf = common dso_local global i32* null, align 8
@_toebcdic = common dso_local global i32* null, align 8
@_toascii = common dso_local global i32* null, align 8
@STRhighlight = common dso_local global i32 0, align 4
@MarkIsSet = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RefPlusOne(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @Cursor, align 4
  %7 = load i32, i32* @LastChar, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 (...) @Refresh()
  br label %110

11:                                               ; preds = %1
  %12 = load i64, i64* @rprompt_h, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = load i64, i64* @TermH, align 8
  %16 = load i64, i64* @CursorH, align 8
  %17 = sub nsw i64 %15, %16
  %18 = load i64, i64* @rprompt_h, align 8
  %19 = sub nsw i64 %17, %18
  %20 = icmp slt i64 %19, 3
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = call i32 (...) @Refresh()
  br label %110

23:                                               ; preds = %14, %11
  %24 = load i32, i32* @Cursor, align 4
  %25 = load i32, i32* %2, align 4
  %26 = sub nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %3, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CHAR, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32*, i32** %3, align 8
  %35 = load i32*, i32** @InputBuf, align 8
  %36 = icmp eq i32* %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @NLSClassify(i32 %33, i32 %37, i32 0)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  switch i32 %39, label %106 [
    i32 129, label %40
    i32 128, label %59
    i32 1, label %75
  ]

40:                                               ; preds = %23
  %41 = call i32 @PutPlusOne(i32 94, i32 1)
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @CTL_ESC(i8 signext 127)
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = call i32 @PutPlusOne(i32 63, i32 1)
  br label %108

47:                                               ; preds = %40
  %48 = load i32*, i32** @_toebcdic, align 8
  %49 = load i32*, i32** @_toascii, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, 64
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %48, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @PutPlusOne(i32 %57, i32 1)
  br label %108

59:                                               ; preds = %23
  %60 = call i32 @PutPlusOne(i32 92, i32 1)
  %61 = load i32, i32* %4, align 4
  %62 = ashr i32 %61, 6
  %63 = and i32 %62, 7
  %64 = add nsw i32 %63, 48
  %65 = call i32 @PutPlusOne(i32 %64, i32 1)
  %66 = load i32, i32* %4, align 4
  %67 = ashr i32 %66, 3
  %68 = and i32 %67, 7
  %69 = add nsw i32 %68, 48
  %70 = call i32 @PutPlusOne(i32 %69, i32 1)
  %71 = load i32, i32* %4, align 4
  %72 = and i32 %71, 7
  %73 = add nsw i32 %72, 48
  %74 = call i32 @PutPlusOne(i32 %73, i32 1)
  br label %108

75:                                               ; preds = %23
  %76 = load i32, i32* @STRhighlight, align 4
  %77 = call i32 @adrof(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load i32, i32* @MarkIsSet, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = call i32 (...) @StartHighlight()
  br label %84

84:                                               ; preds = %82, %79, %75
  %85 = load i32, i32* %2, align 4
  %86 = icmp sgt i32 %85, 1
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load i32*, i32** %3, align 8
  %89 = load i32, i32* %2, align 4
  %90 = call i32 @MakeLiteral(i32* %88, i32 %89, i32 0)
  %91 = call i32 @PutPlusOne(i32 %90, i32 1)
  br label %96

92:                                               ; preds = %84
  %93 = load i32*, i32** %3, align 8
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @PutPlusOne(i32 %94, i32 1)
  br label %96

96:                                               ; preds = %92, %87
  %97 = load i32, i32* @STRhighlight, align 4
  %98 = call i32 @adrof(i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %96
  %101 = load i32, i32* @MarkIsSet, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = call i32 (...) @StopHighlight()
  br label %105

105:                                              ; preds = %103, %100, %96
  br label %108

106:                                              ; preds = %23
  %107 = call i32 (...) @Refresh()
  br label %110

108:                                              ; preds = %105, %59, %47, %45
  %109 = call i32 (...) @flush()
  br label %110

110:                                              ; preds = %108, %106, %21, %9
  ret void
}

declare dso_local i32 @Refresh(...) #1

declare dso_local i32 @NLSClassify(i32, i32, i32) #1

declare dso_local i32 @PutPlusOne(i32, i32) #1

declare dso_local i32 @CTL_ESC(i8 signext) #1

declare dso_local i32 @adrof(i32) #1

declare dso_local i32 @StartHighlight(...) #1

declare dso_local i32 @MakeLiteral(i32*, i32, i32) #1

declare dso_local i32 @StopHighlight(...) #1

declare dso_local i32 @flush(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
