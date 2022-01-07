; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_cache-memcache.c_svn_cache__make_memcache_from_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_cache-memcache.c_svn_cache__make_memcache_from_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.ams_baton = type { i32*, i32*, i32 }

@SVN_CACHE_CONFIG_CATEGORY_MEMCACHED_SERVERS = common dso_local global i32 0, align 4
@nop_enumerator = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@APR_INT16_MAX = common dso_local global i32 0, align 4
@SVN_ERR_TOO_MANY_MEMCACHED_SERVERS = common dso_local global i32 0, align 4
@SVN_ERR_NO_APR_MEMCACHE = common dso_local global i32 0, align 4
@APR_SUCCESS = common dso_local global i64 0, align 8
@add_memcache_server = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_cache__make_memcache_from_config(%struct.TYPE_4__** %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = load i32, i32* @SVN_CACHE_CONFIG_CATEGORY_MEMCACHED_SERVERS, align 4
  %13 = load i32, i32* @nop_enumerator, align 4
  %14 = load i32*, i32** %9, align 8
  %15 = call i32 @svn_config_enumerate2(i32* %11, i32 %12, i32 %13, %struct.ams_baton* null, i32* %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %19, align 8
  %20 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %20, i32** %5, align 8
  br label %31

21:                                               ; preds = %4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @APR_INT16_MAX, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @SVN_ERR_TOO_MANY_MEMCACHED_SERVERS, align 4
  %27 = call i32* @svn_error_create(i32 %26, i32* null, i32* null)
  store i32* %27, i32** %5, align 8
  br label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @SVN_ERR_NO_APR_MEMCACHE, align 4
  %30 = call i32* @svn_error_create(i32 %29, i32* null, i32* null)
  store i32* %30, i32** %5, align 8
  br label %31

31:                                               ; preds = %28, %25, %18
  %32 = load i32*, i32** %5, align 8
  ret i32* %32
}

declare dso_local i32 @svn_config_enumerate2(i32*, i32, i32, %struct.ams_baton*, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
