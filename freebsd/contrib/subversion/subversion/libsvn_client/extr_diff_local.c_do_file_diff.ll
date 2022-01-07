; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff_local.c_do_file_diff.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff_local.c_do_file_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 (i8*, i32*, i32*, i8*, %struct.TYPE_13__*, i32*)*, i32 (i8*, i32*, i32*, i8*, i8*, i32*, i32*, i32, %struct.TYPE_15__*, i8*, %struct.TYPE_13__*, i32*)*, i32 (i8*, i32*, i32*, i32*, i8*, i32*, i32*, i8*, %struct.TYPE_13__*, i32*)*, i32 (i8*, i32*, i8*, i32*, i8*, %struct.TYPE_13__*, i32*)*, i32 (i8**, i64*, i8*, i32*, i32*, i32*, i8*, %struct.TYPE_13__*, i32*, i32*)* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_PROP_MIME_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*, i8*, i64, i64, i8*, %struct.TYPE_13__*, %struct.TYPE_14__*, i32*)* @do_file_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @do_file_diff(i8* %0, i8* %1, i8* %2, i8* %3, i64 %4, i64 %5, i8* %6, %struct.TYPE_13__* %7, %struct.TYPE_14__* %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_13__*, align 8
  %20 = alloca %struct.TYPE_14__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i64, align 8
  %32 = alloca %struct.TYPE_15__*, align 8
  store i8* %0, i8** %12, align 8
  store i8* %1, i8** %13, align 8
  store i8* %2, i8** %14, align 8
  store i8* %3, i8** %15, align 8
  store i64 %4, i64* %16, align 8
  store i64 %5, i64* %17, align 8
  store i8* %6, i8** %18, align 8
  store %struct.TYPE_13__* %7, %struct.TYPE_13__** %19, align 8
  store %struct.TYPE_14__* %8, %struct.TYPE_14__** %20, align 8
  store i32* %9, i32** %21, align 8
  %33 = load i64, i64* @FALSE, align 8
  store i64 %33, i64* %25, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = call i8* @svn_dirent_skip_ancestor(i8* %34, i8* %35)
  store i8* %36, i8** %22, align 8
  %37 = load i64, i64* %17, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %10
  %40 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %41 = load i32*, i32** %21, align 8
  %42 = call i32* @svn_diff__source_create(i32 %40, i32* %41)
  store i32* %42, i32** %23, align 8
  br label %44

43:                                               ; preds = %10
  store i32* null, i32** %23, align 8
  br label %44

44:                                               ; preds = %43, %39
  %45 = load i64, i64* %16, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %49 = load i32*, i32** %21, align 8
  %50 = call i32* @svn_diff__source_create(i32 %48, i32* %49)
  store i32* %50, i32** %24, align 8
  br label %52

51:                                               ; preds = %44
  store i32* null, i32** %24, align 8
  br label %52

52:                                               ; preds = %51, %47
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 4
  %55 = load i32 (i8**, i64*, i8*, i32*, i32*, i32*, i8*, %struct.TYPE_13__*, i32*, i32*)*, i32 (i8**, i64*, i8*, i32*, i32*, i32*, i8*, %struct.TYPE_13__*, i32*, i32*)** %54, align 8
  %56 = load i8*, i8** %22, align 8
  %57 = load i32*, i32** %23, align 8
  %58 = load i32*, i32** %24, align 8
  %59 = load i8*, i8** %18, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %61 = load i32*, i32** %21, align 8
  %62 = load i32*, i32** %21, align 8
  %63 = call i32 %55(i8** %28, i64* %25, i8* %56, i32* %57, i32* %58, i32* null, i8* %59, %struct.TYPE_13__* %60, i32* %61, i32* %62)
  %64 = call i32 @SVN_ERR(i32 %63)
  %65 = load i64, i64* %25, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %52
  %68 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %68, i32** %11, align 8
  br label %262

69:                                               ; preds = %52
  %70 = load i64, i64* %17, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %115, label %72

72:                                               ; preds = %69
  %73 = load i8*, i8** %12, align 8
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %21, align 8
  %78 = load i32*, i32** %21, align 8
  %79 = call i32 @get_props(i32** %26, i8* %73, i32 %76, i32* %77, i32* %78)
  %80 = call i32 @SVN_ERR(i32 %79)
  %81 = load i32*, i32** %26, align 8
  %82 = load i32, i32* @SVN_PROP_MIME_TYPE, align 4
  %83 = call i32 @svn_hash_gets(i32* %81, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %103, label %85

85:                                               ; preds = %72
  %86 = load i8*, i8** %12, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %21, align 8
  %91 = call i32 @svn_io_detect_mimetype2(i8** %29, i8* %86, i32 %89, i32* %90)
  %92 = call i32 @SVN_ERR(i32 %91)
  %93 = load i8*, i8** %29, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %102

95:                                               ; preds = %85
  %96 = load i32*, i32** %26, align 8
  %97 = load i32, i32* @SVN_PROP_MIME_TYPE, align 4
  %98 = load i8*, i8** %29, align 8
  %99 = load i32*, i32** %21, align 8
  %100 = call i32 @svn_string_create(i8* %98, i32* %99)
  %101 = call i32 @svn_hash_sets(i32* %96, i32 %97, i32 %100)
  br label %102

102:                                              ; preds = %95, %85
  br label %103

103:                                              ; preds = %102, %72
  %104 = load i32*, i32** %26, align 8
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %21, align 8
  %112 = load i32*, i32** %21, align 8
  %113 = call i32 @translate_if_necessary(i8** %12, i32* %104, i32 %107, i32 %110, i32* %111, i32* %112)
  %114 = call i32 @SVN_ERR(i32 %113)
  br label %116

115:                                              ; preds = %69
  store i32* null, i32** %26, align 8
  br label %116

116:                                              ; preds = %115, %103
  %117 = load i64, i64* %16, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %162, label %119

119:                                              ; preds = %116
  %120 = load i8*, i8** %13, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load i32*, i32** %21, align 8
  %125 = load i32*, i32** %21, align 8
  %126 = call i32 @get_props(i32** %27, i8* %120, i32 %123, i32* %124, i32* %125)
  %127 = call i32 @SVN_ERR(i32 %126)
  %128 = load i32*, i32** %27, align 8
  %129 = load i32, i32* @SVN_PROP_MIME_TYPE, align 4
  %130 = call i32 @svn_hash_gets(i32* %128, i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %150, label %132

132:                                              ; preds = %119
  %133 = load i8*, i8** %13, align 8
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load i32*, i32** %21, align 8
  %138 = call i32 @svn_io_detect_mimetype2(i8** %30, i8* %133, i32 %136, i32* %137)
  %139 = call i32 @SVN_ERR(i32 %138)
  %140 = load i8*, i8** %30, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %149

142:                                              ; preds = %132
  %143 = load i32*, i32** %27, align 8
  %144 = load i32, i32* @SVN_PROP_MIME_TYPE, align 4
  %145 = load i8*, i8** %30, align 8
  %146 = load i32*, i32** %21, align 8
  %147 = call i32 @svn_string_create(i8* %145, i32* %146)
  %148 = call i32 @svn_hash_sets(i32* %143, i32 %144, i32 %147)
  br label %149

149:                                              ; preds = %142, %132
  br label %150

150:                                              ; preds = %149, %119
  %151 = load i32*, i32** %27, align 8
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32*, i32** %21, align 8
  %159 = load i32*, i32** %21, align 8
  %160 = call i32 @translate_if_necessary(i8** %13, i32* %151, i32 %154, i32 %157, i32* %158, i32* %159)
  %161 = call i32 @SVN_ERR(i32 %160)
  br label %163

162:                                              ; preds = %116
  store i32* null, i32** %27, align 8
  br label %163

163:                                              ; preds = %162, %150
  %164 = load i64, i64* %16, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %179

166:                                              ; preds = %163
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 3
  %169 = load i32 (i8*, i32*, i8*, i32*, i8*, %struct.TYPE_13__*, i32*)*, i32 (i8*, i32*, i8*, i32*, i8*, %struct.TYPE_13__*, i32*)** %168, align 8
  %170 = load i8*, i8** %22, align 8
  %171 = load i32*, i32** %23, align 8
  %172 = load i8*, i8** %12, align 8
  %173 = load i32*, i32** %26, align 8
  %174 = load i8*, i8** %28, align 8
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %176 = load i32*, i32** %21, align 8
  %177 = call i32 %169(i8* %170, i32* %171, i8* %172, i32* %173, i8* %174, %struct.TYPE_13__* %175, i32* %176)
  %178 = call i32 @SVN_ERR(i32 %177)
  br label %260

179:                                              ; preds = %163
  %180 = load i64, i64* %17, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %195

182:                                              ; preds = %179
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 2
  %185 = load i32 (i8*, i32*, i32*, i32*, i8*, i32*, i32*, i8*, %struct.TYPE_13__*, i32*)*, i32 (i8*, i32*, i32*, i32*, i8*, i32*, i32*, i8*, %struct.TYPE_13__*, i32*)** %184, align 8
  %186 = load i8*, i8** %22, align 8
  %187 = load i32*, i32** %24, align 8
  %188 = load i8*, i8** %13, align 8
  %189 = load i32*, i32** %27, align 8
  %190 = load i8*, i8** %28, align 8
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %192 = load i32*, i32** %21, align 8
  %193 = call i32 %185(i8* %186, i32* null, i32* %187, i32* null, i8* %188, i32* null, i32* %189, i8* %190, %struct.TYPE_13__* %191, i32* %192)
  %194 = call i32 @SVN_ERR(i32 %193)
  br label %259

195:                                              ; preds = %179
  %196 = load i8*, i8** %12, align 8
  %197 = load i8*, i8** %13, align 8
  %198 = load i32*, i32** %21, align 8
  %199 = call i32 @svn_io_files_contents_same_p(i64* %31, i8* %196, i8* %197, i32* %198)
  %200 = call i32 @SVN_ERR(i32 %199)
  %201 = load i32*, i32** %27, align 8
  %202 = load i32*, i32** %26, align 8
  %203 = load i32*, i32** %21, align 8
  %204 = call i32 @svn_prop_diffs(%struct.TYPE_15__** %32, i32* %201, i32* %202, i32* %203)
  %205 = call i32 @SVN_ERR(i32 %204)
  %206 = load i64, i64* %31, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %195
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = icmp sgt i64 %211, 0
  br i1 %212, label %213, label %246

213:                                              ; preds = %208, %195
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 1
  %216 = load i32 (i8*, i32*, i32*, i8*, i8*, i32*, i32*, i32, %struct.TYPE_15__*, i8*, %struct.TYPE_13__*, i32*)*, i32 (i8*, i32*, i32*, i8*, i8*, i32*, i32*, i32, %struct.TYPE_15__*, i8*, %struct.TYPE_13__*, i32*)** %215, align 8
  %217 = load i8*, i8** %22, align 8
  %218 = load i32*, i32** %23, align 8
  %219 = load i32*, i32** %24, align 8
  %220 = load i64, i64* %31, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %213
  br label %225

223:                                              ; preds = %213
  %224 = load i8*, i8** %12, align 8
  br label %225

225:                                              ; preds = %223, %222
  %226 = phi i8* [ null, %222 ], [ %224, %223 ]
  %227 = load i64, i64* %31, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %225
  br label %232

230:                                              ; preds = %225
  %231 = load i8*, i8** %13, align 8
  br label %232

232:                                              ; preds = %230, %229
  %233 = phi i8* [ null, %229 ], [ %231, %230 ]
  %234 = load i32*, i32** %26, align 8
  %235 = load i32*, i32** %27, align 8
  %236 = load i64, i64* %31, align 8
  %237 = icmp ne i64 %236, 0
  %238 = xor i1 %237, true
  %239 = zext i1 %238 to i32
  %240 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %241 = load i8*, i8** %28, align 8
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %243 = load i32*, i32** %21, align 8
  %244 = call i32 %216(i8* %217, i32* %218, i32* %219, i8* %226, i8* %233, i32* %234, i32* %235, i32 %239, %struct.TYPE_15__* %240, i8* %241, %struct.TYPE_13__* %242, i32* %243)
  %245 = call i32 @SVN_ERR(i32 %244)
  br label %258

246:                                              ; preds = %208
  %247 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 0
  %249 = load i32 (i8*, i32*, i32*, i8*, %struct.TYPE_13__*, i32*)*, i32 (i8*, i32*, i32*, i8*, %struct.TYPE_13__*, i32*)** %248, align 8
  %250 = load i8*, i8** %22, align 8
  %251 = load i32*, i32** %23, align 8
  %252 = load i32*, i32** %24, align 8
  %253 = load i8*, i8** %28, align 8
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %255 = load i32*, i32** %21, align 8
  %256 = call i32 %249(i8* %250, i32* %251, i32* %252, i8* %253, %struct.TYPE_13__* %254, i32* %255)
  %257 = call i32 @SVN_ERR(i32 %256)
  br label %258

258:                                              ; preds = %246, %232
  br label %259

259:                                              ; preds = %258, %182
  br label %260

260:                                              ; preds = %259, %166
  %261 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %261, i32** %11, align 8
  br label %262

262:                                              ; preds = %260, %67
  %263 = load i32*, i32** %11, align 8
  ret i32* %263
}

declare dso_local i8* @svn_dirent_skip_ancestor(i8*, i8*) #1

declare dso_local i32* @svn_diff__source_create(i32, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_props(i32**, i8*, i32, i32*, i32*) #1

declare dso_local i32 @svn_hash_gets(i32*, i32) #1

declare dso_local i32 @svn_io_detect_mimetype2(i8**, i8*, i32, i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i32, i32) #1

declare dso_local i32 @svn_string_create(i8*, i32*) #1

declare dso_local i32 @translate_if_necessary(i8**, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_io_files_contents_same_p(i64*, i8*, i8*, i32*) #1

declare dso_local i32 @svn_prop_diffs(%struct.TYPE_15__**, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
