; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"c(?c)b(?r)\00", align 1
@svn_authz_write = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"w(!\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"!)\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i8*)* @lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @lock(i32* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %9, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @svn_ra_svn__parse_tuple(i32* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %10, i8** %11, i32* %13, i32* %14)
  %20 = call i32 @SVN_ERR(i32 %19)
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %10, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @svn_relpath_canonicalize(i8* %28, i32* %29)
  %31 = load i32*, i32** %6, align 8
  %32 = call i8* @svn_fspath__join(i32 %27, i32 %30, i32* %31)
  store i8* %32, i8** %12, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %36 = load i32, i32* @svn_authz_write, align 4
  %37 = load i8*, i8** %12, align 8
  %38 = load i32, i32* @TRUE, align 4
  %39 = call i32 @must_have_access(i32* %33, i32* %34, %struct.TYPE_8__* %35, i32 %36, i8* %37, i32 %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = load i32, i32* %13, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @svn_log__lock_one_path(i8* %44, i32 %45, i32* %46)
  %48 = call i32 @log_command(%struct.TYPE_8__* %41, i32* %42, i32* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = call i32 @SVN_ERR(i32 %48)
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i8*, i8** %12, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @svn_repos_fs_lock(i32** %15, i32 %54, i8* %55, i32* null, i8* %56, i32 0, i32 0, i32 %57, i32 %58, i32* %59)
  %61 = call i32 @SVN_CMD_ERR(i32 %60)
  %62 = load i32*, i32** %5, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = call i32 (i32*, i32*, i8*, ...) @svn_ra_svn__write_tuple(i32* %62, i32* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %65 = call i32 @SVN_ERR(i32 %64)
  %66 = load i32*, i32** %5, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = load i32*, i32** %15, align 8
  %69 = call i32 @write_lock(i32* %66, i32* %67, i32* %68)
  %70 = call i32 @SVN_ERR(i32 %69)
  %71 = load i32*, i32** %5, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 (i32*, i32*, i8*, ...) @svn_ra_svn__write_tuple(i32* %71, i32* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %74 = call i32 @SVN_ERR(i32 %73)
  %75 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %75
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_svn__parse_tuple(i32*, i8*, i8**, i8**, i32*, i32*) #1

declare dso_local i8* @svn_fspath__join(i32, i32, i32*) #1

declare dso_local i32 @svn_relpath_canonicalize(i8*, i32*) #1

declare dso_local i32 @must_have_access(i32*, i32*, %struct.TYPE_8__*, i32, i8*, i32) #1

declare dso_local i32 @log_command(%struct.TYPE_8__*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @svn_log__lock_one_path(i8*, i32, i32*) #1

declare dso_local i32 @SVN_CMD_ERR(i32) #1

declare dso_local i32 @svn_repos_fs_lock(i32**, i32, i8*, i32*, i8*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_ra_svn__write_tuple(i32*, i32*, i8*, ...) #1

declare dso_local i32 @write_lock(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
