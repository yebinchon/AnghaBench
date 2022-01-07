; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.screen.c_MoveToLine.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.screen.c_MoveToLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CursorV = common dso_local global i32 0, align 4
@TermV = common dso_local global i32 0, align 4
@T_Margin = common dso_local global i32 0, align 4
@MARGIN_AUTO = common dso_local global i32 0, align 4
@Display = common dso_local global i8** null, align 8
@TermH = common dso_local global i64 0, align 8
@CHAR_DBWIDTH = common dso_local global i8 0, align 1
@CursorH = common dso_local global i64 0, align 8
@T_DO = common dso_local global i32 0, align 4
@PUTPURE = common dso_local global i32 0, align 4
@T_UP = common dso_local global i32 0, align 4
@T_up = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MoveToLine(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @CursorV, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %157

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @TermV, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %157

15:                                               ; preds = %10
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @CursorV, align 4
  %18 = sub nsw i32 %16, %17
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %110

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %108, %21
  %23 = load i32, i32* %3, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %109

25:                                               ; preds = %22
  %26 = load i32, i32* @T_Margin, align 4
  %27 = load i32, i32* @MARGIN_AUTO, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %81

30:                                               ; preds = %25
  %31 = load i8**, i8*** @Display, align 8
  %32 = load i32, i32* @CursorV, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %81

40:                                               ; preds = %30
  %41 = load i64, i64* @TermH, align 8
  %42 = sub i64 %41, 1
  store i64 %42, i64* %4, align 8
  br label %43

43:                                               ; preds = %62, %40
  %44 = load i64, i64* %4, align 8
  %45 = icmp ugt i64 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %43
  %47 = load i8**, i8*** @Display, align 8
  %48 = load i32, i32* @CursorV, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = load i64, i64* %4, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = load i8, i8* @CHAR_DBWIDTH, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %55, %57
  br label %59

59:                                               ; preds = %46, %43
  %60 = phi i1 [ false, %43 ], [ %58, %46 ]
  br i1 %60, label %61, label %65

61:                                               ; preds = %59
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %4, align 8
  %64 = add i64 %63, -1
  store i64 %64, i64* %4, align 8
  br label %43

65:                                               ; preds = %59
  %66 = load i64, i64* %4, align 8
  %67 = call i32 @MoveToChar(i64 %66)
  %68 = load i8**, i8*** @Display, align 8
  %69 = load i32, i32* @CursorV, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = load i64, i64* @CursorH, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  %75 = load i64, i64* @TermH, align 8
  %76 = load i64, i64* @CursorH, align 8
  %77 = sub i64 %75, %76
  %78 = call i32 @so_write(i8* %74, i64 %77)
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %3, align 4
  br label %108

81:                                               ; preds = %30, %25
  %82 = load i32, i32* %3, align 4
  %83 = icmp sgt i32 %82, 1
  br i1 %83, label %84, label %97

84:                                               ; preds = %81
  %85 = load i32, i32* @T_DO, align 4
  %86 = call i64 @GoodStr(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %84
  %89 = load i32, i32* @T_DO, align 4
  %90 = call i32 @Str(i32 %89)
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* %3, align 4
  %93 = call i32 @tgoto(i32 %90, i32 %91, i32 %92)
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* @PUTPURE, align 4
  %96 = call i32 @tputs(i32 %93, i32 %94, i32 %95)
  store i32 0, i32* %3, align 4
  br label %107

97:                                               ; preds = %84, %81
  br label %98

98:                                               ; preds = %103, %97
  %99 = load i32, i32* %3, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = call i32 @putraw(i8 signext 10)
  br label %103

103:                                              ; preds = %101
  %104 = load i32, i32* %3, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %3, align 4
  br label %98

106:                                              ; preds = %98
  store i64 0, i64* @CursorH, align 8
  br label %107

107:                                              ; preds = %106, %88
  br label %108

108:                                              ; preds = %107, %65
  br label %22

109:                                              ; preds = %22
  br label %155

110:                                              ; preds = %15
  %111 = load i32, i32* @T_UP, align 4
  %112 = call i64 @GoodStr(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %134

114:                                              ; preds = %110
  %115 = load i32, i32* %3, align 4
  %116 = sub nsw i32 0, %115
  %117 = icmp sgt i32 %116, 1
  br i1 %117, label %122, label %118

118:                                              ; preds = %114
  %119 = load i32, i32* @T_up, align 4
  %120 = call i64 @GoodStr(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %134, label %122

122:                                              ; preds = %118, %114
  %123 = load i32, i32* @T_UP, align 4
  %124 = call i32 @Str(i32 %123)
  %125 = load i32, i32* %3, align 4
  %126 = sub nsw i32 0, %125
  %127 = load i32, i32* %3, align 4
  %128 = sub nsw i32 0, %127
  %129 = call i32 @tgoto(i32 %124, i32 %126, i32 %128)
  %130 = load i32, i32* %3, align 4
  %131 = sub nsw i32 0, %130
  %132 = load i32, i32* @PUTPURE, align 4
  %133 = call i32 @tputs(i32 %129, i32 %131, i32 %132)
  br label %154

134:                                              ; preds = %118, %110
  %135 = load i32, i32* @T_up, align 4
  %136 = call i64 @GoodStr(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %153

138:                                              ; preds = %134
  store i32 0, i32* %5, align 4
  br label %139

139:                                              ; preds = %149, %138
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* %3, align 4
  %142 = sub nsw i32 0, %141
  %143 = icmp slt i32 %140, %142
  br i1 %143, label %144, label %152

144:                                              ; preds = %139
  %145 = load i32, i32* @T_up, align 4
  %146 = call i32 @Str(i32 %145)
  %147 = load i32, i32* @PUTPURE, align 4
  %148 = call i32 @tputs(i32 %146, i32 1, i32 %147)
  br label %149

149:                                              ; preds = %144
  %150 = load i32, i32* %5, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %5, align 4
  br label %139

152:                                              ; preds = %139
  br label %153

153:                                              ; preds = %152, %134
  br label %154

154:                                              ; preds = %153, %122
  br label %155

155:                                              ; preds = %154, %109
  %156 = load i32, i32* %2, align 4
  store i32 %156, i32* @CursorV, align 4
  br label %157

157:                                              ; preds = %155, %14, %9
  ret void
}

declare dso_local i32 @MoveToChar(i64) #1

declare dso_local i32 @so_write(i8*, i64) #1

declare dso_local i64 @GoodStr(i32) #1

declare dso_local i32 @tputs(i32, i32, i32) #1

declare dso_local i32 @tgoto(i32, i32, i32) #1

declare dso_local i32 @Str(i32) #1

declare dso_local i32 @putraw(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
