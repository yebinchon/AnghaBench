; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_fs-wrap.c_svn_repos_fs_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_fs-wrap.c_svn_repos_fs_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_baton_t = type { i32*, i64, i32 }

@lock_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_repos_fs_lock(i32** %0, i32* %1, i8* %2, i8* %3, i8* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32* %9) #0 {
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca %struct.lock_baton_t, align 8
  store i32** %0, i32*** %11, align 8
  store i32* %1, i32** %12, align 8
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i8* %4, i8** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32* %9, i32** %20, align 8
  %25 = load i32*, i32** %20, align 8
  %26 = call i32* @apr_hash_make(i32* %25)
  store i32* %26, i32** %21, align 8
  %27 = load i8*, i8** %14, align 8
  %28 = load i32, i32* %18, align 4
  %29 = load i32*, i32** %20, align 8
  %30 = call i32* @svn_fs_lock_target_create(i8* %27, i32 %28, i32* %29)
  store i32* %30, i32** %22, align 8
  %31 = bitcast %struct.lock_baton_t* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %31, i8 0, i64 24, i1 false)
  %32 = load i32*, i32** %21, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = load i32*, i32** %22, align 8
  %35 = call i32 @svn_hash_sets(i32* %32, i8* %33, i32* %34)
  %36 = load i32*, i32** %12, align 8
  %37 = load i32*, i32** %21, align 8
  %38 = load i8*, i8** %15, align 8
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* %17, align 4
  %41 = load i32, i32* %19, align 4
  %42 = load i32, i32* @lock_cb, align 4
  %43 = load i32*, i32** %20, align 8
  %44 = load i32*, i32** %20, align 8
  %45 = call i32* @svn_repos_fs_lock_many(i32* %36, i32* %37, i8* %38, i32 %39, i32 %40, i32 %41, i32 %42, %struct.lock_baton_t* %24, i32* %43, i32* %44)
  store i32* %45, i32** %23, align 8
  %46 = getelementptr inbounds %struct.lock_baton_t, %struct.lock_baton_t* %24, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %10
  %50 = getelementptr inbounds %struct.lock_baton_t, %struct.lock_baton_t* %24, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i32*
  %53 = load i32**, i32*** %11, align 8
  store i32* %52, i32** %53, align 8
  br label %54

54:                                               ; preds = %49, %10
  %55 = load i32*, i32** %23, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.lock_baton_t, %struct.lock_baton_t* %24, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i32*, i32** %23, align 8
  %63 = getelementptr inbounds %struct.lock_baton_t, %struct.lock_baton_t* %24, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @svn_error_compose(i32* %62, i32* %64)
  br label %73

66:                                               ; preds = %57, %54
  %67 = load i32*, i32** %23, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.lock_baton_t, %struct.lock_baton_t* %24, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  store i32* %71, i32** %23, align 8
  br label %72

72:                                               ; preds = %69, %66
  br label %73

73:                                               ; preds = %72, %61
  %74 = load i32*, i32** %23, align 8
  %75 = call i32* @svn_error_trace(i32* %74)
  ret i32* %75
}

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32* @svn_fs_lock_target_create(i8*, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @svn_hash_sets(i32*, i8*, i32*) #1

declare dso_local i32* @svn_repos_fs_lock_many(i32*, i32*, i8*, i32, i32, i32, i32, %struct.lock_baton_t*, i32*, i32*) #1

declare dso_local i32 @svn_error_compose(i32*, i32*) #1

declare dso_local i32* @svn_error_trace(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
