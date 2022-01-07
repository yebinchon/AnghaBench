; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_fs-wrap.c_get_locks_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_fs-wrap.c_get_locks_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.get_locks_baton_t = type { i32, i32, i32, i32 (i64*, i32, i32, i32, i32*)* }

@TRUE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_4__*, i32*)* @get_locks_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_locks_callback(i8* %0, %struct.TYPE_4__* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.get_locks_baton_t*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.get_locks_baton_t*
  store %struct.get_locks_baton_t* %11, %struct.get_locks_baton_t** %7, align 8
  %12 = load i64, i64* @TRUE, align 8
  store i64 %12, i64* %8, align 8
  %13 = load %struct.get_locks_baton_t*, %struct.get_locks_baton_t** %7, align 8
  %14 = getelementptr inbounds %struct.get_locks_baton_t, %struct.get_locks_baton_t* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32* @apr_hash_pool_get(i32 %15)
  store i32* %16, i32** %9, align 8
  %17 = load %struct.get_locks_baton_t*, %struct.get_locks_baton_t** %7, align 8
  %18 = getelementptr inbounds %struct.get_locks_baton_t, %struct.get_locks_baton_t* %17, i32 0, i32 3
  %19 = load i32 (i64*, i32, i32, i32, i32*)*, i32 (i64*, i32, i32, i32, i32*)** %18, align 8
  %20 = icmp ne i32 (i64*, i32, i32, i32, i32*)* %19, null
  br i1 %20, label %21, label %37

21:                                               ; preds = %3
  %22 = load %struct.get_locks_baton_t*, %struct.get_locks_baton_t** %7, align 8
  %23 = getelementptr inbounds %struct.get_locks_baton_t, %struct.get_locks_baton_t* %22, i32 0, i32 3
  %24 = load i32 (i64*, i32, i32, i32, i32*)*, i32 (i64*, i32, i32, i32, i32*)** %23, align 8
  %25 = load %struct.get_locks_baton_t*, %struct.get_locks_baton_t** %7, align 8
  %26 = getelementptr inbounds %struct.get_locks_baton_t, %struct.get_locks_baton_t* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.get_locks_baton_t*, %struct.get_locks_baton_t** %7, align 8
  %32 = getelementptr inbounds %struct.get_locks_baton_t, %struct.get_locks_baton_t* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 %24(i64* %8, i32 %27, i32 %30, i32 %33, i32* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  br label %37

37:                                               ; preds = %21, %3
  %38 = load i64, i64* %8, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load %struct.get_locks_baton_t*, %struct.get_locks_baton_t** %7, align 8
  %42 = getelementptr inbounds %struct.get_locks_baton_t, %struct.get_locks_baton_t* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @apr_pstrdup(i32* %44, i32 %47)
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @svn_lock_dup(%struct.TYPE_4__* %49, i32* %50)
  %52 = call i32 @svn_hash_sets(i32 %43, i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %40, %37
  %54 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %54
}

declare dso_local i32* @apr_hash_pool_get(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_hash_sets(i32, i32, i32) #1

declare dso_local i32 @apr_pstrdup(i32*, i32) #1

declare dso_local i32 @svn_lock_dup(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
