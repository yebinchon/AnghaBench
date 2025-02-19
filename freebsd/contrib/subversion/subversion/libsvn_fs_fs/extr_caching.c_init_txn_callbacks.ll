; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_caching.c_init_txn_callbacks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_caching.c_init_txn_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.txn_cleanup_baton_t = type { i32*, i32*, i32**, i32* }

@remove_txn_cache_txn = common dso_local global i32 0, align 4
@apr_pool_cleanup_null = common dso_local global i32 0, align 4
@remove_txn_cache_fs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32**, i32*)* @init_txn_callbacks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_txn_callbacks(%struct.TYPE_3__* %0, i32** %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.txn_cleanup_baton_t*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32**, i32*** %5, align 8
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %41

11:                                               ; preds = %3
  %12 = load i32*, i32** %6, align 8
  %13 = call %struct.txn_cleanup_baton_t* @apr_palloc(i32* %12, i32 32)
  store %struct.txn_cleanup_baton_t* %13, %struct.txn_cleanup_baton_t** %7, align 8
  %14 = load i32**, i32*** %5, align 8
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.txn_cleanup_baton_t*, %struct.txn_cleanup_baton_t** %7, align 8
  %17 = getelementptr inbounds %struct.txn_cleanup_baton_t, %struct.txn_cleanup_baton_t* %16, i32 0, i32 3
  store i32* %15, i32** %17, align 8
  %18 = load i32**, i32*** %5, align 8
  %19 = load %struct.txn_cleanup_baton_t*, %struct.txn_cleanup_baton_t** %7, align 8
  %20 = getelementptr inbounds %struct.txn_cleanup_baton_t, %struct.txn_cleanup_baton_t* %19, i32 0, i32 2
  store i32** %18, i32*** %20, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load %struct.txn_cleanup_baton_t*, %struct.txn_cleanup_baton_t** %7, align 8
  %23 = getelementptr inbounds %struct.txn_cleanup_baton_t, %struct.txn_cleanup_baton_t* %22, i32 0, i32 1
  store i32* %21, i32** %23, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.txn_cleanup_baton_t*, %struct.txn_cleanup_baton_t** %7, align 8
  %28 = getelementptr inbounds %struct.txn_cleanup_baton_t, %struct.txn_cleanup_baton_t* %27, i32 0, i32 0
  store i32* %26, i32** %28, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load %struct.txn_cleanup_baton_t*, %struct.txn_cleanup_baton_t** %7, align 8
  %31 = load i32, i32* @remove_txn_cache_txn, align 4
  %32 = load i32, i32* @apr_pool_cleanup_null, align 4
  %33 = call i32 @apr_pool_cleanup_register(i32* %29, %struct.txn_cleanup_baton_t* %30, i32 %31, i32 %32)
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.txn_cleanup_baton_t*, %struct.txn_cleanup_baton_t** %7, align 8
  %38 = load i32, i32* @remove_txn_cache_fs, align 4
  %39 = load i32, i32* @apr_pool_cleanup_null, align 4
  %40 = call i32 @apr_pool_cleanup_register(i32* %36, %struct.txn_cleanup_baton_t* %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %11, %3
  ret void
}

declare dso_local %struct.txn_cleanup_baton_t* @apr_palloc(i32*, i32) #1

declare dso_local i32 @apr_pool_cleanup_register(i32*, %struct.txn_cleanup_baton_t*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
