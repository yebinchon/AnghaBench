; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_cached_data.c_svn_fs_fs__get_changes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_cached_data.c_svn_fs_fs__get_changes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i64, i8*, i64 }
%struct.TYPE_30__ = type { i32, i32, %struct.TYPE_34__*, %struct.TYPE_35__*, i64, i32, i32 }
%struct.TYPE_34__ = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i64 }
%struct.TYPE_35__ = type { i32, i32 }
%struct.TYPE_29__ = type { i64, i32, i64, i32**, i64 }
%struct.TYPE_31__ = type { i32, i32 }

@SVN_FS_FS__ITEM_INDEX_CHANGES = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@SVN_FS_FS__CHANGES_BLOCK_SIZE = common dso_local global i64 0, align 8
@SVN_FS_FS__ITEM_TYPE_CHANGES = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__get_changes(%struct.TYPE_33__** %0, %struct.TYPE_30__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_33__**, align 8
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_32__*, align 8
  %12 = alloca %struct.TYPE_29__*, align 8
  %13 = alloca %struct.TYPE_31__, align 4
  %14 = alloca i64, align 8
  store %struct.TYPE_33__** %0, %struct.TYPE_33__*** %5, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load i64, i64* @SVN_FS_FS__ITEM_INDEX_CHANGES, align 8
  store i64 %15, i64* %9, align 8
  %16 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_34__*, %struct.TYPE_34__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  store %struct.TYPE_32__* %20, %struct.TYPE_32__** %11, align 8
  %21 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %13, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %13, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %4
  %34 = bitcast %struct.TYPE_29__** %12 to i8**
  %35 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @svn_cache__get(i8** %34, i64* %10, i64 %37, %struct.TYPE_31__* %13, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  br label %43

41:                                               ; preds = %4
  %42 = load i64, i64* @FALSE, align 8
  store i64 %42, i64* %10, align 8
  br label %43

43:                                               ; preds = %41, %33
  %44 = load i64, i64* %10, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %225, label %46

46:                                               ; preds = %43
  %47 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_35__*, %struct.TYPE_35__** %48, align 8
  %50 = icmp ne %struct.TYPE_35__* %49, null
  br i1 %50, label %75, label %51

51:                                               ; preds = %46
  %52 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_34__*, %struct.TYPE_34__** %56, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @svn_fs_fs__ensure_revision_exists(i32 %54, %struct.TYPE_34__* %57, i32* %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  %61 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_34__*, %struct.TYPE_34__** %64, align 8
  %66 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %8, align 8
  %73 = call i32 @svn_fs_fs__open_pack_or_rev_file(%struct.TYPE_35__** %62, %struct.TYPE_34__* %65, i32 %68, i32 %71, i32* %72)
  %74 = call i32 @SVN_ERR(i32 %73)
  br label %75

75:                                               ; preds = %51, %46
  %76 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_34__*, %struct.TYPE_34__** %77, align 8
  %79 = call i64 @use_block_read(%struct.TYPE_34__* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %103

81:                                               ; preds = %75
  %82 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_34__*, %struct.TYPE_34__** %83, align 8
  %85 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i64, i64* @SVN_FS_FS__ITEM_INDEX_CHANGES, align 8
  %89 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_35__*, %struct.TYPE_35__** %90, align 8
  %92 = load i32*, i32** %8, align 8
  %93 = load i32*, i32** %8, align 8
  %94 = call i32 @block_read(i32* null, %struct.TYPE_34__* %84, i32 %87, i64 %88, %struct.TYPE_35__* %91, i32* %92, i32* %93)
  %95 = call i32 @SVN_ERR(i32 %94)
  %96 = bitcast %struct.TYPE_29__** %12 to i8**
  %97 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i32*, i32** %7, align 8
  %101 = call i32 @svn_cache__get(i8** %96, i64* %10, i64 %99, %struct.TYPE_31__* %13, i32* %100)
  %102 = call i32 @SVN_ERR(i32 %101)
  br label %103

103:                                              ; preds = %81, %75
  %104 = load i64, i64* %10, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %224, label %106

106:                                              ; preds = %103
  %107 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_34__*, %struct.TYPE_34__** %108, align 8
  %110 = call i64 @svn_fs_fs__use_log_addressing(%struct.TYPE_34__* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %126

112:                                              ; preds = %106
  %113 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_34__*, %struct.TYPE_34__** %114, align 8
  %116 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %116, i32 0, i32 3
  %118 = load %struct.TYPE_35__*, %struct.TYPE_35__** %117, align 8
  %119 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i64, i64* @SVN_FS_FS__ITEM_INDEX_CHANGES, align 8
  %123 = load i32*, i32** %8, align 8
  %124 = call i32 @svn_fs_fs__item_offset(i64* %14, %struct.TYPE_34__* %115, %struct.TYPE_35__* %118, i32 %121, i32* null, i64 %122, i32* %123)
  %125 = call i32 @SVN_ERR(i32 %124)
  br label %140

126:                                              ; preds = %106
  %127 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %127, i32 0, i32 3
  %129 = load %struct.TYPE_35__*, %struct.TYPE_35__** %128, align 8
  %130 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_34__*, %struct.TYPE_34__** %131, align 8
  %133 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** %8, align 8
  %137 = call i32 @get_root_changes_offset(i32* null, i64* %14, %struct.TYPE_35__* %129, %struct.TYPE_34__* %132, i32 %135, i32* %136)
  %138 = call i32 @SVN_ERR(i32 %137)
  %139 = load i64, i64* %14, align 8
  store i64 %139, i64* %9, align 8
  br label %140

140:                                              ; preds = %126, %112
  %141 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_34__*, %struct.TYPE_34__** %142, align 8
  %144 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %144, i32 0, i32 3
  %146 = load %struct.TYPE_35__*, %struct.TYPE_35__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i64, i64* %14, align 8
  %150 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %150, i32 0, i32 4
  %152 = load i64, i64* %151, align 8
  %153 = add nsw i64 %149, %152
  %154 = load i32*, i32** %8, align 8
  %155 = call i32 @aligned_seek(%struct.TYPE_34__* %143, i32 %148, i32* null, i64 %153, i32* %154)
  %156 = call i32 @SVN_ERR(i32 %155)
  %157 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %5, align 8
  %158 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %158, i32 0, i32 3
  %160 = load %struct.TYPE_35__*, %struct.TYPE_35__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i64, i64* @SVN_FS_FS__CHANGES_BLOCK_SIZE, align 8
  %164 = load i32*, i32** %7, align 8
  %165 = load i32*, i32** %8, align 8
  %166 = call i32 @svn_fs_fs__read_changes(%struct.TYPE_33__** %157, i32 %162, i64 %163, i32* %164, i32* %165)
  %167 = call i32 @SVN_ERR(i32 %166)
  %168 = load i32*, i32** %8, align 8
  %169 = call %struct.TYPE_29__* @apr_pcalloc(i32* %168, i32 40)
  store %struct.TYPE_29__* %169, %struct.TYPE_29__** %12, align 8
  %170 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %171 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %170, i32 0, i32 2
  %172 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %172, i32 0, i32 3
  %174 = load %struct.TYPE_35__*, %struct.TYPE_35__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32*, i32** %8, align 8
  %178 = call i32 @svn_io_file_get_offset(i64* %171, i32 %176, i32* %177)
  %179 = call i32 @SVN_ERR(i32 %178)
  %180 = load i64, i64* %14, align 8
  %181 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %182 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = sub nsw i64 %183, %180
  store i64 %184, i64* %182, align 8
  %185 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %185, i32 0, i32 4
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %189 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %188, i32 0, i32 4
  store i64 %187, i64* %189, align 8
  %190 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %5, align 8
  %191 = load %struct.TYPE_33__*, %struct.TYPE_33__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %195 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %194, i32 0, i32 0
  store i64 %193, i64* %195, align 8
  %196 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %5, align 8
  %197 = load %struct.TYPE_33__*, %struct.TYPE_33__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %197, i32 0, i32 1
  %199 = load i8*, i8** %198, align 8
  %200 = bitcast i8* %199 to i32**
  %201 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %202 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %201, i32 0, i32 3
  store i32** %200, i32*** %202, align 8
  %203 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %204 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @SVN_FS_FS__CHANGES_BLOCK_SIZE, align 8
  %207 = icmp slt i64 %205, %206
  %208 = zext i1 %207 to i32
  %209 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %210 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %209, i32 0, i32 1
  store i32 %208, i32* %210, align 8
  %211 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %212 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %223

215:                                              ; preds = %140
  %216 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %217 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %220 = load i32*, i32** %8, align 8
  %221 = call i32 @svn_cache__set(i64 %218, %struct.TYPE_31__* %13, %struct.TYPE_29__* %219, i32* %220)
  %222 = call i32 @SVN_ERR(i32 %221)
  br label %223

223:                                              ; preds = %215, %140
  br label %224

224:                                              ; preds = %223, %103
  br label %225

225:                                              ; preds = %224, %43
  %226 = load i64, i64* %10, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %251

228:                                              ; preds = %225
  %229 = load i32*, i32** %7, align 8
  %230 = call %struct.TYPE_33__* @apr_array_make(i32* %229, i32 0, i32 8)
  %231 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %5, align 8
  store %struct.TYPE_33__* %230, %struct.TYPE_33__** %231, align 8
  %232 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %233 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %232, i32 0, i32 3
  %234 = load i32**, i32*** %233, align 8
  %235 = bitcast i32** %234 to i8*
  %236 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %5, align 8
  %237 = load %struct.TYPE_33__*, %struct.TYPE_33__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %237, i32 0, i32 1
  store i8* %235, i8** %238, align 8
  %239 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %240 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %5, align 8
  %243 = load %struct.TYPE_33__*, %struct.TYPE_33__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %243, i32 0, i32 0
  store i64 %241, i64* %244, align 8
  %245 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %246 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %5, align 8
  %249 = load %struct.TYPE_33__*, %struct.TYPE_33__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %249, i32 0, i32 2
  store i64 %247, i64* %250, align 8
  br label %251

251:                                              ; preds = %228, %225
  %252 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %5, align 8
  %253 = load %struct.TYPE_33__*, %struct.TYPE_33__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %256, i32 0, i32 5
  %258 = load i32, i32* %257, align 8
  %259 = sext i32 %258 to i64
  %260 = add nsw i64 %259, %255
  %261 = trunc i64 %260 to i32
  store i32 %261, i32* %257, align 8
  %262 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %263 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %262, i32 0, i32 2
  %264 = load i64, i64* %263, align 8
  %265 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %265, i32 0, i32 4
  store i64 %264, i64* %266, align 8
  %267 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %268 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %270, i32 0, i32 0
  store i32 %269, i32* %271, align 8
  %272 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %289

276:                                              ; preds = %251
  %277 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %277, i32 0, i32 3
  %279 = load %struct.TYPE_35__*, %struct.TYPE_35__** %278, align 8
  %280 = icmp ne %struct.TYPE_35__* %279, null
  br i1 %280, label %281, label %289

281:                                              ; preds = %276
  %282 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %283 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %282, i32 0, i32 3
  %284 = load %struct.TYPE_35__*, %struct.TYPE_35__** %283, align 8
  %285 = call i32 @svn_fs_fs__close_revision_file(%struct.TYPE_35__* %284)
  %286 = call i32 @SVN_ERR(i32 %285)
  %287 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %287, i32 0, i32 3
  store %struct.TYPE_35__* null, %struct.TYPE_35__** %288, align 8
  br label %289

289:                                              ; preds = %281, %276, %251
  %290 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %290, i32 0, i32 2
  %292 = load %struct.TYPE_34__*, %struct.TYPE_34__** %291, align 8
  %293 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = load i64, i64* %9, align 8
  %297 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %5, align 8
  %298 = load %struct.TYPE_33__*, %struct.TYPE_33__** %297, align 8
  %299 = load i32, i32* @SVN_FS_FS__ITEM_TYPE_CHANGES, align 4
  %300 = load i32*, i32** %8, align 8
  %301 = call i32 @dbg_log_access(%struct.TYPE_34__* %292, i32 %295, i64 %296, %struct.TYPE_33__* %298, i32 %299, i32* %300)
  %302 = call i32 @SVN_ERR(i32 %301)
  %303 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %303
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cache__get(i8**, i64*, i64, %struct.TYPE_31__*, i32*) #1

declare dso_local i32 @svn_fs_fs__ensure_revision_exists(i32, %struct.TYPE_34__*, i32*) #1

declare dso_local i32 @svn_fs_fs__open_pack_or_rev_file(%struct.TYPE_35__**, %struct.TYPE_34__*, i32, i32, i32*) #1

declare dso_local i64 @use_block_read(%struct.TYPE_34__*) #1

declare dso_local i32 @block_read(i32*, %struct.TYPE_34__*, i32, i64, %struct.TYPE_35__*, i32*, i32*) #1

declare dso_local i64 @svn_fs_fs__use_log_addressing(%struct.TYPE_34__*) #1

declare dso_local i32 @svn_fs_fs__item_offset(i64*, %struct.TYPE_34__*, %struct.TYPE_35__*, i32, i32*, i64, i32*) #1

declare dso_local i32 @get_root_changes_offset(i32*, i64*, %struct.TYPE_35__*, %struct.TYPE_34__*, i32, i32*) #1

declare dso_local i32 @aligned_seek(%struct.TYPE_34__*, i32, i32*, i64, i32*) #1

declare dso_local i32 @svn_fs_fs__read_changes(%struct.TYPE_33__**, i32, i64, i32*, i32*) #1

declare dso_local %struct.TYPE_29__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @svn_io_file_get_offset(i64*, i32, i32*) #1

declare dso_local i32 @svn_cache__set(i64, %struct.TYPE_31__*, %struct.TYPE_29__*, i32*) #1

declare dso_local %struct.TYPE_33__* @apr_array_make(i32*, i32, i32) #1

declare dso_local i32 @svn_fs_fs__close_revision_file(%struct.TYPE_35__*) #1

declare dso_local i32 @dbg_log_access(%struct.TYPE_34__*, i32, i64, %struct.TYPE_33__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
