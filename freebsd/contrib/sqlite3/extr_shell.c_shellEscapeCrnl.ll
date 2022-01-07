; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_shellEscapeCrnl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_shellEscapeCrnl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\\012\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"\\015\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"replace(replace(\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"replace(\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c",'\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"', char(10))\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"', char(13))\00", align 1
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @shellEscapeCrnl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shellEscapeCrnl(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [20 x i8], align 16
  %11 = alloca [20 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %20 = load i32**, i32*** %6, align 8
  %21 = getelementptr inbounds i32*, i32** %20, i64 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i64 @sqlite3_value_text(i32* %22)
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** %7, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @UNUSED_PARAMETER(i32 %25)
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 39
  br i1 %31, label %32, label %265

32:                                               ; preds = %3
  %33 = load i32**, i32*** %6, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @sqlite3_value_bytes(i32* %35)
  store i32 %36, i32* %8, align 4
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %81, %32
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = icmp ne i8 %42, 0
  br i1 %43, label %44, label %84

44:                                               ; preds = %37
  %45 = load i8*, i8** %12, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %62

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 10
  br i1 %54, label %55, label %62

55:                                               ; preds = %47
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %58 = call i8* @unused_string(i8* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %57)
  store i8* %58, i8** %12, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = call i64 @strlen(i8* %59)
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %15, align 4
  br label %62

62:                                               ; preds = %55, %47, %44
  %63 = load i8*, i8** %13, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %80

65:                                               ; preds = %62
  %66 = load i8*, i8** %7, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 13
  br i1 %72, label %73, label %80

73:                                               ; preds = %65
  %74 = load i8*, i8** %7, align 8
  %75 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %76 = call i8* @unused_string(i8* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %75)
  store i8* %76, i8** %13, align 8
  %77 = load i8*, i8** %13, align 8
  %78 = call i64 @strlen(i8* %77)
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %14, align 4
  br label %80

80:                                               ; preds = %73, %65, %62
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %37

84:                                               ; preds = %37
  %85 = load i8*, i8** %12, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = load i8*, i8** %13, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %264

90:                                               ; preds = %87, %84
  store i32 0, i32* %16, align 4
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* %14, align 4
  %93 = icmp sgt i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i32, i32* %15, align 4
  br label %98

96:                                               ; preds = %90
  %97 = load i32, i32* %14, align 4
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi i32 [ %95, %94 ], [ %97, %96 ]
  store i32 %99, i32* %17, align 4
  %100 = load i32, i32* %17, align 4
  %101 = load i32, i32* %8, align 4
  %102 = mul nsw i32 %100, %101
  %103 = load i32, i32* %17, align 4
  %104 = add nsw i32 %103, 64
  %105 = mul nsw i32 %104, 2
  %106 = add nsw i32 %102, %105
  store i32 %106, i32* %18, align 4
  %107 = load i32, i32* %18, align 4
  %108 = call i64 @sqlite3_malloc64(i32 %107)
  %109 = inttoptr i64 %108 to i8*
  store i8* %109, i8** %19, align 8
  %110 = load i8*, i8** %19, align 8
  %111 = icmp eq i8* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %98
  %113 = load i32*, i32** %4, align 8
  %114 = call i32 @sqlite3_result_error_nomem(i32* %113)
  br label %271

115:                                              ; preds = %98
  %116 = load i8*, i8** %12, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %129

118:                                              ; preds = %115
  %119 = load i8*, i8** %13, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %129

121:                                              ; preds = %118
  %122 = load i8*, i8** %19, align 8
  %123 = load i32, i32* %16, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  %126 = call i32 @memcpy(i8* %125, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 16)
  %127 = load i32, i32* %16, align 4
  %128 = add nsw i32 %127, 16
  store i32 %128, i32* %16, align 4
  br label %137

129:                                              ; preds = %118, %115
  %130 = load i8*, i8** %19, align 8
  %131 = load i32, i32* %16, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  %134 = call i32 @memcpy(i8* %133, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 8)
  %135 = load i32, i32* %16, align 4
  %136 = add nsw i32 %135, 8
  store i32 %136, i32* %16, align 4
  br label %137

137:                                              ; preds = %129, %121
  store i32 0, i32* %9, align 4
  br label %138

138:                                              ; preds = %197, %137
  %139 = load i8*, i8** %7, align 8
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %139, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = icmp ne i8 %143, 0
  br i1 %144, label %145, label %200

145:                                              ; preds = %138
  %146 = load i8*, i8** %7, align 8
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %146, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 %151, 10
  br i1 %152, label %153, label %164

153:                                              ; preds = %145
  %154 = load i8*, i8** %19, align 8
  %155 = load i32, i32* %16, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  %158 = load i8*, i8** %12, align 8
  %159 = load i32, i32* %15, align 4
  %160 = call i32 @memcpy(i8* %157, i8* %158, i32 %159)
  %161 = load i32, i32* %15, align 4
  %162 = load i32, i32* %16, align 4
  %163 = add nsw i32 %162, %161
  store i32 %163, i32* %16, align 4
  br label %196

164:                                              ; preds = %145
  %165 = load i8*, i8** %7, align 8
  %166 = load i32, i32* %9, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %165, i64 %167
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp eq i32 %170, 13
  br i1 %171, label %172, label %183

172:                                              ; preds = %164
  %173 = load i8*, i8** %19, align 8
  %174 = load i32, i32* %16, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8, i8* %173, i64 %175
  %177 = load i8*, i8** %13, align 8
  %178 = load i32, i32* %14, align 4
  %179 = call i32 @memcpy(i8* %176, i8* %177, i32 %178)
  %180 = load i32, i32* %14, align 4
  %181 = load i32, i32* %16, align 4
  %182 = add nsw i32 %181, %180
  store i32 %182, i32* %16, align 4
  br label %195

183:                                              ; preds = %164
  %184 = load i8*, i8** %7, align 8
  %185 = load i32, i32* %9, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %184, i64 %186
  %188 = load i8, i8* %187, align 1
  %189 = load i8*, i8** %19, align 8
  %190 = load i32, i32* %16, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8, i8* %189, i64 %191
  store i8 %188, i8* %192, align 1
  %193 = load i32, i32* %16, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %16, align 4
  br label %195

195:                                              ; preds = %183, %172
  br label %196

196:                                              ; preds = %195, %153
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %9, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %9, align 4
  br label %138

200:                                              ; preds = %138
  %201 = load i8*, i8** %12, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %203, label %228

203:                                              ; preds = %200
  %204 = load i8*, i8** %19, align 8
  %205 = load i32, i32* %16, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8, i8* %204, i64 %206
  %208 = call i32 @memcpy(i8* %207, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 2)
  %209 = load i32, i32* %16, align 4
  %210 = add nsw i32 %209, 2
  store i32 %210, i32* %16, align 4
  %211 = load i8*, i8** %19, align 8
  %212 = load i32, i32* %16, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8, i8* %211, i64 %213
  %215 = load i8*, i8** %12, align 8
  %216 = load i32, i32* %15, align 4
  %217 = call i32 @memcpy(i8* %214, i8* %215, i32 %216)
  %218 = load i32, i32* %15, align 4
  %219 = load i32, i32* %16, align 4
  %220 = add nsw i32 %219, %218
  store i32 %220, i32* %16, align 4
  %221 = load i8*, i8** %19, align 8
  %222 = load i32, i32* %16, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8, i8* %221, i64 %223
  %225 = call i32 @memcpy(i8* %224, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 12)
  %226 = load i32, i32* %16, align 4
  %227 = add nsw i32 %226, 12
  store i32 %227, i32* %16, align 4
  br label %228

228:                                              ; preds = %203, %200
  %229 = load i8*, i8** %13, align 8
  %230 = icmp ne i8* %229, null
  br i1 %230, label %231, label %256

231:                                              ; preds = %228
  %232 = load i8*, i8** %19, align 8
  %233 = load i32, i32* %16, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8, i8* %232, i64 %234
  %236 = call i32 @memcpy(i8* %235, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 2)
  %237 = load i32, i32* %16, align 4
  %238 = add nsw i32 %237, 2
  store i32 %238, i32* %16, align 4
  %239 = load i8*, i8** %19, align 8
  %240 = load i32, i32* %16, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i8, i8* %239, i64 %241
  %243 = load i8*, i8** %13, align 8
  %244 = load i32, i32* %14, align 4
  %245 = call i32 @memcpy(i8* %242, i8* %243, i32 %244)
  %246 = load i32, i32* %14, align 4
  %247 = load i32, i32* %16, align 4
  %248 = add nsw i32 %247, %246
  store i32 %248, i32* %16, align 4
  %249 = load i8*, i8** %19, align 8
  %250 = load i32, i32* %16, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8, i8* %249, i64 %251
  %253 = call i32 @memcpy(i8* %252, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 12)
  %254 = load i32, i32* %16, align 4
  %255 = add nsw i32 %254, 12
  store i32 %255, i32* %16, align 4
  br label %256

256:                                              ; preds = %231, %228
  %257 = load i32*, i32** %4, align 8
  %258 = load i8*, i8** %19, align 8
  %259 = load i32, i32* %16, align 4
  %260 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %261 = call i32 @sqlite3_result_text(i32* %257, i8* %258, i32 %259, i32 %260)
  %262 = load i8*, i8** %19, align 8
  %263 = call i32 @sqlite3_free(i8* %262)
  br label %271

264:                                              ; preds = %87
  br label %265

265:                                              ; preds = %264, %3
  %266 = load i32*, i32** %4, align 8
  %267 = load i32**, i32*** %6, align 8
  %268 = getelementptr inbounds i32*, i32** %267, i64 0
  %269 = load i32*, i32** %268, align 8
  %270 = call i32 @sqlite3_result_value(i32* %266, i32* %269)
  br label %271

271:                                              ; preds = %265, %256, %112
  ret void
}

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i32 @UNUSED_PARAMETER(i32) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i8* @unused_string(i8*, i8*, i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @sqlite3_malloc64(i32) #1

declare dso_local i32 @sqlite3_result_error_nomem(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @sqlite3_result_text(i32*, i8*, i32, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @sqlite3_result_value(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
