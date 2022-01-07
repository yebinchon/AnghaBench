; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_workqueue.c_run_prej_install.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_workqueue.c_run_prej_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_8__*, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }

@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, %struct.TYPE_8__*, i8*, i32, i8*, i32*)* @run_prej_install to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @run_prej_install(i32* %0, i32* %1, %struct.TYPE_8__* %2, i8* %3, i32 %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_8__*, align 8
  %19 = alloca %struct.TYPE_8__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32* %6, i32** %14, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %15, align 8
  %27 = load i32*, i32** %14, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i8* @apr_pstrmemdup(i32* %27, i32 %30, i32 %33)
  store i8* %34, i8** %16, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load i8*, i8** %16, align 8
  %38 = load i32*, i32** %14, align 8
  %39 = load i32*, i32** %14, align 8
  %40 = call i32 @svn_wc__db_from_relpath(i8** %17, i32* %35, i8* %36, i8* %37, i32* %38, i32* %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  %42 = load i32*, i32** %9, align 8
  %43 = load i8*, i8** %17, align 8
  %44 = load i32*, i32** %14, align 8
  %45 = load i32*, i32** %14, align 8
  %46 = call i32 @svn_wc__db_read_conflict(%struct.TYPE_8__** %18, i32* null, i32* null, i32* %42, i8* %43, i32* %44, i32* %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  %48 = load i32*, i32** %9, align 8
  %49 = load i8*, i8** %17, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = load i32*, i32** %14, align 8
  %53 = call i32 @svn_wc__conflict_read_prop_conflict(i8** %21, i32* null, i32* null, i32* null, i32* null, i32* %48, i8* %49, %struct.TYPE_8__* %50, i32* %51, i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = icmp ne %struct.TYPE_8__* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %7
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  store %struct.TYPE_8__* %62, %struct.TYPE_8__** %19, align 8
  br label %64

63:                                               ; preds = %7
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %19, align 8
  br label %64

64:                                               ; preds = %63, %59
  %65 = load i32*, i32** %9, align 8
  %66 = load i8*, i8** %17, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %68 = load i32, i32* %12, align 4
  %69 = load i8*, i8** %13, align 8
  %70 = load i32*, i32** %14, align 8
  %71 = load i32*, i32** %14, align 8
  %72 = call i32 @svn_wc__create_prejfile(i8** %20, i32* %65, i8* %66, %struct.TYPE_8__* %67, i32 %68, i8* %69, i32* %70, i32* %71)
  %73 = call i32 @SVN_ERR(i32 %72)
  %74 = load i8*, i8** %20, align 8
  %75 = load i8*, i8** %21, align 8
  %76 = load i32, i32* @FALSE, align 4
  %77 = load i32*, i32** %14, align 8
  %78 = call i32 @svn_io_file_rename2(i8* %74, i8* %75, i32 %76, i32* %77)
  %79 = call i32 @SVN_ERR(i32 %78)
  %80 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %80
}

declare dso_local i8* @apr_pstrmemdup(i32*, i32, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_from_relpath(i8**, i32*, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_read_conflict(%struct.TYPE_8__**, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__conflict_read_prop_conflict(i8**, i32*, i32*, i32*, i32*, i32*, i8*, %struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i32 @svn_wc__create_prejfile(i8**, i32*, i8*, %struct.TYPE_8__*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @svn_io_file_rename2(i8*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
