; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_trimFunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_trimFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_NULL = common dso_local global i64 0, align 8
@trimFunc.lenOne = internal constant [1 x i8] c"\01", align 1
@trimFunc.azOne = internal constant [1 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)], align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @trimFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trimFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  store i8* null, i8** %12, align 8
  store i8** null, i8*** %13, align 8
  %18 = load i32**, i32*** %6, align 8
  %19 = getelementptr inbounds i32*, i32** %18, i64 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i64 @sqlite3_value_type(i32* %20)
  %22 = load i64, i64* @SQLITE_NULL, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %244

25:                                               ; preds = %3
  %26 = load i32**, i32*** %6, align 8
  %27 = getelementptr inbounds i32*, i32** %26, i64 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i8* @sqlite3_value_text(i32* %28)
  store i8* %29, i8** %7, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %244

33:                                               ; preds = %25
  %34 = load i32**, i32*** %6, align 8
  %35 = getelementptr inbounds i32*, i32** %34, i64 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @sqlite3_value_bytes(i32* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = load i32**, i32*** %6, align 8
  %40 = getelementptr inbounds i32*, i32** %39, i64 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i8* @sqlite3_value_text(i32* %41)
  %43 = icmp eq i8* %38, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %49

48:                                               ; preds = %33
  store i32 1, i32* %14, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @trimFunc.lenOne, i64 0, i64 0), i8** %12, align 8
  store i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @trimFunc.azOne, i64 0, i64 0), i8*** %13, align 8
  store i8* null, i8** %8, align 8
  br label %120

49:                                               ; preds = %33
  %50 = load i32**, i32*** %6, align 8
  %51 = getelementptr inbounds i32*, i32** %50, i64 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i8* @sqlite3_value_text(i32* %52)
  store i8* %53, i8** %8, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %244

56:                                               ; preds = %49
  %57 = load i8*, i8** %8, align 8
  store i8* %57, i8** %15, align 8
  store i32 0, i32* %14, align 4
  br label %58

58:                                               ; preds = %65, %56
  %59 = load i8*, i8** %15, align 8
  %60 = load i8, i8* %59, align 1
  %61 = icmp ne i8 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load i8*, i8** %15, align 8
  %64 = call i32 @SQLITE_SKIP_UTF8(i8* %63)
  br label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %14, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %14, align 4
  br label %58

68:                                               ; preds = %58
  %69 = load i32, i32* %14, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %118

71:                                               ; preds = %68
  %72 = load i32*, i32** %4, align 8
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 %74, 9
  %76 = trunc i64 %75 to i32
  %77 = call i8** @contextMalloc(i32* %72, i32 %76)
  store i8** %77, i8*** %13, align 8
  %78 = load i8**, i8*** %13, align 8
  %79 = icmp eq i8** %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  br label %244

81:                                               ; preds = %71
  %82 = load i8**, i8*** %13, align 8
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  %86 = bitcast i8** %85 to i8*
  store i8* %86, i8** %12, align 8
  %87 = load i8*, i8** %8, align 8
  store i8* %87, i8** %15, align 8
  store i32 0, i32* %14, align 4
  br label %88

88:                                               ; preds = %114, %81
  %89 = load i8*, i8** %15, align 8
  %90 = load i8, i8* %89, align 1
  %91 = icmp ne i8 %90, 0
  br i1 %91, label %92, label %117

92:                                               ; preds = %88
  %93 = load i8*, i8** %15, align 8
  %94 = load i8**, i8*** %13, align 8
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %94, i64 %96
  store i8* %93, i8** %97, align 8
  %98 = load i8*, i8** %15, align 8
  %99 = call i32 @SQLITE_SKIP_UTF8(i8* %98)
  %100 = load i8*, i8** %15, align 8
  %101 = load i8**, i8*** %13, align 8
  %102 = load i32, i32* %14, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %101, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = ptrtoint i8* %100 to i64
  %107 = ptrtoint i8* %105 to i64
  %108 = sub i64 %106, %107
  %109 = trunc i64 %108 to i8
  %110 = load i8*, i8** %12, align 8
  %111 = load i32, i32* %14, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  store i8 %109, i8* %113, align 1
  br label %114

114:                                              ; preds = %92
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %14, align 4
  br label %88

117:                                              ; preds = %88
  br label %118

118:                                              ; preds = %117, %68
  br label %119

119:                                              ; preds = %118
  br label %120

120:                                              ; preds = %119, %48
  %121 = load i32, i32* %14, align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %238

123:                                              ; preds = %120
  %124 = load i32*, i32** %4, align 8
  %125 = call i32 @sqlite3_user_data(i32* %124)
  %126 = call i32 @SQLITE_PTR_TO_INT(i32 %125)
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %10, align 4
  %128 = and i32 %127, 1
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %178

130:                                              ; preds = %123
  br label %131

131:                                              ; preds = %169, %130
  %132 = load i32, i32* %9, align 4
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %177

134:                                              ; preds = %131
  store i32 0, i32* %16, align 4
  store i32 0, i32* %11, align 4
  br label %135

135:                                              ; preds = %161, %134
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* %14, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %164

