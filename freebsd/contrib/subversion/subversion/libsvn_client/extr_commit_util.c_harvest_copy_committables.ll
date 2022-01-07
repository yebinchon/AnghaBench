; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_commit_util.c_harvest_copy_committables.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_commit_util.c_harvest_copy_committables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.copy_committables_baton = type { %struct.TYPE_6__*, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.handle_descendants_baton = type { %struct.TYPE_6__*, i32, i32, i32, i32, i32 }

@svn_depth_infinity = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@handle_descendants = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*)* @harvest_copy_committables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @harvest_copy_committables(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.copy_committables_baton*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.handle_descendants_baton, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.copy_committables_baton*
  store %struct.copy_committables_baton* %13, %struct.copy_committables_baton** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_5__**
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %8, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @svn_dirent_is_absolute(i32 %19)
  %21 = call i32 @SVN_ERR_ASSERT(i32 %20)
  %22 = load %struct.copy_committables_baton*, %struct.copy_committables_baton** %7, align 8
  %23 = getelementptr inbounds %struct.copy_committables_baton, %struct.copy_committables_baton* %22, i32 0, i32 3
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @svn_wc__node_get_repos_info(i32* null, i32* null, i8** %9, i32* null, i32 %26, i32 %29, i32* %30, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load i8*, i8** %9, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = call i8* @svn_uri_skip_ancestor(i8* %34, i32 %37, i32* %38)
  store i8* %39, i8** %10, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.copy_committables_baton*, %struct.copy_committables_baton** %7, align 8
  %44 = getelementptr inbounds %struct.copy_committables_baton, %struct.copy_committables_baton* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = load i32, i32* @svn_depth_infinity, align 4
  %48 = load i32, i32* @FALSE, align 4
  %49 = load %struct.copy_committables_baton*, %struct.copy_committables_baton** %7, align 8
  %50 = getelementptr inbounds %struct.copy_committables_baton, %struct.copy_committables_baton* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.copy_committables_baton*, %struct.copy_committables_baton** %7, align 8
  %53 = getelementptr inbounds %struct.copy_committables_baton, %struct.copy_committables_baton* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.copy_committables_baton*, %struct.copy_committables_baton** %7, align 8
  %56 = getelementptr inbounds %struct.copy_committables_baton, %struct.copy_committables_baton* %55, i32 0, i32 3
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.copy_committables_baton*, %struct.copy_committables_baton** %7, align 8
  %61 = getelementptr inbounds %struct.copy_committables_baton, %struct.copy_committables_baton* %60, i32 0, i32 3
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.copy_committables_baton*, %struct.copy_committables_baton** %7, align 8
  %66 = getelementptr inbounds %struct.copy_committables_baton, %struct.copy_committables_baton* %65, i32 0, i32 3
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.copy_committables_baton*, %struct.copy_committables_baton** %7, align 8
  %71 = getelementptr inbounds %struct.copy_committables_baton, %struct.copy_committables_baton* %70, i32 0, i32 3
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.copy_committables_baton*, %struct.copy_committables_baton** %7, align 8
  %76 = getelementptr inbounds %struct.copy_committables_baton, %struct.copy_committables_baton* %75, i32 0, i32 3
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.copy_committables_baton*, %struct.copy_committables_baton** %7, align 8
  %81 = getelementptr inbounds %struct.copy_committables_baton, %struct.copy_committables_baton* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @harvest_committables(i32 %42, %struct.TYPE_6__* %45, i32* null, i8* %46, i32 %47, i32 %48, i32* null, i32* null, i32 %51, i32 %54, i32 %59, i32 %64, i32 %69, i32 %74, i32 %79, i32 %82, i32* %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  %86 = load %struct.copy_committables_baton*, %struct.copy_committables_baton** %7, align 8
  %87 = getelementptr inbounds %struct.copy_committables_baton, %struct.copy_committables_baton* %86, i32 0, i32 3
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.handle_descendants_baton, %struct.handle_descendants_baton* %11, i32 0, i32 5
  store i32 %90, i32* %91, align 8
  %92 = load %struct.copy_committables_baton*, %struct.copy_committables_baton** %7, align 8
  %93 = getelementptr inbounds %struct.copy_committables_baton, %struct.copy_committables_baton* %92, i32 0, i32 3
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.handle_descendants_baton, %struct.handle_descendants_baton* %11, i32 0, i32 4
  store i32 %96, i32* %97, align 4
  %98 = load %struct.copy_committables_baton*, %struct.copy_committables_baton** %7, align 8
  %99 = getelementptr inbounds %struct.copy_committables_baton, %struct.copy_committables_baton* %98, i32 0, i32 3
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.handle_descendants_baton, %struct.handle_descendants_baton* %11, i32 0, i32 3
  store i32 %102, i32* %103, align 8
  %104 = load %struct.copy_committables_baton*, %struct.copy_committables_baton** %7, align 8
  %105 = getelementptr inbounds %struct.copy_committables_baton, %struct.copy_committables_baton* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.handle_descendants_baton, %struct.handle_descendants_baton* %11, i32 0, i32 2
  store i32 %106, i32* %107, align 4
  %108 = load %struct.copy_committables_baton*, %struct.copy_committables_baton** %7, align 8
  %109 = getelementptr inbounds %struct.copy_committables_baton, %struct.copy_committables_baton* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = getelementptr inbounds %struct.handle_descendants_baton, %struct.handle_descendants_baton* %11, i32 0, i32 1
  store i32 %110, i32* %111, align 8
  %112 = load %struct.copy_committables_baton*, %struct.copy_committables_baton** %7, align 8
  %113 = getelementptr inbounds %struct.copy_committables_baton, %struct.copy_committables_baton* %112, i32 0, i32 0
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.handle_descendants_baton, %struct.handle_descendants_baton* %11, i32 0, i32 0
  store %struct.TYPE_6__* %114, %struct.TYPE_6__** %115, align 8
  %116 = load %struct.copy_committables_baton*, %struct.copy_committables_baton** %7, align 8
  %117 = getelementptr inbounds %struct.copy_committables_baton, %struct.copy_committables_baton* %116, i32 0, i32 0
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @handle_descendants, align 4
  %122 = load i32*, i32** %6, align 8
  %123 = call i32 @svn_iter_apr_hash(i32* null, i32 %120, i32 %121, %struct.handle_descendants_baton* %11, i32* %122)
  %124 = call i32 @SVN_ERR(i32 %123)
  %125 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %125
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__node_get_repos_info(i32*, i32*, i8**, i32*, i32, i32, i32*, i32*) #1

declare dso_local i8* @svn_uri_skip_ancestor(i8*, i32, i32*) #1

declare dso_local i32 @harvest_committables(i32, %struct.TYPE_6__*, i32*, i8*, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_iter_apr_hash(i32*, i32, i32, %struct.handle_descendants_baton*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
