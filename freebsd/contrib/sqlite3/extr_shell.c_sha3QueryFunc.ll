; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_sha3QueryFunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_sha3QueryFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [44 x i8] c"SHA3 size should be one of: 224 256 384 512\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"error SQL statement [%s]: %s\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"non-query: [%s]\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"S%d:\00", align 1
@SQLITE_ROW = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"T%d:\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"B%d:\00", align 1
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @sha3QueryFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sha3QueryFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [9 x i8], align 1
  %22 = alloca double, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca [9 x i8], align 1
  %26 = alloca double, align 8
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i32* @sqlite3_context_db_handle(i32* %31)
  store i32* %32, i32** %7, align 8
  %33 = load i32**, i32*** %6, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i64 @sqlite3_value_text(i32* %35)
  %37 = inttoptr i64 %36 to i8*
  store i8* %37, i8** %8, align 8
  store i32* null, i32** %9, align 8
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %41

40:                                               ; preds = %3
  store i32 256, i32* %16, align 4
  br label %61

41:                                               ; preds = %3
  %42 = load i32**, i32*** %6, align 8
  %43 = getelementptr inbounds i32*, i32** %42, i64 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @sqlite3_value_int(i32* %44)
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = icmp ne i32 %46, 224
  br i1 %47, label %48, label %60

48:                                               ; preds = %41
  %49 = load i32, i32* %16, align 4
  %50 = icmp ne i32 %49, 256
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = load i32, i32* %16, align 4
  %53 = icmp ne i32 %52, 384
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i32, i32* %16, align 4
  %56 = icmp ne i32 %55, 512
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @sqlite3_result_error(i32* %58, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 -1)
  br label %223

60:                                               ; preds = %54, %51, %48, %41
  br label %61

61:                                               ; preds = %60, %40
  %62 = load i8*, i8** %8, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %223

65:                                               ; preds = %61
  %66 = load i32, i32* %16, align 4
  %67 = call i32 @SHA3Init(i32* %15, i32 %66)
  br label %68

68:                                               ; preds = %213, %65
  %69 = load i8*, i8** %8, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = icmp ne i8 %71, 0
  br i1 %72, label %73, label %216

73:                                               ; preds = %68
  %74 = load i32*, i32** %7, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = call i32 @sqlite3_prepare_v2(i32* %74, i8* %75, i32 -1, i32** %9, i8** %8)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %73
  %80 = load i8*, i8** %8, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = call i32 @sqlite3_errmsg(i32* %81)
  %83 = call i8* (i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %80, i32 %82)
  store i8* %83, i8** %17, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = call i32 @sqlite3_finalize(i32* %84)
  %86 = load i32*, i32** %4, align 8
  %87 = load i8*, i8** %17, align 8
  %88 = call i32 @sqlite3_result_error(i32* %86, i8* %87, i32 -1)
  %89 = load i8*, i8** %17, align 8
  %90 = call i32 @sqlite3_free(i8* %89)
  br label %223

