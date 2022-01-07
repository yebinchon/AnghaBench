; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_dump.c_verify_one_revision.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_dump.c_verify_one_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (i8*, i32*)* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@verify_close_directory = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32, i8*, i32, i32, i32, i8*, i32*)* @verify_one_revision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @verify_one_revision(i32* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6, i8* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_6__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_6__*, align 8
  %24 = alloca i8*, align 8
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  store i32* %8, i32** %18, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load i32*, i32** %18, align 8
  %28 = call i32 @svn_stream_empty(i32* %27)
  %29 = load i32, i32* @verify_close_directory, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i8*, i8** %13, align 8
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* @FALSE, align 4
  %34 = load i32, i32* @TRUE, align 4
  %35 = load i32, i32* %15, align 4
  %36 = load i32*, i32** %18, align 8
  %37 = call i32 @get_dump_editor(%struct.TYPE_6__** %19, i8** %20, i32* %25, i32 %26, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %28, i32* null, i32* null, i32 %29, i32 %30, i8* %31, i32 %32, i32 %33, i32 %34, i32 %35, i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load i32, i32* %16, align 4
  %40 = load i8*, i8** %17, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %42 = load i8*, i8** %20, align 8
  %43 = load i32*, i32** %18, align 8
  %44 = call i32 @svn_delta_get_cancellation_editor(i32 %39, i8* %40, %struct.TYPE_6__* %41, i8* %42, %struct.TYPE_6__** %23, i8** %24, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load i32*, i32** %18, align 8
  %49 = call i32 @svn_fs_revision_root(i32** %21, i32* %46, i32 %47, i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load i32*, i32** %21, align 8
  %52 = load i32*, i32** %18, align 8
  %53 = call i32 @svn_fs_verify_root(i32* %51, i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  %55 = load i32*, i32** %21, align 8
  %56 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %57 = load i32, i32* @FALSE, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %59 = load i8*, i8** %24, align 8
  %60 = load i32*, i32** %18, align 8
  %61 = call i32 @svn_repos_replay2(i32* %55, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57, %struct.TYPE_6__* %58, i8* %59, i32* null, i32* null, i32* %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %64, align 8
  %66 = load i8*, i8** %24, align 8
  %67 = load i32*, i32** %18, align 8
  %68 = call i32 %65(i8* %66, i32* %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @FALSE, align 4
  %73 = load i32*, i32** %18, align 8
  %74 = load i32*, i32** %18, align 8
  %75 = call i32 @svn_fs_revision_proplist2(i32** %22, i32* %70, i32 %71, i32 %72, i32* %73, i32* %74)
  %76 = call i32 @SVN_ERR(i32 %75)
  %77 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %77
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_dump_editor(%struct.TYPE_6__**, i8**, i32*, i32, i8*, i32, i32*, i32*, i32, i32, i8*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_stream_empty(i32*) #1

declare dso_local i32 @svn_delta_get_cancellation_editor(i32, i8*, %struct.TYPE_6__*, i8*, %struct.TYPE_6__**, i8**, i32*) #1

declare dso_local i32 @svn_fs_revision_root(i32**, i32*, i32, i32*) #1

declare dso_local i32 @svn_fs_verify_root(i32*, i32*) #1

declare dso_local i32 @svn_repos_replay2(i32*, i8*, i32, i32, %struct.TYPE_6__*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_fs_revision_proplist2(i32**, i32*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
