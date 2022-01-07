; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_cache_windows.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_cache_windows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_13__ = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Reading one svndiff window read beyond the end of the representation\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64*, i32*, %struct.TYPE_14__*, i32, i32*)* @cache_windows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @cache_windows(i64* %0, i32* %1, %struct.TYPE_14__* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i64* %0, i64** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = call i32* @svn_pool_create(i32* %21)
  store i32* %22, i32** %12, align 8
  %23 = load i64*, i64** %7, align 8
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %144, %5
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %149

32:                                               ; preds = %24
  %33 = load i64, i64* @FALSE, align 8
  store i64 %33, i64* %13, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = call i32 @svn_pool_clear(i32* %34)
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, -1
  br i1 %37, label %38, label %52

38:                                               ; preds = %32
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %41, %44
  %46 = load i32, i32* %10, align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %38
  %49 = load i32*, i32** %12, align 8
  %50 = call i32 @svn_pool_destroy(i32* %49)
  %51 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %51, i32** %6, align 8
  br label %153

52:                                               ; preds = %38, %32
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = call i32 @get_cached_window_sizes(%struct.TYPE_12__** %14, %struct.TYPE_14__* %53, i64* %13, i32* %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  %57 = load i64, i64* %13, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %52
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64*, i64** %7, align 8
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, %62
  store i64 %65, i64* %63, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %68
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %70, align 8
  br label %144

75:                                               ; preds = %52
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 4
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  store i32* %80, i32** %16, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %83, %86
  store i32 %87, i32* %18, align 4
  %88 = load i32*, i32** %16, align 8
  %89 = call i32 @svn_fs_x__rev_file_stream(i32** %17, i32* %88)
  %90 = call i32 @SVN_ERR(i32 %89)
  %91 = load i32*, i32** %16, align 8
  %92 = load i32, i32* %18, align 4
  %93 = call i32 @svn_fs_x__rev_file_seek(i32* %91, i32* %20, i32 %92)
  %94 = call i32 @SVN_ERR(i32 %93)
  %95 = load i32*, i32** %17, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  %99 = load i32*, i32** %12, align 8
  %100 = call i32 @svn_txdelta_read_svndiff_window(%struct.TYPE_13__** %15, i32* %95, i32 %98, i32* %99)
  %101 = call i32 @SVN_ERR(i32 %100)
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64*, i64** %7, align 8
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %106, %104
  store i64 %107, i64* %105, align 8
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 4
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @svn_fs_x__rev_file_offset(i32* %19, i32* %112)
  %114 = call i32 @SVN_ERR(i32 %113)
  %115 = load i32, i32* %19, align 4
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = sub nsw i32 %115, %118
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp sgt i32 %124, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %75
  %130 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %131 = call i32 @_(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %132 = call i32* @svn_error_create(i32 %130, i32* null, i32 %131)
  store i32* %132, i32** %6, align 8
  br label %153

133:                                              ; preds = %75
  %134 = load i64, i64* %13, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %143, label %136

136:                                              ; preds = %133
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %139 = load i32, i32* %18, align 4
  %140 = load i32*, i32** %12, align 8
  %141 = call i32 @set_cached_window(%struct.TYPE_13__* %137, %struct.TYPE_14__* %138, i32 %139, i32* %140)
  %142 = call i32 @SVN_ERR(i32 %141)
  br label %143

143:                                              ; preds = %136, %133
  br label %144

144:                                              ; preds = %143, %59
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 4
  br label %24

149:                                              ; preds = %24
  %150 = load i32*, i32** %12, align 8
  %151 = call i32 @svn_pool_destroy(i32* %150)
  %152 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %152, i32** %6, align 8
  br label %153

153:                                              ; preds = %149, %129, %48
  %154 = load i32*, i32** %6, align 8
  ret i32* %154
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_cached_window_sizes(%struct.TYPE_12__**, %struct.TYPE_14__*, i64*, i32*) #1

declare dso_local i32 @svn_fs_x__rev_file_stream(i32**, i32*) #1

declare dso_local i32 @svn_fs_x__rev_file_seek(i32*, i32*, i32) #1

declare dso_local i32 @svn_txdelta_read_svndiff_window(%struct.TYPE_13__**, i32*, i32, i32*) #1

declare dso_local i32 @svn_fs_x__rev_file_offset(i32*, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @set_cached_window(%struct.TYPE_13__*, %struct.TYPE_14__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
