; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_cached_data.c_read_delta_window.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_cached_data.c_read_delta_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, i64, i64, i32, i32, %struct.TYPE_11__*, i32, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@SVN_FS_FS__ITEM_TYPE_ANY_REP = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Reading one svndiff window read beyond the end of the representation\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32, %struct.TYPE_12__*, i32*, i32*)* @read_delta_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_delta_window(i32** %0, i32 %1, %struct.TYPE_12__* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  store i32** %0, i32*** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = icmp sle i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @SVN_ERR_ASSERT(i32 %21)
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 6
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @SVN_FS_FS__ITEM_TYPE_ANY_REP, align 4
  %35 = load i32*, i32** %11, align 8
  %36 = call i32 @dbg_log_access(i32 %27, i32 %30, i32 %33, i32* null, i32 %34, i32* %35)
  %37 = call i32 @SVN_ERR(i32 %36)
  %38 = load i32**, i32*** %7, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32*, i32** %10, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = call i32 @get_cached_window(i32** %38, %struct.TYPE_12__* %39, i32 %40, i64* %12, i32* %41, i32* %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load i64, i64* %12, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %5
  %48 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %48, i32** %6, align 8
  br label %242

49:                                               ; preds = %5
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 6
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = call i32 @auto_open_shared_file(%struct.TYPE_11__* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %111

59:                                               ; preds = %49
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @SVN_IS_VALID_REVNUM(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %111

65:                                               ; preds = %59
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 6
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @use_block_read(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %111

73:                                               ; preds = %65
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 8
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %111

78:                                               ; preds = %73
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 6
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 6
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %93, align 8
  %95 = load i32*, i32** %10, align 8
  %96 = load i32*, i32** %11, align 8
  %97 = call i32 @block_read(i32* null, i32 %83, i32 %86, i32 %89, %struct.TYPE_13__* %94, i32* %95, i32* %96)
  %98 = call i32 @SVN_ERR(i32 %97)
  %99 = load i32**, i32*** %7, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %101 = load i32, i32* %8, align 4
  %102 = load i32*, i32** %10, align 8
  %103 = load i32*, i32** %11, align 8
  %104 = call i32 @get_cached_window(i32** %99, %struct.TYPE_12__* %100, i32 %101, i64* %12, i32* %102, i32* %103)
  %105 = call i32 @SVN_ERR(i32 %104)
  %106 = load i64, i64* %12, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %78
  %109 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %109, i32** %6, align 8
  br label %242

110:                                              ; preds = %78
  br label %111

111:                                              ; preds = %110, %73, %65, %59, %49
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %113 = load i32*, i32** %11, align 8
  %114 = call i32 @auto_set_start_offset(%struct.TYPE_12__* %112, i32* %113)
  %115 = call i32 @SVN_ERR(i32 %114)
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %117 = load i32*, i32** %11, align 8
  %118 = call i32 @auto_read_diff_version(%struct.TYPE_12__* %116, i32* %117)
  %119 = call i32 @SVN_ERR(i32 %118)
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %122, %125
  %127 = inttoptr i64 %126 to i8*
  store i8* %127, i8** %13, align 8
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %129 = load i8*, i8** %13, align 8
  %130 = load i32*, i32** %11, align 8
  %131 = call i32 @rs_aligned_seek(%struct.TYPE_12__* %128, i32* null, i8* %129, i32* %130)
  %132 = call i32 @SVN_ERR(i32 %131)
  %133 = load i32*, i32** %11, align 8
  %134 = call i32* @svn_pool_create(i32* %133)
  store i32* %134, i32** %15, align 8
  br label %135

135:                                              ; preds = %185, %111
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %8, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %186

141:                                              ; preds = %135
  %142 = load i32*, i32** %15, align 8
  %143 = call i32 @svn_pool_clear(i32* %142)
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 6
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 4
  %154 = load i32*, i32** %15, align 8
  %155 = call i32 @svn_txdelta_skip_svndiff_window(i32 %150, i32 %153, i32* %154)
  %156 = call i32 @SVN_ERR(i32 %155)
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %158, align 8
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %162 = load i32*, i32** %15, align 8
  %163 = call i32 @get_file_offset(i8** %13, %struct.TYPE_12__* %161, i32* %162)
  %164 = call i32 @SVN_ERR(i32 %163)
  %165 = load i8*, i8** %13, align 8
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = sub i64 0, %168
  %170 = getelementptr i8, i8* %165, i64 %169
  %171 = ptrtoint i8* %170 to i64
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 2
  store i64 %171, i64* %173, align 8
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = icmp sge i64 %176, %179
  br i1 %180, label %181, label %185

181:                                              ; preds = %141
  %182 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %183 = call i32 @_(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %184 = call i32* @svn_error_create(i32 %182, i32* null, i32 %183)
  store i32* %184, i32** %6, align 8
  br label %242

185:                                              ; preds = %141
  br label %135

186:                                              ; preds = %135
  %187 = load i32*, i32** %15, align 8
  %188 = call i32 @svn_pool_destroy(i32* %187)
  %189 = load i32**, i32*** %7, align 8
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 6
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 4
  %200 = load i32*, i32** %10, align 8
  %201 = call i32 @svn_txdelta_read_svndiff_window(i32** %189, i32 %196, i32 %199, i32* %200)
  %202 = call i32 @SVN_ERR(i32 %201)
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %204 = load i32*, i32** %11, align 8
  %205 = call i32 @get_file_offset(i8** %14, %struct.TYPE_12__* %203, i32* %204)
  %206 = call i32 @SVN_ERR(i32 %205)
  %207 = load i8*, i8** %14, align 8
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = sub i64 0, %210
  %212 = getelementptr i8, i8* %207, i64 %211
  %213 = ptrtoint i8* %212 to i64
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 2
  store i64 %213, i64* %215, align 8
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 3
  %221 = load i64, i64* %220, align 8
  %222 = icmp sgt i64 %218, %221
  br i1 %222, label %223, label %227

223:                                              ; preds = %186
  %224 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %225 = call i32 @_(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %226 = call i32* @svn_error_create(i32 %224, i32* null, i32 %225)
  store i32* %226, i32** %6, align 8
  br label %242

227:                                              ; preds = %186
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 8
  %231 = call i64 @SVN_IS_VALID_REVNUM(i32 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %240

233:                                              ; preds = %227
  %234 = load i32**, i32*** %7, align 8
  %235 = load i32*, i32** %234, align 8
  %236 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %237 = load i32*, i32** %11, align 8
  %238 = call i32 @set_cached_window(i32* %235, %struct.TYPE_12__* %236, i32* %237)
  %239 = call i32 @SVN_ERR(i32 %238)
  br label %240

240:                                              ; preds = %233, %227
  %241 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %241, i32** %6, align 8
  br label %242

242:                                              ; preds = %240, %223, %181, %108, %47
  %243 = load i32*, i32** %6, align 8
  ret i32* %243
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @dbg_log_access(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @get_cached_window(i32**, %struct.TYPE_12__*, i32, i64*, i32*, i32*) #1

declare dso_local i32 @auto_open_shared_file(%struct.TYPE_11__*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i64 @use_block_read(i32) #1

declare dso_local i32 @block_read(i32*, i32, i32, i32, %struct.TYPE_13__*, i32*, i32*) #1

declare dso_local i32 @auto_set_start_offset(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @auto_read_diff_version(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @rs_aligned_seek(%struct.TYPE_12__*, i32*, i8*, i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @svn_txdelta_skip_svndiff_window(i32, i32, i32*) #1

declare dso_local i32 @get_file_offset(i8**, %struct.TYPE_12__*, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32 @svn_txdelta_read_svndiff_window(i32**, i32, i32, i32*) #1

declare dso_local i32 @set_cached_window(i32*, %struct.TYPE_12__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