91:                                               ; preds = %73
  %92 = load i32*, i32** %9, align 8
  %93 = call i32 @sqlite3_stmt_readonly(i32* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %106, label %95

95:                                               ; preds = %91
  %96 = load i32*, i32** %9, align 8
  %97 = call i8* @sqlite3_sql(i32* %96)
  %98 = call i8* (i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %97)
  store i8* %98, i8** %18, align 8
  %99 = load i32*, i32** %9, align 8
  %100 = call i32 @sqlite3_finalize(i32* %99)
  %101 = load i32*, i32** %4, align 8
  %102 = load i8*, i8** %18, align 8
  %103 = call i32 @sqlite3_result_error(i32* %101, i8* %102, i32 -1)
  %104 = load i8*, i8** %18, align 8
  %105 = call i32 @sqlite3_free(i8* %104)
  br label %223

106:                                              ; preds = %91
  %107 = load i32*, i32** %9, align 8
  %108 = call i32 @sqlite3_column_count(i32* %107)
  store i32 %108, i32* %10, align 4
  %109 = load i32*, i32** %9, align 8
  %110 = call i8* @sqlite3_sql(i32* %109)
  store i8* %110, i8** %14, align 8
  %111 = load i8*, i8** %14, align 8
  %112 = call i64 @strlen(i8* %111)
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* %13, align 4
  %115 = call i32 @hash_step_vformat(i32* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %114)
  %116 = load i8*, i8** %14, align 8
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @SHA3Update(i32* %15, i8* %116, i32 %117)
  br label %119

119:                                              ; preds = %212, %106
  %120 = load i64, i64* @SQLITE_ROW, align 8
  %121 = load i32*, i32** %9, align 8
  %122 = call i64 @sqlite3_step(i32* %121)
  %123 = icmp eq i64 %120, %122
  br i1 %123, label %124, label %213

124:                                              ; preds = %119
  %125 = call i32 @SHA3Update(i32* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 1)
  store i32 0, i32* %11, align 4
  br label %126

126:                                              ; preds = %209, %124
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* %10, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %212

130:                                              ; preds = %126
  %131 = load i32*, i32** %9, align 8
  %132 = load i32, i32* %11, align 4
  %133 = call i32 @sqlite3_column_type(i32* %131, i32 %132)
  switch i32 %133, label %208 [
    i32 129, label %134
    i32 130, label %136
    i32 131, label %160
    i32 128, label %184
    i32 132, label %196
  ]

134:                                              ; preds = %130
  %135 = call i32 @SHA3Update(i32* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 1)
  br label %208

136:                                              ; preds = %130
  %137 = load i32*, i32** %9, align 8
  %138 = load i32, i32* %11, align 4
  %139 = call double @sqlite3_column_int64(i32* %137, i32 %138)
  store double %139, double* %22, align 8
  %140 = call i32 @memcpy(i32* %19, double* %22, i32 8)
  store i32 8, i32* %20, align 4
  br label %141

141:                                              ; preds = %153, %136
  %142 = load i32, i32* %20, align 4
  %143 = icmp sge i32 %142, 1
  br i1 %143, label %144, label %156

144:                                              ; preds = %141
  %145 = load i32, i32* %19, align 4
  %146 = and i32 %145, 255
  %147 = trunc i32 %146 to i8
  %148 = load i32, i32* %20, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [9 x i8], [9 x i8]* %21, i64 0, i64 %149
  store i8 %147, i8* %150, align 1
  %151 = load i32, i32* %19, align 4
  %152 = ashr i32 %151, 8
  store i32 %152, i32* %19, align 4
  br label %153

153:                                              ; preds = %144
  %154 = load i32, i32* %20, align 4
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %20, align 4
  br label %141

156:                                              ; preds = %141
  %157 = getelementptr inbounds [9 x i8], [9 x i8]* %21, i64 0, i64 0
  store i8 73, i8* %157, align 1
  %158 = getelementptr inbounds [9 x i8], [9 x i8]* %21, i64 0, i64 0
  %159 = call i32 @SHA3Update(i32* %15, i8* %158, i32 9)
  br label %208

160:                                              ; preds = %130
  %161 = load i32*, i32** %9, align 8
  %162 = load i32, i32* %11, align 4
  %163 = call double @sqlite3_column_double(i32* %161, i32 %162)
  store double %163, double* %26, align 8
  %164 = call i32 @memcpy(i32* %23, double* %26, i32 8)
  store i32 8, i32* %24, align 4
  br label %165

165:                                              ; preds = %177, %160
  %166 = load i32, i32* %24, align 4
  %167 = icmp sge i32 %166, 1
  br i1 %167, label %168, label %180

168:                                              ; preds = %165
  %169 = load i32, i32* %23, align 4
  %170 = and i32 %169, 255
  %171 = trunc i32 %170 to i8
  %172 = load i32, i32* %24, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [9 x i8], [9 x i8]* %25, i64 0, i64 %173
  store i8 %171, i8* %174, align 1
  %175 = load i32, i32* %23, align 4
  %176 = ashr i32 %175, 8
  store i32 %176, i32* %23, align 4
  br label %177

177:                                              ; preds = %168
  %178 = load i32, i32* %24, align 4
  %179 = add nsw i32 %178, -1
  store i32 %179, i32* %24, align 4
  br label %165

180:                                              ; preds = %165
  %181 = getelementptr inbounds [9 x i8], [9 x i8]* %25, i64 0, i64 0
  store i8 70, i8* %181, align 1
  %182 = getelementptr inbounds [9 x i8], [9 x i8]* %25, i64 0, i64 0
  %183 = call i32 @SHA3Update(i32* %15, i8* %182, i32 9)
  br label %208

184:                                              ; preds = %130
  %185 = load i32*, i32** %9, align 8
  %186 = load i32, i32* %11, align 4
  %187 = call i32 @sqlite3_column_bytes(i32* %185, i32 %186)
  store i32 %187, i32* %27, align 4
  %188 = load i32*, i32** %9, align 8
  %189 = load i32, i32* %11, align 4
  %190 = call i8* @sqlite3_column_text(i32* %188, i32 %189)
  store i8* %190, i8** %28, align 8
  %191 = load i32, i32* %27, align 4
  %192 = call i32 @hash_step_vformat(i32* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %191)
  %193 = load i8*, i8** %28, align 8
  %194 = load i32, i32* %27, align 4
  %195 = call i32 @SHA3Update(i32* %15, i8* %193, i32 %194)
  br label %208

196:                                              ; preds = %130
  %197 = load i32*, i32** %9, align 8
  %198 = load i32, i32* %11, align 4
  %199 = call i32 @sqlite3_column_bytes(i32* %197, i32 %198)
  store i32 %199, i32* %29, align 4
  %200 = load i32*, i32** %9, align 8
  %201 = load i32, i32* %11, align 4
  %202 = call i8* @sqlite3_column_blob(i32* %200, i32 %201)
  store i8* %202, i8** %30, align 8
  %203 = load i32, i32* %29, align 4
  %204 = call i32 @hash_step_vformat(i32* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %203)
  %205 = load i8*, i8** %30, align 8
  %206 = load i32, i32* %29, align 4
  %207 = call i32 @SHA3Update(i32* %15, i8* %205, i32 %206)
  br label %208

208:                                              ; preds = %130, %196, %184, %180, %156, %134
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %11, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %11, align 4
  br label %126

212:                                              ; preds = %126
  br label %119

213:                                              ; preds = %119
  %214 = load i32*, i32** %9, align 8
  %215 = call i32 @sqlite3_finalize(i32* %214)
  br label %68

216:                                              ; preds = %68
  %217 = load i32*, i32** %4, align 8
  %218 = call i32 @SHA3Final(i32* %15)
  %219 = load i32, i32* %16, align 4
  %220 = sdiv i32 %219, 8
  %221 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %222 = call i32 @sqlite3_result_blob(i32* %217, i32 %218, i32 %220, i32 %221)
  br label %223

223:                                              ; preds = %216, %95, %79, %64, %57
  ret void
}

