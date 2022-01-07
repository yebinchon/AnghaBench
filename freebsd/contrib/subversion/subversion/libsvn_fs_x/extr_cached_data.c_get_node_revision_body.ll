; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_get_node_revision_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_get_node_revision_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32 }
%struct.TYPE_31__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i32, i64 }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_28__ = type { i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@APR_READ = common dso_local global i32 0, align 4
@APR_BUFFERED = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@svn_fs_x__noderevs_get_func = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_32__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_32__* (i32**, %struct.TYPE_31__*, %struct.TYPE_29__*, i32*, i32*)* @get_node_revision_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_32__* @get_node_revision_body(i32** %0, %struct.TYPE_31__* %1, %struct.TYPE_29__* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_32__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_31__*, align 8
  %9 = alloca %struct.TYPE_29__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_32__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_30__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_28__, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32** %0, i32*** %7, align 8
  store %struct.TYPE_31__* %1, %struct.TYPE_31__** %8, align 8
  store %struct.TYPE_29__* %2, %struct.TYPE_29__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %22 = load i64, i64* @FALSE, align 8
  store i64 %22, i64* %13, align 8
  %23 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_30__*, %struct.TYPE_30__** %24, align 8
  store %struct.TYPE_30__* %25, %struct.TYPE_30__** %14, align 8
  %26 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @svn_fs_x__is_txn(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %76

31:                                               ; preds = %5
  %32 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %33 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = call i32 @svn_fs_x__path_txn_node_rev(%struct.TYPE_31__* %32, %struct.TYPE_29__* %33, i32* %34, i32* %35)
  %37 = load i32, i32* @APR_READ, align 4
  %38 = load i32, i32* @APR_BUFFERED, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @APR_OS_DEFAULT, align 4
  %41 = load i32*, i32** %11, align 8
  %42 = call %struct.TYPE_32__* @svn_io_file_open(i32** %15, i32 %36, i32 %39, i32 %40, i32* %41)
  store %struct.TYPE_32__* %42, %struct.TYPE_32__** %12, align 8
  %43 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %44 = icmp ne %struct.TYPE_32__* %43, null
  br i1 %44, label %45, label %58

45:                                               ; preds = %31
  %46 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @APR_STATUS_IS_ENOENT(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %53 = call i32 @svn_error_clear(%struct.TYPE_32__* %52)
  %54 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %55 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %56 = call %struct.TYPE_32__* @err_dangling_id(%struct.TYPE_31__* %54, %struct.TYPE_29__* %55)
  %57 = call %struct.TYPE_32__* @svn_error_trace(%struct.TYPE_32__* %56)
  store %struct.TYPE_32__* %57, %struct.TYPE_32__** %6, align 8
  br label %156

58:                                               ; preds = %45, %31
  %59 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %60 = icmp ne %struct.TYPE_32__* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %63 = call %struct.TYPE_32__* @svn_error_trace(%struct.TYPE_32__* %62)
  store %struct.TYPE_32__* %63, %struct.TYPE_32__** %6, align 8
  br label %156

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %64
  %66 = load i32*, i32** %15, align 8
  %67 = load i64, i64* @FALSE, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = call i32* @svn_stream_from_aprfile2(i32* %66, i64 %67, i32* %68)
  store i32* %69, i32** %16, align 8
  %70 = load i32**, i32*** %7, align 8
  %71 = load i32*, i32** %16, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = call i32 @svn_fs_x__read_noderev(i32** %70, i32* %71, i32* %72, i32* %73)
  %75 = call i32 @SVN_ERR(i32 %74)
  br label %154

76:                                               ; preds = %5
  %77 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @svn_fs_x__get_revnum(i32 %79)
  store i32 %80, i32* %18, align 4
  %81 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %82 = load i32, i32* %18, align 4
  %83 = load i32*, i32** %11, align 8
  %84 = call i32 @svn_fs_x__rev_file_init(i32** %17, %struct.TYPE_31__* %81, i32 %82, i32* %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  %86 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %87 = load i32, i32* %18, align 4
  %88 = call i64 @svn_fs_x__is_packed_rev(%struct.TYPE_31__* %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %122

90:                                               ; preds = %76
  %91 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %122

95:                                               ; preds = %90
  %96 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %97 = load i32*, i32** %17, align 8
  %98 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %99 = load i32*, i32** %11, align 8
  %100 = call i32 @svn_fs_x__item_offset(i32* %20, i32* %21, %struct.TYPE_31__* %96, i32* %97, %struct.TYPE_29__* %98, i32* %99)
  %101 = call i32 @SVN_ERR(i32 %100)
  %102 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %103 = load i32, i32* %18, align 4
  %104 = call i32 @svn_fs_x__packed_base_rev(%struct.TYPE_31__* %102, i32 %103)
  %105 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %19, i32 0, i32 1
  store i32 %104, i32* %105, align 4
  %106 = load i32, i32* %20, align 4
  %107 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %19, i32 0, i32 0
  store i32 %106, i32* %107, align 4
  %108 = load i32**, i32*** %7, align 8
  %109 = bitcast i32** %108 to i8**
  %110 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* @svn_fs_x__noderevs_get_func, align 4
  %114 = load i32*, i32** %10, align 8
  %115 = call i32 @svn_cache__get_partial(i8** %109, i64* %13, i64 %112, %struct.TYPE_28__* %19, i32 %113, i32* %21, i32* %114)
  %116 = call i32 @SVN_ERR(i32 %115)
  %117 = load i64, i64* %13, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %95
  %120 = load %struct.TYPE_32__*, %struct.TYPE_32__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_32__* %120, %struct.TYPE_32__** %6, align 8
  br label %156

121:                                              ; preds = %95
  br label %122

122:                                              ; preds = %121, %90, %76
  %123 = load i32, i32* %18, align 4
  %124 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %19, i32 0, i32 1
  store i32 %123, i32* %124, align 4
  %125 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %19, i32 0, i32 0
  store i32 %127, i32* %128, align 4
  %129 = load i32**, i32*** %7, align 8
  %130 = bitcast i32** %129 to i8**
  %131 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %132 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32*, i32** %10, align 8
  %135 = call i32 @svn_cache__get(i8** %130, i64* %13, i32 %133, %struct.TYPE_28__* %19, i32* %134)
  %136 = call i32 @SVN_ERR(i32 %135)
  %137 = load i64, i64* %13, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %122
  %140 = load %struct.TYPE_32__*, %struct.TYPE_32__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_32__* %140, %struct.TYPE_32__** %6, align 8
  br label %156

141:                                              ; preds = %122
  %142 = load i32**, i32*** %7, align 8
  %143 = bitcast i32** %142 to i8**
  %144 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %145 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %146 = load i32*, i32** %17, align 8
  %147 = load i32*, i32** %10, align 8
  %148 = load i32*, i32** %11, align 8
  %149 = call i32 @block_read(i8** %143, %struct.TYPE_31__* %144, %struct.TYPE_29__* %145, i32* %146, i32* null, i32* %147, i32* %148)
  %150 = call i32 @SVN_ERR(i32 %149)
  %151 = load i32*, i32** %17, align 8
  %152 = call i32 @svn_fs_x__close_revision_file(i32* %151)
  %153 = call i32 @SVN_ERR(i32 %152)
  br label %154

154:                                              ; preds = %141, %65
  %155 = load %struct.TYPE_32__*, %struct.TYPE_32__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_32__* %155, %struct.TYPE_32__** %6, align 8
  br label %156

156:                                              ; preds = %154, %139, %119, %61, %51
  %157 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  ret %struct.TYPE_32__* %157
}

declare dso_local i64 @svn_fs_x__is_txn(i32) #1

declare dso_local %struct.TYPE_32__* @svn_io_file_open(i32**, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_fs_x__path_txn_node_rev(%struct.TYPE_31__*, %struct.TYPE_29__*, i32*, i32*) #1

declare dso_local i64 @APR_STATUS_IS_ENOENT(i32) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_32__*) #1

declare dso_local %struct.TYPE_32__* @svn_error_trace(%struct.TYPE_32__*) #1

declare dso_local %struct.TYPE_32__* @err_dangling_id(%struct.TYPE_31__*, %struct.TYPE_29__*) #1

declare dso_local i32* @svn_stream_from_aprfile2(i32*, i64, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__read_noderev(i32**, i32*, i32*, i32*) #1

declare dso_local i32 @svn_fs_x__get_revnum(i32) #1

declare dso_local i32 @svn_fs_x__rev_file_init(i32**, %struct.TYPE_31__*, i32, i32*) #1

declare dso_local i64 @svn_fs_x__is_packed_rev(%struct.TYPE_31__*, i32) #1

declare dso_local i32 @svn_fs_x__item_offset(i32*, i32*, %struct.TYPE_31__*, i32*, %struct.TYPE_29__*, i32*) #1

declare dso_local i32 @svn_fs_x__packed_base_rev(%struct.TYPE_31__*, i32) #1

declare dso_local i32 @svn_cache__get_partial(i8**, i64*, i64, %struct.TYPE_28__*, i32, i32*, i32*) #1

declare dso_local i32 @svn_cache__get(i8**, i64*, i32, %struct.TYPE_28__*, i32*) #1

declare dso_local i32 @block_read(i8**, %struct.TYPE_31__*, %struct.TYPE_29__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_fs_x__close_revision_file(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
