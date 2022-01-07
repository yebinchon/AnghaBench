; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_commit.c_fetch_props_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_commit.c_fetch_props_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.edit_baton = type { i32, i32 }

@SVN_ERR_FS_NOT_FOUND = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i32**, i8*, i8*, i32, i32*, i32*)* @fetch_props_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @fetch_props_func(i32** %0, i8* %1, i8* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.edit_baton*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  store i32** %0, i32*** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.edit_baton*
  store %struct.edit_baton* %18, %struct.edit_baton** %14, align 8
  %19 = load %struct.edit_baton*, %struct.edit_baton** %14, align 8
  %20 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.edit_baton*, %struct.edit_baton** %14, align 8
  %23 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @svn_fs_txn_base_revision(i32 %24)
  %26 = load i32*, i32** %13, align 8
  %27 = call i32 @svn_fs_revision_root(i32** %15, i32 %21, i32 %25, i32* %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load i32**, i32*** %8, align 8
  %30 = load i32*, i32** %15, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = call %struct.TYPE_8__* @svn_fs_node_proplist(i32** %29, i32* %30, i8* %31, i32* %32)
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %16, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %35 = icmp ne %struct.TYPE_8__* %34, null
  br i1 %35, label %36, label %49

36:                                               ; preds = %6
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SVN_ERR_FS_NOT_FOUND, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %44 = call i32 @svn_error_clear(%struct.TYPE_8__* %43)
  %45 = load i32*, i32** %12, align 8
  %46 = call i32* @apr_hash_make(i32* %45)
  %47 = load i32**, i32*** %8, align 8
  store i32* %46, i32** %47, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %7, align 8
  br label %58

49:                                               ; preds = %36, %6
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %51 = icmp ne %struct.TYPE_8__* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %54 = call %struct.TYPE_8__* @svn_error_trace(%struct.TYPE_8__* %53)
  store %struct.TYPE_8__* %54, %struct.TYPE_8__** %7, align 8
  br label %58

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_8__* %57, %struct.TYPE_8__** %7, align 8
  br label %58

58:                                               ; preds = %56, %52, %42
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  ret %struct.TYPE_8__* %59
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_revision_root(i32**, i32, i32, i32*) #1

declare dso_local i32 @svn_fs_txn_base_revision(i32) #1

declare dso_local %struct.TYPE_8__* @svn_fs_node_proplist(i32**, i32*, i8*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_8__*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local %struct.TYPE_8__* @svn_error_trace(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