declare dso_local i32* @sqlite3_context_db_handle(i32*) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i32 @sqlite3_value_int(i32*) #1

declare dso_local i32 @sqlite3_result_error(i32*, i8*, i32) #1

declare dso_local i32 @SHA3Init(i32*, i32) #1

declare dso_local i32 @sqlite3_prepare_v2(i32*, i8*, i32, i32**, i8**) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*, ...) #1

declare dso_local i32 @sqlite3_errmsg(i32*) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @sqlite3_stmt_readonly(i32*) #1

declare dso_local i8* @sqlite3_sql(i32*) #1

declare dso_local i32 @sqlite3_column_count(i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @hash_step_vformat(i32*, i8*, i32) #1

declare dso_local i32 @SHA3Update(i32*, i8*, i32) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_column_type(i32*, i32) #1

declare dso_local double @sqlite3_column_int64(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, double*, i32) #1

declare dso_local double @sqlite3_column_double(i32*, i32) #1

declare dso_local i32 @sqlite3_column_bytes(i32*, i32) #1

declare dso_local i8* @sqlite3_column_text(i32*, i32) #1

declare dso_local i8* @sqlite3_column_blob(i32*, i32) #1

declare dso_local i32 @sqlite3_result_blob(i32*, i32, i32, i32) #1

declare dso_local i32 @SHA3Final(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
