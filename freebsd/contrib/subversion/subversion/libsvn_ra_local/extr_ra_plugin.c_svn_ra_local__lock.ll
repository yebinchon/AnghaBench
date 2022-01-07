; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_local/extr_ra_plugin.c_svn_ra_local__lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_local/extr_ra_plugin.c_svn_ra_local__lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.lock_baton_t = type { i32*, i32, i32, i8*, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@lock_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__*, i32*, i8*, i32, i32, i8*, i32*)* @svn_ra_local__lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @svn_ra_local__lock(%struct.TYPE_7__* %0, i32* %1, i8* %2, i32 %3, i32 %4, i8* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.lock_baton_t, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32* %6, i32** %14, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %15, align 8
  %26 = load i32*, i32** %14, align 8
  %27 = call i32* @apr_hash_make(i32* %26)
  store i32* %27, i32** %16, align 8
  %28 = bitcast %struct.lock_baton_t* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %28, i8 0, i64 32, i1 false)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = call i32 @get_username(%struct.TYPE_7__* %29, i32* %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load i32*, i32** %14, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = call i32* @apr_hash_first(i32* %33, i32* %34)
  store i32* %35, i32** %17, align 8
  br label %36

36:                                               ; preds = %60, %7
  %37 = load i32*, i32** %17, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %63

39:                                               ; preds = %36
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %17, align 8
  %46 = call i32 @apr_hash_this_key(i32* %45)
  %47 = load i32*, i32** %14, align 8
  %48 = call i8* @svn_fspath__join(i32 %44, i32 %46, i32* %47)
  store i8* %48, i8** %20, align 8
  %49 = load i32*, i32** %17, align 8
  %50 = call i64 @apr_hash_this_val(i32* %49)
  %51 = inttoptr i64 %50 to i32*
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %21, align 4
  %53 = load i32, i32* %21, align 4
  %54 = load i32*, i32** %14, align 8
  %55 = call i32* @svn_fs_lock_target_create(i32* null, i32 %53, i32* %54)
  store i32* %55, i32** %22, align 8
  %56 = load i32*, i32** %16, align 8
  %57 = load i8*, i8** %20, align 8
  %58 = load i32*, i32** %22, align 8
  %59 = call i32 @svn_hash_sets(i32* %56, i8* %57, i32* %58)
  br label %60

60:                                               ; preds = %39
  %61 = load i32*, i32** %17, align 8
  %62 = call i32* @apr_hash_next(i32* %61)
  store i32* %62, i32** %17, align 8
  br label %36

63:                                               ; preds = %36
  %64 = load i32, i32* %12, align 4
  %65 = getelementptr inbounds %struct.lock_baton_t, %struct.lock_baton_t* %19, i32 0, i32 4
  store i32 %64, i32* %65, align 8
  %66 = load i8*, i8** %13, align 8
  %67 = getelementptr inbounds %struct.lock_baton_t, %struct.lock_baton_t* %19, i32 0, i32 3
  store i8* %66, i8** %67, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.lock_baton_t, %struct.lock_baton_t* %19, i32 0, i32 2
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* @TRUE, align 4
  %75 = getelementptr inbounds %struct.lock_baton_t, %struct.lock_baton_t* %19, i32 0, i32 1
  store i32 %74, i32* %75, align 8
  %76 = load i32*, i32** @SVN_NO_ERROR, align 8
  %77 = getelementptr inbounds %struct.lock_baton_t, %struct.lock_baton_t* %19, i32 0, i32 0
  store i32* %76, i32** %77, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32*, i32** %16, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = load i32, i32* @FALSE, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @lock_cb, align 4
  %86 = load i32*, i32** %14, align 8
  %87 = load i32*, i32** %14, align 8
  %88 = call i32* @svn_repos_fs_lock_many(i32 %80, i32* %81, i8* %82, i32 %83, i32 0, i32 %84, i32 %85, %struct.lock_baton_t* %19, i32* %86, i32* %87)
  store i32* %88, i32** %18, align 8
  %89 = load i32*, i32** %18, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %100

91:                                               ; preds = %63
  %92 = getelementptr inbounds %struct.lock_baton_t, %struct.lock_baton_t* %19, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = load i32*, i32** %18, align 8
  %97 = getelementptr inbounds %struct.lock_baton_t, %struct.lock_baton_t* %19, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @svn_error_compose(i32* %96, i32* %98)
  br label %107

100:                                              ; preds = %91, %63
  %101 = load i32*, i32** %18, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.lock_baton_t, %struct.lock_baton_t* %19, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  store i32* %105, i32** %18, align 8
  br label %106

106:                                              ; preds = %103, %100
  br label %107

107:                                              ; preds = %106, %95
  %108 = load i32*, i32** %18, align 8
  %109 = call i32* @svn_error_trace(i32* %108)
  ret i32* %109
}

declare dso_local i32* @apr_hash_make(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_username(%struct.TYPE_7__*, i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @svn_fspath__join(i32, i32, i32*) #1

declare dso_local i32 @apr_hash_this_key(i32*) #1

declare dso_local i64 @apr_hash_this_val(i32*) #1

declare dso_local i32* @svn_fs_lock_target_create(i32*, i32, i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32* @svn_repos_fs_lock_many(i32, i32*, i8*, i32, i32, i32, i32, %struct.lock_baton_t*, i32*, i32*) #1

declare dso_local i32 @svn_error_compose(i32*, i32*) #1

declare dso_local i32* @svn_error_trace(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
