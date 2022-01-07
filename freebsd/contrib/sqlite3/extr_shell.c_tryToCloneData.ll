; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_tryToCloneData.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_tryToCloneData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [19 x i8] c"SELECT * FROM \22%w\22\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Error %d: %s on [%s]\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"INSERT OR IGNORE INTO \22%s\22 VALUES(?\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c",?\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c");\00", align 1
@SQLITE_ROW = common dso_local global i32 0, align 4
@SQLITE_STATIC = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"Error %d: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%c\08\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"|/-\\\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [40 x i8] c"SELECT * FROM \22%w\22 ORDER BY rowid DESC;\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Warning: cannot step \22%s\22 backwards\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i8*)* @tryToCloneData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tryToCloneData(%struct.TYPE_3__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @strlen30(i8* %19)
  store i32 %20, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 10000, i32* %18, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %21)
  store i8* %22, i8** %9, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @sqlite3_prepare_v2(i32* %25, i8* %26, i32 -1, i32** %7, i32 0)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %3
  %31 = load i32, i32* @stderr, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @sqlite3_extended_errcode(i32* %34)
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i8*
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @sqlite3_errmsg(i32* %40)
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 (i32, i8*, i8*, ...) @utf8_printf(i32 %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %37, i32 %41, i8* %42)
  br label %237

44:                                               ; preds = %3
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @sqlite3_column_count(i32* %45)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %15, align 4
  %48 = add nsw i32 200, %47
  %49 = load i32, i32* %14, align 4
  %50 = mul nsw i32 %49, 3
  %51 = add nsw i32 %48, %50
  %52 = call i8* @sqlite3_malloc64(i32 %51)
  store i8* %52, i8** %10, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = call i32 (...) @shell_out_of_memory()
  br label %57

57:                                               ; preds = %55, %44
  %58 = load i32, i32* %15, align 4
  %59 = add nsw i32 200, %58
  %60 = load i8*, i8** %10, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @sqlite3_snprintf(i32 %59, i8* %60, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %61)
  %63 = load i8*, i8** %10, align 8
  %64 = call i32 @strlen30(i8* %63)
  store i32 %64, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %65

65:                                               ; preds = %77, %57
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %14, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %65
  %70 = load i8*, i8** %10, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = call i32 @memcpy(i8* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 2)
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, 2
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %69
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %13, align 4
  br label %65

80:                                               ; preds = %65
  %81 = load i8*, i8** %10, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = call i32 @memcpy(i8* %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 3)
  %86 = load i32*, i32** %5, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = call i32 @sqlite3_prepare_v2(i32* %86, i8* %87, i32 -1, i32** %8, i32 0)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %80
  %92 = load i32, i32* @stderr, align 4
  %93 = load i32*, i32** %5, align 8
  %94 = call i32 @sqlite3_extended_errcode(i32* %93)
  %95 = sext i32 %94 to i64
  %96 = inttoptr i64 %95 to i8*
  %97 = load i32*, i32** %5, align 8
  %98 = call i32 @sqlite3_errmsg(i32* %97)
  %99 = load i8*, i8** %9, align 8
  %100 = call i32 (i32, i8*, i8*, ...) @utf8_printf(i32 %92, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %96, i32 %98, i8* %99)
  br label %237

101:                                              ; preds = %80
  store i32 0, i32* %16, align 4
  br label %102

102:                                              ; preds = %233, %101
  %103 = load i32, i32* %16, align 4
  %104 = icmp slt i32 %103, 2
  br i1 %104, label %105, label %236

105:                                              ; preds = %102
  br label %106

106:                                              ; preds = %208, %105
  %107 = load i32*, i32** %7, align 8
  %108 = call i32 @sqlite3_step(i32* %107)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* @SQLITE_ROW, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %209

111:                                              ; preds = %106
  store i32 0, i32* %12, align 4
  br label %112

112:                                              ; preds = %164, %111
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %14, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %167

