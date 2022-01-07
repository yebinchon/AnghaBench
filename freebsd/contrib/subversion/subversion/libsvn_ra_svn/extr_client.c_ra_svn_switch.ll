; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_ra_svn_switch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_ra_svn_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_8__*, i32**, i8**, i32, i8*, i32, i8*, i32, i32, i32*, i8*, i32*, i32*)* @ra_svn_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ra_svn_switch(%struct.TYPE_8__* %0, i32** %1, i8** %2, i32 %3, i8* %4, i32 %5, i8* %6, i32 %7, i32 %8, i32* %9, i8* %10, i32* %11, i32* %12) #0 {
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca %struct.TYPE_7__*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %14, align 8
  store i32** %1, i32*** %15, align 8
  store i8** %2, i8*** %16, align 8
  store i32 %3, i32* %17, align 4
  store i8* %4, i8** %18, align 8
  store i32 %5, i32* %19, align 4
  store i8* %6, i8** %20, align 8
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32* %9, i32** %23, align 8
  store i8* %10, i8** %24, align 8
  store i32* %11, i32** %25, align 8
  store i32* %12, i32** %26, align 8
  %31 = load i32*, i32** %25, align 8
  store i32* %31, i32** %27, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %28, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %29, align 8
  %38 = load i32, i32* %19, align 4
  %39 = call i32 @DEPTH_TO_RECURSE(i32 %38)
  store i32 %39, i32* %30, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %41 = load i32*, i32** %26, align 8
  %42 = call i32 @ensure_exact_server_parent(%struct.TYPE_8__* %40, i32* %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load i32*, i32** %29, align 8
  %45 = load i32*, i32** %27, align 8
  %46 = load i32, i32* %17, align 4
  %47 = load i8*, i8** %18, align 8
  %48 = load i32, i32* %30, align 4
  %49 = load i8*, i8** %20, align 8
  %50 = load i32, i32* %19, align 4
  %51 = load i32, i32* %21, align 4
  %52 = load i32, i32* %22, align 4
  %53 = call i32 @svn_ra_svn__write_cmd_switch(i32* %44, i32* %45, i32 %46, i8* %47, i32 %48, i8* %49, i32 %50, i32 %51, i32 %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %56 = load i32*, i32** %27, align 8
  %57 = call i32 @handle_auth_request(%struct.TYPE_7__* %55, i32* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %60 = load i32*, i32** %27, align 8
  %61 = load i32*, i32** %23, align 8
  %62 = load i8*, i8** %24, align 8
  %63 = load i8*, i8** %18, align 8
  %64 = load i32, i32* %19, align 4
  %65 = load i32**, i32*** %15, align 8
  %66 = load i8**, i8*** %16, align 8
  %67 = call i32 @ra_svn_get_reporter(%struct.TYPE_7__* %59, i32* %60, i32* %61, i8* %62, i8* %63, i32 %64, i32** %65, i8** %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  %69 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %69
}

declare dso_local i32 @DEPTH_TO_RECURSE(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @ensure_exact_server_parent(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @svn_ra_svn__write_cmd_switch(i32*, i32*, i32, i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @handle_auth_request(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @ra_svn_get_reporter(%struct.TYPE_7__*, i32*, i32*, i8*, i8*, i32, i32**, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
