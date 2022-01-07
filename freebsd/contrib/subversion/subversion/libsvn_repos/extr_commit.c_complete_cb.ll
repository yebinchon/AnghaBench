; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_commit.c_complete_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_commit.c_complete_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ev2_baton = type { %struct.TYPE_3__*, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@SVN_ERR_FS_CONFLICT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Conflict at '%s'\00", align 1
@SVN_ERR_REPOS_POST_COMMIT_HOOK_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Commit succeeded, but post-commit hook failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*)* @complete_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @complete_cb(i8* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ev2_baton*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.ev2_baton*
  store %struct.ev2_baton* %14, %struct.ev2_baton** %6, align 8
  %15 = load %struct.ev2_baton*, %struct.ev2_baton** %6, align 8
  %16 = getelementptr inbounds %struct.ev2_baton, %struct.ev2_baton* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @svn_repos__parse_hooks_env(i32** %12, i32 %19, i32* %20, i32* %21)
  %23 = call i32 @SVN_ERR(i32 %22)
  %24 = load %struct.ev2_baton*, %struct.ev2_baton** %6, align 8
  %25 = getelementptr inbounds %struct.ev2_baton, %struct.ev2_baton* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = load %struct.ev2_baton*, %struct.ev2_baton** %6, align 8
  %29 = getelementptr inbounds %struct.ev2_baton, %struct.ev2_baton* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @svn_repos__hooks_pre_commit(%struct.TYPE_3__* %26, i32* %27, i32 %30, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load %struct.ev2_baton*, %struct.ev2_baton** %6, align 8
  %35 = getelementptr inbounds %struct.ev2_baton, %struct.ev2_baton* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @svn_fs__editor_commit(i32* %7, i32** %8, i8** %9, i32 %36, i32* %37, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  %41 = load i8*, i8** %9, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %2
  %44 = load i32, i32* @SVN_ERR_FS_CONFLICT, align 4
  %45 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %46 = load i8*, i8** %9, align 8
  %47 = call i32* @svn_error_createf(i32 %44, i32* null, i32 %45, i8* %46)
  store i32* %47, i32** %3, align 8
  br label %99

48:                                               ; preds = %2
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @SVN_IS_VALID_REVNUM(i32 %49)
  %51 = call i32 @SVN_ERR_ASSERT(i32 %50)
  %52 = load %struct.ev2_baton*, %struct.ev2_baton** %6, align 8
  %53 = getelementptr inbounds %struct.ev2_baton, %struct.ev2_baton* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = load i32*, i32** %12, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.ev2_baton*, %struct.ev2_baton** %6, align 8
  %58 = getelementptr inbounds %struct.ev2_baton, %struct.ev2_baton* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = call i32* @svn_repos__hooks_post_commit(%struct.TYPE_3__* %54, i32* %55, i32 %56, i32 %59, i32* %60)
  store i32* %61, i32** %10, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %48
  %65 = load i32, i32* @SVN_ERR_REPOS_POST_COMMIT_HOOK_FAILED, align 4
  %66 = load i32*, i32** %10, align 8
  %67 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %68 = call i32* @svn_error_create(i32 %65, i32* %66, i32 %67)
  store i32* %68, i32** %10, align 8
  br label %69

69:                                               ; preds = %64, %48
  %70 = load i32*, i32** %8, align 8
  %71 = load i32*, i32** %10, align 8
  %72 = call i32* @svn_error_compose_create(i32* %70, i32* %71)
  store i32* %72, i32** %10, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = load i32*, i32** %10, align 8
  %77 = load i32*, i32** %5, align 8
  %78 = call i8* @svn_repos__post_commit_error_str(i32* %76, i32* %77)
  store i8* %78, i8** %11, align 8
  %79 = load i32*, i32** %10, align 8
  %80 = call i32 @svn_error_clear(i32* %79)
  br label %82

81:                                               ; preds = %69
  store i8* null, i8** %11, align 8
  br label %82

82:                                               ; preds = %81, %75
  %83 = load %struct.ev2_baton*, %struct.ev2_baton** %6, align 8
  %84 = getelementptr inbounds %struct.ev2_baton, %struct.ev2_baton* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ev2_baton*, %struct.ev2_baton** %6, align 8
  %87 = getelementptr inbounds %struct.ev2_baton, %struct.ev2_baton* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.ev2_baton*, %struct.ev2_baton** %6, align 8
  %90 = getelementptr inbounds %struct.ev2_baton, %struct.ev2_baton* %89, i32 0, i32 0
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load i8*, i8** %11, align 8
  %96 = load i32*, i32** %5, align 8
  %97 = call i32 @invoke_commit_cb(i32 %85, i32 %88, i32 %93, i32 %94, i8* %95, i32* %96)
  %98 = call i32* @svn_error_trace(i32 %97)
  store i32* %98, i32** %3, align 8
  br label %99

99:                                               ; preds = %82, %43
  %100 = load i32*, i32** %3, align 8
  ret i32* %100
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_repos__parse_hooks_env(i32**, i32, i32*, i32*) #1

declare dso_local i32 @svn_repos__hooks_pre_commit(%struct.TYPE_3__*, i32*, i32, i32*) #1

declare dso_local i32 @svn_fs__editor_commit(i32*, i32**, i8**, i32, i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32* @svn_repos__hooks_post_commit(%struct.TYPE_3__*, i32*, i32, i32, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32*) #1

declare dso_local i8* @svn_repos__post_commit_error_str(i32*, i32*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @invoke_commit_cb(i32, i32, i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
