; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_parse-diff.c_read_handler_base85.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_parse-diff.c_read_handler_base85.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.base85_baton_t = type { i64, i64, i64, i64, i64, i64, i32, i32* }
%struct.TYPE_3__ = type { i8*, i64 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@APR_SET = common dso_local global i32 0, align 4
@APR_SIZE_MAX = common dso_local global i32 0, align 4
@SVN_ERR_DIFF_UNEXPECTED_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unexpected data in base85 section\00", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i64*)* @read_handler_base85 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_handler_base85(i8* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.base85_baton_t*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.base85_baton_t*
  store %struct.base85_baton_t* %17, %struct.base85_baton_t** %8, align 8
  %18 = load %struct.base85_baton_t*, %struct.base85_baton_t** %8, align 8
  %19 = getelementptr inbounds %struct.base85_baton_t, %struct.base85_baton_t* %18, i32 0, i32 7
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %9, align 8
  %21 = load i64*, i64** %7, align 8
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %10, align 8
  %23 = load i8*, i8** %6, align 8
  store i8* %23, i8** %11, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 @svn_pool_clear(i32* %24)
  %26 = load %struct.base85_baton_t*, %struct.base85_baton_t** %8, align 8
  %27 = getelementptr inbounds %struct.base85_baton_t, %struct.base85_baton_t* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i64*, i64** %7, align 8
  store i64 0, i64* %31, align 8
  %32 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %32, i32** %4, align 8
  br label %260

33:                                               ; preds = %3
  br label %34

34:                                               ; preds = %230, %33
  %35 = load i64, i64* %10, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %34
  %38 = load %struct.base85_baton_t*, %struct.base85_baton_t** %8, align 8
  %39 = getelementptr inbounds %struct.base85_baton_t, %struct.base85_baton_t* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.base85_baton_t*, %struct.base85_baton_t** %8, align 8
  %42 = getelementptr inbounds %struct.base85_baton_t, %struct.base85_baton_t* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %40, %43
  br i1 %44, label %53, label %45

45:                                               ; preds = %37
  %46 = load %struct.base85_baton_t*, %struct.base85_baton_t** %8, align 8
  %47 = getelementptr inbounds %struct.base85_baton_t, %struct.base85_baton_t* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.base85_baton_t*, %struct.base85_baton_t** %8, align 8
  %50 = getelementptr inbounds %struct.base85_baton_t, %struct.base85_baton_t* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %48, %51
  br label %53

53:                                               ; preds = %45, %37
  %54 = phi i1 [ true, %37 ], [ %52, %45 ]
  br label %55

55:                                               ; preds = %53, %34
  %56 = phi i1 [ false, %34 ], [ %54, %53 ]
  br i1 %56, label %57, label %251

57:                                               ; preds = %55
  %58 = load %struct.base85_baton_t*, %struct.base85_baton_t** %8, align 8
  %59 = getelementptr inbounds %struct.base85_baton_t, %struct.base85_baton_t* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.base85_baton_t*, %struct.base85_baton_t** %8, align 8
  %62 = getelementptr inbounds %struct.base85_baton_t, %struct.base85_baton_t* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %60, %63
  store i64 %64, i64* %14, align 8
  %65 = load i64, i64* %14, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %103

67:                                               ; preds = %57
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* %14, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i64, i64* %10, align 8
  br label %75

73:                                               ; preds = %67
  %74 = load i64, i64* %14, align 8
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i64 [ %72, %71 ], [ %74, %73 ]
  store i64 %76, i64* %15, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = load %struct.base85_baton_t*, %struct.base85_baton_t** %8, align 8
  %79 = getelementptr inbounds %struct.base85_baton_t, %struct.base85_baton_t* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.base85_baton_t*, %struct.base85_baton_t** %8, align 8
  %82 = getelementptr inbounds %struct.base85_baton_t, %struct.base85_baton_t* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %80, %83
  %85 = load i64, i64* %15, align 8
  %86 = call i32 @memcpy(i8* %77, i64 %84, i64 %85)
  %87 = load i64, i64* %15, align 8
  %88 = load i8*, i8** %11, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 %87
  store i8* %89, i8** %11, align 8
  %90 = load i64, i64* %15, align 8
  %91 = load i64, i64* %10, align 8
  %92 = sub nsw i64 %91, %90
  store i64 %92, i64* %10, align 8
  %93 = load i64, i64* %15, align 8
  %94 = load %struct.base85_baton_t*, %struct.base85_baton_t** %8, align 8
  %95 = getelementptr inbounds %struct.base85_baton_t, %struct.base85_baton_t* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, %93
  store i64 %97, i64* %95, align 8
  %98 = load i64, i64* %10, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %75
  %101 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %101, i32** %4, align 8
  br label %260

102:                                              ; preds = %75
  br label %103

103:                                              ; preds = %102, %57
  %104 = load %struct.base85_baton_t*, %struct.base85_baton_t** %8, align 8
  %105 = getelementptr inbounds %struct.base85_baton_t, %struct.base85_baton_t* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.base85_baton_t*, %struct.base85_baton_t** %8, align 8
  %108 = getelementptr inbounds %struct.base85_baton_t, %struct.base85_baton_t* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = icmp sge i64 %106, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %103
  br label %251

112:                                              ; preds = %103
  %113 = load %struct.base85_baton_t*, %struct.base85_baton_t** %8, align 8
  %114 = getelementptr inbounds %struct.base85_baton_t, %struct.base85_baton_t* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @APR_SET, align 4
  %117 = load %struct.base85_baton_t*, %struct.base85_baton_t** %8, align 8
  %118 = getelementptr inbounds %struct.base85_baton_t, %struct.base85_baton_t* %117, i32 0, i32 2
  %119 = load i32*, i32** %9, align 8
  %120 = call i32 @svn_io_file_seek(i32 %115, i32 %116, i64* %118, i32* %119)
  %121 = call i32 @SVN_ERR(i32 %120)
  %122 = load %struct.base85_baton_t*, %struct.base85_baton_t** %8, align 8
  %123 = getelementptr inbounds %struct.base85_baton_t, %struct.base85_baton_t* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @APR_SIZE_MAX, align 4
  %126 = load i32*, i32** %9, align 8
  %127 = load i32*, i32** %9, align 8
  %128 = call i32 @svn_io_file_readline(i32 %124, %struct.TYPE_3__** %12, i32* null, i64* %13, i32 %125, i32* %126, i32* %127)
  %129 = call i32 @SVN_ERR(i32 %128)
  %130 = load i64, i64* %13, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %112
  %133 = load %struct.base85_baton_t*, %struct.base85_baton_t** %8, align 8
  %134 = getelementptr inbounds %struct.base85_baton_t, %struct.base85_baton_t* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.base85_baton_t*, %struct.base85_baton_t** %8, align 8
  %137 = getelementptr inbounds %struct.base85_baton_t, %struct.base85_baton_t* %136, i32 0, i32 2
  store i64 %135, i64* %137, align 8
  br label %147

138:                                              ; preds = %112
  %139 = load %struct.base85_baton_t*, %struct.base85_baton_t** %8, align 8
  %140 = getelementptr inbounds %struct.base85_baton_t, %struct.base85_baton_t* %139, i32 0, i32 2
  %141 = load %struct.base85_baton_t*, %struct.base85_baton_t** %8, align 8
  %142 = getelementptr inbounds %struct.base85_baton_t, %struct.base85_baton_t* %141, i32 0, i32 6
  %143 = load i32, i32* %142, align 8
  %144 = load i32*, i32** %9, align 8
  %145 = call i32 @svn_io_file_get_offset(i64* %140, i32 %143, i32* %144)
  %146 = call i32 @SVN_ERR(i32 %145)
  br label %147

147:                                              ; preds = %138, %132
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %180

152:                                              ; preds = %147
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 0
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp sge i32 %158, 65
  br i1 %159, label %160, label %180

160:                                              ; preds = %152
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 0
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp sle i32 %166, 90
  br i1 %167, label %168, label %180

168:                                              ; preds = %160
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 0
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = sub nsw i32 %174, 65
  %176 = add nsw i32 %175, 1
  %177 = sext i32 %176 to i64
  %178 = load %struct.base85_baton_t*, %struct.base85_baton_t** %8, align 8
  %179 = getelementptr inbounds %struct.base85_baton_t, %struct.base85_baton_t* %178, i32 0, i32 0
  store i64 %177, i64* %179, align 8
  br label %219

180:                                              ; preds = %160, %152, %147
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %214

185:                                              ; preds = %180
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 0
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  %192 = icmp sge i32 %191, 97
  br i1 %192, label %193, label %214

193:                                              ; preds = %185
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 0
  %196 = load i8*, i8** %195, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 0
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp sle i32 %199, 122
  br i1 %200, label %201, label %214

201:                                              ; preds = %193
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 0
  %204 = load i8*, i8** %203, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 0
  %206 = load i8, i8* %205, align 1
  %207 = sext i8 %206 to i32
  %208 = sub nsw i32 %207, 97
  %209 = add nsw i32 %208, 26
  %210 = add nsw i32 %209, 1
  %211 = sext i32 %210 to i64
  %212 = load %struct.base85_baton_t*, %struct.base85_baton_t** %8, align 8
  %213 = getelementptr inbounds %struct.base85_baton_t, %struct.base85_baton_t* %212, i32 0, i32 0
  store i64 %211, i64* %213, align 8
  br label %218

214:                                              ; preds = %193, %185, %180
  %215 = load i32, i32* @SVN_ERR_DIFF_UNEXPECTED_DATA, align 4
  %216 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %217 = call i32* @svn_error_create(i32 %215, i32* null, i32 %216)
  store i32* %217, i32** %4, align 8
  br label %260

218:                                              ; preds = %201
  br label %219

219:                                              ; preds = %218, %168
  %220 = load %struct.base85_baton_t*, %struct.base85_baton_t** %8, align 8
  %221 = getelementptr inbounds %struct.base85_baton_t, %struct.base85_baton_t* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = icmp slt i64 %222, 52
  br i1 %223, label %224, label %230

224:                                              ; preds = %219
  %225 = load %struct.base85_baton_t*, %struct.base85_baton_t** %8, align 8
  %226 = getelementptr inbounds %struct.base85_baton_t, %struct.base85_baton_t* %225, i32 0, i32 3
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.base85_baton_t*, %struct.base85_baton_t** %8, align 8
  %229 = getelementptr inbounds %struct.base85_baton_t, %struct.base85_baton_t* %228, i32 0, i32 2
  store i64 %227, i64* %229, align 8
  br label %230

230:                                              ; preds = %224, %219
  %231 = load %struct.base85_baton_t*, %struct.base85_baton_t** %8, align 8
  %232 = getelementptr inbounds %struct.base85_baton_t, %struct.base85_baton_t* %231, i32 0, i32 4
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.base85_baton_t*, %struct.base85_baton_t** %8, align 8
  %235 = getelementptr inbounds %struct.base85_baton_t, %struct.base85_baton_t* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = trunc i64 %236 to i32
  %238 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 0
  %240 = load i8*, i8** %239, align 8
  %241 = getelementptr inbounds i8, i8* %240, i64 1
  %242 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = sub nsw i64 %244, 1
  %246 = load i32*, i32** %9, align 8
  %247 = call i32 @svn_diff__base85_decode_line(i64 %233, i32 %237, i8* %241, i64 %245, i32* %246)
  %248 = call i32 @SVN_ERR(i32 %247)
  %249 = load %struct.base85_baton_t*, %struct.base85_baton_t** %8, align 8
  %250 = getelementptr inbounds %struct.base85_baton_t, %struct.base85_baton_t* %249, i32 0, i32 1
  store i64 0, i64* %250, align 8
  br label %34

251:                                              ; preds = %111, %55
  %252 = load i64, i64* %10, align 8
  %253 = load i64*, i64** %7, align 8
  %254 = load i64, i64* %253, align 8
  %255 = sub nsw i64 %254, %252
  store i64 %255, i64* %253, align 8
  %256 = load i64, i64* @TRUE, align 8
  %257 = load %struct.base85_baton_t*, %struct.base85_baton_t** %8, align 8
  %258 = getelementptr inbounds %struct.base85_baton_t, %struct.base85_baton_t* %257, i32 0, i32 5
  store i64 %256, i64* %258, align 8
  %259 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %259, i32** %4, align 8
  br label %260

260:                                              ; preds = %251, %214, %100, %30
  %261 = load i32*, i32** %4, align 8
  ret i32* %261
}

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_file_seek(i32, i32, i64*, i32*) #1

declare dso_local i32 @svn_io_file_readline(i32, %struct.TYPE_3__**, i32*, i64*, i32, i32*, i32*) #1

declare dso_local i32 @svn_io_file_get_offset(i64*, i32, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_diff__base85_decode_line(i64, i32, i8*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
