; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_dump.c_fetch_props_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_dump.c_fetch_props_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.edit_baton = type { i32, i64 }

@SVN_ERR_FS_NOT_FOUND = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i32**, i8*, i8*, i64, i32*, i32*)* @fetch_props_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @fetch_props_func(i32** %0, i8* %1, i8* %2, i64 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.edit_baton*, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i32*, align 8
  store i32** %0, i32*** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.edit_baton*
  store %struct.edit_baton* %18, %struct.edit_baton** %14, align 8
  %19 = load i64, i64* %11, align 8
  %20 = call i32 @SVN_IS_VALID_REVNUM(i64 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %6
  %23 = load %struct.edit_baton*, %struct.edit_baton** %14, align 8
  %24 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %25, 1
  store i64 %26, i64* %11, align 8
  br label %27

27:                                               ; preds = %22, %6
  %28 = load %struct.edit_baton*, %struct.edit_baton** %14, align 8
  %29 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load i32*, i32** %13, align 8
  %33 = call i32 @svn_fs_revision_root(i32** %16, i32 %30, i64 %31, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load i32**, i32*** %8, align 8
  %36 = load i32*, i32** %16, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = call %struct.TYPE_8__* @svn_fs_node_proplist(i32** %35, i32* %36, i8* %37, i32* %38)
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %15, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %41 = icmp ne %struct.TYPE_8__* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %27
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SVN_ERR_FS_NOT_FOUND, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %50 = call i32 @svn_error_clear(%struct.TYPE_8__* %49)
  %51 = load i32*, i32** %12, align 8
  %52 = call i32* @apr_hash_make(i32* %51)
  %53 = load i32**, i32*** %8, align 8
  store i32* %52, i32** %53, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_8__* %54, %struct.TYPE_8__** %7, align 8
  br label %64

55:                                               ; preds = %42, %27
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %57 = icmp ne %struct.TYPE_8__* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %60 = call %struct.TYPE_8__* @svn_error_trace(%struct.TYPE_8__* %59)
  store %struct.TYPE_8__* %60, %struct.TYPE_8__** %7, align 8
  br label %64

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_8__* %63, %struct.TYPE_8__** %7, align 8
  br label %64

64:                                               ; preds = %62, %58, %48
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  ret %struct.TYPE_8__* %65
}

declare dso_local i32 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_revision_root(i32**, i32, i64, i32*) #1

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
