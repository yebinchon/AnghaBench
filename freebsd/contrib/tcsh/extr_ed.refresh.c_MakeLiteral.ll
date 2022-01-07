; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.refresh.c_MakeLiteral.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.refresh.c_MakeLiteral.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LITERAL = common dso_local global i32 0, align 4
@litptr = common dso_local global i64* null, align 8
@LIT_FACTOR = common dso_local global i32 0, align 4
@litlen = common dso_local global i32 0, align 4
@litalloc = common dso_local global i32 0, align 4
@CHAR_DBWIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @MakeLiteral to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MakeLiteral(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32* null, i32** %10, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %83

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @LITERAL, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %15
  %21 = load i64*, i64** @litptr, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @LITERAL, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = load i32, i32* @LIT_FACTOR, align 4
  %27 = mul nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %21, i64 %28
  %30 = bitcast i64* %29 to i32*
  store i32* %30, i32** %10, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = call i32 @Strlen(i32* %31)
  store i32 %32, i32* %9, align 4
  br label %34

33:                                               ; preds = %15
  store i32* %7, i32** %10, align 8
  store i32 1, i32* %9, align 4
  br label %34

34:                                               ; preds = %33, %20
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %78, %34
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @litlen, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %82

39:                                               ; preds = %35
  %40 = load i32*, i32** %10, align 8
  %41 = load i64*, i64** @litptr, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @Strncmp(i32* %40, i64* %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %77, label %48

48:                                               ; preds = %39
  %49 = load i32*, i32** %5, align 8
  %50 = load i64*, i64** @litptr, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @Strncmp(i32* %49, i64* %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %77, label %60

60:                                               ; preds = %48
  %61 = load i64*, i64** @litptr, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %62, %63
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %61, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %60
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @LIT_FACTOR, align 4
  %74 = sdiv i32 %72, %73
  %75 = load i32, i32* @LITERAL, align 4
  %76 = or i32 %74, %75
  store i32 %76, i32* %4, align 4
  br label %231

77:                                               ; preds = %60, %48, %39
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* @LIT_FACTOR, align 4
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %8, align 4
  br label %35

82:                                               ; preds = %35
  br label %118

83:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %84

84:                                               ; preds = %113, %83
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @litlen, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %117

88:                                               ; preds = %84
  %89 = load i32*, i32** %5, align 8
  %90 = load i64*, i64** @litptr, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @Strncmp(i32* %89, i64* %93, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %112, label %97

97:                                               ; preds = %88
  %98 = load i64*, i64** @litptr, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %98, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %97
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @LIT_FACTOR, align 4
  %109 = sdiv i32 %107, %108
  %110 = load i32, i32* @LITERAL, align 4
  %111 = or i32 %109, %110
  store i32 %111, i32* %4, align 4
  br label %231

112:                                              ; preds = %97, %88
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* @LIT_FACTOR, align 4
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %8, align 4
  br label %84

117:                                              ; preds = %84
  br label %118

118:                                              ; preds = %117, %82
  %119 = load i32, i32* @litlen, align 4
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %119, %120
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %121, %122
  %124 = add nsw i32 %123, 1
  %125 = load i32, i32* @LIT_FACTOR, align 4
  %126 = sub nsw i32 %125, 1
  %127 = add nsw i32 %124, %126
  %128 = load i32, i32* @litalloc, align 4
  %129 = icmp sgt i32 %127, %128
  br i1 %129, label %130, label %179

130:                                              ; preds = %118
  store i32 256, i32* %12, align 4
  br label %131

131:                                              ; preds = %141, %130
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %132, %133
  %135 = add nsw i32 %134, 1
  %136 = load i32, i32* @LIT_FACTOR, align 4
  %137 = sub nsw i32 %136, 1
  %138 = add nsw i32 %135, %137
  %139 = load i32, i32* %12, align 4
  %140 = icmp sgt i32 %138, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %131
  %142 = load i32, i32* %12, align 4
  %143 = mul nsw i32 %142, 2
  store i32 %143, i32* %12, align 4
  br label %131

144:                                              ; preds = %131
  %145 = load i64*, i64** @litptr, align 8
  %146 = load i32, i32* @litalloc, align 4
  %147 = load i32, i32* %12, align 4
  %148 = add nsw i32 %146, %147
  %149 = sext i32 %148 to i64
  %150 = mul i64 %149, 4
  %151 = trunc i64 %150 to i32
  %152 = call i32* @xrealloc(i64* %145, i32 %151)
  store i32* %152, i32** %11, align 8
  %153 = load i32*, i32** %11, align 8
  %154 = icmp ne i32* %153, null
  br i1 %154, label %156, label %155

155:                                              ; preds = %144
  store i32 63, i32* %4, align 4
  br label %231

156:                                              ; preds = %144
  %157 = load i32*, i32** %11, align 8
  %158 = bitcast i32* %157 to i64*
  store i64* %158, i64** @litptr, align 8
  %159 = load i32, i32* %12, align 4
  %160 = load i32, i32* @litalloc, align 4
  %161 = add nsw i32 %160, %159
  store i32 %161, i32* @litalloc, align 4
  %162 = load i32*, i32** %10, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %164, label %178

164:                                              ; preds = %156
  %165 = load i32*, i32** %10, align 8
  %166 = icmp ne i32* %165, %7
  br i1 %166, label %167, label %178

167:                                              ; preds = %164
  %168 = load i64*, i64** @litptr, align 8
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* @LITERAL, align 4
  %171 = xor i32 %170, -1
  %172 = and i32 %169, %171
  %173 = load i32, i32* @LIT_FACTOR, align 4
  %174 = mul nsw i32 %172, %173
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i64, i64* %168, i64 %175
  %177 = bitcast i64* %176 to i32*
  store i32* %177, i32** %10, align 8
  br label %178

178:                                              ; preds = %167, %164, %156
  br label %179

179:                                              ; preds = %178, %118
  %180 = load i32, i32* @litlen, align 4
  %181 = load i32, i32* @LIT_FACTOR, align 4
  %182 = sdiv i32 %180, %181
  store i32 %182, i32* %8, align 4
  %183 = load i32, i32* %8, align 4
  %184 = load i32, i32* @LITERAL, align 4
  %185 = icmp sge i32 %183, %184
  br i1 %185, label %190, label %186

186:                                              ; preds = %179
  %187 = load i32, i32* %8, align 4
  %188 = load i32, i32* @CHAR_DBWIDTH, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %186, %179
  store i32 63, i32* %4, align 4
  br label %231

191:                                              ; preds = %186
  %192 = load i32*, i32** %10, align 8
  %193 = icmp ne i32* %192, null
  br i1 %193, label %194, label %205

194:                                              ; preds = %191
  %195 = load i64*, i64** @litptr, align 8
  %196 = load i32, i32* @litlen, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i64, i64* %195, i64 %197
  %199 = load i32*, i32** %10, align 8
  %200 = load i32, i32* %9, align 4
  %201 = call i32 @Strncpy(i64* %198, i32* %199, i32 %200)
  %202 = load i32, i32* %9, align 4
  %203 = load i32, i32* @litlen, align 4
  %204 = add nsw i32 %203, %202
  store i32 %204, i32* @litlen, align 4
  br label %205

205:                                              ; preds = %194, %191
  %206 = load i64*, i64** @litptr, align 8
  %207 = load i32, i32* @litlen, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i64, i64* %206, i64 %208
  %210 = load i32*, i32** %5, align 8
  %211 = load i32, i32* %6, align 4
  %212 = call i32 @Strncpy(i64* %209, i32* %210, i32 %211)
  %213 = load i32, i32* %6, align 4
  %214 = load i32, i32* @litlen, align 4
  %215 = add nsw i32 %214, %213
  store i32 %215, i32* @litlen, align 4
  br label %216

216:                                              ; preds = %222, %205
  %217 = load i64*, i64** @litptr, align 8
  %218 = load i32, i32* @litlen, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* @litlen, align 4
  %220 = sext i32 %218 to i64
  %221 = getelementptr inbounds i64, i64* %217, i64 %220
  store i64 0, i64* %221, align 8
  br label %222

222:                                              ; preds = %216
  %223 = load i32, i32* @litlen, align 4
  %224 = load i32, i32* @LIT_FACTOR, align 4
  %225 = srem i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %216, label %227

227:                                              ; preds = %222
  %228 = load i32, i32* %8, align 4
  %229 = load i32, i32* @LITERAL, align 4
  %230 = or i32 %228, %229
  store i32 %230, i32* %4, align 4
  br label %231

231:                                              ; preds = %227, %190, %155, %106, %71
  %232 = load i32, i32* %4, align 4
  ret i32 %232
}

declare dso_local i32 @Strlen(i32*) #1

declare dso_local i32 @Strncmp(i32*, i64*, i32) #1

declare dso_local i32* @xrealloc(i64*, i32) #1

declare dso_local i32 @Strncpy(i64*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
