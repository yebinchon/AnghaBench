; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_fs-wrap.c_svn_repos_fs_unlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_fs-wrap.c_svn_repos_fs_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_baton_t = type { i32*, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@lock_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_repos_fs_unlock(i32* %0, i8* %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.lock_baton_t, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = call i32* @apr_hash_make(i32* %14)
  store i32* %15, i32** %11, align 8
  %16 = bitcast %struct.lock_baton_t* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 16, i1 false)
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %20

20:                                               ; preds = %19, %5
  %21 = load i32*, i32** %11, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @svn_hash_sets(i32* %21, i8* %22, i8* %23)
  %25 = load i32*, i32** %6, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @lock_cb, align 4
  %29 = load i32*, i32** %10, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = call i32* @svn_repos_fs_unlock_many(i32* %25, i32* %26, i32 %27, i32 %28, %struct.lock_baton_t* %13, i32* %29, i32* %30)
  store i32* %31, i32** %12, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %20
  %35 = getelementptr inbounds %struct.lock_baton_t, %struct.lock_baton_t* %13, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i32*, i32** %12, align 8
  %40 = getelementptr inbounds %struct.lock_baton_t, %struct.lock_baton_t* %13, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @svn_error_compose(i32* %39, i32* %41)
  br label %50

43:                                               ; preds = %34, %20
  %44 = load i32*, i32** %12, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.lock_baton_t, %struct.lock_baton_t* %13, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %12, align 8
  br label %49

49:                                               ; preds = %46, %43
  br label %50

50:                                               ; preds = %49, %38
  %51 = load i32*, i32** %12, align 8
  %52 = call i32* @svn_error_trace(i32* %51)
  ret i32* %52
}

declare dso_local i32* @apr_hash_make(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @svn_hash_sets(i32*, i8*, i8*) #1

declare dso_local i32* @svn_repos_fs_unlock_many(i32*, i32*, i32, i32, %struct.lock_baton_t*, i32*, i32*) #1

declare dso_local i32 @svn_error_compose(i32*, i32*) #1

declare dso_local i32* @svn_error_trace(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
