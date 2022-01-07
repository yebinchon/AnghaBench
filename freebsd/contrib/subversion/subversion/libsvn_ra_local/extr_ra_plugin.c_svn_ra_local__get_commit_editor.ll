; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_local/extr_ra_plugin.c_svn_ra_local__get_commit_editor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_local/extr_ra_plugin.c_svn_ra_local__get_commit_editor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_7__*, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.deltify_etc_baton = type { i8*, i32, i32*, i32, i32, i32 }

@SVN_PROP_REVISION_AUTHOR = common dso_local global i32 0, align 4
@SVN_PROP_TXN_CLIENT_COMPAT_VERSION = common dso_local global i32 0, align 4
@SVN_VER_NUMBER = common dso_local global i32 0, align 4
@SVN_PROP_TXN_USER_AGENT = common dso_local global i32 0, align 4
@deltify_etc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_8__*, i32**, i8**, i32*, i32, i8*, i32*, i32, i32*)* @svn_ra_local__get_commit_editor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @svn_ra_local__get_commit_editor(%struct.TYPE_8__* %0, i32** %1, i8** %2, i32* %3, i32 %4, i8* %5, i32* %6, i32 %7, i32* %8) #0 {
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_9__*, align 8
  %20 = alloca %struct.deltify_etc_baton*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %10, align 8
  store i32** %1, i32*** %11, align 8
  store i8** %2, i8*** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32* %8, i32** %18, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %19, align 8
  %24 = load i32*, i32** %18, align 8
  %25 = call %struct.deltify_etc_baton* @apr_palloc(i32* %24, i32 40)
  store %struct.deltify_etc_baton* %25, %struct.deltify_etc_baton** %20, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %27 = load i32, i32* %14, align 4
  %28 = load i8*, i8** %15, align 8
  %29 = load i32*, i32** %18, align 8
  %30 = call i32 @remap_commit_callback(i32* %14, i8** %15, %struct.TYPE_8__* %26, i32 %27, i8* %28, i32* %29)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.deltify_etc_baton*, %struct.deltify_etc_baton** %20, align 8
  %35 = getelementptr inbounds %struct.deltify_etc_baton, %struct.deltify_etc_baton* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.deltify_etc_baton*, %struct.deltify_etc_baton** %20, align 8
  %40 = getelementptr inbounds %struct.deltify_etc_baton, %struct.deltify_etc_baton* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.deltify_etc_baton*, %struct.deltify_etc_baton** %20, align 8
  %47 = getelementptr inbounds %struct.deltify_etc_baton, %struct.deltify_etc_baton* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %17, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %9
  %51 = load i32*, i32** %16, align 8
  %52 = load %struct.deltify_etc_baton*, %struct.deltify_etc_baton** %20, align 8
  %53 = getelementptr inbounds %struct.deltify_etc_baton, %struct.deltify_etc_baton* %52, i32 0, i32 2
  store i32* %51, i32** %53, align 8
  br label %57

54:                                               ; preds = %9
  %55 = load %struct.deltify_etc_baton*, %struct.deltify_etc_baton** %20, align 8
  %56 = getelementptr inbounds %struct.deltify_etc_baton, %struct.deltify_etc_baton* %55, i32 0, i32 2
  store i32* null, i32** %56, align 8
  br label %57

57:                                               ; preds = %54, %50
  %58 = load i32, i32* %14, align 4
  %59 = load %struct.deltify_etc_baton*, %struct.deltify_etc_baton** %20, align 8
  %60 = getelementptr inbounds %struct.deltify_etc_baton, %struct.deltify_etc_baton* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load i8*, i8** %15, align 8
  %62 = load %struct.deltify_etc_baton*, %struct.deltify_etc_baton** %20, align 8
  %63 = getelementptr inbounds %struct.deltify_etc_baton, %struct.deltify_etc_baton* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %65 = load i32*, i32** %18, align 8
  %66 = call i32 @get_username(%struct.TYPE_8__* %64, i32* %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %16, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32*, i32** %18, align 8
  %81 = call i32 @apply_lock_tokens(i32 %70, i32 %75, i32* %76, i32 %79, i32* %80)
  %82 = call i32 @SVN_ERR(i32 %81)
  %83 = load i32*, i32** %18, align 8
  %84 = load i32*, i32** %13, align 8
  %85 = call i32* @apr_hash_copy(i32* %83, i32* %84)
  store i32* %85, i32** %13, align 8
  %86 = load i32*, i32** %13, align 8
  %87 = load i32, i32* @SVN_PROP_REVISION_AUTHOR, align 4
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %18, align 8
  %92 = call i32 @svn_string_create(i32 %90, i32* %91)
  %93 = call i32 @svn_hash_sets(i32* %86, i32 %87, i32 %92)
  %94 = load i32*, i32** %13, align 8
  %95 = load i32, i32* @SVN_PROP_TXN_CLIENT_COMPAT_VERSION, align 4
  %96 = load i32, i32* @SVN_VER_NUMBER, align 4
  %97 = load i32*, i32** %18, align 8
  %98 = call i32 @svn_string_create(i32 %96, i32* %97)
  %99 = call i32 @svn_hash_sets(i32* %94, i32 %95, i32 %98)
  %100 = load i32*, i32** %13, align 8
  %101 = load i32, i32* @SVN_PROP_TXN_USER_AGENT, align 4
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load i32*, i32** %18, align 8
  %106 = call i32 @svn_string_create(i32 %104, i32* %105)
  %107 = call i32 @svn_hash_sets(i32* %100, i32 %101, i32 %106)
  %108 = load i32**, i32*** %11, align 8
  %109 = load i8**, i8*** %12, align 8
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32*, i32** %18, align 8
  %117 = call i32 @svn_path_uri_decode(i32 %115, i32* %116)
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %13, align 8
  %124 = load i32, i32* @deltify_etc, align 4
  %125 = load %struct.deltify_etc_baton*, %struct.deltify_etc_baton** %20, align 8
  %126 = load i32*, i32** %18, align 8
  %127 = call i32* @svn_repos_get_commit_editor5(i32** %108, i8** %109, i32 %112, i32* null, i32 %117, i32 %122, i32* %123, i32 %124, %struct.deltify_etc_baton* %125, i32* null, i32* null, i32* %126)
  ret i32* %127
}

declare dso_local %struct.deltify_etc_baton* @apr_palloc(i32*, i32) #1

declare dso_local i32 @remap_commit_callback(i32*, i8**, %struct.TYPE_8__*, i32, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_username(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @apply_lock_tokens(i32, i32, i32*, i32, i32*) #1

declare dso_local i32* @apr_hash_copy(i32*, i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i32, i32) #1

declare dso_local i32 @svn_string_create(i32, i32*) #1

declare dso_local i32* @svn_repos_get_commit_editor5(i32**, i8**, i32, i32*, i32, i32, i32*, i32, %struct.deltify_etc_baton*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_path_uri_decode(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
