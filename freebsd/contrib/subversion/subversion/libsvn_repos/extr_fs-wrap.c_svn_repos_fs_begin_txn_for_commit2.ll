; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_fs-wrap.c_svn_repos_fs_begin_txn_for_commit2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_fs-wrap.c_svn_repos_fs_begin_txn_for_commit2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32* }

@SVN_PROP_REVISION_AUTHOR = common dso_local global i32 0, align 4
@SVN_FS_TXN_CHECK_LOCKS = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_repos_fs_begin_txn_for_commit2(i32** %0, %struct.TYPE_7__* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i32** %0, i32*** %7, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = load i32, i32* @SVN_PROP_REVISION_AUTHOR, align 4
  %20 = call %struct.TYPE_6__* @svn_hash_gets(i32* %18, i32 %19)
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %14, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %11, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = call i32 @svn_repos__parse_hooks_env(i32** %15, i32 %23, i32* %24, i32* %25)
  %27 = call i32 @SVN_ERR(i32 %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @SVN_FS_TXN_CHECK_LOCKS, align 4
  %33 = load i32*, i32** %11, align 8
  %34 = call i32 @svn_fs_begin_txn2(i32** %17, i32 %30, i32 %31, i32 %32, i32* %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  %36 = load i32*, i32** %17, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = call i32* @svn_fs_txn_name(i8** %13, i32* %36, i32* %37)
  store i32* %38, i32** %16, align 8
  %39 = load i32*, i32** %16, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %5
  %42 = load i32*, i32** %16, align 8
  %43 = load i32*, i32** %17, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 @svn_fs_abort_txn(i32* %43, i32* %44)
  %46 = call i32* @svn_error_compose_create(i32* %42, i32 %45)
  store i32* %46, i32** %6, align 8
  br label %93

47:                                               ; preds = %5
  %48 = load i32*, i32** %10, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = call i32* @svn_prop_hash_to_array(i32* %48, i32* %49)
  store i32* %50, i32** %12, align 8
  %51 = load i32*, i32** %17, align 8
  %52 = load i32*, i32** %12, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = call i32* @svn_repos_fs_change_txn_props(i32* %51, i32* %52, i32* %53)
  store i32* %54, i32** %16, align 8
  %55 = load i32*, i32** %16, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %47
  %58 = load i32*, i32** %16, align 8
  %59 = load i32*, i32** %17, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 @svn_fs_abort_txn(i32* %59, i32* %60)
  %62 = call i32* @svn_error_compose_create(i32* %58, i32 %61)
  store i32* %62, i32** %6, align 8
  br label %93

63:                                               ; preds = %47
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %65 = load i32*, i32** %15, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %67 = icmp ne %struct.TYPE_6__* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  br label %73

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72, %68
  %74 = phi i32* [ %71, %68 ], [ null, %72 ]
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i8*, i8** %13, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = call i32* @svn_repos__hooks_start_commit(%struct.TYPE_7__* %64, i32* %65, i32* %74, i32 %77, i8* %78, i32* %79)
  store i32* %80, i32** %16, align 8
  %81 = load i32*, i32** %16, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %73
  %84 = load i32*, i32** %16, align 8
  %85 = load i32*, i32** %17, align 8
  %86 = load i32*, i32** %11, align 8
  %87 = call i32 @svn_fs_abort_txn(i32* %85, i32* %86)
  %88 = call i32* @svn_error_compose_create(i32* %84, i32 %87)
  store i32* %88, i32** %6, align 8
  br label %93

89:                                               ; preds = %73
  %90 = load i32*, i32** %17, align 8
  %91 = load i32**, i32*** %7, align 8
  store i32* %90, i32** %91, align 8
  %92 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %92, i32** %6, align 8
  br label %93

93:                                               ; preds = %89, %83, %57, %41
  %94 = load i32*, i32** %6, align 8
  ret i32* %94
}

declare dso_local %struct.TYPE_6__* @svn_hash_gets(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_repos__parse_hooks_env(i32**, i32, i32*, i32*) #1

declare dso_local i32 @svn_fs_begin_txn2(i32**, i32, i32, i32, i32*) #1

declare dso_local i32* @svn_fs_txn_name(i8**, i32*, i32*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32) #1

declare dso_local i32 @svn_fs_abort_txn(i32*, i32*) #1

declare dso_local i32* @svn_prop_hash_to_array(i32*, i32*) #1

declare dso_local i32* @svn_repos_fs_change_txn_props(i32*, i32*, i32*) #1

declare dso_local i32* @svn_repos__hooks_start_commit(%struct.TYPE_7__*, i32*, i32*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
