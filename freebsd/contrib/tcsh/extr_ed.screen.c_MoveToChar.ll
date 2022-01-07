; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.screen.c_MoveToChar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.screen.c_MoveToChar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CursorH = common dso_local global i32 0, align 4
@TermH = common dso_local global i32 0, align 4
@T_ch = common dso_local global i32 0, align 4
@PUTPURE = common dso_local global i32 0, align 4
@T_RI = common dso_local global i32 0, align 4
@T_Tabs = common dso_local global i64 0, align 8
@Display = common dso_local global i64** null, align 8
@CursorV = common dso_local global i64 0, align 8
@CHAR_DBWIDTH = common dso_local global i64 0, align 8
@T_LE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MoveToChar(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  br label %5

5:                                                ; preds = %149, %1
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @CursorH, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  br label %167

10:                                               ; preds = %5
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @TermH, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %167

15:                                               ; preds = %10
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = call i32 @putraw(i8 signext 13)
  store i32 0, i32* @CursorH, align 4
  br label %167

20:                                               ; preds = %15
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @CursorH, align 4
  %23 = sub nsw i32 %21, %22
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %24, -4
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* %3, align 4
  %28 = icmp sgt i32 %27, 4
  br i1 %28, label %29, label %42

29:                                               ; preds = %26, %20
  %30 = load i32, i32* @T_ch, align 4
  %31 = call i64 @GoodStr(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = load i32, i32* @T_ch, align 4
  %35 = call i32 @Str(i32 %34)
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @tgoto(i32 %35, i32 %36, i32 %37)
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* @PUTPURE, align 4
  %41 = call i32 @tputs(i32 %38, i32 %39, i32 %40)
  br label %165

42:                                               ; preds = %29, %26
  %43 = load i32, i32* %3, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %112

45:                                               ; preds = %42
  %46 = load i32, i32* %3, align 4
  %47 = icmp sgt i32 %46, 4
  br i1 %47, label %48, label %61

48:                                               ; preds = %45
  %49 = load i32, i32* @T_RI, align 4
  %50 = call i64 @GoodStr(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = load i32, i32* @T_RI, align 4
  %54 = call i32 @Str(i32 %53)
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @tgoto(i32 %54, i32 %55, i32 %56)
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @PUTPURE, align 4
  %60 = call i32 @tputs(i32 %57, i32 %58, i32 %59)
  br label %111

61:                                               ; preds = %48, %45
  %62 = load i64, i64* @T_Tabs, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %99

64:                                               ; preds = %61
  %65 = load i32, i32* @CursorH, align 4
  %66 = and i32 %65, 248
  %67 = load i32, i32* %2, align 4
  %68 = and i32 %67, -8
  %69 = icmp ne i32 %66, %68
  br i1 %69, label %70, label %98

70:                                               ; preds = %64
  %71 = load i64**, i64*** @Display, align 8
  %72 = load i64, i64* @CursorV, align 8
  %73 = getelementptr inbounds i64*, i64** %71, i64 %72
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %2, align 4
  %76 = and i32 %75, -8
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %74, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @CHAR_DBWIDTH, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %98

82:                                               ; preds = %70
  %83 = load i32, i32* @CursorH, align 4
  %84 = and i32 %83, 248
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %92, %82
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* %2, align 4
  %88 = and i32 %87, -8
  %89 = icmp slt i32 %86, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = call i32 @putraw(i8 signext 9)
  br label %92

92:                                               ; preds = %90
  %93 = load i32, i32* %4, align 4
  %94 = add nsw i32 %93, 8
  store i32 %94, i32* %4, align 4
  br label %85

95:                                               ; preds = %85
  %96 = load i32, i32* %2, align 4
  %97 = and i32 %96, -8
  store i32 %97, i32* @CursorH, align 4
  br label %98

98:                                               ; preds = %95, %70, %64
  br label %99

99:                                               ; preds = %98, %61
  %100 = load i64**, i64*** @Display, align 8
  %101 = load i64, i64* @CursorV, align 8
  %102 = getelementptr inbounds i64*, i64** %100, i64 %101
  %103 = load i64*, i64** %102, align 8
  %104 = load i32, i32* @CursorH, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i32, i32* %2, align 4
  %108 = load i32, i32* @CursorH, align 4
  %109 = sub nsw i32 %107, %108
  %110 = call i32 @so_write(i64* %106, i32 %109)
  br label %111

111:                                              ; preds = %99, %52
  br label %164

112:                                              ; preds = %42
  %113 = load i32, i32* %3, align 4
  %114 = sub nsw i32 0, %113
  %115 = icmp sgt i32 %114, 4
  br i1 %115, label %116, label %132

116:                                              ; preds = %112
  %117 = load i32, i32* @T_LE, align 4
  %118 = call i64 @GoodStr(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %132

120:                                              ; preds = %116
  %121 = load i32, i32* @T_LE, align 4
  %122 = call i32 @Str(i32 %121)
  %123 = load i32, i32* %3, align 4
  %124 = sub nsw i32 0, %123
  %125 = load i32, i32* %3, align 4
  %126 = sub nsw i32 0, %125
  %127 = call i32 @tgoto(i32 %122, i32 %124, i32 %126)
  %128 = load i32, i32* %3, align 4
  %129 = sub nsw i32 0, %128
  %130 = load i32, i32* @PUTPURE, align 4
  %131 = call i32 @tputs(i32 %127, i32 %129, i32 %130)
  br label %163

132:                                              ; preds = %116, %112
  %133 = load i64, i64* @T_Tabs, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %132
  %136 = load i32, i32* %3, align 4
  %137 = sub nsw i32 0, %136
  %138 = load i32, i32* %2, align 4
  %139 = ashr i32 %138, 3
  %140 = load i32, i32* %2, align 4
  %141 = and i32 %140, 7
  %142 = add nsw i32 %139, %141
  %143 = icmp sgt i32 %137, %142
  br i1 %143, label %149, label %151

144:                                              ; preds = %132
  %145 = load i32, i32* %3, align 4
  %146 = sub nsw i32 0, %145
  %147 = load i32, i32* %2, align 4
  %148 = icmp sgt i32 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %144, %135
  %150 = call i32 @putraw(i8 signext 13)
  store i32 0, i32* @CursorH, align 4
  br label %5

151:                                              ; preds = %144, %135
  store i32 0, i32* %4, align 4
  br label %152

152:                                              ; preds = %159, %151
  %153 = load i32, i32* %4, align 4
  %154 = load i32, i32* %3, align 4
  %155 = sub nsw i32 0, %154
  %156 = icmp slt i32 %153, %155
  br i1 %156, label %157, label %162

157:                                              ; preds = %152
  %158 = call i32 @putraw(i8 signext 8)
  br label %159

159:                                              ; preds = %157
  %160 = load i32, i32* %4, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %4, align 4
  br label %152

162:                                              ; preds = %152
  br label %163

163:                                              ; preds = %162, %120
  br label %164

164:                                              ; preds = %163, %111
  br label %165

165:                                              ; preds = %164, %33
  %166 = load i32, i32* %2, align 4
  store i32 %166, i32* @CursorH, align 4
  br label %167

167:                                              ; preds = %165, %18, %14, %9
  ret void
}

declare dso_local i32 @putraw(i8 signext) #1

declare dso_local i64 @GoodStr(i32) #1

declare dso_local i32 @tputs(i32, i32, i32) #1

declare dso_local i32 @tgoto(i32, i32, i32) #1

declare dso_local i32 @Str(i32) #1

declare dso_local i32 @so_write(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
