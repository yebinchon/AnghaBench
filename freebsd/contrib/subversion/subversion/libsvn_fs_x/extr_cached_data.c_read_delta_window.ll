; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_read_delta_window.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_read_delta_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, i64, i64, i32, %struct.TYPE_11__, %struct.TYPE_12__*, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32* }

@SVN_FS_X__ITEM_TYPE_ANY_REP = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Reading one svndiff window read beyond the end of the representation\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32, %struct.TYPE_10__*, i32*, i32*)* @read_delta_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_delta_window(i32** %0, i32 %1, %struct.TYPE_10__* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store i32** %0, i32*** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %5
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @svn_fs_x__is_revision(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 7
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %31, %24, %5
  %37 = phi i1 [ false, %24 ], [ false, %5 ], [ %35, %31 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %18, align 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = icmp sle i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @SVN_ERR_ASSERT(i32 %44)
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 6
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 5
  %53 = load i32, i32* @SVN_FS_X__ITEM_TYPE_ANY_REP, align 4
  %54 = load i32*, i32** %11, align 8
  %55 = call i32 @dbg__log_access(i32 %50, %struct.TYPE_11__* %52, i32* null, i32 %53, i32* %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  %57 = load i32, i32* %18, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %36
  %60 = load i32**, i32*** %7, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32*, i32** %10, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = call i32 @get_cached_window(i32** %60, %struct.TYPE_10__* %61, i32 %62, i32* %12, i32* %63, i32* %64)
  %66 = call i32 @SVN_ERR(i32 %65)
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %59
  %70 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %70, i32** %6, align 8
  br label %231

71:                                               ; preds = %59
  br label %72

72:                                               ; preds = %71, %36
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 6
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %74, align 8
  %76 = call i32 @auto_open_shared_file(%struct.TYPE_12__* %75)
  %77 = call i32 @SVN_ERR(i32 %76)
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 6
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  store i32* %82, i32** %17, align 8
  %83 = load i32, i32* %18, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %110

85:                                               ; preds = %72
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 6
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 5
  %93 = load i32*, i32** %17, align 8
  %94 = load i32*, i32** %10, align 8
  %95 = load i32*, i32** %11, align 8
  %96 = call i32 @block_read(i32* null, i32 %90, %struct.TYPE_11__* %92, i32* %93, i32* null, i32* %94, i32* %95)
  %97 = call i32 @SVN_ERR(i32 %96)
  %98 = load i32**, i32*** %7, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %100 = load i32, i32* %8, align 4
  %101 = load i32*, i32** %10, align 8
  %102 = load i32*, i32** %11, align 8
  %103 = call i32 @get_cached_window(i32** %98, %struct.TYPE_10__* %99, i32 %100, i32* %12, i32* %101, i32* %102)
  %104 = call i32 @SVN_ERR(i32 %103)
  %105 = load i32, i32* %12, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %85
  %108 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %108, i32** %6, align 8
  br label %231

109:                                              ; preds = %85
  br label %110

110:                                              ; preds = %109, %72
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %112 = load i32*, i32** %11, align 8
  %113 = call i32 @auto_set_start_offset(%struct.TYPE_10__* %111, i32* %112)
  %114 = call i32 @SVN_ERR(i32 %113)
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %116 = load i32*, i32** %11, align 8
  %117 = call i32 @auto_read_diff_version(%struct.TYPE_10__* %115, i32* %116)
  %118 = call i32 @SVN_ERR(i32 %117)
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %121, %124
  %126 = inttoptr i64 %125 to i8*
  store i8* %126, i8** %13, align 8
  %127 = load i32*, i32** %17, align 8
  %128 = load i8*, i8** %13, align 8
  %129 = call i32 @svn_fs_x__rev_file_seek(i32* %127, i32* null, i8* %128)
  %130 = call i32 @SVN_ERR(i32 %129)
  %131 = load i32*, i32** %11, align 8
  %132 = call i32* @svn_pool_create(i32* %131)
  store i32* %132, i32** %15, align 8
  br label %133

133:                                              ; preds = %180, %110
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %8, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %181

139:                                              ; preds = %133
  %140 = load i32*, i32** %15, align 8
  %141 = call i32 @svn_pool_clear(i32* %140)
  %142 = load i32*, i32** %17, align 8
  %143 = call i32 @svn_fs_x__rev_file_get(i32** %19, i32* %142)
  %144 = call i32 @SVN_ERR(i32 %143)
  %145 = load i32*, i32** %19, align 8
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = load i32*, i32** %15, align 8
  %150 = call i32 @svn_txdelta_skip_svndiff_window(i32* %145, i32 %148, i32* %149)
  %151 = call i32 @SVN_ERR(i32 %150)
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 8
  %156 = load i32*, i32** %19, align 8
  %157 = load i32*, i32** %15, align 8
  %158 = call i32 @svn_io_file_get_offset(i8** %13, i32* %156, i32* %157)
  %159 = call i32 @SVN_ERR(i32 %158)
  %160 = load i8*, i8** %13, align 8
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = sub i64 0, %163
  %165 = getelementptr i8, i8* %160, i64 %164
  %166 = ptrtoint i8* %165 to i64
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 2
  store i64 %166, i64* %168, align 8
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = icmp sge i64 %171, %174
  br i1 %175, label %176, label %180

176:                                              ; preds = %139
  %177 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %178 = call i32 @_(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %179 = call i32* @svn_error_create(i32 %177, i32* null, i32 %178)
  store i32* %179, i32** %6, align 8
  br label %231

180:                                              ; preds = %139
  br label %133

181:                                              ; preds = %133
  %182 = load i32*, i32** %15, align 8
  %183 = call i32 @svn_pool_destroy(i32* %182)
  %184 = load i32*, i32** %17, align 8
  %185 = call i32 @svn_fs_x__rev_file_stream(i32** %16, i32* %184)
  %186 = call i32 @SVN_ERR(i32 %185)
  %187 = load i32**, i32*** %7, align 8
  %188 = load i32*, i32** %16, align 8
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = load i32*, i32** %10, align 8
  %193 = call i32 @svn_txdelta_read_svndiff_window(i32** %187, i32* %188, i32 %191, i32* %192)
  %194 = call i32 @SVN_ERR(i32 %193)
  %195 = load i32*, i32** %17, align 8
  %196 = call i32 @svn_fs_x__rev_file_offset(i8** %14, i32* %195)
  %197 = call i32 @SVN_ERR(i32 %196)
  %198 = load i8*, i8** %14, align 8
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = sub i64 0, %201
  %203 = getelementptr i8, i8* %198, i64 %202
  %204 = ptrtoint i8* %203 to i64
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 2
  store i64 %204, i64* %206, align 8
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 3
  %212 = load i64, i64* %211, align 8
  %213 = icmp sgt i64 %209, %212
  br i1 %213, label %214, label %218

214:                                              ; preds = %181
  %215 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %216 = call i32 @_(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %217 = call i32* @svn_error_create(i32 %215, i32* null, i32 %216)
  store i32* %217, i32** %6, align 8
  br label %231

218:                                              ; preds = %181
  %219 = load i32, i32* %18, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %229

221:                                              ; preds = %218
  %222 = load i32**, i32*** %7, align 8
  %223 = load i32*, i32** %222, align 8
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %225 = load i8*, i8** %13, align 8
  %226 = load i32*, i32** %11, align 8
  %227 = call i32 @set_cached_window(i32* %223, %struct.TYPE_10__* %224, i8* %225, i32* %226)
  %228 = call i32 @SVN_ERR(i32 %227)
  br label %229

229:                                              ; preds = %221, %218
  %230 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %230, i32** %6, align 8
  br label %231

231:                                              ; preds = %229, %214, %176, %107, %69
  %232 = load i32*, i32** %6, align 8
  ret i32* %232
}

declare dso_local i64 @svn_fs_x__is_revision(i32) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @dbg__log_access(i32, %struct.TYPE_11__*, i32*, i32, i32*) #1

declare dso_local i32 @get_cached_window(i32**, %struct.TYPE_10__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @auto_open_shared_file(%struct.TYPE_12__*) #1

declare dso_local i32 @block_read(i32*, i32, %struct.TYPE_11__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @auto_set_start_offset(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @auto_read_diff_version(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @svn_fs_x__rev_file_seek(i32*, i32*, i8*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @svn_fs_x__rev_file_get(i32**, i32*) #1

declare dso_local i32 @svn_txdelta_skip_svndiff_window(i32*, i32, i32*) #1

declare dso_local i32 @svn_io_file_get_offset(i8**, i32*, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32 @svn_fs_x__rev_file_stream(i32**, i32*) #1

declare dso_local i32 @svn_txdelta_read_svndiff_window(i32**, i32*, i32, i32*) #1

declare dso_local i32 @svn_fs_x__rev_file_offset(i8**, i32*) #1

declare dso_local i32 @set_cached_window(i32*, %struct.TYPE_10__*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