116:                                              ; preds = %112
  %117 = load i32*, i32** %7, align 8
  %118 = load i32, i32* %12, align 4
  %119 = call i32 @sqlite3_column_type(i32* %117, i32 %118)
  switch i32 %119, label %163 [
    i32 129, label %120
    i32 130, label %125
    i32 131, label %133
    i32 128, label %141
    i32 132, label %151
  ]

120:                                              ; preds = %116
  %121 = load i32*, i32** %8, align 8
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, 1
  %124 = call i32 @sqlite3_bind_null(i32* %121, i32 %123)
  br label %163

125:                                              ; preds = %116
  %126 = load i32*, i32** %8, align 8
  %127 = load i32, i32* %12, align 4
  %128 = add nsw i32 %127, 1
  %129 = load i32*, i32** %7, align 8
  %130 = load i32, i32* %12, align 4
  %131 = call i32 @sqlite3_column_int64(i32* %129, i32 %130)
  %132 = call i32 @sqlite3_bind_int64(i32* %126, i32 %128, i32 %131)
  br label %163

133:                                              ; preds = %116
  %134 = load i32*, i32** %8, align 8
  %135 = load i32, i32* %12, align 4
  %136 = add nsw i32 %135, 1
  %137 = load i32*, i32** %7, align 8
  %138 = load i32, i32* %12, align 4
  %139 = call i32 @sqlite3_column_double(i32* %137, i32 %138)
  %140 = call i32 @sqlite3_bind_double(i32* %134, i32 %136, i32 %139)
  br label %163

141:                                              ; preds = %116
  %142 = load i32*, i32** %8, align 8
  %143 = load i32, i32* %12, align 4
  %144 = add nsw i32 %143, 1
  %145 = load i32*, i32** %7, align 8
  %146 = load i32, i32* %12, align 4
  %147 = call i64 @sqlite3_column_text(i32* %145, i32 %146)
  %148 = inttoptr i64 %147 to i8*
  %149 = load i32, i32* @SQLITE_STATIC, align 4
  %150 = call i32 @sqlite3_bind_text(i32* %142, i32 %144, i8* %148, i32 -1, i32 %149)
  br label %163

151:                                              ; preds = %116
  %152 = load i32*, i32** %8, align 8
  %153 = load i32, i32* %12, align 4
  %154 = add nsw i32 %153, 1
  %155 = load i32*, i32** %7, align 8
  %156 = load i32, i32* %12, align 4
  %157 = call i32 @sqlite3_column_blob(i32* %155, i32 %156)
  %158 = load i32*, i32** %7, align 8
  %159 = load i32, i32* %12, align 4
  %160 = call i32 @sqlite3_column_bytes(i32* %158, i32 %159)
  %161 = load i32, i32* @SQLITE_STATIC, align 4
  %162 = call i32 @sqlite3_bind_blob(i32* %152, i32 %154, i32 %157, i32 %160, i32 %161)
  br label %163

163:                                              ; preds = %116, %151, %141, %133, %125, %120
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %12, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %12, align 4
  br label %112

167:                                              ; preds = %112
  %168 = load i32*, i32** %8, align 8
  %169 = call i32 @sqlite3_step(i32* %168)
  store i32 %169, i32* %11, align 4
  %170 = load i32, i32* %11, align 4
  %171 = load i32, i32* @SQLITE_OK, align 4
  %172 = icmp ne i32 %170, %171
  br i1 %172, label %173, label %190

173:                                              ; preds = %167
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* @SQLITE_ROW, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %190

177:                                              ; preds = %173
  %178 = load i32, i32* %11, align 4
  %179 = load i32, i32* @SQLITE_DONE, align 4
  %180 = icmp ne i32 %178, %179
  br i1 %180, label %181, label %190

181:                                              ; preds = %177
  %182 = load i32, i32* @stderr, align 4
  %183 = load i32*, i32** %5, align 8
  %184 = call i32 @sqlite3_extended_errcode(i32* %183)
  %185 = sext i32 %184 to i64
  %186 = inttoptr i64 %185 to i8*
  %187 = load i32*, i32** %5, align 8
  %188 = call i32 @sqlite3_errmsg(i32* %187)
  %189 = call i32 (i32, i8*, i8*, ...) @utf8_printf(i32 %182, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %186, i32 %188)
  br label %190

