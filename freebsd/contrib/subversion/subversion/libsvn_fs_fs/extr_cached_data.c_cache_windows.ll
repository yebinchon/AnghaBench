; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_cached_data.c_cache_windows.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_cached_data.c_cache_windows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, %struct.TYPE_17__*, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i8* }

@FALSE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@get_raw_window_end = common dso_local global i32 0, align 4
@get_txdelta_window_end = common dso_local global i32 0, align 4
@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Reading one svndiff window read beyond the end of the representation\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_21__*, i32, i32*)* @cache_windows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @cache_windows(i32* %0, %struct.TYPE_21__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_19__, align 4
  %14 = alloca %struct.TYPE_20__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = call i32* @svn_pool_create(i32* %18)
  store i32* %19, i32** %10, align 8
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = call i32 @auto_read_diff_version(%struct.TYPE_21__* %20, i32* %21)
  %23 = call i32 @SVN_ERR(i32 %22)
  br label %24

24:                                               ; preds = %167, %4
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %172

32:                                               ; preds = %24
  %33 = load i64, i64* @FALSE, align 8
  store i64 %33, i64* %12, align 8
  %34 = bitcast %struct.TYPE_19__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %34, i8 0, i64 4, i1 false)
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @svn_pool_clear(i32* %35)
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, -1
  br i1 %38, label %39, label %53

39:                                               ; preds = %32
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %42, %45
  %47 = load i32, i32* %8, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %39
  %50 = load i32*, i32** %10, align 8
  %51 = call i32 @svn_pool_destroy(i32* %50)
  %52 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %52, i32** %5, align 8
  br label %176

53:                                               ; preds = %39, %32
  %54 = bitcast i32* %11 to i8**
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %59 = call %struct.TYPE_19__* @get_window_key(%struct.TYPE_19__* %13, %struct.TYPE_21__* %58)
  %60 = load i32, i32* @get_raw_window_end, align 4
  %61 = load i32*, i32** %10, align 8
  %62 = call i32 @svn_cache__get_partial(i8** %54, i64* %12, i32 %57, %struct.TYPE_19__* %59, i32 %60, i32* null, i32* %61)
  %63 = call i32 @SVN_ERR(i32 %62)
  %64 = load i64, i64* %12, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %75, label %66

66:                                               ; preds = %53
  %67 = bitcast i32* %11 to i8**
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @get_txdelta_window_end, align 4
  %72 = load i32*, i32** %10, align 8
  %73 = call i32 @svn_cache__get_partial(i8** %67, i64* %12, i32 %70, %struct.TYPE_19__* %13, i32 %71, i32* null, i32* %72)
  %74 = call i32 @SVN_ERR(i32 %73)
  br label %75

75:                                               ; preds = %66, %53
  %76 = load i64, i64* %12, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  br label %155

82:                                               ; preds = %75
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %85, %88
  store i32 %89, i32* %15, align 4
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %91 = load i32, i32* %15, align 4
  %92 = load i32*, i32** %10, align 8
  %93 = call i32 @rs_aligned_seek(%struct.TYPE_21__* %90, i32* null, i32 %91, i32* %92)
  %94 = call i32 @SVN_ERR(i32 %93)
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 5
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %10, align 8
  %103 = call i32 @svn_txdelta__read_raw_window_len(i32* %16, i32 %101, i32* %102)
  %104 = call i32 @SVN_ERR(i32 %103)
  %105 = load i32*, i32** %10, align 8
  %106 = load i32, i32* %16, align 4
  %107 = add nsw i32 %106, 1
  %108 = call i8* @apr_palloc(i32* %105, i32 %107)
  store i8* %108, i8** %17, align 8
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %110 = load i32, i32* %15, align 4
  %111 = load i32*, i32** %10, align 8
  %112 = call i32 @rs_aligned_seek(%struct.TYPE_21__* %109, i32* null, i32 %110, i32* %111)
  %113 = call i32 @SVN_ERR(i32 %112)
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 5
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i8*, i8** %17, align 8
  %122 = load i32, i32* %16, align 4
  %123 = load i32*, i32** %10, align 8
  %124 = call i32 @svn_io_file_read_full2(i32 %120, i8* %121, i32 %122, i32* null, i32* null, i32* %123)
  %125 = call i32 @SVN_ERR(i32 %124)
  %126 = load i8*, i8** %17, align 8
  %127 = load i32, i32* %16, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %126, i64 %128
  store i8 0, i8* %129, align 1
  %130 = load i32, i32* %16, align 4
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, %130
  store i32 %134, i32* %132, align 8
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  store i32 %137, i32* %138, align 8
  %139 = load i32, i32* %16, align 4
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load i8*, i8** %17, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 1
  store i8* %142, i8** %144, align 8
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 1
  store i32 %147, i32* %148, align 4
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = load i32*, i32** %10, align 8
  %153 = call i32 @svn_cache__set(i32 %151, %struct.TYPE_19__* %13, %struct.TYPE_20__* %14, i32* %152)
  %154 = call i32 @SVN_ERR(i32 %153)
  br label %155

155:                                              ; preds = %82, %78
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = icmp sgt i32 %158, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %155
  %164 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %165 = call i32 @_(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %166 = call i32* @svn_error_create(i32 %164, i32* null, i32 %165)
  store i32* %166, i32** %5, align 8
  br label %176

167:                                              ; preds = %155
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %169, align 8
  br label %24

172:                                              ; preds = %24
  %173 = load i32*, i32** %10, align 8
  %174 = call i32 @svn_pool_destroy(i32* %173)
  %175 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %175, i32** %5, align 8
  br label %176

176:                                              ; preds = %172, %163, %49
  %177 = load i32*, i32** %5, align 8
  ret i32* %177
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @auto_read_diff_version(%struct.TYPE_21__*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32 @svn_cache__get_partial(i8**, i64*, i32, %struct.TYPE_19__*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_19__* @get_window_key(%struct.TYPE_19__*, %struct.TYPE_21__*) #1

declare dso_local i32 @rs_aligned_seek(%struct.TYPE_21__*, i32*, i32, i32*) #1

declare dso_local i32 @svn_txdelta__read_raw_window_len(i32*, i32, i32*) #1

declare dso_local i8* @apr_palloc(i32*, i32) #1

declare dso_local i32 @svn_io_file_read_full2(i32, i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @svn_cache__set(i32, %struct.TYPE_19__*, %struct.TYPE_20__*, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
