; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_shell_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_shell_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i8*, i32*, i32, i32*, i64, i64, i8*, i8*, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%*s = %s%s\00", align 1
@shell_callback.aExplainWidths = internal constant [8 x i32] [i32 4, i32 13, i32 4, i32 4, i32 4, i32 13, i32 2, i32 13], align 16
@SEP_Row = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%-*.*s%s\00", align 1
@.str.5 = private unnamed_addr constant [117 x i8] c"--------------------------------------------------------------------------------------------------------------------\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%*.s\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"CREATE VIEW%\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"CREATE TRIG%\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%s;\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"\0A  \00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"<TR>\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"<TH>\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"</TH>\0A\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"</TR>\0A\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"<TD>\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"</TD>\0A\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"INSERT INTO %s\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"\22%w\22\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c" VALUES(\00", align 1
@SQLITE_NULL = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@SQLITE_TEXT = common dso_local global i32 0, align 4
@SHFLG_Newlines = common dso_local global i32 0, align 4
@SQLITE_INTEGER = common dso_local global i32 0, align 4
@SQLITE_FLOAT = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [6 x i8] c"1e999\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"-1e999\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"%!.20g\00", align 1
@SQLITE_BLOB = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [4 x i8] c");\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8**, i8**, i32*)* @shell_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shell_callback(i8* %0, i32 %1, i8** %2, i8** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8, align 1
  %27 = alloca i8, align 1
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca [50 x i8], align 16
  %32 = alloca double, align 8
  %33 = alloca i32, align 4
  %34 = alloca i8*, align 8
  %35 = alloca i32, align 4
  %36 = alloca [50 x i8], align 16
  %37 = alloca double, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8** %2, i8*** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = bitcast i8* %40 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %41, %struct.TYPE_5__** %13, align 8
  %42 = load i8**, i8*** %9, align 8
  %43 = icmp eq i8** %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %1854

45:                                               ; preds = %5
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %1853 [
    i32 133, label %49
    i32 136, label %139
    i32 139, label %139
    i32 129, label %463
    i32 131, label %471
    i32 132, label %790
    i32 135, label %886
    i32 128, label %984
    i32 138, label %1100
    i32 134, label %1191
    i32 130, label %1500
    i32 140, label %1727
    i32 137, label %1839
  ]

49:                                               ; preds = %45
  store i32 5, i32* %14, align 4
  %50 = load i8**, i8*** %9, align 8
  %51 = icmp eq i8** %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %1853

53:                                               ; preds = %49
  store i32 0, i32* %12, align 4
  br label %54

54:                                               ; preds = %81, %53
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %84

58:                                               ; preds = %54
  %59 = load i8**, i8*** %10, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load i8**, i8*** %10, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i8*, i8** %69, align 8
  br label %72

71:                                               ; preds = %58
  br label %72

72:                                               ; preds = %71, %65
  %73 = phi i8* [ %70, %65 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %71 ]
  %74 = call i32 @strlen30(i8* %73)
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* %15, align 4
  store i32 %79, i32* %14, align 4
  br label %80

80:                                               ; preds = %78, %72
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %12, align 4
  br label %54

84:                                               ; preds = %54
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 11
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  %89 = icmp sgt i32 %87, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %84
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 10
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 (i32, i8*, ...) @utf8_printf(i32 %93, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %96)
  br label %98

98:                                               ; preds = %90, %84
  store i32 0, i32* %12, align 4
  br label %99

99:                                               ; preds = %135, %98
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %138

103:                                              ; preds = %99
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 10
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %14, align 4
  %108 = load i8**, i8*** %10, align 8
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = load i8**, i8*** %9, align 8
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8*, i8** %113, i64 %115
  %117 = load i8*, i8** %116, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %125

119:                                              ; preds = %103
  %120 = load i8**, i8*** %9, align 8
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8*, i8** %120, i64 %122
  %124 = load i8*, i8** %123, align 8
  br label %129

125:                                              ; preds = %103
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 2
  %128 = load i8*, i8** %127, align 8
  br label %129

129:                                              ; preds = %125, %119
  %130 = phi i8* [ %124, %119 ], [ %128, %125 ]
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 1
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 (i32, i8*, ...) @utf8_printf(i32 %106, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %107, i8* %112, i8* %130, i8* %133)
  br label %135

135:                                              ; preds = %129
  %136 = load i32, i32* %12, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %12, align 4
  br label %99

138:                                              ; preds = %99
  br label %1853

139:                                              ; preds = %45, %45
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp eq i32 %142, 139
  br i1 %143, label %144, label %154

144:                                              ; preds = %139
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 3
  %147 = load i32*, i32** %146, align 8
  store i32* %147, i32** %16, align 8
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  store i32 %150, i32* %17, align 4
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 1
  %153 = load i8*, i8** %152, align 8
  store i8* %153, i8** %18, align 8
  br label %156

154:                                              ; preds = %139
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @shell_callback.aExplainWidths, i64 0, i64 0), i32** %16, align 8
  store i32 1, i32* %17, align 4
  %155 = load i8*, i8** @SEP_Row, align 8
  store i8* %155, i8** %18, align 8
  br label %156

156:                                              ; preds = %154, %144
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 11
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %158, align 4
  %161 = icmp eq i32 %159, 0
  br i1 %161, label %162, label %330

162:                                              ; preds = %156
  store i32 0, i32* %12, align 4
  br label %163

163:                                              ; preds = %276, %162
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* %8, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %279

167:                                              ; preds = %163
  %168 = load i32, i32* %12, align 4
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 3
  %171 = load i32*, i32** %170, align 8
  %172 = call i32 @ArraySize(i32* %171)
  %173 = icmp slt i32 %168, %172
  br i1 %173, label %174, label %180

174:                                              ; preds = %167
  %175 = load i32*, i32** %16, align 8
  %176 = load i32, i32* %12, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* %19, align 4
  br label %181

180:                                              ; preds = %167
  store i32 0, i32* %19, align 4
  br label %181

181:                                              ; preds = %180, %174
  %182 = load i32, i32* %19, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %233

184:                                              ; preds = %181
  %185 = load i8**, i8*** %10, align 8
  %186 = load i32, i32* %12, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8*, i8** %185, i64 %187
  %189 = load i8*, i8** %188, align 8
  %190 = icmp ne i8* %189, null
  br i1 %190, label %191, label %197

191:                                              ; preds = %184
  %192 = load i8**, i8*** %10, align 8
  %193 = load i32, i32* %12, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8*, i8** %192, i64 %194
  %196 = load i8*, i8** %195, align 8
  br label %198

197:                                              ; preds = %184
  br label %198

198:                                              ; preds = %197, %191
  %199 = phi i8* [ %196, %191 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %197 ]
  %200 = call i32 @strlenChar(i8* %199)
  store i32 %200, i32* %19, align 4
  %201 = load i32, i32* %19, align 4
  %202 = icmp slt i32 %201, 10
  br i1 %202, label %203, label %204

203:                                              ; preds = %198
  store i32 10, i32* %19, align 4
  br label %204

204:                                              ; preds = %203, %198
  %205 = load i8**, i8*** %9, align 8
  %206 = icmp ne i8** %205, null
  br i1 %206, label %207, label %220

207:                                              ; preds = %204
  %208 = load i8**, i8*** %9, align 8
  %209 = load i32, i32* %12, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8*, i8** %208, i64 %210
  %212 = load i8*, i8** %211, align 8
  %213 = icmp ne i8* %212, null
  br i1 %213, label %214, label %220

214:                                              ; preds = %207
  %215 = load i8**, i8*** %9, align 8
  %216 = load i32, i32* %12, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8*, i8** %215, i64 %217
  %219 = load i8*, i8** %218, align 8
  br label %224

220:                                              ; preds = %207, %204
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 2
  %223 = load i8*, i8** %222, align 8
  br label %224

224:                                              ; preds = %220, %214
  %225 = phi i8* [ %219, %214 ], [ %223, %220 ]
  %226 = call i32 @strlenChar(i8* %225)
  store i32 %226, i32* %20, align 4
  %227 = load i32, i32* %19, align 4
  %228 = load i32, i32* %20, align 4
  %229 = icmp slt i32 %227, %228
  br i1 %229, label %230, label %232

230:                                              ; preds = %224
  %231 = load i32, i32* %20, align 4
  store i32 %231, i32* %19, align 4
  br label %232

232:                                              ; preds = %230, %224
  br label %233

233:                                              ; preds = %232, %181
  %234 = load i32, i32* %12, align 4
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 5
  %237 = load i32*, i32** %236, align 8
  %238 = call i32 @ArraySize(i32* %237)
  %239 = icmp slt i32 %234, %238
  br i1 %239, label %240, label %248

240:                                              ; preds = %233
  %241 = load i32, i32* %19, align 4
  %242 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 5
  %244 = load i32*, i32** %243, align 8
  %245 = load i32, i32* %12, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  store i32 %241, i32* %247, align 4
  br label %248

248:                                              ; preds = %240, %233
  %249 = load i32, i32* %17, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %275

251:                                              ; preds = %248
  %252 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 10
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* %19, align 4
  %256 = load i8**, i8*** %10, align 8
  %257 = load i32, i32* %12, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i8*, i8** %256, i64 %258
  %260 = load i8*, i8** %259, align 8
  %261 = call i32 @utf8_width_print(i32 %254, i32 %255, i8* %260)
  %262 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 10
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* %12, align 4
  %266 = load i32, i32* %8, align 4
  %267 = sub nsw i32 %266, 1
  %268 = icmp eq i32 %265, %267
  br i1 %268, label %269, label %271

269:                                              ; preds = %251
  %270 = load i8*, i8** %18, align 8
  br label %272

271:                                              ; preds = %251
  br label %272

272:                                              ; preds = %271, %269
  %273 = phi i8* [ %270, %269 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %271 ]
  %274 = call i32 (i32, i8*, ...) @utf8_printf(i32 %264, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %273)
  br label %275

275:                                              ; preds = %272, %248
  br label %276

276:                                              ; preds = %275
  %277 = load i32, i32* %12, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %12, align 4
  br label %163

279:                                              ; preds = %163
  %280 = load i32, i32* %17, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %329

282:                                              ; preds = %279
  store i32 0, i32* %12, align 4
  br label %283

283:                                              ; preds = %325, %282
  %284 = load i32, i32* %12, align 4
  %285 = load i32, i32* %8, align 4
  %286 = icmp slt i32 %284, %285
  br i1 %286, label %287, label %328

287:                                              ; preds = %283
  %288 = load i32, i32* %12, align 4
  %289 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %290 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %289, i32 0, i32 5
  %291 = load i32*, i32** %290, align 8
  %292 = call i32 @ArraySize(i32* %291)
  %293 = icmp slt i32 %288, %292
  br i1 %293, label %294, label %308

294:                                              ; preds = %287
  %295 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %296 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %295, i32 0, i32 5
  %297 = load i32*, i32** %296, align 8
  %298 = load i32, i32* %12, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %297, i64 %299
  %301 = load i32, i32* %300, align 4
  store i32 %301, i32* %21, align 4
  %302 = load i32, i32* %21, align 4
  %303 = icmp slt i32 %302, 0
  br i1 %303, label %304, label %307

304:                                              ; preds = %294
  %305 = load i32, i32* %21, align 4
  %306 = sub nsw i32 0, %305
  store i32 %306, i32* %21, align 4
  br label %307

307:                                              ; preds = %304, %294
  br label %309

308:                                              ; preds = %287
  store i32 10, i32* %21, align 4
  br label %309

309:                                              ; preds = %308, %307
  %310 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %311 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %310, i32 0, i32 10
  %312 = load i32, i32* %311, align 8
  %313 = load i32, i32* %21, align 4
  %314 = load i32, i32* %21, align 4
  %315 = load i32, i32* %12, align 4
  %316 = load i32, i32* %8, align 4
  %317 = sub nsw i32 %316, 1
  %318 = icmp eq i32 %315, %317
  br i1 %318, label %319, label %321

319:                                              ; preds = %309
  %320 = load i8*, i8** %18, align 8
  br label %322

321:                                              ; preds = %309
  br label %322