139:                                              ; preds = %135
  %140 = load i8*, i8** %12, align 8
  %141 = load i32, i32* %11, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  store i32 %145, i32* %16, align 4
  %146 = load i32, i32* %16, align 4
  %147 = load i32, i32* %9, align 4
  %148 = icmp sle i32 %146, %147
  br i1 %148, label %149, label %160

149:                                              ; preds = %139
  %150 = load i8*, i8** %7, align 8
  %151 = load i8**, i8*** %13, align 8
  %152 = load i32, i32* %11, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8*, i8** %151, i64 %153
  %155 = load i8*, i8** %154, align 8
  %156 = load i32, i32* %16, align 4
  %157 = call i64 @memcmp(i8* %150, i8* %155, i32 %156)
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %149
  br label %164

160:                                              ; preds = %149, %139
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %11, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %11, align 4
  br label %135

164:                                              ; preds = %159, %135
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* %14, align 4
  %167 = icmp sge i32 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %164
  br label %177

169:                                              ; preds = %164
  %170 = load i32, i32* %16, align 4
  %171 = load i8*, i8** %7, align 8
  %172 = sext i32 %170 to i64
  %173 = getelementptr inbounds i8, i8* %171, i64 %172
  store i8* %173, i8** %7, align 8
  %174 = load i32, i32* %16, align 4
  %175 = load i32, i32* %9, align 4
  %176 = sub nsw i32 %175, %174
  store i32 %176, i32* %9, align 4
  br label %131

177:                                              ; preds = %168, %131
  br label %178

178:                                              ; preds = %177, %123
  %179 = load i32, i32* %10, align 4
  %180 = and i32 %179, 2
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %231

182:                                              ; preds = %178
  br label %183

183:                                              ; preds = %226, %182
  %184 = load i32, i32* %9, align 4
  %185 = icmp sgt i32 %184, 0
  br i1 %185, label %186, label %230

186:                                              ; preds = %183
  store i32 0, i32* %17, align 4
  store i32 0, i32* %11, align 4
  br label %187

187:                                              ; preds = %218, %186
  %188 = load i32, i32* %11, align 4
  %189 = load i32, i32* %14, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %221

191:                                              ; preds = %187
  %192 = load i8*, i8** %12, align 8
  %193 = load i32, i32* %11, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %192, i64 %194
  %196 = load i8, i8* %195, align 1
  %197 = zext i8 %196 to i32
  store i32 %197, i32* %17, align 4
  %198 = load i32, i32* %17, align 4
  %199 = load i32, i32* %9, align 4
  %200 = icmp sle i32 %198, %199
  br i1 %200, label %201, label %217

201:                                              ; preds = %191
  %202 = load i8*, i8** %7, align 8
  %203 = load i32, i32* %9, align 4
  %204 = load i32, i32* %17, align 4
  %205 = sub nsw i32 %203, %204
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8, i8* %202, i64 %206
  %208 = load i8**, i8*** %13, align 8
  %209 = load i32, i32* %11, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8*, i8** %208, i64 %210
  %212 = load i8*, i8** %211, align 8
  %213 = load i32, i32* %17, align 4
  %214 = call i64 @memcmp(i8* %207, i8* %212, i32 %213)
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %201
  br label %221

217:                                              ; preds = %201, %191
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %11, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %11, align 4
  br label %187

221:                                              ; preds = %216, %187
  %222 = load i32, i32* %11, align 4
  %223 = load i32, i32* %14, align 4
  %224 = icmp sge i32 %222, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %221
  br label %230

226:                                              ; preds = %221
  %227 = load i32, i32* %17, align 4
  %228 = load i32, i32* %9, align 4
  %229 = sub nsw i32 %228, %227
  store i32 %229, i32* %9, align 4
  br label %183

230:                                              ; preds = %225, %183
  br label %231

231:                                              ; preds = %230, %178
  %232 = load i8*, i8** %8, align 8
  %233 = icmp ne i8* %232, null
  br i1 %233, label %234, label %237

234:                                              ; preds = %231
  %235 = load i8**, i8*** %13, align 8
  %236 = call i32 @sqlite3_free(i8** %235)
  br label %237

237:                                              ; preds = %234, %231
  br label %238

238:                                              ; preds = %237, %120
  %239 = load i32*, i32** %4, align 8
  %240 = load i8*, i8** %7, align 8
  %241 = load i32, i32* %9, align 4
  %242 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %243 = call i32 @sqlite3_result_text(i32* %239, i8* %240, i32 %241, i32 %242)
  br label %244

244:                                              ; preds = %238, %80, %55, %32, %24
  ret void
}

declare dso_local i64 @sqlite3_value_type(i32*) #1

declare dso_local i8* @sqlite3_value_text(i32*) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @SQLITE_SKIP_UTF8(i8*) #1

declare dso_local i8** @contextMalloc(i32*, i32) #1

declare dso_local i32 @SQLITE_PTR_TO_INT(i32) #1

declare dso_local i32 @sqlite3_user_data(i32*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @sqlite3_free(i8**) #1

declare dso_local i32 @sqlite3_result_text(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
