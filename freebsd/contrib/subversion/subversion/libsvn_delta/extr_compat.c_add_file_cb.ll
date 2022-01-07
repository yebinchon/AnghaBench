; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_compat.c_add_file_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_compat.c_add_file_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.editor_baton = type { i32, i32 }
%struct.change_node = type { i8*, i32, i32, i32, i32, i32, i32 }

@svn_checksum_md5 = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@svn_io_file_del_on_pool_cleanup = common dso_local global i32 0, align 4
@RESTRUCTURE_ADD = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, %struct.TYPE_5__*, i32*, i32*, i32, i32*)* @add_file_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @add_file_cb(i8* %0, i8* %1, %struct.TYPE_5__* %2, i32* %3, i32* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.editor_baton*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_5__*, align 8
  %19 = alloca %struct.change_node*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = bitcast i8* %20 to %struct.editor_baton*
  store %struct.editor_baton* %21, %struct.editor_baton** %15, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load %struct.editor_baton*, %struct.editor_baton** %15, align 8
  %24 = getelementptr inbounds %struct.editor_baton, %struct.editor_baton* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.change_node* @insert_change(i8* %22, i32 %25)
  store %struct.change_node* %26, %struct.change_node** %19, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %28 = icmp ne %struct.TYPE_5__* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %7
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @svn_checksum_md5, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %29, %7
  %36 = load i32*, i32** %11, align 8
  %37 = load i64, i64* @svn_checksum_md5, align 8
  %38 = load i32, i32* @TRUE, align 4
  %39 = load i32*, i32** %14, align 8
  %40 = call i32* @svn_stream_checksummed2(i32* %36, %struct.TYPE_5__** %18, i32* null, i64 %37, i32 %38, i32* %39)
  store i32* %40, i32** %11, align 8
  br label %43

41:                                               ; preds = %29
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %18, align 8
  br label %43

43:                                               ; preds = %41, %35
  %44 = load i32, i32* @svn_io_file_del_on_pool_cleanup, align 4
  %45 = load %struct.editor_baton*, %struct.editor_baton** %15, align 8
  %46 = getelementptr inbounds %struct.editor_baton, %struct.editor_baton* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %14, align 8
  %49 = call i32 @svn_stream_open_unique(i32** %17, i8** %16, i32* null, i32 %44, i32 %47, i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load i32*, i32** %11, align 8
  %52 = load i32*, i32** %17, align 8
  %53 = load i32*, i32** %14, align 8
  %54 = call i32 @svn_stream_copy3(i32* %51, i32* %52, i32* null, i32* null, i32* %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  %56 = load i32, i32* @RESTRUCTURE_ADD, align 4
  %57 = load %struct.change_node*, %struct.change_node** %19, align 8
  %58 = getelementptr inbounds %struct.change_node, %struct.change_node* %57, i32 0, i32 6
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @svn_node_file, align 4
  %60 = load %struct.change_node*, %struct.change_node** %19, align 8
  %61 = getelementptr inbounds %struct.change_node, %struct.change_node* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %13, align 4
  %63 = load %struct.change_node*, %struct.change_node** %19, align 8
  %64 = getelementptr inbounds %struct.change_node, %struct.change_node* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 4
  %65 = load i32*, i32** %12, align 8
  %66 = load %struct.editor_baton*, %struct.editor_baton** %15, align 8
  %67 = getelementptr inbounds %struct.editor_baton, %struct.editor_baton* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @svn_prop_hash_dup(i32* %65, i32 %68)
  %70 = load %struct.change_node*, %struct.change_node** %19, align 8
  %71 = getelementptr inbounds %struct.change_node, %struct.change_node* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* @TRUE, align 4
  %73 = load %struct.change_node*, %struct.change_node** %19, align 8
  %74 = getelementptr inbounds %struct.change_node, %struct.change_node* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load i8*, i8** %16, align 8
  %76 = load %struct.change_node*, %struct.change_node** %19, align 8
  %77 = getelementptr inbounds %struct.change_node, %struct.change_node* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %79 = load %struct.editor_baton*, %struct.editor_baton** %15, align 8
  %80 = getelementptr inbounds %struct.editor_baton, %struct.editor_baton* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @svn_checksum_dup(%struct.TYPE_5__* %78, i32 %81)
  %83 = load %struct.change_node*, %struct.change_node** %19, align 8
  %84 = getelementptr inbounds %struct.change_node, %struct.change_node* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  %85 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %85
}

declare dso_local %struct.change_node* @insert_change(i8*, i32) #1

declare dso_local i32* @svn_stream_checksummed2(i32*, %struct.TYPE_5__**, i32*, i64, i32, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stream_open_unique(i32**, i8**, i32*, i32, i32, i32*) #1

declare dso_local i32 @svn_stream_copy3(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_prop_hash_dup(i32*, i32) #1

declare dso_local i32 @svn_checksum_dup(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
