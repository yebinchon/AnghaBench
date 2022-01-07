; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_local/extr_ra_plugin.c_svn_ra_local__unlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_local/extr_ra_plugin.c_svn_ra_local__unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.lock_baton_t = type { i32*, i32, i32, i8*, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@lock_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__*, i32*, i32, i32, i8*, i32*)* @svn_ra_local__unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @svn_ra_local__unlock(%struct.TYPE_7__* %0, i32* %1, i32 %2, i32 %3, i8* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.lock_baton_t, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32* %5, i32** %12, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %13, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = call i32* @apr_hash_make(i32* %23)
  store i32* %24, i32** %14, align 8
  %25 = bitcast %struct.lock_baton_t* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 32, i1 false)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = call i32 @get_username(%struct.TYPE_7__* %26, i32* %27)
  %29 = call i32 @SVN_ERR(i32 %28)
  %30 = load i32*, i32** %12, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i32* @apr_hash_first(i32* %30, i32* %31)
  store i32* %32, i32** %15, align 8
  br label %33

33:                                               ; preds = %52, %6
  %34 = load i32*, i32** %15, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %55

36:                                               ; preds = %33
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %15, align 8
  %43 = call i32 @apr_hash_this_key(i32* %42)
  %44 = load i32*, i32** %12, align 8
  %45 = call i8* @svn_fspath__join(i32 %41, i32 %43, i32* %44)
  store i8* %45, i8** %18, align 8
  %46 = load i32*, i32** %15, align 8
  %47 = call i8* @apr_hash_this_val(i32* %46)
  store i8* %47, i8** %19, align 8
  %48 = load i32*, i32** %14, align 8
  %49 = load i8*, i8** %18, align 8
  %50 = load i8*, i8** %19, align 8
  %51 = call i32 @svn_hash_sets(i32* %48, i8* %49, i8* %50)
  br label %52

52:                                               ; preds = %36
  %53 = load i32*, i32** %15, align 8
  %54 = call i32* @apr_hash_next(i32* %53)
  store i32* %54, i32** %15, align 8
  br label %33

55:                                               ; preds = %33
  %56 = load i32, i32* %10, align 4
  %57 = getelementptr inbounds %struct.lock_baton_t, %struct.lock_baton_t* %17, i32 0, i32 4
  store i32 %56, i32* %57, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = getelementptr inbounds %struct.lock_baton_t, %struct.lock_baton_t* %17, i32 0, i32 3
  store i8* %58, i8** %59, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.lock_baton_t, %struct.lock_baton_t* %17, i32 0, i32 2
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* @FALSE, align 4
  %67 = getelementptr inbounds %struct.lock_baton_t, %struct.lock_baton_t* %17, i32 0, i32 1
  store i32 %66, i32* %67, align 8
  %68 = load i32*, i32** @SVN_NO_ERROR, align 8
  %69 = getelementptr inbounds %struct.lock_baton_t, %struct.lock_baton_t* %17, i32 0, i32 0
  store i32* %68, i32** %69, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32*, i32** %14, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @lock_cb, align 4
  %76 = load i32*, i32** %12, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = call i32* @svn_repos_fs_unlock_many(i32 %72, i32* %73, i32 %74, i32 %75, %struct.lock_baton_t* %17, i32* %76, i32* %77)
  store i32* %78, i32** %16, align 8
  %79 = load i32*, i32** %16, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %90

81:                                               ; preds = %55
  %82 = getelementptr inbounds %struct.lock_baton_t, %struct.lock_baton_t* %17, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = load i32*, i32** %16, align 8
  %87 = getelementptr inbounds %struct.lock_baton_t, %struct.lock_baton_t* %17, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @svn_error_compose(i32* %86, i32* %88)
  br label %97

90:                                               ; preds = %81, %55
  %91 = load i32*, i32** %16, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.lock_baton_t, %struct.lock_baton_t* %17, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  store i32* %95, i32** %16, align 8
  br label %96

96:                                               ; preds = %93, %90
  br label %97

97:                                               ; preds = %96, %85
  %98 = load i32*, i32** %16, align 8
  %99 = call i32* @svn_error_trace(i32* %98)
  ret i32* %99
}

declare dso_local i32* @apr_hash_make(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_username(%struct.TYPE_7__*, i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @svn_fspath__join(i32, i32, i32*) #1

declare dso_local i32 @apr_hash_this_key(i32*) #1

declare dso_local i8* @apr_hash_this_val(i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i8*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32* @svn_repos_fs_unlock_many(i32, i32*, i32, i32, %struct.lock_baton_t*, i32*, i32*) #1

declare dso_local i32 @svn_error_compose(i32*, i32*) #1

declare dso_local i32* @svn_error_trace(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
