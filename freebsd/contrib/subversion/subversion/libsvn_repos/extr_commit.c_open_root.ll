; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_commit.c_open_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_commit.c_open_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_baton = type { i64, i32, i32, i32*, i32*, i8* }
%struct.edit_baton = type { i32, i32, i32, i32, i32, i32, i32, i64, i32 }

@SVN_ERR_FS_NO_SUCH_REVISION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"No such revision %ld (HEAD is %ld)\00", align 1
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i64, i32*, i8**)* @open_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @open_root(i8* %0, i64 %1, i32* %2, i8** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.dir_baton*, align 8
  %11 = alloca %struct.edit_baton*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i8** %3, i8*** %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.edit_baton*
  store %struct.edit_baton* %15, %struct.edit_baton** %11, align 8
  %16 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %17 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %16, i32 0, i32 8
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %20 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @svn_fs_youngest_rev(i64* %12, i32 %18, i32 %21)
  %23 = call i32 @SVN_ERR(i32 %22)
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %12, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %4
  %28 = load i32, i32* @SVN_ERR_FS_NO_SUCH_REVISION, align 4
  %29 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %12, align 8
  %32 = call i32* @svn_error_createf(i32 %28, i32* null, i32 %29, i64 %30, i64 %31)
  store i32* %32, i32** %5, align 8
  br label %114

33:                                               ; preds = %4
  %34 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %35 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %34, i32 0, i32 7
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %33
  %39 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %40 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %39, i32 0, i32 2
  %41 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %42 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = load i64, i64* %12, align 8
  %45 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %46 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %49 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @svn_repos_fs_begin_txn_for_commit2(i32* %40, i32 %43, i64 %44, i32 %47, i32 %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  br label %66

53:                                               ; preds = %33
  %54 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %55 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = call i32* @svn_prop_hash_to_array(i32 %56, i32* %57)
  store i32* %58, i32** %13, align 8
  %59 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %60 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32*, i32** %13, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @svn_repos_fs_change_txn_props(i32 %61, i32* %62, i32* %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  br label %66

66:                                               ; preds = %53, %38
  %67 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %68 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %67, i32 0, i32 4
  %69 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %70 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %73 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @svn_fs_txn_name(i32* %68, i32 %71, i32 %74)
  %76 = call i32 @SVN_ERR(i32 %75)
  %77 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %78 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %77, i32 0, i32 3
  %79 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %80 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %83 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @svn_fs_txn_root(i32* %78, i32 %81, i32 %84)
  %86 = call i32 @SVN_ERR(i32 %85)
  %87 = load i32*, i32** %8, align 8
  %88 = call %struct.dir_baton* @apr_pcalloc(i32* %87, i32 40)
  store %struct.dir_baton* %88, %struct.dir_baton** %10, align 8
  %89 = load i8*, i8** %6, align 8
  %90 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %91 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %90, i32 0, i32 5
  store i8* %89, i8** %91, align 8
  %92 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %93 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %92, i32 0, i32 4
  store i32* null, i32** %93, align 8
  %94 = load i32*, i32** %8, align 8
  %95 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %96 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %95, i32 0, i32 3
  store i32* %94, i32** %96, align 8
  %97 = load i32, i32* @FALSE, align 4
  %98 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %99 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  %100 = load i32*, i32** %8, align 8
  %101 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %102 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @apr_pstrdup(i32* %100, i32 %103)
  %105 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %106 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 8
  %107 = load i64, i64* %7, align 8
  %108 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %109 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  %110 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %111 = bitcast %struct.dir_baton* %110 to i8*
  %112 = load i8**, i8*** %9, align 8
  store i8* %111, i8** %112, align 8
  %113 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %113, i32** %5, align 8
  br label %114

114:                                              ; preds = %66, %27
  %115 = load i32*, i32** %5, align 8
  ret i32* %115
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_youngest_rev(i64*, i32, i32) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i64, i64) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_repos_fs_begin_txn_for_commit2(i32*, i32, i64, i32, i32) #1

declare dso_local i32* @svn_prop_hash_to_array(i32, i32*) #1

declare dso_local i32 @svn_repos_fs_change_txn_props(i32, i32*, i32*) #1

declare dso_local i32 @svn_fs_txn_name(i32*, i32, i32) #1

declare dso_local i32 @svn_fs_txn_root(i32*, i32, i32) #1

declare dso_local %struct.dir_baton* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @apr_pstrdup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
