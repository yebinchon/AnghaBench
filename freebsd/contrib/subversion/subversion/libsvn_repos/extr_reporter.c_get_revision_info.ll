; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_reporter.c_get_revision_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_reporter.c_get_revision_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i8*, i8* }

@FALSE = common dso_local global i32 0, align 4
@SVN_PROP_REVISION_DATE = common dso_local global i32 0, align 4
@SVN_PROP_REVISION_AUTHOR = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_11__*, i32, %struct.TYPE_10__**, i32*)* @get_revision_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_revision_info(%struct.TYPE_11__* %0, i32 %1, %struct.TYPE_10__** %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_10__** %2, %struct.TYPE_10__*** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.TYPE_10__* @apr_hash_get(i32 %15, i32* %6, i32 4)
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %12, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %18 = icmp ne %struct.TYPE_10__* %17, null
  br i1 %18, label %65, label %19

19:                                               ; preds = %4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @FALSE, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @svn_fs_revision_proplist2(i32** %9, i32 %24, i32 %25, i32 %26, i32* %27, i32* %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* @SVN_PROP_REVISION_DATE, align 4
  %33 = call i32* @svn_hash_gets(i32* %31, i32 %32)
  store i32* %33, i32** %10, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* @SVN_PROP_REVISION_AUTHOR, align 4
  %36 = call i32* @svn_hash_gets(i32* %34, i32 %35)
  store i32* %36, i32** %11, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.TYPE_10__* @apr_palloc(i32 %39, i32 24)
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %12, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @svn_string_dup(i32* %44, i32 %47)
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @svn_string_dup(i32* %51, i32 %54)
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %64 = call i32 @apr_hash_set(i32 %60, i32* %62, i32 4, %struct.TYPE_10__* %63)
  br label %65

65:                                               ; preds = %19, %4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %67 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  store %struct.TYPE_10__* %66, %struct.TYPE_10__** %67, align 8
  %68 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %68
}

declare dso_local %struct.TYPE_10__* @apr_hash_get(i32, i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_revision_proplist2(i32**, i32, i32, i32, i32*, i32*) #1

declare dso_local i32* @svn_hash_gets(i32*, i32) #1

declare dso_local %struct.TYPE_10__* @apr_palloc(i32, i32) #1

declare dso_local i8* @svn_string_dup(i32*, i32) #1

declare dso_local i32 @apr_hash_set(i32, i32*, i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
