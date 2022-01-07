; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_ra_svn_diff.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_ra_svn_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_8__*, i32**, i8**, i32, i8*, i32, i32, i32, i8*, i32*, i8*, i32*)* @ra_svn_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ra_svn_diff(%struct.TYPE_8__* %0, i32** %1, i8** %2, i32 %3, i8* %4, i32 %5, i32 %6, i32 %7, i8* %8, i32* %9, i8* %10, i32* %11) #0 {
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_7__*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %13, align 8
  store i32** %1, i32*** %14, align 8
  store i8** %2, i8*** %15, align 8
  store i32 %3, i32* %16, align 4
  store i8* %4, i8** %17, align 8
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i8* %8, i8** %21, align 8
  store i32* %9, i32** %22, align 8
  store i8* %10, i8** %23, align 8
  store i32* %11, i32** %24, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  store %struct.TYPE_7__* %30, %struct.TYPE_7__** %25, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %26, align 8
  %34 = load i32, i32* %18, align 4
  %35 = call i32 @DEPTH_TO_RECURSE(i32 %34)
  store i32 %35, i32* %27, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %37 = load i32*, i32** %24, align 8
  %38 = call i32 @ensure_exact_server_parent(%struct.TYPE_8__* %36, i32* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load i32*, i32** %26, align 8
  %41 = load i32*, i32** %24, align 8
  %42 = load i32, i32* %16, align 4
  %43 = load i8*, i8** %17, align 8
  %44 = load i32, i32* %27, align 4
  %45 = load i32, i32* %19, align 4
  %46 = load i8*, i8** %21, align 8
  %47 = load i32, i32* %20, align 4
  %48 = load i32, i32* %18, align 4
  %49 = call i32 @svn_ra_svn__write_cmd_diff(i32* %40, i32* %41, i32 %42, i8* %43, i32 %44, i32 %45, i8* %46, i32 %47, i32 %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %52 = load i32*, i32** %24, align 8
  %53 = call i32 @handle_auth_request(%struct.TYPE_7__* %51, i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %56 = load i32*, i32** %24, align 8
  %57 = load i32*, i32** %22, align 8
  %58 = load i8*, i8** %23, align 8
  %59 = load i8*, i8** %17, align 8
  %60 = load i32, i32* %18, align 4
  %61 = load i32**, i32*** %14, align 8
  %62 = load i8**, i8*** %15, align 8
  %63 = call i32 @ra_svn_get_reporter(%struct.TYPE_7__* %55, i32* %56, i32* %57, i8* %58, i8* %59, i32 %60, i32** %61, i8** %62)
  %64 = call i32 @SVN_ERR(i32 %63)
  %65 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %65
}

declare dso_local i32 @DEPTH_TO_RECURSE(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @ensure_exact_server_parent(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @svn_ra_svn__write_cmd_diff(i32*, i32*, i32, i8*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @handle_auth_request(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @ra_svn_get_reporter(%struct.TYPE_7__*, i32*, i32*, i8*, i8*, i32, i32**, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
