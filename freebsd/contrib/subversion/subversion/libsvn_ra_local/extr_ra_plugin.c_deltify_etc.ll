; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_local/extr_ra_plugin.c_deltify_etc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_local/extr_ra_plugin.c_deltify_etc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.deltify_etc_baton = type { i32, i32, i32, i64, i32, i32* (%struct.TYPE_4__*, i32, i32*)* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*, i8*, i32*)* @deltify_etc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @deltify_etc(%struct.TYPE_4__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.deltify_etc_baton*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.deltify_etc_baton*
  store %struct.deltify_etc_baton* %17, %struct.deltify_etc_baton** %7, align 8
  %18 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %18, i32** %8, align 8
  %19 = load %struct.deltify_etc_baton*, %struct.deltify_etc_baton** %7, align 8
  %20 = getelementptr inbounds %struct.deltify_etc_baton, %struct.deltify_etc_baton* %19, i32 0, i32 5
  %21 = load i32* (%struct.TYPE_4__*, i32, i32*)*, i32* (%struct.TYPE_4__*, i32, i32*)** %20, align 8
  %22 = icmp ne i32* (%struct.TYPE_4__*, i32, i32*)* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %3
  %24 = load %struct.deltify_etc_baton*, %struct.deltify_etc_baton** %7, align 8
  %25 = getelementptr inbounds %struct.deltify_etc_baton, %struct.deltify_etc_baton* %24, i32 0, i32 5
  %26 = load i32* (%struct.TYPE_4__*, i32, i32*)*, i32* (%struct.TYPE_4__*, i32, i32*)** %25, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = load %struct.deltify_etc_baton*, %struct.deltify_etc_baton** %7, align 8
  %29 = getelementptr inbounds %struct.deltify_etc_baton, %struct.deltify_etc_baton* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i32* %26(%struct.TYPE_4__* %27, i32 %30, i32* %31)
  store i32* %32, i32** %8, align 8
  br label %33

33:                                               ; preds = %23, %3
  %34 = load %struct.deltify_etc_baton*, %struct.deltify_etc_baton** %7, align 8
  %35 = getelementptr inbounds %struct.deltify_etc_baton, %struct.deltify_etc_baton* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %81

38:                                               ; preds = %33
  %39 = load i32*, i32** %6, align 8
  %40 = call i32* @svn_pool_create(i32* %39)
  store i32* %40, i32** %10, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = call i32* @apr_hash_make(i32* %41)
  store i32* %42, i32** %11, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = load %struct.deltify_etc_baton*, %struct.deltify_etc_baton** %7, align 8
  %45 = getelementptr inbounds %struct.deltify_etc_baton, %struct.deltify_etc_baton* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = call i32* @apr_hash_first(i32* %43, i64 %46)
  store i32* %47, i32** %12, align 8
  br label %48

48:                                               ; preds = %66, %38
  %49 = load i32*, i32** %12, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %69

51:                                               ; preds = %48
  %52 = load i32*, i32** %12, align 8
  %53 = call i8* @apr_hash_this_key(i32* %52)
  store i8* %53, i8** %13, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = call i8* @apr_hash_this_val(i32* %54)
  store i8* %55, i8** %14, align 8
  %56 = load %struct.deltify_etc_baton*, %struct.deltify_etc_baton** %7, align 8
  %57 = getelementptr inbounds %struct.deltify_etc_baton, %struct.deltify_etc_baton* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i8*, i8** %13, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = call i8* @svn_fspath__join(i32 %58, i8* %59, i32* %60)
  store i8* %61, i8** %15, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = load i8*, i8** %15, align 8
  %64 = load i8*, i8** %14, align 8
  %65 = call i32 @svn_hash_sets(i32* %62, i8* %63, i8* %64)
  br label %66

66:                                               ; preds = %51
  %67 = load i32*, i32** %12, align 8
  %68 = call i32* @apr_hash_next(i32* %67)
  store i32* %68, i32** %12, align 8
  br label %48

69:                                               ; preds = %48
  %70 = load %struct.deltify_etc_baton*, %struct.deltify_etc_baton** %7, align 8
  %71 = getelementptr inbounds %struct.deltify_etc_baton, %struct.deltify_etc_baton* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %11, align 8
  %74 = load i32, i32* @FALSE, align 4
  %75 = load i32*, i32** %10, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = call i32 @svn_repos_fs_unlock_many(i32 %72, i32* %73, i32 %74, i32* null, i32* null, i32* %75, i32* %76)
  %78 = call i32 @svn_error_clear(i32 %77)
  %79 = load i32*, i32** %10, align 8
  %80 = call i32 @svn_pool_destroy(i32* %79)
  br label %81

81:                                               ; preds = %69, %33
  %82 = load %struct.deltify_etc_baton*, %struct.deltify_etc_baton** %7, align 8
  %83 = getelementptr inbounds %struct.deltify_etc_baton, %struct.deltify_etc_baton* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %6, align 8
  %89 = call i32* @svn_fs_deltify_revision(i32 %84, i32 %87, i32* %88)
  store i32* %89, i32** %9, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = load i32*, i32** %9, align 8
  %92 = call i32* @svn_error_compose_create(i32* %90, i32* %91)
  ret i32* %92
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i64) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i8* @apr_hash_this_val(i32*) #1

declare dso_local i8* @svn_fspath__join(i32, i8*, i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i8*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_error_clear(i32) #1

declare dso_local i32 @svn_repos_fs_unlock_many(i32, i32*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32* @svn_fs_deltify_revision(i32, i32, i32*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
