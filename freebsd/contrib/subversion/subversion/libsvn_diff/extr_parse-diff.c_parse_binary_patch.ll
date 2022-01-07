; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_parse-diff.c_parse_binary_patch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_parse-diff.c_parse_binary_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i64, i64, i64, i64, i8*, i8*, i32* }
%struct.TYPE_8__ = type { i8*, i32 }

@FALSE = common dso_local global i64 0, align 8
@APR_SIZE_MAX = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"literal \00", align 1
@APR_UINT64_MAX = common dso_local global i32 0, align 4
@APR_SET = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_9__*, i32*, i64, i32*, i32*)* @parse_binary_patch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse_binary_patch(%struct.TYPE_9__* %0, i32* %1, i64 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8, align 1
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = call i32* @svn_pool_create(i32* %25)
  store i32* %26, i32** %11, align 8
  %27 = load i64, i64* @FALSE, align 8
  store i64 %27, i64* %15, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call %struct.TYPE_10__* @apr_pcalloc(i32* %28, i32 56)
  store %struct.TYPE_10__* %29, %struct.TYPE_10__** %16, align 8
  %30 = load i64, i64* @FALSE, align 8
  store i64 %30, i64* %17, align 8
  %31 = load i64, i64* @FALSE, align 8
  store i64 %31, i64* %18, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 6
  store i32* %32, i32** %34, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @apr_hash_make(i32* %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @svn_io_file_get_offset(i64* %12, i32* %39, i32* %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  br label %43

43:                                               ; preds = %180, %5
  %44 = load i64, i64* %15, align 8
  %45 = icmp ne i64 %44, 0
  %46 = xor i1 %45, true
  br i1 %46, label %47, label %181

47:                                               ; preds = %43
  %48 = load i64, i64* %12, align 8
  store i64 %48, i64* %13, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* @APR_SIZE_MAX, align 4
  %51 = load i32*, i32** %11, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @svn_io_file_readline(i32* %49, %struct.TYPE_8__** %14, i32* null, i64* %15, i32 %50, i32* %51, i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  %55 = load i32*, i32** %7, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = call i32 @svn_io_file_get_offset(i64* %12, i32* %55, i32* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  %59 = load i64, i64* %17, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %141

61:                                               ; preds = %47
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  store i8 %66, i8* %19, align 1
  %67 = load i8, i8* %19, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp sge i32 %68, 65
  br i1 %69, label %70, label %74

70:                                               ; preds = %61
  %71 = load i8, i8* %19, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp sle i32 %72, 90
  br i1 %73, label %82, label %74

74:                                               ; preds = %70, %61
  %75 = load i8, i8* %19, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp sge i32 %76, 97
  br i1 %77, label %78, label %111

78:                                               ; preds = %74
  %79 = load i8, i8* %19, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp sle i32 %80, 122
  br i1 %81, label %82, label %111

82:                                               ; preds = %78, %70
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = icmp sle i32 %85, 66
  br i1 %86, label %87, label %111

87:                                               ; preds = %82
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @strchr(i8* %90, i8 signext 58)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %111, label %93

93:                                               ; preds = %87
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @strchr(i8* %96, i8 signext 32)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %111, label %99

99:                                               ; preds = %93
  %100 = load i64, i64* %18, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load i64, i64* %12, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  br label %110

106:                                              ; preds = %99
  %107 = load i64, i64* %12, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  store i64 %107, i64* %109, align 8
  br label %110

110:                                              ; preds = %106, %102
  br label %140

111:                                              ; preds = %93, %87, %82, %78, %74
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %113 = call i32 @svn_stringbuf_first_non_whitespace(%struct.TYPE_8__* %112)
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %128

118:                                              ; preds = %111
  %119 = load i64, i64* %18, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %118
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %13, align 8
  %126 = icmp slt i64 %124, %125
  br i1 %126, label %128, label %127

127:                                              ; preds = %121, %118
  br label %181

128:                                              ; preds = %121, %111
  %129 = load i64, i64* %18, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  store %struct.TYPE_10__* %132, %struct.TYPE_10__** %134, align 8
  br label %181

135:                                              ; preds = %128
  %136 = load i64, i64* @FALSE, align 8
  store i64 %136, i64* %17, align 8
  %137 = load i64, i64* @TRUE, align 8
  store i64 %137, i64* %18, align 8
  br label %138

138:                                              ; preds = %135
  br label %139

139:                                              ; preds = %138
  br label %140

140:                                              ; preds = %139, %110
  br label %180

141:                                              ; preds = %47
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = call i64 @starts_with(i8* %144, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %178

147:                                              ; preds = %141
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 8
  %152 = load i32, i32* @APR_UINT64_MAX, align 4
  %153 = call i32* @svn_cstring_strtoui64(i8** %20, i8* %151, i32 0, i32 %152, i32 10)
  store i32* %153, i32** %21, align 8
  %154 = load i32*, i32** %21, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %147
  %157 = load i32*, i32** %21, align 8
  %158 = call i32 @svn_error_clear(i32* %157)
  br label %181

159:                                              ; preds = %147
  %160 = load i64, i64* %18, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %159
  %163 = load i64, i64* %12, align 8
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 2
  store i64 %163, i64* %165, align 8
  %166 = load i8*, i8** %20, align 8
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 5
  store i8* %166, i8** %168, align 8
  br label %176

169:                                              ; preds = %159
  %170 = load i64, i64* %12, align 8
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 3
  store i64 %170, i64* %172, align 8
  %173 = load i8*, i8** %20, align 8
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 4
  store i8* %173, i8** %175, align 8
  br label %176

176:                                              ; preds = %169, %162
  %177 = load i64, i64* @TRUE, align 8
  store i64 %177, i64* %17, align 8
  br label %179

178:                                              ; preds = %141
  br label %181

179:                                              ; preds = %176
  br label %180

180:                                              ; preds = %179, %140
  br label %43

181:                                              ; preds = %178, %156, %131, %127, %43
  %182 = load i32*, i32** %11, align 8
  %183 = call i32 @svn_pool_destroy(i32* %182)
  %184 = load i64, i64* %15, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %192, label %186

186:                                              ; preds = %181
  %187 = load i32*, i32** %7, align 8
  %188 = load i32, i32* @APR_SET, align 4
  %189 = load i32*, i32** %10, align 8
  %190 = call i32 @svn_io_file_seek(i32* %187, i32 %188, i64* %13, i32* %189)
  %191 = call i32 @SVN_ERR(i32 %190)
  br label %213

192:                                              ; preds = %181
  %193 = load i64, i64* %18, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %212

195:                                              ; preds = %192
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = icmp sgt i64 %198, %201
  br i1 %202, label %208, label %203

203:                                              ; preds = %195
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 5
  %206 = load i8*, i8** %205, align 8
  %207 = icmp ne i8* %206, null
  br i1 %207, label %212, label %208

208:                                              ; preds = %203, %195
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 0
  store %struct.TYPE_10__* %209, %struct.TYPE_10__** %211, align 8
  br label %212

212:                                              ; preds = %208, %203, %192
  br label %213

213:                                              ; preds = %212, %186
  %214 = load i64, i64* %8, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %255

216:                                              ; preds = %213
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %218, align 8
  %220 = icmp ne %struct.TYPE_10__* %219, null
  br i1 %220, label %221, label %255

221:                                              ; preds = %216
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  store i64 %224, i64* %22, align 8
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  store i64 %227, i64* %23, align 8
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 5
  %230 = load i8*, i8** %229, align 8
  store i8* %230, i8** %24, align 8
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 3
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 2
  store i64 %233, i64* %235, align 8
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 0
  store i64 %238, i64* %240, align 8
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 4
  %243 = load i8*, i8** %242, align 8
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 5
  store i8* %243, i8** %245, align 8
  %246 = load i64, i64* %22, align 8
  %247 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 3
  store i64 %246, i64* %248, align 8
  %249 = load i64, i64* %23, align 8
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 1
  store i64 %249, i64* %251, align 8
  %252 = load i8*, i8** %24, align 8
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 4
  store i8* %252, i8** %254, align 8
  br label %255

255:                                              ; preds = %221, %216, %213
  %256 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %256
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local %struct.TYPE_10__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @apr_hash_make(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_file_get_offset(i64*, i32*, i32*) #1

declare dso_local i32 @svn_io_file_readline(i32*, %struct.TYPE_8__**, i32*, i64*, i32, i32*, i32*) #1

declare dso_local i32 @strchr(i8*, i8 signext) #1

declare dso_local i32 @svn_stringbuf_first_non_whitespace(%struct.TYPE_8__*) #1

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i32* @svn_cstring_strtoui64(i8**, i8*, i32, i32, i32) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32 @svn_io_file_seek(i32*, i32, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
