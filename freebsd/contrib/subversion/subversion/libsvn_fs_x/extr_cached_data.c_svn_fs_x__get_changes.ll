; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_svn_fs_x__get_changes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_svn_fs_x__get_changes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i8*, i64, i64 }
%struct.TYPE_29__ = type { %struct.TYPE_31__*, i64, i32, i32, i32, i32 }
%struct.TYPE_31__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_24__ = type { i64, i32 }
%struct.TYPE_28__ = type { i32, i32, i32* }
%struct.TYPE_27__ = type { i64, i64, i32, i32 }

@SVN_FS_X__ITEM_INDEX_CHANGES = common dso_local global i32 0, align 4
@svn_fs_x__changes_get_list_func = common dso_local global i32 0, align 4
@SVN_FS_X__ITEM_TYPE_CHANGES = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__get_changes(%struct.TYPE_30__** %0, %struct.TYPE_29__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_30__**, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca %struct.TYPE_25__, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_24__, align 8
  %14 = alloca %struct.TYPE_28__, align 8
  %15 = alloca %struct.TYPE_27__*, align 8
  %16 = alloca %struct.TYPE_24__, align 8
  store %struct.TYPE_30__** %0, %struct.TYPE_30__*** %5, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %17 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  store %struct.TYPE_26__* %21, %struct.TYPE_26__** %10, align 8
  %22 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @svn_fs_x__change_set_by_rev(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @SVN_FS_X__ITEM_INDEX_CHANGES, align 4
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_31__*, %struct.TYPE_31__** %30, align 8
  %32 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @svn_fs_x__is_packed_rev(%struct.TYPE_31__* %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %75

37:                                               ; preds = %4
  %38 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 0
  store i32 %41, i32* %42, align 8
  %43 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 2
  store i32* %44, i32** %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 1
  %47 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_31__*, %struct.TYPE_31__** %48, align 8
  %50 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @svn_fs_x__item_offset(i64* %12, i32* %46, %struct.TYPE_31__* %49, i32 %52, %struct.TYPE_25__* %11, i32* %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  %56 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_31__*, %struct.TYPE_31__** %57, align 8
  %59 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @svn_fs_x__packed_base_rev(%struct.TYPE_31__* %58, i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 1
  store i32 %62, i32* %63, align 8
  %64 = load i64, i64* %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 0
  store i64 %64, i64* %65, align 8
  %66 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %5, align 8
  %67 = bitcast %struct.TYPE_30__** %66 to i8**
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @svn_fs_x__changes_get_list_func, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = call i32 @svn_cache__get_partial(i8** %67, i32* %9, i32 %70, %struct.TYPE_24__* %13, i32 %71, %struct.TYPE_28__* %14, i32* %72)
  %74 = call i32 @SVN_ERR(i32 %73)
  br label %127

75:                                               ; preds = %4
  %76 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 1
  store i32 %78, i32* %79, align 8
  %80 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  store i64 %82, i64* %83, align 8
  %84 = bitcast %struct.TYPE_27__** %15 to i8**
  %85 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %7, align 8
  %89 = call i32 @svn_cache__get(i8** %84, i32* %9, i32 %87, %struct.TYPE_24__* %16, i32* %88)
  %90 = call i32 @SVN_ERR(i32 %89)
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %126

93:                                               ; preds = %75
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %95 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 8
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 4
  %104 = load i32*, i32** %7, align 8
  %105 = call %struct.TYPE_30__* @apr_array_make(i32* %104, i32 0, i32 8)
  %106 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %5, align 8
  store %struct.TYPE_30__* %105, %struct.TYPE_30__** %106, align 8
  %107 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %108 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = inttoptr i64 %109 to i8*
  %111 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %5, align 8
  %112 = load %struct.TYPE_30__*, %struct.TYPE_30__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %112, i32 0, i32 0
  store i8* %110, i8** %113, align 8
  %114 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %115 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %5, align 8
  %118 = load %struct.TYPE_30__*, %struct.TYPE_30__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %118, i32 0, i32 1
  store i64 %116, i64* %119, align 8
  %120 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %121 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %5, align 8
  %124 = load %struct.TYPE_30__*, %struct.TYPE_30__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %124, i32 0, i32 2
  store i64 %122, i64* %125, align 8
  br label %126

126:                                              ; preds = %93, %75
  br label %127

127:                                              ; preds = %126, %37
  %128 = load i32, i32* %9, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %144, label %130

130:                                              ; preds = %127
  %131 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %5, align 8
  %132 = bitcast %struct.TYPE_30__** %131 to i8**
  %133 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_31__*, %struct.TYPE_31__** %134, align 8
  %136 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %140 = load i32*, i32** %7, align 8
  %141 = load i32*, i32** %8, align 8
  %142 = call i32 @block_read(i8** %132, %struct.TYPE_31__* %135, %struct.TYPE_25__* %11, i32 %138, %struct.TYPE_29__* %139, i32* %140, i32* %141)
  %143 = call i32 @SVN_ERR(i32 %142)
  br label %144

144:                                              ; preds = %130, %127
  %145 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %5, align 8
  %146 = load %struct.TYPE_30__*, %struct.TYPE_30__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = add nsw i64 %151, %148
  store i64 %152, i64* %150, align 8
  %153 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_31__*, %struct.TYPE_31__** %154, align 8
  %156 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %5, align 8
  %157 = load %struct.TYPE_30__*, %struct.TYPE_30__** %156, align 8
  %158 = load i32, i32* @SVN_FS_X__ITEM_TYPE_CHANGES, align 4
  %159 = load i32*, i32** %8, align 8
  %160 = call i32 @dbg__log_access(%struct.TYPE_31__* %155, %struct.TYPE_25__* %11, %struct.TYPE_30__* %157, i32 %158, i32* %159)
  %161 = call i32 @SVN_ERR(i32 %160)
  %162 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %162
}

declare dso_local i32 @svn_fs_x__change_set_by_rev(i32) #1

declare dso_local i64 @svn_fs_x__is_packed_rev(%struct.TYPE_31__*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__item_offset(i64*, i32*, %struct.TYPE_31__*, i32, %struct.TYPE_25__*, i32*) #1

declare dso_local i32 @svn_fs_x__packed_base_rev(%struct.TYPE_31__*, i32) #1

declare dso_local i32 @svn_cache__get_partial(i8**, i32*, i32, %struct.TYPE_24__*, i32, %struct.TYPE_28__*, i32*) #1

declare dso_local i32 @svn_cache__get(i8**, i32*, i32, %struct.TYPE_24__*, i32*) #1

declare dso_local %struct.TYPE_30__* @apr_array_make(i32*, i32, i32) #1

declare dso_local i32 @block_read(i8**, %struct.TYPE_31__*, %struct.TYPE_25__*, i32, %struct.TYPE_29__*, i32*, i32*) #1

declare dso_local i32 @dbg__log_access(%struct.TYPE_31__*, %struct.TYPE_25__*, %struct.TYPE_30__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
