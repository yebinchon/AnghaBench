; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_local/extr_ra_plugin.c_svn_ra_local__get_commit_ev2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_local/extr_ra_plugin.c_svn_ra_local__get_commit_ev2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.deltify_etc_baton = type { i8*, i32, i32*, i32, i32, i32 }

@SVN_PROP_REVISION_AUTHOR = common dso_local global i32 0, align 4
@deltify_etc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, %struct.TYPE_8__*, i32*, i32, i8*, i32*, i32, i32, i32, i32, i8*, i32, i8*, i32*, i32*)* @svn_ra_local__get_commit_ev2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @svn_ra_local__get_commit_ev2(i32** %0, %struct.TYPE_8__* %1, i32* %2, i32 %3, i8* %4, i32* %5, i32 %6, i32 %7, i32 %8, i32 %9, i8* %10, i32 %11, i8* %12, i32* %13, i32* %14) #0 {
  %16 = alloca i32**, align 8
  %17 = alloca %struct.TYPE_8__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca %struct.TYPE_9__*, align 8
  %32 = alloca %struct.deltify_etc_baton*, align 8
  store i32** %0, i32*** %16, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %17, align 8
  store i32* %2, i32** %18, align 8
  store i32 %3, i32* %19, align 4
  store i8* %4, i8** %20, align 8
  store i32* %5, i32** %21, align 8
  store i32 %6, i32* %22, align 4
  store i32 %7, i32* %23, align 4
  store i32 %8, i32* %24, align 4
  store i32 %9, i32* %25, align 4
  store i8* %10, i8** %26, align 8
  store i32 %11, i32* %27, align 4
  store i8* %12, i8** %28, align 8
  store i32* %13, i32** %29, align 8
  store i32* %14, i32** %30, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %31, align 8
  %36 = load i32*, i32** %29, align 8
  %37 = call %struct.deltify_etc_baton* @apr_palloc(i32* %36, i32 40)
  store %struct.deltify_etc_baton* %37, %struct.deltify_etc_baton** %32, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %39 = load i32, i32* %19, align 4
  %40 = load i8*, i8** %20, align 8
  %41 = load i32*, i32** %29, align 8
  %42 = call i32 @remap_commit_callback(i32* %19, i8** %20, %struct.TYPE_8__* %38, i32 %39, i8* %40, i32* %41)
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.deltify_etc_baton*, %struct.deltify_etc_baton** %32, align 8
  %47 = getelementptr inbounds %struct.deltify_etc_baton, %struct.deltify_etc_baton* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.deltify_etc_baton*, %struct.deltify_etc_baton** %32, align 8
  %52 = getelementptr inbounds %struct.deltify_etc_baton, %struct.deltify_etc_baton* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.deltify_etc_baton*, %struct.deltify_etc_baton** %32, align 8
  %59 = getelementptr inbounds %struct.deltify_etc_baton, %struct.deltify_etc_baton* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %22, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %15
  %63 = load i32*, i32** %21, align 8
  %64 = load %struct.deltify_etc_baton*, %struct.deltify_etc_baton** %32, align 8
  %65 = getelementptr inbounds %struct.deltify_etc_baton, %struct.deltify_etc_baton* %64, i32 0, i32 2
  store i32* %63, i32** %65, align 8
  br label %69

66:                                               ; preds = %15
  %67 = load %struct.deltify_etc_baton*, %struct.deltify_etc_baton** %32, align 8
  %68 = getelementptr inbounds %struct.deltify_etc_baton, %struct.deltify_etc_baton* %67, i32 0, i32 2
  store i32* null, i32** %68, align 8
  br label %69

69:                                               ; preds = %66, %62
  %70 = load i32, i32* %19, align 4
  %71 = load %struct.deltify_etc_baton*, %struct.deltify_etc_baton** %32, align 8
  %72 = getelementptr inbounds %struct.deltify_etc_baton, %struct.deltify_etc_baton* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  %73 = load i8*, i8** %20, align 8
  %74 = load %struct.deltify_etc_baton*, %struct.deltify_etc_baton** %32, align 8
  %75 = getelementptr inbounds %struct.deltify_etc_baton, %struct.deltify_etc_baton* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %77 = load i32*, i32** %30, align 8
  %78 = call i32 @get_username(%struct.TYPE_8__* %76, i32* %77)
  %79 = call i32 @SVN_ERR(i32 %78)
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %21, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32*, i32** %30, align 8
  %93 = call i32 @apply_lock_tokens(i32 %82, i32 %87, i32* %88, i32 %91, i32* %92)
  %94 = call i32 @SVN_ERR(i32 %93)
  %95 = load i32*, i32** %30, align 8
  %96 = load i32*, i32** %18, align 8
  %97 = call i32* @apr_hash_copy(i32* %95, i32* %96)
  store i32* %97, i32** %18, align 8
  %98 = load i32*, i32** %18, align 8
  %99 = load i32, i32* @SVN_PROP_REVISION_AUTHOR, align 4
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %30, align 8
  %104 = call i32 @svn_string_create(i32 %102, i32* %103)
  %105 = call i32 @svn_hash_sets(i32* %98, i32 %99, i32 %104)
  %106 = load i32**, i32*** %16, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32*, i32** %18, align 8
  %111 = load i32, i32* @deltify_etc, align 4
  %112 = load %struct.deltify_etc_baton*, %struct.deltify_etc_baton** %32, align 8
  %113 = load i32, i32* %27, align 4
  %114 = load i8*, i8** %28, align 8
  %115 = load i32*, i32** %29, align 8
  %116 = load i32*, i32** %30, align 8
  %117 = call i32 @svn_repos__get_commit_ev2(i32** %106, i32 %109, i32* null, i32* null, i32* null, i32* %110, i32 %111, %struct.deltify_etc_baton* %112, i32 %113, i8* %114, i32* %115, i32* %116)
  %118 = call i32* @svn_error_trace(i32 %117)
  ret i32* %118
}

declare dso_local %struct.deltify_etc_baton* @apr_palloc(i32*, i32) #1

declare dso_local i32 @remap_commit_callback(i32*, i8**, %struct.TYPE_8__*, i32, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_username(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @apply_lock_tokens(i32, i32, i32*, i32, i32*) #1

declare dso_local i32* @apr_hash_copy(i32*, i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i32, i32) #1

declare dso_local i32 @svn_string_create(i32, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_repos__get_commit_ev2(i32**, i32, i32*, i32*, i32*, i32*, i32, %struct.deltify_etc_baton*, i32, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
