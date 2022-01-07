; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_rev_proplist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_rev_proplist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32*, %struct.TYPE_9__* }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"w((!\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"!))\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i8*)* @rev_proplist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @rev_proplist(i32* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_10__, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %9, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %16, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  store i32* %17, i32** %18, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @svn_ra_svn__parse_tuple(i32* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %10)
  %21 = call i32 @SVN_ERR(i32 %20)
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @svn_log__rev_proplist(i32 %25, i32* %26)
  %28 = call i32 @log_command(%struct.TYPE_9__* %22, i32* %23, i32* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = call i32 @SVN_ERR(i32 %28)
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %33 = call i32 @trivial_auth_request(i32* %30, i32* %31, %struct.TYPE_9__* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %42 = call i32 @authz_check_access_cb_func(%struct.TYPE_9__* %41)
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @svn_repos_fs_revision_proplist(i32** %11, i32 %39, i32 %40, i32 %42, %struct.TYPE_10__* %12, i32* %43)
  %45 = call i32 @SVN_CMD_ERR(i32 %44)
  %46 = load i32*, i32** %5, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 (i32*, i32*, i8*, ...) @svn_ra_svn__write_tuple(i32* %46, i32* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %49 = call i32 @SVN_ERR(i32 %48)
  %50 = load i32*, i32** %5, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @svn_ra_svn__write_proplist(i32* %50, i32* %51, i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  %55 = load i32*, i32** %5, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 (i32*, i32*, i8*, ...) @svn_ra_svn__write_tuple(i32* %55, i32* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %58 = call i32 @SVN_ERR(i32 %57)
  %59 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %59
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_svn__parse_tuple(i32*, i8*, i32*) #1

declare dso_local i32 @log_command(%struct.TYPE_9__*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @svn_log__rev_proplist(i32, i32*) #1

declare dso_local i32 @trivial_auth_request(i32*, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @SVN_CMD_ERR(i32) #1

declare dso_local i32 @svn_repos_fs_revision_proplist(i32**, i32, i32, i32, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @authz_check_access_cb_func(%struct.TYPE_9__*) #1

declare dso_local i32 @svn_ra_svn__write_tuple(i32*, i32*, i8*, ...) #1

declare dso_local i32 @svn_ra_svn__write_proplist(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
