; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_get_deleted_rev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_get_deleted_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"crr\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"get-deleted-rev\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i8*)* @get_deleted_rev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_deleted_rev(i32* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %9, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @svn_ra_svn__parse_tuple(i32* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %10, i32* %12, i32* %13)
  %19 = call i32 @SVN_ERR(i32 %18)
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %10, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @svn_relpath_canonicalize(i8* %27, i32* %28)
  %30 = load i32*, i32** %6, align 8
  %31 = call i8* @svn_fspath__join(i32 %26, i32 %29, i32* %30)
  store i8* %31, i8** %11, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @log_command(%struct.TYPE_8__* %32, i32* %33, i32* %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load i32*, i32** %5, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %40 = call i32 @trivial_auth_request(i32* %37, i32* %38, %struct.TYPE_8__* %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @svn_repos_deleted_rev(i32 %46, i8* %47, i32 %48, i32 %49, i32* %14, i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  %53 = load i32*, i32** %5, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @svn_ra_svn__write_cmd_response(i32* %53, i32* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  %58 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %58
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_svn__parse_tuple(i32*, i8*, i8**, i32*, i32*) #1

declare dso_local i8* @svn_fspath__join(i32, i32, i32*) #1

declare dso_local i32 @svn_relpath_canonicalize(i8*, i32*) #1

declare dso_local i32 @log_command(%struct.TYPE_8__*, i32*, i32*, i8*) #1

declare dso_local i32 @trivial_auth_request(i32*, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @svn_repos_deleted_rev(i32, i8*, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_ra_svn__write_cmd_response(i32*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
