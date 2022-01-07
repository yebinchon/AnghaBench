; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_do_change_rev_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_do_change_rev_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i32*, %struct.TYPE_12__* }

@svn_authz_write = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_12__*, i32, i8*, i32**, i32*, i32*)* @do_change_rev_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @do_change_rev_prop(i32* %0, %struct.TYPE_12__* %1, i32 %2, i8* %3, i32** %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_13__, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32** %4, i32*** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %17, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  store i32* %18, i32** %19, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i32*, i32** %14, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %23 = load i32, i32* @svn_authz_write, align 4
  %24 = load i32, i32* @FALSE, align 4
  %25 = call i32 @must_have_access(i32* %20, i32* %21, %struct.TYPE_12__* %22, i32 %23, i32* null, i32 %24)
  %26 = call i32 @SVN_ERR(i32 %25)
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i32*, i32** %14, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i8*, i8** %11, align 8
  %32 = load i32*, i32** %14, align 8
  %33 = call i32 @svn_log__change_rev_prop(i32 %30, i8* %31, i32* %32)
  %34 = call i32 @log_command(%struct.TYPE_12__* %27, i32* %28, i32* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %11, align 8
  %48 = load i32**, i32*** %12, align 8
  %49 = load i32*, i32** %13, align 8
  %50 = load i32, i32* @TRUE, align 4
  %51 = load i32, i32* @TRUE, align 4
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %53 = call i32 @authz_check_access_cb_func(%struct.TYPE_12__* %52)
  %54 = load i32*, i32** %14, align 8
  %55 = call i32 @svn_repos_fs_change_rev_prop4(i32 %40, i32 %41, i32 %46, i8* %47, i32** %48, i32* %49, i32 %50, i32 %51, i32 %53, %struct.TYPE_13__* %15, i32* %54)
  %56 = call i32 @SVN_CMD_ERR(i32 %55)
  %57 = load i32*, i32** %8, align 8
  %58 = load i32*, i32** %14, align 8
  %59 = call i32 @svn_ra_svn__write_cmd_response(i32* %57, i32* %58, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %60 = call i32 @SVN_ERR(i32 %59)
  %61 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %61
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @must_have_access(i32*, i32*, %struct.TYPE_12__*, i32, i32*, i32) #1

declare dso_local i32 @log_command(%struct.TYPE_12__*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @svn_log__change_rev_prop(i32, i8*, i32*) #1

declare dso_local i32 @SVN_CMD_ERR(i32) #1

declare dso_local i32 @svn_repos_fs_change_rev_prop4(i32, i32, i32, i8*, i32**, i32*, i32, i32, i32, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @authz_check_access_cb_func(%struct.TYPE_12__*) #1

declare dso_local i32 @svn_ra_svn__write_cmd_response(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
