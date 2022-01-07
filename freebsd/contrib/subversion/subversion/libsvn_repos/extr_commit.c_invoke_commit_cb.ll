; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_commit.c_invoke_commit_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_commit.c_invoke_commit_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32*, i32*, i32 }
%struct.TYPE_7__ = type { i32* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@TRUE = common dso_local global i32 0, align 4
@SVN_PROP_REVISION_DATE = common dso_local global i32 0, align 4
@SVN_PROP_REVISION_AUTHOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32 (%struct.TYPE_8__*, i8*, i32*)*, i8*, i32*, i32, i8*, i32*)* @invoke_commit_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @invoke_commit_cb(i32 (%struct.TYPE_8__*, i8*, i32*)* %0, i8* %1, i32* %2, i32 %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32 (%struct.TYPE_8__*, i8*, i32*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca i32*, align 8
  store i32 (%struct.TYPE_8__*, i8*, i32*)* %0, i32 (%struct.TYPE_8__*, i8*, i32*)** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load i32 (%struct.TYPE_8__*, i8*, i32*)*, i32 (%struct.TYPE_8__*, i8*, i32*)** %8, align 8
  %19 = icmp eq i32 (%struct.TYPE_8__*, i8*, i32*)* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %21, i32** %7, align 8
  br label %72

22:                                               ; preds = %6
  %23 = load i32*, i32** %10, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @TRUE, align 4
  %26 = load i32*, i32** %13, align 8
  %27 = load i32*, i32** %13, align 8
  %28 = call i32 @svn_fs_revision_proplist2(i32** %17, i32* %23, i32 %24, i32 %25, i32* %26, i32* %27)
  %29 = call i32 @SVN_ERR(i32 %28)
  %30 = load i32*, i32** %17, align 8
  %31 = load i32, i32* @SVN_PROP_REVISION_DATE, align 4
  %32 = call %struct.TYPE_7__* @svn_hash_gets(i32* %30, i32 %31)
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %14, align 8
  %33 = load i32*, i32** %17, align 8
  %34 = load i32, i32* @SVN_PROP_REVISION_AUTHOR, align 4
  %35 = call %struct.TYPE_7__* @svn_hash_gets(i32* %33, i32 %34)
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %15, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = call %struct.TYPE_8__* @svn_create_commit_info(i32* %36)
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %16, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %42 = icmp ne %struct.TYPE_7__* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %22
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  br label %48

47:                                               ; preds = %22
  br label %48

48:                                               ; preds = %47, %43
  %49 = phi i32* [ %46, %43 ], [ null, %47 ]
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  store i32* %49, i32** %51, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %53 = icmp ne %struct.TYPE_7__* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  br label %59

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58, %54
  %60 = phi i32* [ %57, %54 ], [ null, %58 ]
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  store i32* %60, i32** %62, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  %66 = load i32 (%struct.TYPE_8__*, i8*, i32*)*, i32 (%struct.TYPE_8__*, i8*, i32*)** %8, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = load i32*, i32** %13, align 8
  %70 = call i32 %66(%struct.TYPE_8__* %67, i8* %68, i32* %69)
  %71 = call i32* @svn_error_trace(i32 %70)
  store i32* %71, i32** %7, align 8
  br label %72

72:                                               ; preds = %59, %20
  %73 = load i32*, i32** %7, align 8
  ret i32* %73
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_revision_proplist2(i32**, i32*, i32, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_7__* @svn_hash_gets(i32*, i32) #1

declare dso_local %struct.TYPE_8__* @svn_create_commit_info(i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
