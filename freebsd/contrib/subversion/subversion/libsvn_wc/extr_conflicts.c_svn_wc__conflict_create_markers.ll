; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_svn_wc__conflict_create_markers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_svn_wc__conflict_create_markers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@svn_node_dir = common dso_local global i64 0, align 8
@SVN_WC__THIS_DIR_PREJ = common dso_local global i8* null, align 8
@SVN_WC__PROP_REJ_EXT = common dso_local global i32 0, align 4
@svn_io_file_del_none = common dso_local global i32 0, align 4
@SVN_WC__CONFLICT_KIND_PROP = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__conflict_create_markers(%struct.TYPE_10__** %0, i32* %1, i8* %2, %struct.TYPE_10__* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_10__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__** %0, %struct.TYPE_10__*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %21 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %21, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = call i32 @svn_wc__conflict_read_info(i32* %14, i32* null, i32* null, i64* %13, i32* null, i32* %22, i8* %23, %struct.TYPE_10__* %24, i32* %25, i32* %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load i64, i64* %13, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %81

31:                                               ; preds = %6
  store i8* null, i8** %15, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = call i32 @svn_io_check_path(i8* %32, i64* %16, i32* %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  %36 = load i64, i64* %16, align 8
  %37 = load i64, i64* @svn_node_dir, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i8*, i8** %9, align 8
  store i8* %40, i8** %17, align 8
  %41 = load i8*, i8** @SVN_WC__THIS_DIR_PREJ, align 8
  store i8* %41, i8** %18, align 8
  br label %46

42:                                               ; preds = %31
  %43 = load i8*, i8** %9, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = call i32 @svn_dirent_split(i8** %17, i8** %18, i8* %43, i32* %44)
  br label %46

46:                                               ; preds = %42, %39
  %47 = load i8*, i8** %17, align 8
  %48 = load i8*, i8** %18, align 8
  %49 = load i32, i32* @SVN_WC__PROP_REJ_EXT, align 4
  %50 = load i32, i32* @svn_io_file_del_none, align 4
  %51 = load i32*, i32** %12, align 8
  %52 = load i32*, i32** %12, align 8
  %53 = call i32 @svn_io_open_uniquely_named(i32* null, i8** %15, i8* %47, i8* %48, i32 %49, i32 %50, i32* %51, i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  %55 = load i32*, i32** %8, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = load i8*, i8** %15, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = call i32 @svn_wc__db_to_relpath(i8** %19, i32* %55, i8* %56, i8* %57, i32* %58, i32* %59)
  %61 = call i32 @SVN_ERR(i32 %60)
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %63 = load i32, i32* @SVN_WC__CONFLICT_KIND_PROP, align 4
  %64 = call i32 @conflict__get_conflict(%struct.TYPE_10__** %20, %struct.TYPE_10__* %62, i32 %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  %66 = load i8*, i8** %19, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %11, align 8
  %73 = call i32 @svn_skel__prepend_str(i8* %66, i32 %71, i32* %72)
  %74 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = load i32*, i32** %12, align 8
  %79 = call i32 @svn_wc__wq_build_prej_install(%struct.TYPE_10__** %74, i32* %75, i8* %76, i32* %77, i32* %78)
  %80 = call i32 @SVN_ERR(i32 %79)
  br label %81

81:                                               ; preds = %46, %6
  %82 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %82
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__conflict_read_info(i32*, i32*, i32*, i64*, i32*, i32*, i8*, %struct.TYPE_10__*, i32*, i32*) #1

declare dso_local i32 @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local i32 @svn_dirent_split(i8**, i8**, i8*, i32*) #1

declare dso_local i32 @svn_io_open_uniquely_named(i32*, i8**, i8*, i8*, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_to_relpath(i8**, i32*, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @conflict__get_conflict(%struct.TYPE_10__**, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @svn_skel__prepend_str(i8*, i32, i32*) #1

declare dso_local i32 @svn_wc__wq_build_prej_install(%struct.TYPE_10__**, i32*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