322:                                              ; preds = %321, %319
  %323 = phi i8* [ %320, %319 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %321 ]
  %324 = call i32 (i32, i8*, ...) @utf8_printf(i32 %312, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %313, i32 %314, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.5, i64 0, i64 0), i8* %323)
  br label %325

325:                                              ; preds = %322
  %326 = load i32, i32* %12, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %12, align 4
  br label %283

328:                                              ; preds = %283
  br label %329

329:                                              ; preds = %328, %279
  br label %330

330:                                              ; preds = %329, %156
  %331 = load i8**, i8*** %9, align 8
  %332 = icmp eq i8** %331, null
  br i1 %332, label %333, label %334

333:                                              ; preds = %330
  br label %1853

334:                                              ; preds = %330
  store i32 0, i32* %12, align 4
  br label %335

335:                                              ; preds = %459, %334
  %336 = load i32, i32* %12, align 4
  %337 = load i32, i32* %8, align 4
  %338 = icmp slt i32 %336, %337
  br i1 %338, label %339, label %462

339:                                              ; preds = %335
  %340 = load i32, i32* %12, align 4
  %341 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %342 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %341, i32 0, i32 5
  %343 = load i32*, i32** %342, align 8
  %344 = call i32 @ArraySize(i32* %343)
  %345 = icmp slt i32 %340, %344
  br i1 %345, label %346, label %354

346:                                              ; preds = %339
  %347 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %348 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %347, i32 0, i32 5
  %349 = load i32*, i32** %348, align 8
  %350 = load i32, i32* %12, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i32, i32* %349, i64 %351
  %353 = load i32, i32* %352, align 4
  store i32 %353, i32* %22, align 4
  br label %355

354:                                              ; preds = %339
  store i32 10, i32* %22, align 4
  br label %355

355:                                              ; preds = %354, %346
  %356 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %357 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = icmp eq i32 %358, 136
  br i1 %359, label %360, label %383

360:                                              ; preds = %355
  %361 = load i8**, i8*** %9, align 8
  %362 = load i32, i32* %12, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i8*, i8** %361, i64 %363
  %365 = load i8*, i8** %364, align 8
  %366 = icmp ne i8* %365, null
  br i1 %366, label %367, label %383

367:                                              ; preds = %360
  %368 = load i8**, i8*** %9, align 8
  %369 = load i32, i32* %12, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i8*, i8** %368, i64 %370
  %372 = load i8*, i8** %371, align 8
  %373 = call i32 @strlenChar(i8* %372)
  %374 = load i32, i32* %22, align 4
  %375 = icmp sgt i32 %373, %374
  br i1 %375, label %376, label %383

376:                                              ; preds = %367
  %377 = load i8**, i8*** %9, align 8
  %378 = load i32, i32* %12, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i8*, i8** %377, i64 %379
  %381 = load i8*, i8** %380, align 8
  %382 = call i32 @strlenChar(i8* %381)
  store i32 %382, i32* %22, align 4
  br label %383

383:                                              ; preds = %376, %367, %360, %355
  %384 = load i32, i32* %12, align 4
  %385 = icmp eq i32 %384, 1
  br i1 %385, label %386, label %422

386:                                              ; preds = %383
  %387 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %388 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %387, i32 0, i32 13
  %389 = load i32*, i32** %388, align 8
  %390 = icmp ne i32* %389, null
  br i1 %390, label %391, label %422

391:                                              ; preds = %386
  %392 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %393 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %392, i32 0, i32 12
  %394 = load i32, i32* %393, align 8
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %422

396:                                              ; preds = %391
  %397 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %398 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %397, i32 0, i32 6
  %399 = load i64, i64* %398, align 8
  %400 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %401 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %400, i32 0, i32 7
  %402 = load i64, i64* %401, align 8
  %403 = icmp ult i64 %399, %402
  br i1 %403, label %404, label %417

