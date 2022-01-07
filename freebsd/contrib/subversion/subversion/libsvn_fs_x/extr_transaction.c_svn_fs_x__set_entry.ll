; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_svn_fs_x__set_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_svn_fs_x__set_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__*, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_24__ = type { i8*, i8*, i32 }
%struct.TYPE_25__ = type { i64, i32* }
%struct.TYPE_28__ = type { i8*, %struct.TYPE_21__*, i64 }
%struct.TYPE_21__ = type { i8*, i32, i8* }

@APR_WRITE = common dso_local global i32 0, align 4
@APR_CREATE = common dso_local global i32 0, align 4
@APR_BUFFERED = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_FS_X__ITEM_INDEX_UNUSED = common dso_local global i32 0, align 4
@APR_APPEND = common dso_local global i32 0, align 4
@svn_fs_x__extract_dir_filesize = common dso_local global i32 0, align 4
@svn_fs_x__replace_dir_entry = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__set_entry(%struct.TYPE_27__* %0, i32 %1, %struct.TYPE_23__* %2, i8* %3, i32* %4, i8* %5, i32* %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_22__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_26__*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_24__, align 8
  %26 = alloca i32*, align 8
  %27 = alloca %struct.TYPE_25__, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca %struct.TYPE_28__, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32* %4, i32** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %32, align 8
  store %struct.TYPE_22__* %33, %struct.TYPE_22__** %17, align 8
  %34 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 1
  %37 = load i32*, i32** %16, align 8
  %38 = load i32*, i32** %16, align 8
  %39 = call i8* @svn_fs_x__path_txn_node_children(%struct.TYPE_27__* %34, i32* %36, i32* %37, i32* %38)
  store i8* %39, i8** %18, align 8
  %40 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %41, align 8
  store %struct.TYPE_26__* %42, %struct.TYPE_26__** %22, align 8
  %43 = load i32*, i32** %16, align 8
  %44 = call i32* @svn_pool_create(i32* %43)
  store i32* %44, i32** %23, align 8
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 1
  store i32* %46, i32** %24, align 8
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %48 = icmp ne %struct.TYPE_22__* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %8
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @svn_fs_x__is_txn(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %127, label %56

56:                                               ; preds = %49, %8
  %57 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %59 = load i32*, i32** %23, align 8
  %60 = load i32*, i32** %23, align 8
  %61 = call i32 @svn_fs_x__rep_contents_dir(i32** %26, %struct.TYPE_27__* %57, %struct.TYPE_23__* %58, i32* %59, i32* %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = load i8*, i8** %18, align 8
  %64 = load i32, i32* @APR_WRITE, align 4
  %65 = load i32, i32* @APR_CREATE, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @APR_BUFFERED, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @APR_OS_DEFAULT, align 4
  %70 = load i32*, i32** %16, align 8
  %71 = call i32 @svn_io_file_open(i32** %19, i8* %63, i32 %68, i32 %69, i32* %70)
  %72 = call i32 @SVN_ERR(i32 %71)
  %73 = load i32*, i32** %19, align 8
  %74 = load i32, i32* @TRUE, align 4
  %75 = load i32*, i32** %16, align 8
  %76 = call i32* @svn_stream_from_aprfile2(i32* %73, i32 %74, i32* %75)
  store i32* %76, i32** %20, align 8
  %77 = load i32*, i32** %26, align 8
  %78 = load i32*, i32** %20, align 8
  %79 = load i32*, i32** %23, align 8
  %80 = call i32 @unparse_dir_entries(i32* %77, i32* %78, i32* %79)
  %81 = call i32 @SVN_ERR(i32 %80)
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %83 = icmp ne %struct.TYPE_22__* %82, null
  br i1 %83, label %91, label %84

84:                                               ; preds = %56
  %85 = load i32*, i32** %15, align 8
  %86 = call i8* @apr_pcalloc(i32* %85, i32 8)
  %87 = bitcast i8* %86 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %87, %struct.TYPE_22__** %17, align 8
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 0
  store %struct.TYPE_22__* %88, %struct.TYPE_22__** %90, align 8
  br label %91

91:                                               ; preds = %84, %56
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @svn_fs_x__change_set_by_txn(i32 %92)
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 1
  store i32 %93, i32* %96, align 4
  %97 = load i32, i32* @SVN_FS_X__ITEM_INDEX_UNUSED, align 4
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 0
  store i32 %97, i32* %100, align 4
  %101 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %103 = load i32*, i32** %23, align 8
  %104 = call i32 @svn_fs_x__put_node_revision(%struct.TYPE_27__* %101, %struct.TYPE_23__* %102, i32* %103)
  %105 = call i32 @SVN_ERR(i32 %104)
  %106 = load i32*, i32** %19, align 8
  %107 = load i32*, i32** %23, align 8
  %108 = call i32 @svn_io_file_flush(i32* %106, i32* %107)
  %109 = call i32 @SVN_ERR(i32 %108)
  %110 = load i32*, i32** %19, align 8
  %111 = load i32*, i32** %23, align 8
  %112 = call i32 @svn_io_file_size_get(i64* %21, i32* %110, i32* %111)
  %113 = call i32 @SVN_ERR(i32 %112)
  %114 = load i32*, i32** %26, align 8
  %115 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 1
  store i32* %114, i32** %115, align 8
  %116 = load i64, i64* %21, align 8
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 0
  store i64 %116, i64* %117, align 8
  %118 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %119 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** %24, align 8
  %122 = load i32*, i32** %23, align 8
  %123 = call i32 @svn_cache__set(i32 %120, i32* %121, %struct.TYPE_25__* %27, i32* %122)
  %124 = call i32 @SVN_ERR(i32 %123)
  %125 = load i32*, i32** %23, align 8
  %126 = call i32 @svn_pool_clear(i32* %125)
  br label %169

127:                                              ; preds = %49
  %128 = load i8*, i8** %18, align 8
  %129 = load i32, i32* @APR_WRITE, align 4
  %130 = load i32, i32* @APR_APPEND, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @APR_OS_DEFAULT, align 4
  %133 = load i32*, i32** %23, align 8
  %134 = call i32 @svn_io_file_open(i32** %19, i8* %128, i32 %131, i32 %132, i32* %133)
  %135 = call i32 @SVN_ERR(i32 %134)
  %136 = load i32*, i32** %19, align 8
  %137 = load i32, i32* @TRUE, align 4
  %138 = load i32*, i32** %23, align 8
  %139 = call i32* @svn_stream_from_aprfile2(i32* %136, i32 %137, i32* %138)
  store i32* %139, i32** %20, align 8
  %140 = bitcast i64* %29 to i8**
  %141 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %142 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32*, i32** %24, align 8
  %145 = load i32, i32* @svn_fs_x__extract_dir_filesize, align 4
  %146 = load i32*, i32** %23, align 8
  %147 = call i32 @svn_cache__get_partial(i8** %140, i64* %28, i32 %143, i32* %144, i32 %145, i32* null, i32* %146)
  %148 = call i32 @SVN_ERR(i32 %147)
  %149 = load i64, i64* %28, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %168

151:                                              ; preds = %127
  %152 = load i32*, i32** %19, align 8
  %153 = load i32*, i32** %23, align 8
  %154 = call i32 @svn_io_file_size_get(i64* %21, i32* %152, i32* %153)
  %155 = call i32 @SVN_ERR(i32 %154)
  %156 = load i64, i64* %29, align 8
  %157 = load i64, i64* %21, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %167

159:                                              ; preds = %151
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %161 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32*, i32** %24, align 8
  %164 = load i32*, i32** %23, align 8
  %165 = call i32 @svn_cache__set(i32 %162, i32* %163, %struct.TYPE_25__* null, i32* %164)
  %166 = call i32 @SVN_ERR(i32 %165)
  br label %167

167:                                              ; preds = %159, %151
  br label %168

168:                                              ; preds = %167, %127
  br label %169

169:                                              ; preds = %168, %91
  %170 = load i32*, i32** %13, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %172, label %176

172:                                              ; preds = %169
  %173 = load i32*, i32** %13, align 8
  %174 = load i32, i32* %173, align 4
  %175 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 2
  store i32 %174, i32* %175, align 8
  br label %179

176:                                              ; preds = %169
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 2
  %178 = call i32 @svn_fs_x__id_reset(i32* %177)
  br label %179

179:                                              ; preds = %176, %172
  %180 = load i8*, i8** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 0
  store i8* %180, i8** %181, align 8
  %182 = load i8*, i8** %14, align 8
  %183 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 1
  store i8* %182, i8** %183, align 8
  %184 = load i32*, i32** %20, align 8
  %185 = load i32*, i32** %23, align 8
  %186 = call i32 @unparse_dir_entry(%struct.TYPE_24__* %25, i32* %184, i32* %185)
  %187 = call i32 @SVN_ERR(i32 %186)
  %188 = load i32*, i32** %19, align 8
  %189 = load i32*, i32** %23, align 8
  %190 = call i32 @svn_io_file_flush(i32* %188, i32* %189)
  %191 = call i32 @SVN_ERR(i32 %190)
  %192 = load i32*, i32** %19, align 8
  %193 = load i32*, i32** %23, align 8
  %194 = call i32 @svn_io_file_size_get(i64* %21, i32* %192, i32* %193)
  %195 = call i32 @SVN_ERR(i32 %194)
  %196 = load i32*, i32** %19, align 8
  %197 = load i32*, i32** %23, align 8
  %198 = call i32 @svn_io_file_close(i32* %196, i32* %197)
  %199 = call i32 @SVN_ERR(i32 %198)
  %200 = load i32*, i32** %23, align 8
  %201 = call i32 @svn_pool_clear(i32* %200)
  %202 = load i8*, i8** %12, align 8
  %203 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %30, i32 0, i32 0
  store i8* %202, i8** %203, align 8
  %204 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %30, i32 0, i32 1
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %204, align 8
  %205 = load i64, i64* %21, align 8
  %206 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %30, i32 0, i32 2
  store i64 %205, i64* %206, align 8
  %207 = load i32*, i32** %13, align 8
  %208 = icmp ne i32* %207, null
  br i1 %208, label %209, label %227

209:                                              ; preds = %179
  %210 = load i32*, i32** %23, align 8
  %211 = call i8* @apr_pcalloc(i32* %210, i32 24)
  %212 = bitcast i8* %211 to %struct.TYPE_21__*
  %213 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %30, i32 0, i32 1
  store %struct.TYPE_21__* %212, %struct.TYPE_21__** %213, align 8
  %214 = load i8*, i8** %12, align 8
  %215 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %30, i32 0, i32 1
  %216 = load %struct.TYPE_21__*, %struct.TYPE_21__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %216, i32 0, i32 0
  store i8* %214, i8** %217, align 8
  %218 = load i8*, i8** %14, align 8
  %219 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %30, i32 0, i32 1
  %220 = load %struct.TYPE_21__*, %struct.TYPE_21__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %220, i32 0, i32 2
  store i8* %218, i8** %221, align 8
  %222 = load i32*, i32** %13, align 8
  %223 = load i32, i32* %222, align 4
  %224 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %30, i32 0, i32 1
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i32 0, i32 1
  store i32 %223, i32* %226, align 8
  br label %227

227:                                              ; preds = %209, %179
  %228 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %229 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load i32*, i32** %24, align 8
  %232 = load i32, i32* @svn_fs_x__replace_dir_entry, align 4
  %233 = load i32*, i32** %23, align 8
  %234 = call i32 @svn_cache__set_partial(i32 %230, i32* %231, i32 %232, %struct.TYPE_28__* %30, i32* %233)
  %235 = call i32 @SVN_ERR(i32 %234)
  %236 = load i32*, i32** %23, align 8
  %237 = call i32 @svn_pool_destroy(i32* %236)
  %238 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %238
}

declare dso_local i8* @svn_fs_x__path_txn_node_children(%struct.TYPE_27__*, i32*, i32*, i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_fs_x__is_txn(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__rep_contents_dir(i32**, %struct.TYPE_27__*, %struct.TYPE_23__*, i32*, i32*) #1

declare dso_local i32 @svn_io_file_open(i32**, i8*, i32, i32, i32*) #1

declare dso_local i32* @svn_stream_from_aprfile2(i32*, i32, i32*) #1

declare dso_local i32 @unparse_dir_entries(i32*, i32*, i32*) #1

declare dso_local i8* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @svn_fs_x__change_set_by_txn(i32) #1

declare dso_local i32 @svn_fs_x__put_node_revision(%struct.TYPE_27__*, %struct.TYPE_23__*, i32*) #1

declare dso_local i32 @svn_io_file_flush(i32*, i32*) #1

declare dso_local i32 @svn_io_file_size_get(i64*, i32*, i32*) #1

declare dso_local i32 @svn_cache__set(i32, i32*, %struct.TYPE_25__*, i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @svn_cache__get_partial(i8**, i64*, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_fs_x__id_reset(i32*) #1

declare dso_local i32 @unparse_dir_entry(%struct.TYPE_24__*, i32*, i32*) #1

declare dso_local i32 @svn_io_file_close(i32*, i32*) #1

declare dso_local i32 @svn_cache__set_partial(i32, i32*, i32, %struct.TYPE_28__*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
