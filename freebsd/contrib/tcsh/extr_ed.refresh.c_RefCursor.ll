; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.refresh.c_RefCursor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.refresh.c_RefCursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TermH = common dso_local global i32 0, align 4
@Prompt = common dso_local global i32* null, align 8
@LITERAL = common dso_local global i32 0, align 4
@CHAR = common dso_local global i32 0, align 4
@InputBuf = common dso_local global i32* null, align 8
@Cursor = common dso_local global i32* null, align 8
@STRhighlight = common dso_local global i32 0, align 4
@MarkIsSet = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RefCursor() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @TermH, align 4
  store i32 %6, i32* %4, align 4
  %7 = load i32*, i32** @Prompt, align 8
  store i32* %7, i32** %1, align 8
  br label %8

8:                                                ; preds = %77, %23, %0
  %9 = load i32*, i32** %1, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load i32*, i32** %1, align 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i1 [ false, %8 ], [ %14, %11 ]
  br i1 %16, label %17, label %78

17:                                               ; preds = %15
  %18 = load i32*, i32** %1, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @LITERAL, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32*, i32** %1, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %1, align 8
  br label %8

26:                                               ; preds = %17
  %27 = load i32*, i32** %1, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CHAR, align 4
  %30 = and i32 %28, %29
  %31 = load i32*, i32** %1, align 8
  %32 = load i32*, i32** @Prompt, align 8
  %33 = icmp eq i32* %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @NLSClassify(i32 %30, i32 %34, i32 0)
  store i32 %35, i32* %2, align 4
  %36 = load i32*, i32** %1, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %1, align 8
  %38 = load i32, i32* %2, align 4
  switch i32 %38, label %63 [
    i32 129, label %39
    i32 128, label %42
    i32 134, label %50
    i32 133, label %53
    i32 132, label %56
    i32 131, label %56
    i32 130, label %56
  ]

39:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %67

42:                                               ; preds = %26
  br label %43

43:                                               ; preds = %48, %42
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  %46 = and i32 %45, 7
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %43

49:                                               ; preds = %43
  br label %67

50:                                               ; preds = %26
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 2
  store i32 %52, i32* %3, align 4
  br label %67

53:                                               ; preds = %26
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 4
  store i32 %55, i32* %3, align 4
  br label %67

56:                                               ; preds = %26, %26, %26
  %57 = load i32, i32* %2, align 4
  %58 = call i32 @NLSCLASS_ILLEGAL_SIZE(i32 %57)
  %59 = mul nsw i32 2, %58
  %60 = add nsw i32 3, %59
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %3, align 4
  br label %67

63:                                               ; preds = %26
  %64 = load i32, i32* %2, align 4
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %63, %56, %53, %50, %49, %39
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp sge i32 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* %3, align 4
  %74 = sub nsw i32 %73, %72
  store i32 %74, i32* %3, align 4
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %71, %67
  br label %8

78:                                               ; preds = %15
  %79 = load i32*, i32** @InputBuf, align 8
  store i32* %79, i32** %1, align 8
  br label %80

80:                                               ; preds = %135, %78
  %81 = load i32*, i32** %1, align 8
  %82 = load i32*, i32** @Cursor, align 8
  %83 = icmp ult i32* %81, %82
  br i1 %83, label %84, label %136

84:                                               ; preds = %80
  %85 = load i32*, i32** %1, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @CHAR, align 4
  %88 = and i32 %86, %87
  %89 = load i32*, i32** %1, align 8
  %90 = load i32*, i32** @InputBuf, align 8
  %91 = icmp eq i32* %89, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @NLSClassify(i32 %88, i32 %92, i32 0)
  store i32 %93, i32* %2, align 4
  %94 = load i32*, i32** %1, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %1, align 8
  %96 = load i32, i32* %2, align 4
  switch i32 %96, label %121 [
    i32 129, label %97
    i32 128, label %100
    i32 134, label %108
    i32 133, label %111
    i32 132, label %114
    i32 131, label %114
    i32 130, label %114
  ]

97:                                               ; preds = %84
  store i32 0, i32* %3, align 4
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4
  br label %125

100:                                              ; preds = %84
  br label %101

101:                                              ; preds = %106, %100
  %102 = load i32, i32* %3, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %3, align 4
  %104 = and i32 %103, 7
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  br label %101

107:                                              ; preds = %101
  br label %125

108:                                              ; preds = %84
  %109 = load i32, i32* %3, align 4
  %110 = add nsw i32 %109, 2
  store i32 %110, i32* %3, align 4
  br label %125

111:                                              ; preds = %84
  %112 = load i32, i32* %3, align 4
  %113 = add nsw i32 %112, 4
  store i32 %113, i32* %3, align 4
  br label %125

114:                                              ; preds = %84, %84, %84
  %115 = load i32, i32* %2, align 4
  %116 = call i32 @NLSCLASS_ILLEGAL_SIZE(i32 %115)
  %117 = mul nsw i32 2, %116
  %118 = add nsw i32 3, %117
  %119 = load i32, i32* %3, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* %3, align 4
  br label %125

121:                                              ; preds = %84
  %122 = load i32, i32* %2, align 4
  %123 = load i32, i32* %3, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %121, %114, %111, %108, %107, %97
  %126 = load i32, i32* %3, align 4
  %127 = load i32, i32* %4, align 4
  %128 = icmp sge i32 %126, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %125
  %130 = load i32, i32* %4, align 4
  %131 = load i32, i32* %3, align 4
  %132 = sub nsw i32 %131, %130
  store i32 %132, i32* %3, align 4
  %133 = load i32, i32* %5, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %129, %125
  br label %80

136:                                              ; preds = %80
  %137 = load i32, i32* %5, align 4
  %138 = call i32 @MoveToLine(i32 %137)
  %139 = load i32, i32* %3, align 4
  %140 = call i32 @MoveToChar(i32 %139)
  %141 = load i32, i32* @STRhighlight, align 4
  %142 = call i64 @adrof(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %136
  %145 = load i64, i64* @MarkIsSet, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %144
  %148 = call i32 (...) @ClearLines()
  %149 = call i32 (...) @ClearDisp()
  %150 = call i32 (...) @Refresh()
  br label %151

151:                                              ; preds = %147, %144, %136
  %152 = call i32 (...) @flush()
  ret void
}

declare dso_local i32 @NLSClassify(i32, i32, i32) #1

declare dso_local i32 @NLSCLASS_ILLEGAL_SIZE(i32) #1

declare dso_local i32 @MoveToLine(i32) #1

declare dso_local i32 @MoveToChar(i32) #1

declare dso_local i64 @adrof(i32) #1

declare dso_local i32 @ClearLines(...) #1

declare dso_local i32 @ClearDisp(...) #1

declare dso_local i32 @Refresh(...) #1

declare dso_local i32 @flush(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