404:                                              ; preds = %396
  %405 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %406 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %405, i32 0, i32 10
  %407 = load i32, i32* %406, align 8
  %408 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %409 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %408, i32 0, i32 13
  %410 = load i32*, i32** %409, align 8
  %411 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %412 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %411, i32 0, i32 6
  %413 = load i64, i64* %412, align 8
  %414 = getelementptr inbounds i32, i32* %410, i64 %413
  %415 = load i32, i32* %414, align 4
  %416 = call i32 (i32, i8*, ...) @utf8_printf(i32 %407, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %415, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %417

417:                                              ; preds = %404, %396
  %418 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %419 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %418, i32 0, i32 6
  %420 = load i64, i64* %419, align 8
  %421 = add i64 %420, 1
  store i64 %421, i64* %419, align 8
  br label %422

422:                                              ; preds = %417, %391, %386, %383
  %423 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %424 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %423, i32 0, i32 10
  %425 = load i32, i32* %424, align 8
  %426 = load i32, i32* %22, align 4
  %427 = load i8**, i8*** %9, align 8
  %428 = load i32, i32* %12, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i8*, i8** %427, i64 %429
  %431 = load i8*, i8** %430, align 8
  %432 = icmp ne i8* %431, null
  br i1 %432, label %433, label %439

433:                                              ; preds = %422
  %434 = load i8**, i8*** %9, align 8
  %435 = load i32, i32* %12, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds i8*, i8** %434, i64 %436
  %438 = load i8*, i8** %437, align 8
  br label %443

439:                                              ; preds = %422
  %440 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %441 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %440, i32 0, i32 2
  %442 = load i8*, i8** %441, align 8
  br label %443

443:                                              ; preds = %439, %433
  %444 = phi i8* [ %438, %433 ], [ %442, %439 ]
  %445 = call i32 @utf8_width_print(i32 %425, i32 %426, i8* %444)
  %446 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %447 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %446, i32 0, i32 10
  %448 = load i32, i32* %447, align 8
  %449 = load i32, i32* %12, align 4
  %450 = load i32, i32* %8, align 4
  %451 = sub nsw i32 %450, 1
  %452 = icmp eq i32 %449, %451
  br i1 %452, label %453, label %455

453:                                              ; preds = %443
  %454 = load i8*, i8** %18, align 8
  br label %456

455:                                              ; preds = %443
  br label %456

456:                                              ; preds = %455, %453
  %457 = phi i8* [ %454, %453 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %455 ]
  %458 = call i32 (i32, i8*, ...) @utf8_printf(i32 %448, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %457)
  br label %459

459:                                              ; preds = %456
  %460 = load i32, i32* %12, align 4
  %461 = add nsw i32 %460, 1
  store i32 %461, i32* %12, align 4
  br label %335

462:                                              ; preds = %335
  br label %1853

463:                                              ; preds = %45
  %464 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %465 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %464, i32 0, i32 10
  %466 = load i32, i32* %465, align 8
  %467 = load i8**, i8*** %9, align 8
  %468 = getelementptr inbounds i8*, i8** %467, i64 0
  %469 = load i8*, i8** %468, align 8
  %470 = call i32 @printSchemaLine(i32 %466, i8* %469, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %1853

471:                                              ; preds = %45
  store i32 0, i32* %25, align 4
  store i8 0, i8* %26, align 1
  store i32 0, i32* %28, align 4
  %472 = load i32, i32* %8, align 4
  %473 = icmp eq i32 %472, 1
  %474 = zext i1 %473 to i32
  %475 = call i32 @assert(i32 %474)
  %476 = load i8**, i8*** %9, align 8
  %477 = getelementptr inbounds i8*, i8** %476, i64 0
  %478 = load i8*, i8** %477, align 8
  %479 = icmp eq i8* %478, null
  br i1 %479, label %480, label %481

480:                                              ; preds = %471
  br label %1853

481:                                              ; preds = %471
  %482 = load i8**, i8*** %9, align 8
  %483 = getelementptr inbounds i8*, i8** %482, i64 0
  %484 = load i8*, i8** %483, align 8
  %485 = call i32 @sqlite3_strlike(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* %484, i32 0)
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %493, label %487

487:                                              ; preds = %481
  %488 = load i8**, i8*** %9, align 8
  %489 = getelementptr inbounds i8*, i8** %488, i64 0
  %490 = load i8*, i8** %489, align 8
  %491 = call i32 @sqlite3_strlike(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* %490, i32 0)
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %493, label %501

493:                                              ; preds = %487, %481
  %494 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %495 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %494, i32 0, i32 10
  %496 = load i32, i32* %495, align 8
  %497 = load i8**, i8*** %9, align 8
  %498 = getelementptr inbounds i8*, i8** %497, i64 0
  %499 = load i8*, i8** %498, align 8
  %500 = call i32 (i32, i8*, ...) @utf8_printf(i32 %496, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* %499)
  br label %1853

501:                                              ; preds = %487
  %502 = load i8**, i8*** %9, align 8
  %503 = getelementptr inbounds i8*, i8** %502, i64 0
  %504 = load i8*, i8** %503, align 8
  %505 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %504)
  store i8* %505, i8** %23, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %12, align 4
  br label %506

506:                                              ; preds = %515, %501
  %507 = load i8*, i8** %23, align 8
  %508 = load i32, i32* %12, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds i8, i8* %507, i64 %509
  %511 = load i8, i8* %510, align 1
  %512 = call i32 @IsSpace(i8 signext %511)
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %514, label %518

514:                                              ; preds = %506
  br label %515

515:                                              ; preds = %514
  %516 = load i32, i32* %12, align 4
  %517 = add nsw i32 %516, 1
  store i32 %517, i32* %12, align 4
  br label %506

518:                                              ; preds = %506
  br label %519

519:                                              ; preds = %597, %518
  %520 = load i8*, i8** %23, align 8
  %521 = load i32, i32* %12, align 4
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds i8, i8* %520, i64 %522
  %524 = load i8, i8* %523, align 1
  store i8 %524, i8* %27, align 1
  %525 = sext i8 %524 to i32
  %526 = icmp ne i32 %525, 0
  br i1 %526, label %527, label %600

527:                                              ; preds = %519
  %528 = load i8, i8* %27, align 1
  %529 = call i32 @IsSpace(i8 signext %528)
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %531, label %566

531:                                              ; preds = %527
  %532 = load i8*, i8** %23, align 8
  %533 = load i32, i32* %24, align 4
  %534 = sub nsw i32 %533, 1
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds i8, i8* %532, i64 %535
  %537 = load i8, i8* %536, align 1
  %538 = sext i8 %537 to i32
  %539 = icmp eq i32 %538, 13
  br i1 %539, label %540, label %546

540:                                              ; preds = %531
  %541 = load i8*, i8** %23, align 8
  %542 = load i32, i32* %24, align 4
  %543 = sub nsw i32 %542, 1
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds i8, i8* %541, i64 %544
  store i8 10, i8* %545, align 1
  br label %546

546:                                              ; preds = %540, %531
  %547 = load i8*, i8** %23, align 8
  %548 = load i32, i32* %24, align 4
  %549 = sub nsw i32 %548, 1
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds i8, i8* %547, i64 %550
  %552 = load i8, i8* %551, align 1
  %553 = call i32 @IsSpace(i8 signext %552)
  %554 = icmp ne i32 %553, 0
  br i1 %554, label %564, label %555

555:                                              ; preds = %546
  %556 = load i8*, i8** %23, align 8
  %557 = load i32, i32* %24, align 4
  %558 = sub nsw i32 %557, 1
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds i8, i8* %556, i64 %559
  %561 = load i8, i8* %560, align 1
  %562 = sext i8 %561 to i32
  %563 = icmp eq i32 %562, 40
  br i1 %563, label %564, label %565

564:                                              ; preds = %555, %546
  br label %597

565:                                              ; preds = %555
  br label %590

566:                                              ; preds = %527
  %567 = load i8, i8* %27, align 1
  %568 = sext i8 %567 to i32
  %569 = icmp eq i32 %568, 40
  br i1 %569, label %574, label %570

570:                                              ; preds = %566
  %571 = load i8, i8* %27, align 1
  %572 = sext i8 %571 to i32
  %573 = icmp eq i32 %572, 41
  br i1 %573, label %574, label %589

574:                                              ; preds = %570, %566
  %575 = load i32, i32* %24, align 4
  %576 = icmp sgt i32 %575, 0
  br i1 %576, label %577, label %589

577:                                              ; preds = %574
  %578 = load i8*, i8** %23, align 8
  %579 = load i32, i32* %24, align 4
  %580 = sub nsw i32 %579, 1
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds i8, i8* %578, i64 %581
  %583 = load i8, i8* %582, align 1
  %584 = call i32 @IsSpace(i8 signext %583)
  %585 = icmp ne i32 %584, 0
  br i1 %585, label %586, label %589

586:                                              ; preds = %577
  %587 = load i32, i32* %24, align 4
  %588 = add nsw i32 %587, -1
  store i32 %588, i32* %24, align 4
  br label %589

589:                                              ; preds = %586, %577, %574, %570
  br label %590

590:                                              ; preds = %589, %565
  %591 = load i8, i8* %27, align 1
  %592 = load i8*, i8** %23, align 8
  %593 = load i32, i32* %24, align 4
  %594 = add nsw i32 %593, 1
  store i32 %594, i32* %24, align 4
  %595 = sext i32 %593 to i64
  %596 = getelementptr inbounds i8, i8* %592, i64 %595
  store i8 %591, i8* %596, align 1
  br label %597

597:                                              ; preds = %590, %564
  %598 = load i32, i32* %12, align 4
  %599 = add nsw i32 %598, 1
  store i32 %599, i32* %12, align 4
  br label %519

600:                                              ; preds = %519
  br label %601

601:                                              ; preds = %615, %600
  %602 = load i32, i32* %24, align 4
  %603 = icmp sgt i32 %602, 0
  br i1 %603, label %604, label %613

604:                                              ; preds = %601
  %605 = load i8*, i8** %23, align 8
  %606 = load i32, i32* %24, align 4
  %607 = sub nsw i32 %606, 1
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds i8, i8* %605, i64 %608
  %610 = load i8, i8* %609, align 1
  %611 = call i32 @IsSpace(i8 signext %610)
  %612 = icmp ne i32 %611, 0
  br label %613

613:                                              ; preds = %604, %601
  %614 = phi i1 [ false, %601 ], [ %612, %604 ]
  br i1 %614, label %615, label %618

615:                                              ; preds = %613
  %616 = load i32, i32* %24, align 4
  %617 = add nsw i32 %616, -1
  store i32 %617, i32* %24, align 4
  br label %601

618:                                              ; preds = %613
  %619 = load i8*, i8** %23, align 8
  %620 = load i32, i32* %24, align 4
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds i8, i8* %619, i64 %621
  store i8 0, i8* %622, align 1
  %623 = load i8*, i8** %23, align 8
  %624 = call i32 @strlen30(i8* %623)
  %625 = icmp sge i32 %624, 79
  br i1 %625, label %626, label %782

626:                                              ; preds = %618
  store i32 0, i32* %24, align 4
  store i32 0, i32* %12, align 4
  br label %627

627:                                              ; preds = %774, %626
  %628 = load i8*, i8** %23, align 8
  %629 = load i32, i32* %12, align 4
  %630 = sext i32 %629 to i64
  %631 = getelementptr inbounds i8, i8* %628, i64 %630
  %632 = load i8, i8* %631, align 1
  store i8 %632, i8* %27, align 1
  %633 = sext i8 %632 to i32
  %634 = icmp ne i32 %633, 0
  br i1 %634, label %635, label %777

635:                                              ; preds = %627
  %636 = load i8, i8* %27, align 1
  %637 = sext i8 %636 to i32
  %638 = load i8, i8* %26, align 1
  %639 = sext i8 %638 to i32
  %640 = icmp eq i32 %637, %639
  br i1 %640, label %641, label %642

641:                                              ; preds = %635
  store i8 0, i8* %26, align 1
  br label %710

642:                                              ; preds = %635
  %643 = load i8, i8* %27, align 1
  %644 = sext i8 %643 to i32
  %645 = icmp eq i32 %644, 34
  br i1 %645, label %654, label %646

646:                                              ; preds = %642
  %647 = load i8, i8* %27, align 1
  %648 = sext i8 %647 to i32
  %649 = icmp eq i32 %648, 39
  br i1 %649, label %654, label %650

650:                                              ; preds = %646
  %651 = load i8, i8* %27, align 1
  %652 = sext i8 %651 to i32
  %653 = icmp eq i32 %652, 96
  br i1 %653, label %654, label %656

654:                                              ; preds = %650, %646, %642
  %655 = load i8, i8* %27, align 1
  store i8 %655, i8* %26, align 1
  br label %709

656:                                              ; preds = %650
  %657 = load i8, i8* %27, align 1
  %658 = sext i8 %657 to i32
  %659 = icmp eq i32 %658, 91
  br i1 %659, label %660, label %661

660:                                              ; preds = %656
  store i8 93, i8* %26, align 1
  br label %708

661:                                              ; preds = %656
  %662 = load i8, i8* %27, align 1
  %663 = sext i8 %662 to i32
  %664 = icmp eq i32 %663, 45
  br i1 %664, label %665, label %675

665:                                              ; preds = %661
  %666 = load i8*, i8** %23, align 8
  %667 = load i32, i32* %12, align 4
  %668 = add nsw i32 %667, 1
  %669 = sext i32 %668 to i64
  %670 = getelementptr inbounds i8, i8* %666, i64 %669
  %671 = load i8, i8* %670, align 1
  %672 = sext i8 %671 to i32
  %673 = icmp eq i32 %672, 45
  br i1 %673, label %674, label %675

674:                                              ; preds = %665
  store i8 10, i8* %26, align 1
  br label %707

675:                                              ; preds = %665, %661
  %676 = load i8, i8* %27, align 1
  %677 = sext i8 %676 to i32
  %678 = icmp eq i32 %677, 40
  br i1 %678, label %679, label %682

679:                                              ; preds = %675
  %680 = load i32, i32* %25, align 4
  %681 = add nsw i32 %680, 1
  store i32 %681, i32* %25, align 4
  br label %706

682:                                              ; preds = %675
  %683 = load i8, i8* %27, align 1
  %684 = sext i8 %683 to i32
  %685 = icmp eq i32 %684, 41
  br i1 %685, label %686, label %705

686:                                              ; preds = %682
  %687 = load i32, i32* %25, align 4
  %688 = add nsw i32 %687, -1
  store i32 %688, i32* %25, align 4
  %689 = load i32, i32* %28, align 4
  %690 = icmp sgt i32 %689, 0
  br i1 %690, label %691, label %704

691:                                              ; preds = %686
  %692 = load i32, i32* %25, align 4
  %693 = icmp eq i32 %692, 0
  br i1 %693, label %694, label %704

694:                                              ; preds = %691
  %695 = load i32, i32* %24, align 4
  %696 = icmp sgt i32 %695, 0
  br i1 %696, label %697, label %704

697:                                              ; preds = %694
  %698 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %699 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %698, i32 0, i32 10
  %700 = load i32, i32* %699, align 8
  %701 = load i8*, i8** %23, align 8
  %702 = load i32, i32* %24, align 4
  %703 = call i32 @printSchemaLineN(i32 %700, i8* %701, i32 %702, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %24, align 4
  br label %704

704:                                              ; preds = %697, %694, %691, %686
  br label %705

705:                                              ; preds = %704, %682
  br label %706

706:                                              ; preds = %705, %679
  br label %707

707:                                              ; preds = %706, %674
  br label %708

708:                                              ; preds = %707, %660
  br label %709

709:                                              ; preds = %708, %654
  br label %710

710:                                              ; preds = %709, %641
  %711 = load i8, i8* %27, align 1
  %712 = load i8*, i8** %23, align 8
  %713 = load i32, i32* %24, align 4
  %714 = add nsw i32 %713, 1
  store i32 %714, i32* %24, align 4
  %715 = sext i32 %713 to i64
  %716 = getelementptr inbounds i8, i8* %712, i64 %715
  store i8 %711, i8* %716, align 1
  %717 = load i32, i32* %25, align 4
  %718 = icmp eq i32 %717, 1
  br i1 %718, label %719, label %773

719:                                              ; preds = %710
  %720 = load i8, i8* %26, align 1
  %721 = sext i8 %720 to i32
  %722 = icmp eq i32 %721, 0
  br i1 %722, label %723, label %773

723:                                              ; preds = %719
  %724 = load i8, i8* %27, align 1
  %725 = sext i8 %724 to i32
  %726 = icmp eq i32 %725, 40
  br i1 %726, label %744, label %727

727:                                              ; preds = %723
  %728 = load i8, i8* %27, align 1
  %729 = sext i8 %728 to i32
  %730 = icmp eq i32 %729, 10
  br i1 %730, label %744, label %731

731:                                              ; preds = %727
  %732 = load i8, i8* %27, align 1
  %733 = sext i8 %732 to i32
  %734 = icmp eq i32 %733, 44
  br i1 %734, label %735, label %773

735:                                              ; preds = %731
  %736 = load i8*, i8** %23, align 8
  %737 = load i32, i32* %12, align 4
  %738 = sext i32 %737 to i64
  %739 = getelementptr inbounds i8, i8* %736, i64 %738
  %740 = getelementptr inbounds i8, i8* %739, i64 1
  %741 = ptrtoint i8* %740 to i32
  %742 = call i32 @wsToEol(i32 %741)
  %743 = icmp ne i32 %742, 0
  br i1 %743, label %773, label %744

744:                                              ; preds = %735, %727, %723
  %745 = load i8, i8* %27, align 1
  %746 = sext i8 %745 to i32
  %747 = icmp eq i32 %746, 10
  br i1 %747, label %748, label %751

748:                                              ; preds = %744
  %749 = load i32, i32* %24, align 4
  %750 = add nsw i32 %749, -1
  store i32 %750, i32* %24, align 4
  br label %751

751:                                              ; preds = %748, %744
  %752 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %753 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %752, i32 0, i32 10
  %754 = load i32, i32* %753, align 8
  %755 = load i8*, i8** %23, align 8
  %756 = load i32, i32* %24, align 4
  %757 = call i32 @printSchemaLineN(i32 %754, i8* %755, i32 %756, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %24, align 4
  %758 = load i32, i32* %28, align 4
  %759 = add nsw i32 %758, 1
  store i32 %759, i32* %28, align 4
  br label %760

760:                                              ; preds = %769, %751
  %761 = load i8*, i8** %23, align 8
  %762 = load i32, i32* %12, align 4
  %763 = add nsw i32 %762, 1
  %764 = sext i32 %763 to i64
  %765 = getelementptr inbounds i8, i8* %761, i64 %764
  %766 = load i8, i8* %765, align 1
  %767 = call i32 @IsSpace(i8 signext %766)
  %768 = icmp ne i32 %767, 0
  br i1 %768, label %769, label %772

769:                                              ; preds = %760
  %770 = load i32, i32* %12, align 4
  %771 = add nsw i32 %770, 1
  store i32 %771, i32* %12, align 4
  br label %760

772:                                              ; preds = %760
  br label %773

773:                                              ; preds = %772, %735, %731, %719, %710
  br label %774

774:                                              ; preds = %773
  %775 = load i32, i32* %12, align 4
  %776 = add nsw i32 %775, 1
  store i32 %776, i32* %12, align 4
  br label %627

777:                                              ; preds = %627
  %778 = load i8*, i8** %23, align 8
  %779 = load i32, i32* %24, align 4
  %780 = sext i32 %779 to i64
  %781 = getelementptr inbounds i8, i8* %778, i64 %780
  store i8 0, i8* %781, align 1
  br label %782

782:                                              ; preds = %777, %618
  %783 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %784 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %783, i32 0, i32 10
  %785 = load i32, i32* %784, align 8
  %786 = load i8*, i8** %23, align 8
  %787 = call i32 @printSchemaLine(i32 %785, i8* %786, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %788 = load i8*, i8** %23, align 8
  %789 = call i32 @sqlite3_free(i8* %788)
  br label %1853

790:                                              ; preds = %45
  %791 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %792 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %791, i32 0, i32 11
  %793 = load i32, i32* %792, align 4
  %794 = add nsw i32 %793, 1
  store i32 %794, i32* %792, align 4
  %795 = icmp eq i32 %793, 0
  br i1 %795, label %796, label %834

796:                                              ; preds = %790
  %797 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %798 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %797, i32 0, i32 4
  %799 = load i32, i32* %798, align 8
  %800 = icmp ne i32 %799, 0
  br i1 %800, label %801, label %834

801:                                              ; preds = %796
  store i32 0, i32* %12, align 4
  br label %802

802:                                              ; preds = %830, %801
  %803 = load i32, i32* %12, align 4
  %804 = load i32, i32* %8, align 4
  %805 = icmp slt i32 %803, %804
  br i1 %805, label %806, label %833

806:                                              ; preds = %802
  %807 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %808 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %807, i32 0, i32 10
  %809 = load i32, i32* %808, align 8
  %810 = load i8**, i8*** %10, align 8
  %811 = load i32, i32* %12, align 4
  %812 = sext i32 %811 to i64
  %813 = getelementptr inbounds i8*, i8** %810, i64 %812
  %814 = load i8*, i8** %813, align 8
  %815 = load i32, i32* %12, align 4
  %816 = load i32, i32* %8, align 4
  %817 = sub nsw i32 %816, 1
  %818 = icmp eq i32 %815, %817
  br i1 %818, label %819, label %823

819:                                              ; preds = %806
  %820 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %821 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %820, i32 0, i32 1
  %822 = load i8*, i8** %821, align 8
  br label %827

823:                                              ; preds = %806
  %824 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %825 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %824, i32 0, i32 8
  %826 = load i8*, i8** %825, align 8
  br label %827

827:                                              ; preds = %823, %819
  %828 = phi i8* [ %822, %819 ], [ %826, %823 ]
  %829 = call i32 (i32, i8*, ...) @utf8_printf(i32 %809, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* %814, i8* %828)
  br label %830

830:                                              ; preds = %827
  %831 = load i32, i32* %12, align 4
  %832 = add nsw i32 %831, 1
  store i32 %832, i32* %12, align 4
  br label %802

833:                                              ; preds = %802
  br label %834

834:                                              ; preds = %833, %796, %790
  %835 = load i8**, i8*** %9, align 8
  %836 = icmp eq i8** %835, null
  br i1 %836, label %837, label %838

837:                                              ; preds = %834
  br label %1853

838:                                              ; preds = %834
  store i32 0, i32* %12, align 4
  br label %839

839:                                              ; preds = %882, %838
  %840 = load i32, i32* %12, align 4
  %841 = load i32, i32* %8, align 4
  %842 = icmp slt i32 %840, %841
  br i1 %842, label %843, label %885

843:                                              ; preds = %839
  %844 = load i8**, i8*** %9, align 8
  %845 = load i32, i32* %12, align 4
  %846 = sext i32 %845 to i64
  %847 = getelementptr inbounds i8*, i8** %844, i64 %846
  %848 = load i8*, i8** %847, align 8
  store i8* %848, i8** %29, align 8
  %849 = load i8*, i8** %29, align 8
  %850 = icmp eq i8* %849, null
  br i1 %850, label %851, label %855

851:                                              ; preds = %843
  %852 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %853 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %852, i32 0, i32 2
  %854 = load i8*, i8** %853, align 8
  store i8* %854, i8** %29, align 8
  br label %855

855:                                              ; preds = %851, %843
  %856 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %857 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %856, i32 0, i32 10
  %858 = load i32, i32* %857, align 8
  %859 = load i8*, i8** %29, align 8
  %860 = call i32 (i32, i8*, ...) @utf8_printf(i32 %858, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %859)
  %861 = load i32, i32* %12, align 4
  %862 = load i32, i32* %8, align 4
  %863 = sub nsw i32 %862, 1
  %864 = icmp slt i32 %861, %863
  br i1 %864, label %865, label %873

865:                                              ; preds = %855
  %866 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %867 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %866, i32 0, i32 10
  %868 = load i32, i32* %867, align 8
  %869 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %870 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %869, i32 0, i32 8
  %871 = load i8*, i8** %870, align 8
  %872 = call i32 (i32, i8*, ...) @utf8_printf(i32 %868, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %871)
  br label %881

873:                                              ; preds = %855
  %874 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %875 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %874, i32 0, i32 10
  %876 = load i32, i32* %875, align 8
  %877 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %878 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %877, i32 0, i32 1
  %879 = load i8*, i8** %878, align 8
  %880 = call i32 (i32, i8*, ...) @utf8_printf(i32 %876, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %879)
  br label %881

881:                                              ; preds = %873, %865
  br label %882

882:                                              ; preds = %881
  %883 = load i32, i32* %12, align 4
  %884 = add nsw i32 %883, 1
  store i32 %884, i32* %12, align 4
  br label %839

885:                                              ; preds = %839
  br label %1853

886:                                              ; preds = %45
  %887 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %888 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %887, i32 0, i32 11
  %889 = load i32, i32* %888, align 4
  %890 = add nsw i32 %889, 1
  store i32 %890, i32* %888, align 4
  %891 = icmp eq i32 %889, 0
  br i1 %891, label %892, label %932

892:                                              ; preds = %886
  %893 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %894 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %893, i32 0, i32 4
  %895 = load i32, i32* %894, align 8
  %896 = icmp ne i32 %895, 0
  br i1 %896, label %897, label %932

897:                                              ; preds = %892
  %898 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %899 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %898, i32 0, i32 10
  %900 = load i32, i32* %899, align 8
  %901 = call i32 (i32, i8*, ...) @raw_printf(i32 %900, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %902

902:                                              ; preds = %924, %897
  %903 = load i32, i32* %12, align 4
  %904 = load i32, i32* %8, align 4
  %905 = icmp slt i32 %903, %904
  br i1 %905, label %906, label %927

906:                                              ; preds = %902
  %907 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %908 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %907, i32 0, i32 10
  %909 = load i32, i32* %908, align 8
  %910 = call i32 (i32, i8*, ...) @raw_printf(i32 %909, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %911 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %912 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %911, i32 0, i32 10
  %913 = load i32, i32* %912, align 8
  %914 = load i8**, i8*** %10, align 8
  %915 = load i32, i32* %12, align 4
  %916 = sext i32 %915 to i64
  %917 = getelementptr inbounds i8*, i8** %914, i64 %916
  %918 = load i8*, i8** %917, align 8
  %919 = call i32 @output_html_string(i32 %913, i8* %918)
  %920 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %921 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %920, i32 0, i32 10
  %922 = load i32, i32* %921, align 8
  %923 = call i32 (i32, i8*, ...) @raw_printf(i32 %922, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  br label %924

924:                                              ; preds = %906
  %925 = load i32, i32* %12, align 4
  %926 = add nsw i32 %925, 1
  store i32 %926, i32* %12, align 4
  br label %902

927:                                              ; preds = %902
  %928 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %929 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %928, i32 0, i32 10
  %930 = load i32, i32* %929, align 8
  %931 = call i32 (i32, i8*, ...) @raw_printf(i32 %930, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  br label %932

932:                                              ; preds = %927, %892, %886
  %933 = load i8**, i8*** %9, align 8
  %934 = icmp eq i8** %933, null
  br i1 %934, label %935, label %936

935:                                              ; preds = %932
  br label %1853

936:                                              ; preds = %932
  %937 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %938 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %937, i32 0, i32 10
  %939 = load i32, i32* %938, align 8
  %940 = call i32 (i32, i8*, ...) @raw_printf(i32 %939, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %941

941:                                              ; preds = %976, %936
  %942 = load i32, i32* %12, align 4
  %943 = load i32, i32* %8, align 4
  %944 = icmp slt i32 %942, %943
  br i1 %944, label %945, label %979

945:                                              ; preds = %941
  %946 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %947 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %946, i32 0, i32 10
  %948 = load i32, i32* %947, align 8
  %949 = call i32 (i32, i8*, ...) @raw_printf(i32 %948, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  %950 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %951 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %950, i32 0, i32 10
  %952 = load i32, i32* %951, align 8
  %953 = load i8**, i8*** %9, align 8
  %954 = load i32, i32* %12, align 4
  %955 = sext i32 %954 to i64
  %956 = getelementptr inbounds i8*, i8** %953, i64 %955
  %957 = load i8*, i8** %956, align 8
  %958 = icmp ne i8* %957, null
  br i1 %958, label %959, label %965

959:                                              ; preds = %945
  %960 = load i8**, i8*** %9, align 8
  %961 = load i32, i32* %12, align 4
  %962 = sext i32 %961 to i64
  %963 = getelementptr inbounds i8*, i8** %960, i64 %962
  %964 = load i8*, i8** %963, align 8
  br label %969

965:                                              ; preds = %945
  %966 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %967 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %966, i32 0, i32 2
  %968 = load i8*, i8** %967, align 8
  br label %969

969:                                              ; preds = %965, %959
  %970 = phi i8* [ %964, %959 ], [ %968, %965 ]
  %971 = call i32 @output_html_string(i32 %952, i8* %970)
  %972 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %973 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %972, i32 0, i32 10
  %974 = load i32, i32* %973, align 8
  %975 = call i32 (i32, i8*, ...) @raw_printf(i32 %974, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  br label %976

976:                                              ; preds = %969
  %977 = load i32, i32* %12, align 4
  %978 = add nsw i32 %977, 1
  store i32 %978, i32* %12, align 4
  br label %941

979:                                              ; preds = %941
  %980 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %981 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %980, i32 0, i32 10
  %982 = load i32, i32* %981, align 8
  %983 = call i32 (i32, i8*, ...) @raw_printf(i32 %982, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  br label %1853

984:                                              ; preds = %45
  %985 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %986 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %985, i32 0, i32 11
  %987 = load i32, i32* %986, align 4
  %988 = add nsw i32 %987, 1
  store i32 %988, i32* %986, align 4
  %989 = icmp eq i32 %987, 0
  br i1 %989, label %990, label %1044

990:                                              ; preds = %984
  %991 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %992 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %991, i32 0, i32 4
  %993 = load i32, i32* %992, align 8
  %994 = icmp ne i32 %993, 0
  br i1 %994, label %995, label %1044

995:                                              ; preds = %990
  store i32 0, i32* %12, align 4
  br label %996

996:                                              ; preds = %1033, %995
  %997 = load i32, i32* %12, align 4
  %998 = load i32, i32* %8, align 4
  %999 = icmp slt i32 %997, %998
  br i1 %999, label %1000, label %1036

1000:                                             ; preds = %996
  %1001 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1002 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1001, i32 0, i32 10
  %1003 = load i32, i32* %1002, align 8
  %1004 = load i8**, i8*** %10, align 8
  %1005 = load i32, i32* %12, align 4
  %1006 = sext i32 %1005 to i64
  %1007 = getelementptr inbounds i8*, i8** %1004, i64 %1006
  %1008 = load i8*, i8** %1007, align 8
  %1009 = icmp ne i8* %1008, null
  br i1 %1009, label %1010, label %1016

1010:                                             ; preds = %1000
  %1011 = load i8**, i8*** %10, align 8
  %1012 = load i32, i32* %12, align 4
  %1013 = sext i32 %1012 to i64
  %1014 = getelementptr inbounds i8*, i8** %1011, i64 %1013
  %1015 = load i8*, i8** %1014, align 8
  br label %1017

1016:                                             ; preds = %1000
  br label %1017

1017:                                             ; preds = %1016, %1010
  %1018 = phi i8* [ %1015, %1010 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %1016 ]
  %1019 = call i32 @output_c_string(i32 %1003, i8* %1018)
  %1020 = load i32, i32* %12, align 4
  %1021 = load i32, i32* %8, align 4
  %1022 = sub nsw i32 %1021, 1
  %1023 = icmp slt i32 %1020, %1022
  br i1 %1023, label %1024, label %1032

1024:                                             ; preds = %1017
  %1025 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1026 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1025, i32 0, i32 10
  %1027 = load i32, i32* %1026, align 8
  %1028 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1029 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1028, i32 0, i32 8
  %1030 = load i8*, i8** %1029, align 8
  %1031 = call i32 (i32, i8*, ...) @utf8_printf(i32 %1027, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %1030)
  br label %1032

1032:                                             ; preds = %1024, %1017
  br label %1033

1033:                                             ; preds = %1032
  %1034 = load i32, i32* %12, align 4
  %1035 = add nsw i32 %1034, 1
  store i32 %1035, i32* %12, align 4
  br label %996

1036:                                             ; preds = %996
  %1037 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1038 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1037, i32 0, i32 10
  %1039 = load i32, i32* %1038, align 8
  %1040 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1041 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1040, i32 0, i32 1
  %1042 = load i8*, i8** %1041, align 8
  %1043 = call i32 (i32, i8*, ...) @utf8_printf(i32 %1039, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %1042)
  br label %1044

1044:                                             ; preds = %1036, %990, %984
  %1045 = load i8**, i8*** %9, align 8
  %1046 = icmp eq i8** %1045, null
  br i1 %1046, label %1047, label %1048

1047:                                             ; preds = %1044
  br label %1853

1048:                                             ; preds = %1044
  store i32 0, i32* %12, align 4
  br label %1049

1049:                                             ; preds = %1089, %1048
  %1050 = load i32, i32* %12, align 4
  %1051 = load i32, i32* %8, align 4
  %1052 = icmp slt i32 %1050, %1051
  br i1 %1052, label %1053, label %1092

1053:                                             ; preds = %1049
  %1054 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1055 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1054, i32 0, i32 10
  %1056 = load i32, i32* %1055, align 8
  %1057 = load i8**, i8*** %9, align 8
  %1058 = load i32, i32* %12, align 4
  %1059 = sext i32 %1058 to i64
  %1060 = getelementptr inbounds i8*, i8** %1057, i64 %1059
  %1061 = load i8*, i8** %1060, align 8
  %1062 = icmp ne i8* %1061, null
  br i1 %1062, label %1063, label %1069

1063:                                             ; preds = %1053
  %1064 = load i8**, i8*** %9, align 8
  %1065 = load i32, i32* %12, align 4
  %1066 = sext i32 %1065 to i64
  %1067 = getelementptr inbounds i8*, i8** %1064, i64 %1066
  %1068 = load i8*, i8** %1067, align 8
  br label %1073

1069:                                             ; preds = %1053
  %1070 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1071 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1070, i32 0, i32 2
  %1072 = load i8*, i8** %1071, align 8
  br label %1073

1073:                                             ; preds = %1069, %1063
  %1074 = phi i8* [ %1068, %1063 ], [ %1072, %1069 ]
  %1075 = call i32 @output_c_string(i32 %1056, i8* %1074)
  %1076 = load i32, i32* %12, align 4
  %1077 = load i32, i32* %8, align 4
  %1078 = sub nsw i32 %1077, 1
  %1079 = icmp slt i32 %1076, %1078
  br i1 %1079, label %1080, label %1088

1080:                                             ; preds = %1073
  %1081 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1082 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1081, i32 0, i32 10
  %1083 = load i32, i32* %1082, align 8
  %1084 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1085 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1084, i32 0, i32 8
  %1086 = load i8*, i8** %1085, align 8
  %1087 = call i32 (i32, i8*, ...) @utf8_printf(i32 %1083, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %1086)
  br label %1088

1088:                                             ; preds = %1080, %1073
  br label %1089

1089:                                             ; preds = %1088
  %1090 = load i32, i32* %12, align 4
  %1091 = add nsw i32 %1090, 1
  store i32 %1091, i32* %12, align 4
  br label %1049

1092:                                             ; preds = %1049
  %1093 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1094 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1093, i32 0, i32 10
  %1095 = load i32, i32* %1094, align 8
  %1096 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1097 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1096, i32 0, i32 1
  %1098 = load i8*, i8** %1097, align 8
  %1099 = call i32 (i32, i8*, ...) @utf8_printf(i32 %1095, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %1098)
  br label %1853

1100:                                             ; preds = %45
  %1101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1101, i32 0, i32 10
  %1103 = load i32, i32* %1102, align 8
  %1104 = call i32 @setBinaryMode(i32 %1103, i32 1)
  %1105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1105, i32 0, i32 11
  %1107 = load i32, i32* %1106, align 4
  %1108 = add nsw i32 %1107, 1
  store i32 %1108, i32* %1106, align 4
  %1109 = icmp eq i32 %1107, 0
  br i1 %1109, label %1110, label %1154

1110:                                             ; preds = %1100
  %1111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1111, i32 0, i32 4
  %1113 = load i32, i32* %1112, align 8
  %1114 = icmp ne i32 %1113, 0
  br i1 %1114, label %1115, label %1154

1115:                                             ; preds = %1110
  store i32 0, i32* %12, align 4
  br label %1116

1116:                                             ; preds = %1143, %1115
  %1117 = load i32, i32* %12, align 4
  %1118 = load i32, i32* %8, align 4
  %1119 = icmp slt i32 %1117, %1118
  br i1 %1119, label %1120, label %1146

1120:                                             ; preds = %1116
  %1121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1122 = load i8**, i8*** %10, align 8
  %1123 = load i32, i32* %12, align 4
  %1124 = sext i32 %1123 to i64
  %1125 = getelementptr inbounds i8*, i8** %1122, i64 %1124
  %1126 = load i8*, i8** %1125, align 8
  %1127 = icmp ne i8* %1126, null
  br i1 %1127, label %1128, label %1134

1128:                                             ; preds = %1120
  %1129 = load i8**, i8*** %10, align 8
  %1130 = load i32, i32* %12, align 4
  %1131 = sext i32 %1130 to i64
  %1132 = getelementptr inbounds i8*, i8** %1129, i64 %1131
  %1133 = load i8*, i8** %1132, align 8
  br label %1135

1134:                                             ; preds = %1120
  br label %1135

1135:                                             ; preds = %1134, %1128
  %1136 = phi i8* [ %1133, %1128 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %1134 ]
  %1137 = load i32, i32* %12, align 4
  %1138 = load i32, i32* %8, align 4
  %1139 = sub nsw i32 %1138, 1
  %1140 = icmp slt i32 %1137, %1139
  %1141 = zext i1 %1140 to i32
  %1142 = call i32 @output_csv(%struct.TYPE_5__* %1121, i8* %1136, i32 %1141)
  br label %1143

1143:                                             ; preds = %1135
  %1144 = load i32, i32* %12, align 4
  %1145 = add nsw i32 %1144, 1
  store i32 %1145, i32* %12, align 4
  br label %1116

1146:                                             ; preds = %1116
  %1147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1147, i32 0, i32 10
  %1149 = load i32, i32* %1148, align 8
  %1150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1150, i32 0, i32 1
  %1152 = load i8*, i8** %1151, align 8
  %1153 = call i32 (i32, i8*, ...) @utf8_printf(i32 %1149, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %1152)
  br label %1154

1154:                                             ; preds = %1146, %1110, %1100
  %1155 = load i32, i32* %8, align 4
  %1156 = icmp sgt i32 %1155, 0
  br i1 %1156, label %1157, label %1186

1157:                                             ; preds = %1154
  store i32 0, i32* %12, align 4
  br label %1158

1158:                                             ; preds = %1175, %1157
  %1159 = load i32, i32* %12, align 4
  %1160 = load i32, i32* %8, align 4
  %1161 = icmp slt i32 %1159, %1160
  br i1 %1161, label %1162, label %1178

1162:                                             ; preds = %1158
  %1163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1164 = load i8**, i8*** %9, align 8
  %1165 = load i32, i32* %12, align 4
  %1166 = sext i32 %1165 to i64
  %1167 = getelementptr inbounds i8*, i8** %1164, i64 %1166
  %1168 = load i8*, i8** %1167, align 8
  %1169 = load i32, i32* %12, align 4
  %1170 = load i32, i32* %8, align 4
  %1171 = sub nsw i32 %1170, 1
  %1172 = icmp slt i32 %1169, %1171
  %1173 = zext i1 %1172 to i32
  %1174 = call i32 @output_csv(%struct.TYPE_5__* %1163, i8* %1168, i32 %1173)
  br label %1175

1175:                                             ; preds = %1162
  %1176 = load i32, i32* %12, align 4
  %1177 = add nsw i32 %1176, 1
  store i32 %1177, i32* %12, align 4
  br label %1158

1178:                                             ; preds = %1158
  %1179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1179, i32 0, i32 10
  %1181 = load i32, i32* %1180, align 8
  %1182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1182, i32 0, i32 1
  %1184 = load i8*, i8** %1183, align 8
  %1185 = call i32 (i32, i8*, ...) @utf8_printf(i32 %1181, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %1184)
  br label %1186

1186:                                             ; preds = %1178, %1154
  %1187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1187, i32 0, i32 10
  %1189 = load i32, i32* %1188, align 8
  %1190 = call i32 @setTextMode(i32 %1189, i32 1)
  br label %1853

1191:                                             ; preds = %45
  %1192 = load i8**, i8*** %9, align 8
  %1193 = icmp eq i8** %1192, null
  br i1 %1193, label %1194, label %1195

1194:                                             ; preds = %1191
  br label %1853

1195:                                             ; preds = %1191
  %1196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1196, i32 0, i32 10
  %1198 = load i32, i32* %1197, align 8
  %1199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1199, i32 0, i32 9
  %1201 = load i8*, i8** %1200, align 8
  %1202 = call i32 (i32, i8*, ...) @utf8_printf(i32 %1198, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i8* %1201)
  %1203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1203, i32 0, i32 4
  %1205 = load i32, i32* %1204, align 8
  %1206 = icmp ne i32 %1205, 0
  br i1 %1206, label %1207, label %1265

1207:                                             ; preds = %1195
  %1208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1208, i32 0, i32 10
  %1210 = load i32, i32* %1209, align 8
  %1211 = call i32 (i32, i8*, ...) @raw_printf(i32 %1210, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %1212

1212:                                             ; preds = %1257, %1207
  %1213 = load i32, i32* %12, align 4
  %1214 = load i32, i32* %8, align 4
  %1215 = icmp slt i32 %1213, %1214
  br i1 %1215, label %1216, label %1260

1216:                                             ; preds = %1212
  %1217 = load i32, i32* %12, align 4
  %1218 = icmp sgt i32 %1217, 0
  br i1 %1218, label %1219, label %1224

1219:                                             ; preds = %1216
  %1220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1220, i32 0, i32 10
  %1222 = load i32, i32* %1221, align 8
  %1223 = call i32 (i32, i8*, ...) @raw_printf(i32 %1222, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  br label %1224

1224:                                             ; preds = %1219, %1216
  %1225 = load i8**, i8*** %10, align 8
  %1226 = load i32, i32* %12, align 4
  %1227 = sext i32 %1226 to i64
  %1228 = getelementptr inbounds i8*, i8** %1225, i64 %1227
  %1229 = load i8*, i8** %1228, align 8
  %1230 = call i32 @quoteChar(i8* %1229)
  %1231 = icmp ne i32 %1230, 0
  br i1 %1231, label %1232, label %1246

1232:                                             ; preds = %1224
  %1233 = load i8**, i8*** %10, align 8
  %1234 = load i32, i32* %12, align 4
  %1235 = sext i32 %1234 to i64
  %1236 = getelementptr inbounds i8*, i8** %1233, i64 %1235
  %1237 = load i8*, i8** %1236, align 8
  %1238 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8* %1237)
  store i8* %1238, i8** %30, align 8
  %1239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1239, i32 0, i32 10
  %1241 = load i32, i32* %1240, align 8
  %1242 = load i8*, i8** %30, align 8
  %1243 = call i32 (i32, i8*, ...) @utf8_printf(i32 %1241, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %1242)
  %1244 = load i8*, i8** %30, align 8
  %1245 = call i32 @sqlite3_free(i8* %1244)
  br label %1256

1246:                                             ; preds = %1224
  %1247 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1247, i32 0, i32 10
  %1249 = load i32, i32* %1248, align 8
  %1250 = load i8**, i8*** %10, align 8
  %1251 = load i32, i32* %12, align 4
  %1252 = sext i32 %1251 to i64
  %1253 = getelementptr inbounds i8*, i8** %1250, i64 %1252
  %1254 = load i8*, i8** %1253, align 8
  %1255 = call i32 (i32, i8*, ...) @raw_printf(i32 %1249, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %1254)
  br label %1256

1256:                                             ; preds = %1246, %1232
  br label %1257

1257:                                             ; preds = %1256
  %1258 = load i32, i32* %12, align 4
  %1259 = add nsw i32 %1258, 1
  store i32 %1259, i32* %12, align 4
  br label %1212

1260:                                             ; preds = %1212
  %1261 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1261, i32 0, i32 10
  %1263 = load i32, i32* %1262, align 8
  %1264 = call i32 (i32, i8*, ...) @raw_printf(i32 %1263, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
  br label %1265

1265:                                             ; preds = %1260, %1195
  %1266 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1266, i32 0, i32 11
  %1268 = load i32, i32* %1267, align 4
  %1269 = add nsw i32 %1268, 1
  store i32 %1269, i32* %1267, align 4
  store i32 0, i32* %12, align 4
  br label %1270

1270:                                             ; preds = %1492, %1265
  %1271 = load i32, i32* %12, align 4
  %1272 = load i32, i32* %8, align 4
  %1273 = icmp slt i32 %1271, %1272
  br i1 %1273, label %1274, label %1495

1274:                                             ; preds = %1270
  %1275 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1276 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1275, i32 0, i32 10
  %1277 = load i32, i32* %1276, align 8
  %1278 = load i32, i32* %12, align 4
  %1279 = icmp sgt i32 %1278, 0
  %1280 = zext i1 %1279 to i64
  %1281 = select i1 %1279, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0)
  %1282 = call i32 (i32, i8*, ...) @raw_printf(i32 %1277, i8* %1281)
  %1283 = load i8**, i8*** %9, align 8
  %1284 = load i32, i32* %12, align 4
  %1285 = sext i32 %1284 to i64
  %1286 = getelementptr inbounds i8*, i8** %1283, i64 %1285
  %1287 = load i8*, i8** %1286, align 8
  %1288 = icmp eq i8* %1287, null
  br i1 %1288, label %1300, label %1289

1289:                                             ; preds = %1274
  %1290 = load i32*, i32** %11, align 8
  %1291 = icmp ne i32* %1290, null
  br i1 %1291, label %1292, label %1305

1292:                                             ; preds = %1289
  %1293 = load i32*, i32** %11, align 8
  %1294 = load i32, i32* %12, align 4
  %1295 = sext i32 %1294 to i64
  %1296 = getelementptr inbounds i32, i32* %1293, i64 %1295
  %1297 = load i32, i32* %1296, align 4
  %1298 = load i32, i32* @SQLITE_NULL, align 4
  %1299 = icmp eq i32 %1297, %1298
  br i1 %1299, label %1300, label %1305

1300:                                             ; preds = %1292, %1274
  %1301 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1302 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1301, i32 0, i32 10
  %1303 = load i32, i32* %1302, align 8
  %1304 = call i32 (i32, i8*, ...) @utf8_printf(i32 %1303, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0))
  br label %1491

1305:                                             ; preds = %1292, %1289
  %1306 = load i32*, i32** %11, align 8
  %1307 = icmp ne i32* %1306, null
  br i1 %1307, label %1308, label %1342

1308:                                             ; preds = %1305
  %1309 = load i32*, i32** %11, align 8
  %1310 = load i32, i32* %12, align 4
  %1311 = sext i32 %1310 to i64
  %1312 = getelementptr inbounds i32, i32* %1309, i64 %1311
  %1313 = load i32, i32* %1312, align 4
  %1314 = load i32, i32* @SQLITE_TEXT, align 4
  %1315 = icmp eq i32 %1313, %1314
  br i1 %1315, label %1316, label %1342

1316:                                             ; preds = %1308
  %1317 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1318 = load i32, i32* @SHFLG_Newlines, align 4
  %1319 = call i32 @ShellHasFlag(%struct.TYPE_5__* %1317, i32 %1318)
  %1320 = icmp ne i32 %1319, 0
  br i1 %1320, label %1321, label %1331

1321:                                             ; preds = %1316
  %1322 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1323 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1322, i32 0, i32 10
  %1324 = load i32, i32* %1323, align 8
  %1325 = load i8**, i8*** %9, align 8
  %1326 = load i32, i32* %12, align 4
  %1327 = sext i32 %1326 to i64
  %1328 = getelementptr inbounds i8*, i8** %1325, i64 %1327
  %1329 = load i8*, i8** %1328, align 8
  %1330 = call i32 @output_quoted_string(i32 %1324, i8* %1329)
  br label %1341

1331:                                             ; preds = %1316
  %1332 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1333 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1332, i32 0, i32 10
  %1334 = load i32, i32* %1333, align 8
  %1335 = load i8**, i8*** %9, align 8
  %1336 = load i32, i32* %12, align 4
  %1337 = sext i32 %1336 to i64
  %1338 = getelementptr inbounds i8*, i8** %1335, i64 %1337
  %1339 = load i8*, i8** %1338, align 8
  %1340 = call i32 @output_quoted_escaped_string(i32 %1334, i8* %1339)
  br label %1341

1341:                                             ; preds = %1331, %1321
  br label %1490

1342:                                             ; preds = %1308, %1305
  %1343 = load i32*, i32** %11, align 8
  %1344 = icmp ne i32* %1343, null
  br i1 %1344, label %1345, label %1363

1345:                                             ; preds = %1342
  %1346 = load i32*, i32** %11, align 8
  %1347 = load i32, i32* %12, align 4
  %1348 = sext i32 %1347 to i64
  %1349 = getelementptr inbounds i32, i32* %1346, i64 %1348
  %1350 = load i32, i32* %1349, align 4
  %1351 = load i32, i32* @SQLITE_INTEGER, align 4
  %1352 = icmp eq i32 %1350, %1351
  br i1 %1352, label %1353, label %1363

1353:                                             ; preds = %1345
  %1354 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1355 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1354, i32 0, i32 10
  %1356 = load i32, i32* %1355, align 8
  %1357 = load i8**, i8*** %9, align 8
  %1358 = load i32, i32* %12, align 4
  %1359 = sext i32 %1358 to i64
  %1360 = getelementptr inbounds i8*, i8** %1357, i64 %1359
  %1361 = load i8*, i8** %1360, align 8
  %1362 = call i32 (i32, i8*, ...) @utf8_printf(i32 %1356, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %1361)
  br label %1489

1363:                                             ; preds = %1345, %1342
  %1364 = load i32*, i32** %11, align 8
  %1365 = icmp ne i32* %1364, null
  br i1 %1365, label %1366, label %1409

1366:                                             ; preds = %1363
  %1367 = load i32*, i32** %11, align 8
  %1368 = load i32, i32* %12, align 4
  %1369 = sext i32 %1368 to i64
  %1370 = getelementptr inbounds i32, i32* %1367, i64 %1369
  %1371 = load i32, i32* %1370, align 4
  %1372 = load i32, i32* @SQLITE_FLOAT, align 4
  %1373 = icmp eq i32 %1371, %1372
  br i1 %1373, label %1374, label %1409

1374:                                             ; preds = %1366
  %1375 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1376 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1375, i32 0, i32 12
  %1377 = load i32, i32* %1376, align 8
  %1378 = load i32, i32* %12, align 4
  %1379 = call double @sqlite3_column_double(i32 %1377, i32 %1378)
  store double %1379, double* %32, align 8
  %1380 = call i32 @memcpy(i32* %33, double* %32, i32 8)
  %1381 = load i32, i32* %33, align 4
  %1382 = sext i32 %1381 to i64
  %1383 = icmp eq i64 %1382, 9218868437227405312
  br i1 %1383, label %1384, label %1389

1384:                                             ; preds = %1374
  %1385 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1386 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1385, i32 0, i32 10
  %1387 = load i32, i32* %1386, align 8
  %1388 = call i32 (i32, i8*, ...) @raw_printf(i32 %1387, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0))
  br label %1408

1389:                                             ; preds = %1374
  %1390 = load i32, i32* %33, align 4
  %1391 = sext i32 %1390 to i64
  %1392 = icmp eq i64 %1391, -4503599627370496
  br i1 %1392, label %1393, label %1398

1393:                                             ; preds = %1389
  %1394 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1395 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1394, i32 0, i32 10
  %1396 = load i32, i32* %1395, align 8
  %1397 = call i32 (i32, i8*, ...) @raw_printf(i32 %1396, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0))
  br label %1407

1398:                                             ; preds = %1389
  %1399 = getelementptr inbounds [50 x i8], [50 x i8]* %31, i64 0, i64 0
  %1400 = load double, double* %32, align 8
  %1401 = call i32 @sqlite3_snprintf(i32 50, i8* %1399, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), double %1400)
  %1402 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1403 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1402, i32 0, i32 10
  %1404 = load i32, i32* %1403, align 8
  %1405 = getelementptr inbounds [50 x i8], [50 x i8]* %31, i64 0, i64 0
  %1406 = call i32 (i32, i8*, ...) @raw_printf(i32 %1404, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %1405)
  br label %1407

1407:                                             ; preds = %1398, %1393
  br label %1408

1408:                                             ; preds = %1407, %1384
  br label %1488

1409:                                             ; preds = %1366, %1363
  %1410 = load i32*, i32** %11, align 8
  %1411 = icmp ne i32* %1410, null
  br i1 %1411, label %1412, label %1442

1412:                                             ; preds = %1409
  %1413 = load i32*, i32** %11, align 8
  %1414 = load i32, i32* %12, align 4
  %1415 = sext i32 %1414 to i64
  %1416 = getelementptr inbounds i32, i32* %1413, i64 %1415
  %1417 = load i32, i32* %1416, align 4
  %1418 = load i32, i32* @SQLITE_BLOB, align 4
  %1419 = icmp eq i32 %1417, %1418
  br i1 %1419, label %1420, label %1442

1420:                                             ; preds = %1412
  %1421 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1422 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1421, i32 0, i32 12
  %1423 = load i32, i32* %1422, align 8
  %1424 = icmp ne i32 %1423, 0
  br i1 %1424, label %1425, label %1442

1425:                                             ; preds = %1420
  %1426 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1427 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1426, i32 0, i32 12
  %1428 = load i32, i32* %1427, align 8
  %1429 = load i32, i32* %12, align 4
  %1430 = call i8* @sqlite3_column_blob(i32 %1428, i32 %1429)
  store i8* %1430, i8** %34, align 8
  %1431 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1432 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1431, i32 0, i32 12
  %1433 = load i32, i32* %1432, align 8
  %1434 = load i32, i32* %12, align 4
  %1435 = call i32 @sqlite3_column_bytes(i32 %1433, i32 %1434)
  store i32 %1435, i32* %35, align 4
  %1436 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1437 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1436, i32 0, i32 10
  %1438 = load i32, i32* %1437, align 8
  %1439 = load i8*, i8** %34, align 8
  %1440 = load i32, i32* %35, align 4
  %1441 = call i32 @output_hex_blob(i32 %1438, i8* %1439, i32 %1440)
  br label %1487

1442:                                             ; preds = %1420, %1412, %1409
  %1443 = load i8**, i8*** %9, align 8
  %1444 = load i32, i32* %12, align 4
  %1445 = sext i32 %1444 to i64
  %1446 = getelementptr inbounds i8*, i8** %1443, i64 %1445
  %1447 = load i8*, i8** %1446, align 8
  %1448 = call i32 @isNumber(i8* %1447, i32 0)
  %1449 = icmp ne i32 %1448, 0
  br i1 %1449, label %1450, label %1460

1450:                                             ; preds = %1442
  %1451 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1452 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1451, i32 0, i32 10
  %1453 = load i32, i32* %1452, align 8
  %1454 = load i8**, i8*** %9, align 8
  %1455 = load i32, i32* %12, align 4
  %1456 = sext i32 %1455 to i64
  %1457 = getelementptr inbounds i8*, i8** %1454, i64 %1456
  %1458 = load i8*, i8** %1457, align 8
  %1459 = call i32 (i32, i8*, ...) @utf8_printf(i32 %1453, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %1458)
  br label %1486

1460:                                             ; preds = %1442
  %1461 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1462 = load i32, i32* @SHFLG_Newlines, align 4
  %1463 = call i32 @ShellHasFlag(%struct.TYPE_5__* %1461, i32 %1462)
  %1464 = icmp ne i32 %1463, 0
  br i1 %1464, label %1465, label %1475

1465:                                             ; preds = %1460
  %1466 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1467 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1466, i32 0, i32 10
  %1468 = load i32, i32* %1467, align 8
  %1469 = load i8**, i8*** %9, align 8
  %1470 = load i32, i32* %12, align 4
  %1471 = sext i32 %1470 to i64
  %1472 = getelementptr inbounds i8*, i8** %1469, i64 %1471
  %1473 = load i8*, i8** %1472, align 8
  %1474 = call i32 @output_quoted_string(i32 %1468, i8* %1473)
  br label %1485

1475:                                             ; preds = %1460
  %1476 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1477 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1476, i32 0, i32 10
  %1478 = load i32, i32* %1477, align 8
  %1479 = load i8**, i8*** %9, align 8
  %1480 = load i32, i32* %12, align 4
  %1481 = sext i32 %1480 to i64
  %1482 = getelementptr inbounds i8*, i8** %1479, i64 %1481
  %1483 = load i8*, i8** %1482, align 8
  %1484 = call i32 @output_quoted_escaped_string(i32 %1478, i8* %1483)
  br label %1485

1485:                                             ; preds = %1475, %1465
  br label %1486

1486:                                             ; preds = %1485, %1450
  br label %1487

1487:                                             ; preds = %1486, %1425
  br label %1488

1488:                                             ; preds = %1487, %1408
  br label %1489

1489:                                             ; preds = %1488, %1353
  br label %1490

1490:                                             ; preds = %1489, %1341
  br label %1491

1491:                                             ; preds = %1490, %1300
  br label %1492

1492:                                             ; preds = %1491
  %1493 = load i32, i32* %12, align 4
  %1494 = add nsw i32 %1493, 1
  store i32 %1494, i32* %12, align 4
  br label %1270

1495:                                             ; preds = %1270
  %1496 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1497 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1496, i32 0, i32 10
  %1498 = load i32, i32* %1497, align 8
  %1499 = call i32 (i32, i8*, ...) @raw_printf(i32 %1498, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0))
  br label %1853

1500:                                             ; preds = %45
  %1501 = load i8**, i8*** %9, align 8
  %1502 = icmp eq i8** %1501, null
  br i1 %1502, label %1503, label %1504

1503:                                             ; preds = %1500
  br label %1853

1504:                                             ; preds = %1500
  %1505 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1506 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1505, i32 0, i32 11
  %1507 = load i32, i32* %1506, align 4
  %1508 = icmp eq i32 %1507, 0
  br i1 %1508, label %1509, label %1545

1509:                                             ; preds = %1504
  %1510 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1511 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1510, i32 0, i32 4
  %1512 = load i32, i32* %1511, align 8
  %1513 = icmp ne i32 %1512, 0
  br i1 %1513, label %1514, label %1545

1514:                                             ; preds = %1509
  store i32 0, i32* %12, align 4
  br label %1515

1515:                                             ; preds = %1537, %1514
  %1516 = load i32, i32* %12, align 4
  %1517 = load i32, i32* %8, align 4
  %1518 = icmp slt i32 %1516, %1517
  br i1 %1518, label %1519, label %1540

1519:                                             ; preds = %1515
  %1520 = load i32, i32* %12, align 4
  %1521 = icmp sgt i32 %1520, 0
  br i1 %1521, label %1522, label %1527

1522:                                             ; preds = %1519
  %1523 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1524 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1523, i32 0, i32 10
  %1525 = load i32, i32* %1524, align 8
  %1526 = call i32 (i32, i8*, ...) @raw_printf(i32 %1525, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  br label %1527

1527:                                             ; preds = %1522, %1519
  %1528 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1529 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1528, i32 0, i32 10
  %1530 = load i32, i32* %1529, align 8
  %1531 = load i8**, i8*** %10, align 8
  %1532 = load i32, i32* %12, align 4
  %1533 = sext i32 %1532 to i64
  %1534 = getelementptr inbounds i8*, i8** %1531, i64 %1533
  %1535 = load i8*, i8** %1534, align 8
  %1536 = call i32 @output_quoted_string(i32 %1530, i8* %1535)
  br label %1537

1537:                                             ; preds = %1527
  %1538 = load i32, i32* %12, align 4
  %1539 = add nsw i32 %1538, 1
  store i32 %1539, i32* %12, align 4
  br label %1515

1540:                                             ; preds = %1515
  %1541 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1542 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1541, i32 0, i32 10
  %1543 = load i32, i32* %1542, align 8
  %1544 = call i32 (i32, i8*, ...) @raw_printf(i32 %1543, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %1545

1545:                                             ; preds = %1540, %1509, %1504
  %1546 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1547 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1546, i32 0, i32 11
  %1548 = load i32, i32* %1547, align 4
  %1549 = add nsw i32 %1548, 1
  store i32 %1549, i32* %1547, align 4
  store i32 0, i32* %12, align 4
  br label %1550

1550:                                             ; preds = %1719, %1545
  %1551 = load i32, i32* %12, align 4
  %1552 = load i32, i32* %8, align 4
  %1553 = icmp slt i32 %1551, %1552
  br i1 %1553, label %1554, label %1722

1554:                                             ; preds = %1550
  %1555 = load i32, i32* %12, align 4
  %1556 = icmp sgt i32 %1555, 0
  br i1 %1556, label %1557, label %1562

1557:                                             ; preds = %1554
  %1558 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1559 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1558, i32 0, i32 10
  %1560 = load i32, i32* %1559, align 8
  %1561 = call i32 (i32, i8*, ...) @raw_printf(i32 %1560, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  br label %1562

1562:                                             ; preds = %1557, %1554
  %1563 = load i8**, i8*** %9, align 8
  %1564 = load i32, i32* %12, align 4
  %1565 = sext i32 %1564 to i64
  %1566 = getelementptr inbounds i8*, i8** %1563, i64 %1565
  %1567 = load i8*, i8** %1566, align 8
  %1568 = icmp eq i8* %1567, null
  br i1 %1568, label %1580, label %1569

1569:                                             ; preds = %1562
  %1570 = load i32*, i32** %11, align 8
  %1571 = icmp ne i32* %1570, null
  br i1 %1571, label %1572, label %1585

1572:                                             ; preds = %1569
  %1573 = load i32*, i32** %11, align 8
  %1574 = load i32, i32* %12, align 4
  %1575 = sext i32 %1574 to i64
  %1576 = getelementptr inbounds i32, i32* %1573, i64 %1575
  %1577 = load i32, i32* %1576, align 4
  %1578 = load i32, i32* @SQLITE_NULL, align 4
  %1579 = icmp eq i32 %1577, %1578
  br i1 %1579, label %1580, label %1585

1580:                                             ; preds = %1572, %1562
  %1581 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1582 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1581, i32 0, i32 10
  %1583 = load i32, i32* %1582, align 8
  %1584 = call i32 (i32, i8*, ...) @utf8_printf(i32 %1583, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0))
  br label %1718

1585:                                             ; preds = %1572, %1569
  %1586 = load i32*, i32** %11, align 8
  %1587 = icmp ne i32* %1586, null
  br i1 %1587, label %1588, label %1606

1588:                                             ; preds = %1585
  %1589 = load i32*, i32** %11, align 8
  %1590 = load i32, i32* %12, align 4
  %1591 = sext i32 %1590 to i64
  %1592 = getelementptr inbounds i32, i32* %1589, i64 %1591
  %1593 = load i32, i32* %1592, align 4
  %1594 = load i32, i32* @SQLITE_TEXT, align 4
  %1595 = icmp eq i32 %1593, %1594
  br i1 %1595, label %1596, label %1606

1596:                                             ; preds = %1588
  %1597 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1598 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1597, i32 0, i32 10
  %1599 = load i32, i32* %1598, align 8
  %1600 = load i8**, i8*** %9, align 8
  %1601 = load i32, i32* %12, align 4
  %1602 = sext i32 %1601 to i64
  %1603 = getelementptr inbounds i8*, i8** %1600, i64 %1602
  %1604 = load i8*, i8** %1603, align 8
  %1605 = call i32 @output_quoted_string(i32 %1599, i8* %1604)
  br label %1717

1606:                                             ; preds = %1588, %1585
  %1607 = load i32*, i32** %11, align 8
  %1608 = icmp ne i32* %1607, null
  br i1 %1608, label %1609, label %1627

1609:                                             ; preds = %1606
  %1610 = load i32*, i32** %11, align 8
  %1611 = load i32, i32* %12, align 4
  %1612 = sext i32 %1611 to i64
  %1613 = getelementptr inbounds i32, i32* %1610, i64 %1612
  %1614 = load i32, i32* %1613, align 4
  %1615 = load i32, i32* @SQLITE_INTEGER, align 4
  %1616 = icmp eq i32 %1614, %1615
  br i1 %1616, label %1617, label %1627

1617:                                             ; preds = %1609
  %1618 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1619 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1618, i32 0, i32 10
  %1620 = load i32, i32* %1619, align 8
  %1621 = load i8**, i8*** %9, align 8
  %1622 = load i32, i32* %12, align 4
  %1623 = sext i32 %1622 to i64
  %1624 = getelementptr inbounds i8*, i8** %1621, i64 %1623
  %1625 = load i8*, i8** %1624, align 8
  %1626 = call i32 (i32, i8*, ...) @utf8_printf(i32 %1620, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %1625)
  br label %1716

1627:                                             ; preds = %1609, %1606
  %1628 = load i32*, i32** %11, align 8
  %1629 = icmp ne i32* %1628, null
  br i1 %1629, label %1630, label %1652

1630:                                             ; preds = %1627
  %1631 = load i32*, i32** %11, align 8
  %1632 = load i32, i32* %12, align 4
  %1633 = sext i32 %1632 to i64
  %1634 = getelementptr inbounds i32, i32* %1631, i64 %1633
  %1635 = load i32, i32* %1634, align 4
  %1636 = load i32, i32* @SQLITE_FLOAT, align 4
  %1637 = icmp eq i32 %1635, %1636
  br i1 %1637, label %1638, label %1652

1638:                                             ; preds = %1630
  %1639 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1640 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1639, i32 0, i32 12
  %1641 = load i32, i32* %1640, align 8
  %1642 = load i32, i32* %12, align 4
  %1643 = call double @sqlite3_column_double(i32 %1641, i32 %1642)
  store double %1643, double* %37, align 8
  %1644 = getelementptr inbounds [50 x i8], [50 x i8]* %36, i64 0, i64 0
  %1645 = load double, double* %37, align 8
  %1646 = call i32 @sqlite3_snprintf(i32 50, i8* %1644, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), double %1645)
  %1647 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1648 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1647, i32 0, i32 10
  %1649 = load i32, i32* %1648, align 8
  %1650 = getelementptr inbounds [50 x i8], [50 x i8]* %36, i64 0, i64 0
  %1651 = call i32 (i32, i8*, ...) @raw_printf(i32 %1649, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %1650)
  br label %1715

1652:                                             ; preds = %1630, %1627
  %1653 = load i32*, i32** %11, align 8
  %1654 = icmp ne i32* %1653, null
  br i1 %1654, label %1655, label %1685

1655:                                             ; preds = %1652
  %1656 = load i32*, i32** %11, align 8
  %1657 = load i32, i32* %12, align 4
  %1658 = sext i32 %1657 to i64
  %1659 = getelementptr inbounds i32, i32* %1656, i64 %1658
  %1660 = load i32, i32* %1659, align 4
  %1661 = load i32, i32* @SQLITE_BLOB, align 4
  %1662 = icmp eq i32 %1660, %1661
  br i1 %1662, label %1663, label %1685

1663:                                             ; preds = %1655
  %1664 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1665 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1664, i32 0, i32 12
  %1666 = load i32, i32* %1665, align 8
  %1667 = icmp ne i32 %1666, 0
  br i1 %1667, label %1668, label %1685

1668:                                             ; preds = %1663
  %1669 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1670 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1669, i32 0, i32 12
  %1671 = load i32, i32* %1670, align 8
  %1672 = load i32, i32* %12, align 4
  %1673 = call i8* @sqlite3_column_blob(i32 %1671, i32 %1672)
  store i8* %1673, i8** %38, align 8
  %1674 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1675 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1674, i32 0, i32 12
  %1676 = load i32, i32* %1675, align 8
  %1677 = load i32, i32* %12, align 4
  %1678 = call i32 @sqlite3_column_bytes(i32 %1676, i32 %1677)
  store i32 %1678, i32* %39, align 4
  %1679 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1680 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1679, i32 0, i32 10
  %1681 = load i32, i32* %1680, align 8
  %1682 = load i8*, i8** %38, align 8
  %1683 = load i32, i32* %39, align 4
  %1684 = call i32 @output_hex_blob(i32 %1681, i8* %1682, i32 %1683)
  br label %1714

1685:                                             ; preds = %1663, %1655, %1652
  %1686 = load i8**, i8*** %9, align 8
  %1687 = load i32, i32* %12, align 4
  %1688 = sext i32 %1687 to i64
  %1689 = getelementptr inbounds i8*, i8** %1686, i64 %1688
  %1690 = load i8*, i8** %1689, align 8
  %1691 = call i32 @isNumber(i8* %1690, i32 0)
  %1692 = icmp ne i32 %1691, 0
  br i1 %1692, label %1693, label %1703

1693:                                             ; preds = %1685
  %1694 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1695 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1694, i32 0, i32 10
  %1696 = load i32, i32* %1695, align 8
  %1697 = load i8**, i8*** %9, align 8
  %1698 = load i32, i32* %12, align 4
  %1699 = sext i32 %1698 to i64
  %1700 = getelementptr inbounds i8*, i8** %1697, i64 %1699
  %1701 = load i8*, i8** %1700, align 8
  %1702 = call i32 (i32, i8*, ...) @utf8_printf(i32 %1696, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %1701)
  br label %1713

1703:                                             ; preds = %1685
  %1704 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1705 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1704, i32 0, i32 10
  %1706 = load i32, i32* %1705, align 8
  %1707 = load i8**, i8*** %9, align 8
  %1708 = load i32, i32* %12, align 4
  %1709 = sext i32 %1708 to i64
  %1710 = getelementptr inbounds i8*, i8** %1707, i64 %1709
  %1711 = load i8*, i8** %1710, align 8
  %1712 = call i32 @output_quoted_string(i32 %1706, i8* %1711)
  br label %1713

1713:                                             ; preds = %1703, %1693
  br label %1714

1714:                                             ; preds = %1713, %1668
  br label %1715

1715:                                             ; preds = %1714, %1638
  br label %1716

1716:                                             ; preds = %1715, %1617
  br label %1717

1717:                                             ; preds = %1716, %1596
  br label %1718

1718:                                             ; preds = %1717, %1580
  br label %1719

1719:                                             ; preds = %1718
  %1720 = load i32, i32* %12, align 4
  %1721 = add nsw i32 %1720, 1
  store i32 %1721, i32* %12, align 4
  br label %1550

1722:                                             ; preds = %1550
  %1723 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1724 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1723, i32 0, i32 10
  %1725 = load i32, i32* %1724, align 8
  %1726 = call i32 (i32, i8*, ...) @raw_printf(i32 %1725, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %1853

1727:                                             ; preds = %45
  %1728 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1729 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1728, i32 0, i32 11
  %1730 = load i32, i32* %1729, align 4
  %1731 = add nsw i32 %1730, 1
  store i32 %1731, i32* %1729, align 4
  %1732 = icmp eq i32 %1730, 0
  br i1 %1732, label %1733, label %1785

1733:                                             ; preds = %1727
  %1734 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1735 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1734, i32 0, i32 4
  %1736 = load i32, i32* %1735, align 8
  %1737 = icmp ne i32 %1736, 0
  br i1 %1737, label %1738, label %1785

1738:                                             ; preds = %1733
  store i32 0, i32* %12, align 4
  br label %1739

1739:                                             ; preds = %1774, %1738
  %1740 = load i32, i32* %12, align 4
  %1741 = load i32, i32* %8, align 4
  %1742 = icmp slt i32 %1740, %1741
  br i1 %1742, label %1743, label %1777

1743:                                             ; preds = %1739
  %1744 = load i32, i32* %12, align 4
  %1745 = icmp sgt i32 %1744, 0
  br i1 %1745, label %1746, label %1754

1746:                                             ; preds = %1743
  %1747 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1748 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1747, i32 0, i32 10
  %1749 = load i32, i32* %1748, align 8
  %1750 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1751 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1750, i32 0, i32 8
  %1752 = load i8*, i8** %1751, align 8
  %1753 = call i32 (i32, i8*, ...) @utf8_printf(i32 %1749, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %1752)
  br label %1754

1754:                                             ; preds = %1746, %1743
  %1755 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1756 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1755, i32 0, i32 10
  %1757 = load i32, i32* %1756, align 8
  %1758 = load i8**, i8*** %10, align 8
  %1759 = load i32, i32* %12, align 4
  %1760 = sext i32 %1759 to i64
  %1761 = getelementptr inbounds i8*, i8** %1758, i64 %1760
  %1762 = load i8*, i8** %1761, align 8
  %1763 = icmp ne i8* %1762, null
  br i1 %1763, label %1764, label %1770

1764:                                             ; preds = %1754
  %1765 = load i8**, i8*** %10, align 8
  %1766 = load i32, i32* %12, align 4
  %1767 = sext i32 %1766 to i64
  %1768 = getelementptr inbounds i8*, i8** %1765, i64 %1767
  %1769 = load i8*, i8** %1768, align 8
  br label %1771

1770:                                             ; preds = %1754
  br label %1771

1771:                                             ; preds = %1770, %1764
  %1772 = phi i8* [ %1769, %1764 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %1770 ]
  %1773 = call i32 (i32, i8*, ...) @utf8_printf(i32 %1757, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %1772)
  br label %1774

1774:                                             ; preds = %1771
  %1775 = load i32, i32* %12, align 4
  %1776 = add nsw i32 %1775, 1
  store i32 %1776, i32* %12, align 4
  br label %1739

1777:                                             ; preds = %1739
  %1778 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1779 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1778, i32 0, i32 10
  %1780 = load i32, i32* %1779, align 8
  %1781 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1782 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1781, i32 0, i32 1
  %1783 = load i8*, i8** %1782, align 8
  %1784 = call i32 (i32, i8*, ...) @utf8_printf(i32 %1780, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %1783)
  br label %1785

1785:                                             ; preds = %1777, %1733, %1727
  %1786 = load i8**, i8*** %9, align 8
  %1787 = icmp eq i8** %1786, null
  br i1 %1787, label %1788, label %1789

1788:                                             ; preds = %1785
  br label %1853

1789:                                             ; preds = %1785
  store i32 0, i32* %12, align 4
  br label %1790

1790:                                             ; preds = %1828, %1789
  %1791 = load i32, i32* %12, align 4
  %1792 = load i32, i32* %8, align 4
  %1793 = icmp slt i32 %1791, %1792
  br i1 %1793, label %1794, label %1831

1794:                                             ; preds = %1790
  %1795 = load i32, i32* %12, align 4
  %1796 = icmp sgt i32 %1795, 0
  br i1 %1796, label %1797, label %1805

1797:                                             ; preds = %1794
  %1798 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1799 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1798, i32 0, i32 10
  %1800 = load i32, i32* %1799, align 8
  %1801 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1802 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1801, i32 0, i32 8
  %1803 = load i8*, i8** %1802, align 8
  %1804 = call i32 (i32, i8*, ...) @utf8_printf(i32 %1800, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %1803)
  br label %1805

1805:                                             ; preds = %1797, %1794
  %1806 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1807 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1806, i32 0, i32 10
  %1808 = load i32, i32* %1807, align 8
  %1809 = load i8**, i8*** %9, align 8
  %1810 = load i32, i32* %12, align 4
  %1811 = sext i32 %1810 to i64
  %1812 = getelementptr inbounds i8*, i8** %1809, i64 %1811
  %1813 = load i8*, i8** %1812, align 8
  %1814 = icmp ne i8* %1813, null
  br i1 %1814, label %1815, label %1821

1815:                                             ; preds = %1805
  %1816 = load i8**, i8*** %9, align 8
  %1817 = load i32, i32* %12, align 4
  %1818 = sext i32 %1817 to i64
  %1819 = getelementptr inbounds i8*, i8** %1816, i64 %1818
  %1820 = load i8*, i8** %1819, align 8
  br label %1825

1821:                                             ; preds = %1805
  %1822 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1823 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1822, i32 0, i32 2
  %1824 = load i8*, i8** %1823, align 8
  br label %1825

1825:                                             ; preds = %1821, %1815
  %1826 = phi i8* [ %1820, %1815 ], [ %1824, %1821 ]
  %1827 = call i32 (i32, i8*, ...) @utf8_printf(i32 %1808, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %1826)
  br label %1828

1828:                                             ; preds = %1825
  %1829 = load i32, i32* %12, align 4
  %1830 = add nsw i32 %1829, 1
  store i32 %1830, i32* %12, align 4
  br label %1790

1831:                                             ; preds = %1790
  %1832 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1833 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1832, i32 0, i32 10
  %1834 = load i32, i32* %1833, align 8
  %1835 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1836 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1835, i32 0, i32 1
  %1837 = load i8*, i8** %1836, align 8
  %1838 = call i32 (i32, i8*, ...) @utf8_printf(i32 %1834, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %1837)
  br label %1853

1839:                                             ; preds = %45
  %1840 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %1841 = load i8**, i8*** %9, align 8
  %1842 = getelementptr inbounds i8*, i8** %1841, i64 0
  %1843 = load i8*, i8** %1842, align 8
  %1844 = call i32 @atoi(i8* %1843)
  %1845 = load i8**, i8*** %9, align 8
  %1846 = getelementptr inbounds i8*, i8** %1845, i64 1
  %1847 = load i8*, i8** %1846, align 8
  %1848 = call i32 @atoi(i8* %1847)
  %1849 = load i8**, i8*** %9, align 8
  %1850 = getelementptr inbounds i8*, i8** %1849, i64 3
  %1851 = load i8*, i8** %1850, align 8
  %1852 = call i32 @eqp_append(%struct.TYPE_5__* %1840, i32 %1844, i32 %1848, i8* %1851)
  br label %1853

1853:                                             ; preds = %45, %1839, %1831, %1788, %1722, %1503, %1495, %1194, %1186, %1092, %1047, %979, %935, %885, %837, %782, %493, %480, %463, %462, %333, %138, %52
  store i32 0, i32* %6, align 4
  br label %1854

1854:                                             ; preds = %1853, %44
  %1855 = load i32, i32* %6, align 4
  ret i32 %1855
}

declare dso_local i32 @strlen30(i8*) #1

declare dso_local i32 @utf8_printf(i32, i8*, ...) #1

declare dso_local i32 @ArraySize(i32*) #1

declare dso_local i32 @strlenChar(i8*) #1

declare dso_local i32 @utf8_width_print(i32, i32, i8*) #1

declare dso_local i32 @printSchemaLine(i32, i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_strlike(i8*, i8*, i32) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i32 @IsSpace(i8 signext) #1

declare dso_local i32 @printSchemaLineN(i32, i8*, i32, i8*) #1

declare dso_local i32 @wsToEol(i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @raw_printf(i32, i8*, ...) #1

declare dso_local i32 @output_html_string(i32, i8*) #1

declare dso_local i32 @output_c_string(i32, i8*) #1

declare dso_local i32 @setBinaryMode(i32, i32) #1

declare dso_local i32 @output_csv(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @setTextMode(i32, i32) #1

declare dso_local i32 @quoteChar(i8*) #1

declare dso_local i32 @ShellHasFlag(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @output_quoted_string(i32, i8*) #1

declare dso_local i32 @output_quoted_escaped_string(i32, i8*) #1

declare dso_local double @sqlite3_column_double(i32, i32) #1

declare dso_local i32 @memcpy(i32*, double*, i32) #1

declare dso_local i32 @sqlite3_snprintf(i32, i8*, i8*, double) #1

declare dso_local i8* @sqlite3_column_blob(i32, i32) #1

declare dso_local i32 @sqlite3_column_bytes(i32, i32) #1

declare dso_local i32 @output_hex_blob(i32, i8*, i32) #1

declare dso_local i32 @isNumber(i8*, i32) #1

declare dso_local i32 @eqp_append(%struct.TYPE_5__*, i32, i32, i8*) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
