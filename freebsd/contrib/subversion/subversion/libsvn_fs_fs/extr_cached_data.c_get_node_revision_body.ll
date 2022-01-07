; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_cached_data.c_get_node_revision_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_cached_data.c_get_node_revision_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i64 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_31__ = type { i32, i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@APR_READ = common dso_local global i32 0, align 4
@APR_BUFFERED = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_30__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_30__* (i32**, %struct.TYPE_27__*, i32*, i32*, i32*)* @get_node_revision_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_30__* @get_node_revision_body(i32** %0, %struct.TYPE_27__* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_30__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_32__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_28__*, align 8
  %17 = alloca %struct.TYPE_29__*, align 8
  %18 = alloca %struct.TYPE_31__, align 4
  store i32** %0, i32*** %7, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load i64, i64* @FALSE, align 8
  store i64 %19, i64* %13, align 8
  %20 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_32__*, %struct.TYPE_32__** %21, align 8
  store %struct.TYPE_32__* %22, %struct.TYPE_32__** %14, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = call i64 @svn_fs_fs__id_is_txn(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %69

26:                                               ; preds = %5
  %27 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = call i32 @svn_fs_fs__path_txn_node_rev(%struct.TYPE_27__* %27, i32* %28, i32* %29)
  %31 = load i32, i32* @APR_READ, align 4
  %32 = load i32, i32* @APR_BUFFERED, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @APR_OS_DEFAULT, align 4
  %35 = load i32*, i32** %11, align 8
  %36 = call %struct.TYPE_30__* @svn_io_file_open(i32** %15, i32 %30, i32 %33, i32 %34, i32* %35)
  store %struct.TYPE_30__* %36, %struct.TYPE_30__** %12, align 8
  %37 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %38 = icmp ne %struct.TYPE_30__* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %26
  %40 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @APR_STATUS_IS_ENOENT(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %47 = call i32 @svn_error_clear(%struct.TYPE_30__* %46)
  %48 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = call %struct.TYPE_30__* @err_dangling_id(%struct.TYPE_27__* %48, i32* %49)
  %51 = call %struct.TYPE_30__* @svn_error_trace(%struct.TYPE_30__* %50)
  store %struct.TYPE_30__* %51, %struct.TYPE_30__** %6, align 8
  br label %163

52:                                               ; preds = %39, %26
  %53 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %54 = icmp ne %struct.TYPE_30__* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %57 = call %struct.TYPE_30__* @svn_error_trace(%struct.TYPE_30__* %56)
  store %struct.TYPE_30__* %57, %struct.TYPE_30__** %6, align 8
  br label %163

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58
  %60 = load i32**, i32*** %7, align 8
  %61 = load i32*, i32** %15, align 8
  %62 = load i64, i64* @FALSE, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = call i32 @svn_stream_from_aprfile2(i32* %61, i64 %62, i32* %63)
  %65 = load i32*, i32** %10, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = call i32 @svn_fs_fs__read_noderev(i32** %60, i32 %64, i32* %65, i32* %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  br label %161

69:                                               ; preds = %5
  %70 = load i32*, i32** %9, align 8
  %71 = call %struct.TYPE_29__* @svn_fs_fs__id_rev_item(i32* %70)
  store %struct.TYPE_29__* %71, %struct.TYPE_29__** %17, align 8
  %72 = bitcast %struct.TYPE_31__* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %72, i8 0, i64 12, i1 false)
  %73 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %74 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 1
  store i32 %75, i32* %76, align 4
  %77 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %78 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 0
  store i32 %79, i32* %80, align 4
  %81 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %69
  %86 = load i32**, i32*** %7, align 8
  %87 = bitcast i32** %86 to i8**
  %88 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = call i32 @svn_cache__get(i8** %87, i64* %13, i64 %90, %struct.TYPE_31__* %18, i32* %91)
  %93 = call i32 @SVN_ERR(i32 %92)
  %94 = load i64, i64* %13, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %85
  %97 = load %struct.TYPE_30__*, %struct.TYPE_30__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_30__* %97, %struct.TYPE_30__** %6, align 8
  br label %163

98:                                               ; preds = %85
  br label %99

99:                                               ; preds = %98, %69
  %100 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %101 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %102 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %105 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %11, align 8
  %108 = call i32 @open_and_seek_revision(%struct.TYPE_28__** %16, %struct.TYPE_27__* %100, i32 %103, i32 %106, i32* %107)
  %109 = call i32 @SVN_ERR(i32 %108)
  %110 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %111 = call i64 @use_block_read(%struct.TYPE_27__* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %128

113:                                              ; preds = %99
  %114 = load i32**, i32*** %7, align 8
  %115 = bitcast i32** %114 to i8**
  %116 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %117 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %118 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %121 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %124 = load i32*, i32** %10, align 8
  %125 = load i32*, i32** %11, align 8
  %126 = call i32 @block_read(i8** %115, %struct.TYPE_27__* %116, i32 %119, i32 %122, %struct.TYPE_28__* %123, i32* %124, i32* %125)
  %127 = call i32 @SVN_ERR(i32 %126)
  br label %157

128:                                              ; preds = %99
  %129 = load i32**, i32*** %7, align 8
  %130 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %131 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %10, align 8
  %134 = load i32*, i32** %11, align 8
  %135 = call i32 @svn_fs_fs__read_noderev(i32** %129, i32 %132, i32* %133, i32* %134)
  %136 = call i32 @SVN_ERR(i32 %135)
  %137 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %138 = load i32**, i32*** %7, align 8
  %139 = load i32*, i32** %138, align 8
  %140 = load i32*, i32** %11, align 8
  %141 = call i32 @fixup_node_revision(%struct.TYPE_27__* %137, i32* %139, i32* %140)
  %142 = call i32 @SVN_ERR(i32 %141)
  %143 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %144 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %128
  %148 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i32**, i32*** %7, align 8
  %152 = load i32*, i32** %151, align 8
  %153 = load i32*, i32** %11, align 8
  %154 = call i32 @svn_cache__set(i64 %150, %struct.TYPE_31__* %18, i32* %152, i32* %153)
  %155 = call i32 @SVN_ERR(i32 %154)
  br label %156

156:                                              ; preds = %147, %128
  br label %157

157:                                              ; preds = %156, %113
  %158 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %159 = call i32 @svn_fs_fs__close_revision_file(%struct.TYPE_28__* %158)
  %160 = call i32 @SVN_ERR(i32 %159)
  br label %161

161:                                              ; preds = %157, %59
  %162 = load %struct.TYPE_30__*, %struct.TYPE_30__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_30__* %162, %struct.TYPE_30__** %6, align 8
  br label %163

163:                                              ; preds = %161, %96, %55, %45
  %164 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  ret %struct.TYPE_30__* %164
}

declare dso_local i64 @svn_fs_fs__id_is_txn(i32*) #1

declare dso_local %struct.TYPE_30__* @svn_io_file_open(i32**, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_fs_fs__path_txn_node_rev(%struct.TYPE_27__*, i32*, i32*) #1

declare dso_local i64 @APR_STATUS_IS_ENOENT(i32) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_30__* @svn_error_trace(%struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_30__* @err_dangling_id(%struct.TYPE_27__*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_fs__read_noderev(i32**, i32, i32*, i32*) #1

declare dso_local i32 @svn_stream_from_aprfile2(i32*, i64, i32*) #1

declare dso_local %struct.TYPE_29__* @svn_fs_fs__id_rev_item(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @svn_cache__get(i8**, i64*, i64, %struct.TYPE_31__*, i32*) #1

declare dso_local i32 @open_and_seek_revision(%struct.TYPE_28__**, %struct.TYPE_27__*, i32, i32, i32*) #1

declare dso_local i64 @use_block_read(%struct.TYPE_27__*) #1

declare dso_local i32 @block_read(i8**, %struct.TYPE_27__*, i32, i32, %struct.TYPE_28__*, i32*, i32*) #1

declare dso_local i32 @fixup_node_revision(%struct.TYPE_27__*, i32*, i32*) #1

declare dso_local i32 @svn_cache__set(i64, %struct.TYPE_31__*, i32*, i32*) #1

declare dso_local i32 @svn_fs_fs__close_revision_file(%struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
