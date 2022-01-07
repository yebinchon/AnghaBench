; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_db_op_set_rev_repos_relpath_iprops.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_db_op_set_rev_repos_relpath_iprops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@svn_depth_empty = common dso_local global i32 0, align 4
@STMT_UPDATE_BASE_REVISION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"isr\00", align 1
@STMT_UPDATE_BASE_REPOS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"isis\00", align 1
@STMT_UPDATE_IPROP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*, i8*, i32*, i32, i64, i8*, i32, i32*)* @db_op_set_rev_repos_relpath_iprops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @db_op_set_rev_repos_relpath_iprops(%struct.TYPE_4__* %0, i8* %1, i32* %2, i32 %3, i64 %4, i8* %5, i32 %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32* %7, i32** %16, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %10, align 8
  %23 = load i32*, i32** %16, align 8
  %24 = call i32 @svn_dirent_join(i32 %21, i8* %22, i32* %23)
  %25 = load i32, i32* @svn_depth_empty, align 4
  %26 = load i32*, i32** %16, align 8
  %27 = call i32 @flush_entries(%struct.TYPE_4__* %18, i32 %24, i32 %25, i32* %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load i32, i32* %12, align 4
  %30 = call i64 @SVN_IS_VALID_REVNUM(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @STMT_UPDATE_BASE_REVISION, align 4
  %37 = call i32 @svn_sqlite__get_statement(i32** %17, i32 %35, i32 %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load i32*, i32** %17, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %10, align 8
  %44 = load i32, i32* %12, align 4
  %45 = call i32 (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %42, i8* %43, i32 %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  %47 = load i32*, i32** %17, align 8
  %48 = call i32 @svn_sqlite__step_done(i32* %47)
  %49 = call i32 @SVN_ERR(i32 %48)
  br label %50

50:                                               ; preds = %32, %8
  %51 = load i64, i64* %13, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %50
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @STMT_UPDATE_BASE_REPOS, align 4
  %58 = call i32 @svn_sqlite__get_statement(i32** %17, i32 %56, i32 %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  %60 = load i32*, i32** %17, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i8*, i8** %10, align 8
  %65 = load i32, i32* %15, align 4
  %66 = load i8*, i8** %14, align 8
  %67 = call i32 (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %63, i8* %64, i32 %65, i8* %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  %69 = load i32*, i32** %17, align 8
  %70 = call i32 @svn_sqlite__step_done(i32* %69)
  %71 = call i32 @SVN_ERR(i32 %70)
  br label %72

72:                                               ; preds = %53, %50
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @STMT_UPDATE_IPROP, align 4
  %77 = call i32 @svn_sqlite__get_statement(i32** %17, i32 %75, i32 %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  %79 = load i32*, i32** %17, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i8*, i8** %10, align 8
  %84 = call i32 (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %82, i8* %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  %86 = load i32*, i32** %17, align 8
  %87 = load i32*, i32** %11, align 8
  %88 = load i32*, i32** %16, align 8
  %89 = call i32 @svn_sqlite__bind_iprops(i32* %86, i32 3, i32* %87, i32* %88)
  %90 = call i32 @SVN_ERR(i32 %89)
  %91 = load i32*, i32** %17, align 8
  %92 = call i32 @svn_sqlite__step_done(i32* %91)
  %93 = call i32 @SVN_ERR(i32 %92)
  %94 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %94
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @flush_entries(%struct.TYPE_4__*, i32, i32, i32*) #1

declare dso_local i32 @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*, ...) #1

declare dso_local i32 @svn_sqlite__step_done(i32*) #1

declare dso_local i32 @svn_sqlite__bind_iprops(i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
