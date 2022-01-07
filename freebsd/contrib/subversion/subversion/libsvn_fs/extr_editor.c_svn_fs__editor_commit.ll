; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_editor.c_svn_fs__editor_commit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_editor.c_svn_fs__editor_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.edit_baton = type { i32*, i64 }

@SVN_ERR_FS_INCORRECT_EDITOR_COMPLETION = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_13__* null, align 8
@SVN_ERR_FS_CONFLICT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @svn_fs__editor_commit(i32* %0, %struct.TYPE_13__** %1, i8** %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.edit_baton*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_13__** %1, %struct.TYPE_13__*** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = call %struct.edit_baton* @svn_editor_get_baton(i32* %18)
  store %struct.edit_baton* %19, %struct.edit_baton** %14, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %16, align 8
  %20 = load %struct.edit_baton*, %struct.edit_baton** %14, align 8
  %21 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %6
  %25 = load i32, i32* @SVN_ERR_FS_INCORRECT_EDITOR_COMPLETION, align 4
  %26 = call %struct.TYPE_13__* @svn_error_create(i32 %25, i32* null, i32* null)
  store %struct.TYPE_13__* %26, %struct.TYPE_13__** %7, align 8
  br label %98

27:                                               ; preds = %6
  %28 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %29 = load i32*, i32** %8, align 8
  store i32 %28, i32* %29, align 4
  %30 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %9, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %30, align 8
  %31 = load i8**, i8*** %10, align 8
  store i8* null, i8** %31, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = call %struct.TYPE_13__* @svn_editor_complete(i32* %32)
  store %struct.TYPE_13__* %33, %struct.TYPE_13__** %16, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %35 = icmp ne %struct.TYPE_13__* %34, null
  br i1 %35, label %36, label %48

36:                                               ; preds = %27
  %37 = load %struct.edit_baton*, %struct.edit_baton** %14, align 8
  %38 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %17, align 8
  %40 = load %struct.edit_baton*, %struct.edit_baton** %14, align 8
  %41 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %43 = load i32*, i32** %17, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = call i32 @svn_fs_abort_txn(i32* %43, i32* %44)
  %46 = call %struct.TYPE_13__* @svn_error_compose_create(%struct.TYPE_13__* %42, i32 %45)
  %47 = call %struct.TYPE_13__* @svn_error_trace(%struct.TYPE_13__* %46)
  store %struct.TYPE_13__* %47, %struct.TYPE_13__** %7, align 8
  br label %98

48:                                               ; preds = %27
  %49 = load i32*, i32** %8, align 8
  %50 = load %struct.edit_baton*, %struct.edit_baton** %14, align 8
  %51 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32*, i32** %13, align 8
  %54 = call %struct.TYPE_13__* @svn_fs_commit_txn(i8** %15, i32* %49, i32* %52, i32* %53)
  store %struct.TYPE_13__* %54, %struct.TYPE_13__** %16, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @SVN_IS_VALID_REVNUM(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %48
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %61 = icmp ne %struct.TYPE_13__* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %64 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %9, align 8
  store %struct.TYPE_13__* %63, %struct.TYPE_13__** %64, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_13__* %65, %struct.TYPE_13__** %16, align 8
  br label %66

66:                                               ; preds = %62, %59
  br label %93

67:                                               ; preds = %48
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %69 = icmp ne %struct.TYPE_13__* %68, null
  %70 = zext i1 %69 to i32
  %71 = call i32 @SVN_ERR_ASSERT(i32 %70)
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @SVN_ERR_FS_CONFLICT, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %67
  %78 = load i32*, i32** %12, align 8
  %79 = load i8*, i8** %15, align 8
  %80 = call i8* @apr_pstrdup(i32* %78, i8* %79)
  %81 = load i8**, i8*** %10, align 8
  store i8* %80, i8** %81, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %83 = call i32 @svn_error_clear(%struct.TYPE_13__* %82)
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_13__* %84, %struct.TYPE_13__** %16, align 8
  br label %85

85:                                               ; preds = %77, %67
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %87 = load %struct.edit_baton*, %struct.edit_baton** %14, align 8
  %88 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32*, i32** %13, align 8
  %91 = call i32 @svn_fs_abort_txn(i32* %89, i32* %90)
  %92 = call %struct.TYPE_13__* @svn_error_compose_create(%struct.TYPE_13__* %86, i32 %91)
  store %struct.TYPE_13__* %92, %struct.TYPE_13__** %16, align 8
  br label %93

93:                                               ; preds = %85, %66
  %94 = load %struct.edit_baton*, %struct.edit_baton** %14, align 8
  %95 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %94, i32 0, i32 0
  store i32* null, i32** %95, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %97 = call %struct.TYPE_13__* @svn_error_trace(%struct.TYPE_13__* %96)
  store %struct.TYPE_13__* %97, %struct.TYPE_13__** %7, align 8
  br label %98

98:                                               ; preds = %93, %36, %24
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  ret %struct.TYPE_13__* %99
}

declare dso_local %struct.edit_baton* @svn_editor_get_baton(i32*) #1

declare dso_local %struct.TYPE_13__* @svn_error_create(i32, i32*, i32*) #1

declare dso_local %struct.TYPE_13__* @svn_editor_complete(i32*) #1

declare dso_local %struct.TYPE_13__* @svn_error_trace(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @svn_error_compose_create(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @svn_fs_abort_txn(i32*, i32*) #1

declare dso_local %struct.TYPE_13__* @svn_fs_commit_txn(i8**, i32*, i32*, i32*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
