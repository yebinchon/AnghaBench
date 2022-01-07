; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.screen.c_so_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.screen.c_so_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TermH = common dso_local global i32 0, align 4
@STRhighlight = common dso_local global i32 0, align 4
@Prompt = common dso_local global i32* null, align 8
@IncMatchLen = common dso_local global i32 0, align 4
@Cursor = common dso_local global i32 0, align 4
@InputBuf = common dso_local global i32 0, align 4
@MarkIsSet = common dso_local global i64 0, align 8
@Mark = common dso_local global i32 0, align 4
@CursorV = common dso_local global i32 0, align 4
@CursorH = common dso_local global i32 0, align 4
@highlighting = common dso_local global i64 0, align 8
@CHAR_DBWIDTH = common dso_local global i32 0, align 4
@LITERAL = common dso_local global i32 0, align 4
@litptr = common dso_local global i32* null, align 8
@LIT_FACTOR = common dso_local global i32 0, align 4
@T_Margin = common dso_local global i32 0, align 4
@MARGIN_AUTO = common dso_local global i32 0, align 4
@MARGIN_MAGIC = common dso_local global i32 0, align 4
@Display = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @so_write(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %229

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @TermH, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %229

20:                                               ; preds = %15
  %21 = load i32, i32* @STRhighlight, align 4
  %22 = call i64 @adrof(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %73

24:                                               ; preds = %20
  %25 = load i32*, i32** @Prompt, align 8
  store i32* %25, i32** %9, align 8
  br label %26

26:                                               ; preds = %31, %24
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %30
  %32 = load i32*, i32** %9, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %9, align 8
  br label %26

34:                                               ; preds = %26
  %35 = load i32*, i32** %9, align 8
  %36 = load i32*, i32** @Prompt, align 8
  %37 = ptrtoint i32* %35 to i64
  %38 = ptrtoint i32* %36 to i64
  %39 = sub i64 %37, %38
  %40 = sdiv exact i64 %39, 4
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* @IncMatchLen, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %34
  %45 = load i32, i32* @Cursor, align 4
  %46 = load i32, i32* @InputBuf, align 4
  %47 = sub nsw i32 %45, %46
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %47, %48
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @IncMatchLen, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %8, align 4
  br label %72

53:                                               ; preds = %34
  %54 = load i64, i64* @MarkIsSet, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %53
  %57 = load i32, i32* @Cursor, align 4
  %58 = load i32, i32* @Mark, align 4
  %59 = call i32 @min(i32 %57, i32 %58)
  %60 = load i32, i32* @InputBuf, align 4
  %61 = sub nsw i32 %59, %60
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %61, %62
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* @Cursor, align 4
  %65 = load i32, i32* @Mark, align 4
  %66 = call i32 @max(i32 %64, i32 %65)
  %67 = load i32, i32* @InputBuf, align 4
  %68 = sub nsw i32 %66, %67
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %68, %69
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %56, %53
  br label %72

72:                                               ; preds = %71, %44
  br label %73

73:                                               ; preds = %72, %20
  br label %74

74:                                               ; preds = %164, %73
  %75 = load i32, i32* @STRhighlight, align 4
  %76 = call i64 @adrof(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %120

78:                                               ; preds = %74
  %79 = load i32, i32* @CursorV, align 4
  %80 = load i32, i32* @TermH, align 4
  %81 = mul nsw i32 %79, %80
  %82 = load i32, i32* @CursorH, align 4
  %83 = add nsw i32 %81, %82
  store i32 %83, i32* %5, align 4
  %84 = load i64, i64* @highlighting, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %78
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp sge i32 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = call i32 (...) @StartHighlight()
  br label %106

96:                                               ; preds = %90, %86, %78
  %97 = load i64, i64* @highlighting, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp sge i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = call i32 (...) @StopHighlight()
  br label %105

105:                                              ; preds = %103, %99, %96
  br label %106

106:                                              ; preds = %105, %94
  %107 = load i64, i64* @highlighting, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %106
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @Cursor, align 4
  %112 = load i32, i32* @InputBuf, align 4
  %113 = sub nsw i32 %111, %112
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %113, %114
  %116 = icmp eq i32 %110, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %109
  %118 = call i32 (...) @StopHighlight()
  br label %119

119:                                              ; preds = %117, %109, %106
  br label %120

120:                                              ; preds = %119, %74
  %121 = load i32*, i32** %3, align 8
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @CHAR_DBWIDTH, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %159

125:                                              ; preds = %120
  %126 = load i32*, i32** %3, align 8
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @LITERAL, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %154

131:                                              ; preds = %125
  %132 = load i32*, i32** @litptr, align 8
  %133 = load i32*, i32** %3, align 8
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @LITERAL, align 4
  %136 = xor i32 %135, -1
  %137 = and i32 %134, %136
  %138 = load i32, i32* @LIT_FACTOR, align 4
  %139 = mul nsw i32 %137, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %132, i64 %140
  store i32* %141, i32** %10, align 8
  br label %142

142:                                              ; preds = %150, %131
  %143 = load i32*, i32** %10, align 8
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %142
  %147 = load i32*, i32** %10, align 8
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @putwraw(i32 %148)
  br label %150

150:                                              ; preds = %146
  %151 = load i32*, i32** %10, align 8
  %152 = getelementptr inbounds i32, i32* %151, i32 1
  store i32* %152, i32** %10, align 8
  br label %142

153:                                              ; preds = %142
  br label %158

154:                                              ; preds = %125
  %155 = load i32*, i32** %3, align 8
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @putwraw(i32 %156)
  br label %158

158:                                              ; preds = %154, %153
  br label %159

159:                                              ; preds = %158, %120
  %160 = load i32*, i32** %3, align 8
  %161 = getelementptr inbounds i32, i32* %160, i32 1
  store i32* %161, i32** %3, align 8
  %162 = load i32, i32* @CursorH, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* @CursorH, align 4
  br label %164

164:                                              ; preds = %159
  %165 = load i32, i32* %4, align 4
  %166 = add nsw i32 %165, -1
  store i32 %166, i32* %4, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %74, label %168

168:                                              ; preds = %164
  %169 = load i32, i32* @STRhighlight, align 4
  %170 = call i64 @adrof(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %168
  %173 = load i64, i64* @highlighting, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %172
  %176 = call i32 (...) @StopHighlight()
  br label %177

177:                                              ; preds = %175, %172, %168
  %178 = load i32, i32* @CursorH, align 4
  %179 = load i32, i32* @TermH, align 4
  %180 = icmp sge i32 %178, %179
  br i1 %180, label %181, label %229

181:                                              ; preds = %177
  %182 = load i32, i32* @T_Margin, align 4
  %183 = load i32, i32* @MARGIN_AUTO, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %225

186:                                              ; preds = %181
  store i32 0, i32* @CursorH, align 4
  %187 = load i32, i32* @CursorV, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* @CursorV, align 4
  %189 = load i32, i32* @T_Margin, align 4
  %190 = load i32, i32* @MARGIN_MAGIC, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %224

193:                                              ; preds = %186
  %194 = load i32**, i32*** @Display, align 8
  %195 = load i32, i32* @CursorV, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32*, i32** %194, i64 %196
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* @CursorH, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  store i32 %202, i32* %11, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %221

204:                                              ; preds = %193
  call void @so_write(i32* %11, i32 1)
  br label %205

205:                                              ; preds = %217, %204
  %206 = load i32**, i32*** @Display, align 8
  %207 = load i32, i32* @CursorV, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32*, i32** %206, i64 %208
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* @CursorH, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @CHAR_DBWIDTH, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %220

217:                                              ; preds = %205
  %218 = load i32, i32* @CursorH, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* @CursorH, align 4
  br label %205

220:                                              ; preds = %205
  br label %223

221:                                              ; preds = %193
  %222 = call i32 @putraw(i8 signext 32)
  store i32 1, i32* @CursorH, align 4
  br label %223

223:                                              ; preds = %221, %220
  br label %224

224:                                              ; preds = %223, %186
  br label %228

225:                                              ; preds = %181
  %226 = load i32, i32* @TermH, align 4
  %227 = sub nsw i32 %226, 1
  store i32 %227, i32* @CursorH, align 4
  br label %228

228:                                              ; preds = %225, %224
  br label %229

229:                                              ; preds = %14, %19, %228, %177
  ret void
}

declare dso_local i64 @adrof(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @StartHighlight(...) #1

declare dso_local i32 @StopHighlight(...) #1

declare dso_local i32 @putwraw(i32) #1

declare dso_local i32 @putraw(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
