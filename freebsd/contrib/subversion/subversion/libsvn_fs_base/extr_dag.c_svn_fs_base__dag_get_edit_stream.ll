; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_dag.c_svn_fs_base__dag_get_edit_stream.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_dag.c_svn_fs_base__dag_get_edit_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32* }
%struct.TYPE_7__ = type { i8* }

@svn_node_file = common dso_local global i64 0, align 8
@SVN_ERR_FS_NOT_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Attempted to set textual contents of a *non*-file node\00", align 1
@SVN_ERR_FS_NOT_MUTABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Attempted to set textual contents of an immutable node\00", align 1
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_base__dag_get_edit_stream(i32** %0, %struct.TYPE_8__* %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  store i32** %0, i32*** %7, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %12, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @svn_node_file, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %5
  %25 = load i32, i32* @SVN_ERR_FS_NOT_FILE, align 4
  %26 = call i32 @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %27 = call i32* @svn_error_createf(i32 %25, i32* null, i32 %26)
  store i32* %27, i32** %6, align 8
  br label %90

28:                                               ; preds = %5
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 @svn_fs_base__dag_check_mutable(%struct.TYPE_8__* %29, i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @SVN_ERR_FS_NOT_MUTABLE, align 4
  %35 = call i32 @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %36 = call i32* @svn_error_createf(i32 %34, i32* null, i32 %35)
  store i32* %36, i32** %6, align 8
  br label %90

37:                                               ; preds = %28
  %38 = load i32*, i32** %12, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 @svn_fs_bdb__get_node_revision(%struct.TYPE_7__** %13, i32* %38, i32 %41, i32* %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %37
  %51 = load i32*, i32** %12, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = call i32 @svn_fs_base__delete_rep_if_mutable(i32* %51, i8* %54, i8* %55, i32* %56, i32* %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  br label %60

60:                                               ; preds = %50, %37
  %61 = load i32*, i32** %12, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = call i32 @svn_fs_base__get_mutable_rep(i8** %14, i32* null, i32* %61, i8* %62, i32* %63, i32* %64)
  %66 = call i32 @SVN_ERR(i32 %65)
  %67 = load i8*, i8** %14, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  %70 = load i32*, i32** %12, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %75 = load i32*, i32** %10, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = call i32 @svn_fs_bdb__put_node_revision(i32* %70, i32 %73, %struct.TYPE_7__* %74, i32* %75, i32* %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  %79 = load i32*, i32** %12, align 8
  %80 = load i8*, i8** %14, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = load i32, i32* @FALSE, align 4
  %83 = load i32*, i32** %10, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = call i32 @svn_fs_base__rep_contents_write_stream(i32** %15, i32* %79, i8* %80, i8* %81, i32 %82, i32* %83, i32* %84)
  %86 = call i32 @SVN_ERR(i32 %85)
  %87 = load i32*, i32** %15, align 8
  %88 = load i32**, i32*** %7, align 8
  store i32* %87, i32** %88, align 8
  %89 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %89, i32** %6, align 8
  br label %90

90:                                               ; preds = %60, %33, %24
  %91 = load i32*, i32** %6, align 8
  ret i32* %91
}

declare dso_local i32* @svn_error_createf(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_fs_base__dag_check_mutable(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_bdb__get_node_revision(%struct.TYPE_7__**, i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_fs_base__delete_rep_if_mutable(i32*, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_fs_base__get_mutable_rep(i8**, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_fs_bdb__put_node_revision(i32*, i32, %struct.TYPE_7__*, i32*, i32*) #1

declare dso_local i32 @svn_fs_base__rep_contents_write_stream(i32**, i32*, i8*, i8*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