190:                                              ; preds = %181, %177, %173, %167
  %191 = load i32*, i32** %8, align 8
  %192 = call i32 @sqlite3_reset(i32* %191)
  %193 = load i32, i32* %17, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %17, align 4
  %195 = load i32, i32* %17, align 4
  %196 = srem i32 %195, 10000
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %208

198:                                              ; preds = %190
  %199 = load i32, i32* %17, align 4
  %200 = sdiv i32 %199, 10000
  %201 = srem i32 %200, 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [5 x i8], [5 x i8]* @.str.7, i64 0, i64 %202
  %204 = load i8, i8* %203, align 1
  %205 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8 signext %204)
  %206 = load i32, i32* @stdout, align 4
  %207 = call i32 @fflush(i32 %206)
  br label %208

208:                                              ; preds = %198, %190
  br label %106

209:                                              ; preds = %106
  %210 = load i32, i32* %11, align 4
  %211 = load i32, i32* @SQLITE_DONE, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %214

213:                                              ; preds = %209
  br label %236

214:                                              ; preds = %209
  %215 = load i32*, i32** %7, align 8
  %216 = call i32 @sqlite3_finalize(i32* %215)
  %217 = load i8*, i8** %9, align 8
  %218 = call i32 @sqlite3_free(i8* %217)
  %219 = load i8*, i8** %6, align 8
  %220 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i8* %219)
  store i8* %220, i8** %9, align 8
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = load i8*, i8** %9, align 8
  %225 = call i32 @sqlite3_prepare_v2(i32* %223, i8* %224, i32 -1, i32** %7, i32 0)
  store i32 %225, i32* %11, align 4
  %226 = load i32, i32* %11, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %214
  %229 = load i32, i32* @stderr, align 4
  %230 = load i8*, i8** %6, align 8
  %231 = call i32 (i32, i8*, i8*, ...) @utf8_printf(i32 %229, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i8* %230)
  br label %236

232:                                              ; preds = %214
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %16, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %16, align 4
  br label %102

236:                                              ; preds = %228, %213, %102
  br label %237

237:                                              ; preds = %236, %91, %30
  %238 = load i32*, i32** %7, align 8
  %239 = call i32 @sqlite3_finalize(i32* %238)
  %240 = load i32*, i32** %8, align 8
  %241 = call i32 @sqlite3_finalize(i32* %240)
  %242 = load i8*, i8** %9, align 8
  %243 = call i32 @sqlite3_free(i8* %242)
  %244 = load i8*, i8** %10, align 8
  %245 = call i32 @sqlite3_free(i8* %244)
  ret void
}

declare dso_local i32 @strlen30(i8*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i32 @sqlite3_prepare_v2(i32*, i8*, i32, i32**, i32) #1

declare dso_local i32 @utf8_printf(i32, i8*, i8*, ...) #1

declare dso_local i32 @sqlite3_extended_errcode(i32*) #1

declare dso_local i32 @sqlite3_errmsg(i32*) #1

declare dso_local i32 @sqlite3_column_count(i32*) #1

declare dso_local i8* @sqlite3_malloc64(i32) #1

declare dso_local i32 @shell_out_of_memory(...) #1

declare dso_local i32 @sqlite3_snprintf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_column_type(i32*, i32) #1

declare dso_local i32 @sqlite3_bind_null(i32*, i32) #1

declare dso_local i32 @sqlite3_bind_int64(i32*, i32, i32) #1

declare dso_local i32 @sqlite3_column_int64(i32*, i32) #1

declare dso_local i32 @sqlite3_bind_double(i32*, i32, i32) #1

declare dso_local i32 @sqlite3_column_double(i32*, i32) #1

declare dso_local i32 @sqlite3_bind_text(i32*, i32, i8*, i32, i32) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i32 @sqlite3_bind_blob(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3_column_blob(i32*, i32) #1

declare dso_local i32 @sqlite3_column_bytes(i32*, i32) #1

declare dso_local i32 @sqlite3_reset(i32*) #1

declare dso_local i32 @printf(i8*, i8 signext) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
