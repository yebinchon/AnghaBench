; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_cached_data.c_block_read_windows.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_cached_data.c_block_read_windows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i64 }
%struct.TYPE_25__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32, i32, i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_28__ = type { i32, i64, i32, i64, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { i64, i64* }

@svn_fs_fs__rep_plain = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_27__*, %struct.TYPE_25__*, %struct.TYPE_26__*, i32*, i64, i32*, i32*)* @block_read_windows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @block_read_windows(%struct.TYPE_27__* %0, %struct.TYPE_25__* %1, %struct.TYPE_26__* %2, i32* %3, i64 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_29__*, align 8
  %17 = alloca %struct.TYPE_28__, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_23__, align 4
  %20 = alloca %struct.TYPE_24__*, align 8
  %21 = alloca i64, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %9, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %10, align 8
  store %struct.TYPE_26__* %2, %struct.TYPE_26__** %11, align 8
  store i32* %3, i32** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_29__*, %struct.TYPE_29__** %23, align 8
  store %struct.TYPE_29__* %24, %struct.TYPE_29__** %16, align 8
  %25 = bitcast %struct.TYPE_28__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 40, i1 false)
  %26 = bitcast %struct.TYPE_23__* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %26, i8 0, i64 4, i1 false)
  %27 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @svn_fs_fs__rep_plain, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %7
  %33 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %34 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %32
  %38 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %39 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %37, %7
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @svn_fs_fs__rep_plain, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %50 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %48, %37, %32
  %54 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %54, i32** %8, align 8
  br label %135

55:                                               ; preds = %48, %42
  %56 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %57 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = load i32*, i32** %14, align 8
  %61 = call i32 @init_rep_state(%struct.TYPE_28__* %17, %struct.TYPE_27__* %56, %struct.TYPE_25__* %57, %struct.TYPE_26__* %58, i32* %59, i32* %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %64, %66
  store i64 %67, i64* %18, align 8
  %68 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @svn_fs_fs__rep_plain, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %127

73:                                               ; preds = %55
  %74 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @get_window_key(%struct.TYPE_23__* %19, %struct.TYPE_28__* %17)
  %77 = load i32*, i32** %15, align 8
  %78 = call i32 @svn_cache__has_key(i64* %21, i32 %75, i32 %76, i32* %77)
  %79 = call i32 @SVN_ERR(i32 %78)
  %80 = load i64, i64* %21, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %73
  %83 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %83, i32** %8, align 8
  br label %135

84:                                               ; preds = %73
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i64, i64* %18, align 8
  %90 = load i32*, i32** %15, align 8
  %91 = call i32 @aligned_seek(%struct.TYPE_25__* %85, i32 %88, i32* null, i64 %89, i32* %90)
  %92 = call i32 @SVN_ERR(i32 %91)
  %93 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32*, i32** %14, align 8
  %96 = call %struct.TYPE_24__* @svn_stringbuf_create_ensure(i32 %94, i32* %95)
  store %struct.TYPE_24__* %96, %struct.TYPE_24__** %20, align 8
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %100, i32 0, i32 1
  %102 = load i64*, i64** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 0
  %107 = load i32*, i32** %14, align 8
  %108 = call i32 @svn_io_file_read_full2(i32 %99, i64* %102, i32 %104, i64* %106, i32* null, i32* %107)
  %109 = call i32 @SVN_ERR(i32 %108)
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %110, i32 0, i32 1
  %112 = load i64*, i64** %111, align 8
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %114 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds i64, i64* %112, i64 %115
  store i64 0, i64* %116, align 8
  %117 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %121, %119
  store i64 %122, i64* %120, align 8
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %124 = load i32*, i32** %15, align 8
  %125 = call i32 @set_cached_combined_window(%struct.TYPE_24__* %123, %struct.TYPE_28__* %17, i32* %124)
  %126 = call i32 @SVN_ERR(i32 %125)
  br label %133

127:                                              ; preds = %55
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %129 = load i64, i64* %13, align 8
  %130 = load i32*, i32** %15, align 8
  %131 = call i32 @cache_windows(%struct.TYPE_25__* %128, %struct.TYPE_28__* %17, i64 %129, i32* %130)
  %132 = call i32 @SVN_ERR(i32 %131)
  br label %133

133:                                              ; preds = %127, %84
  %134 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %134, i32** %8, align 8
  br label %135

135:                                              ; preds = %133, %82, %53
  %136 = load i32*, i32** %8, align 8
  ret i32* %136
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @SVN_ERR(i32) #2

declare dso_local i32 @init_rep_state(%struct.TYPE_28__*, %struct.TYPE_27__*, %struct.TYPE_25__*, %struct.TYPE_26__*, i32*, i32*) #2

declare dso_local i32 @svn_cache__has_key(i64*, i32, i32, i32*) #2

declare dso_local i32 @get_window_key(%struct.TYPE_23__*, %struct.TYPE_28__*) #2

declare dso_local i32 @aligned_seek(%struct.TYPE_25__*, i32, i32*, i64, i32*) #2

declare dso_local %struct.TYPE_24__* @svn_stringbuf_create_ensure(i32, i32*) #2

declare dso_local i32 @svn_io_file_read_full2(i32, i64*, i32, i64*, i32*, i32*) #2

declare dso_local i32 @set_cached_combined_window(%struct.TYPE_24__*, %struct.TYPE_28__*, i32*) #2

declare dso_local i32 @cache_windows(%struct.TYPE_25__*, %struct.TYPE_28__*, i64, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
