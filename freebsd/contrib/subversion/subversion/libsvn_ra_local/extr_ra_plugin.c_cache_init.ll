; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_local/extr_ra_plugin.c_cache_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_local/extr_ra_plugin.c_cache_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@SVN_CONFIG_CATEGORY_CONFIG = common dso_local global i32 0, align 4
@SVN_CONFIG_SECTION_MISCELLANY = common dso_local global i32 0, align 4
@SVN_CONFIG_OPTION_MEMORY_CACHE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"memory-cache-size invalid\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*)* @cache_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @cache_init(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* @SVN_CONFIG_CATEGORY_CONFIG, align 4
  %17 = call i32* @svn_hash_gets(i32* %15, i32 %16)
  store i32* %17, i32** %6, align 8
  br label %18

18:                                               ; preds = %14, %2
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* @SVN_CONFIG_SECTION_MISCELLANY, align 4
  %21 = load i32, i32* @SVN_CONFIG_OPTION_MEMORY_CACHE_SIZE, align 4
  %22 = call i32 @svn_config_get(i32* %19, i8** %7, i32 %20, i32 %21, i32* null)
  %23 = load i8*, i8** %7, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %38

25:                                               ; preds = %18
  %26 = call %struct.TYPE_4__* (...) @svn_cache_config_get()
  %27 = bitcast %struct.TYPE_4__* %9 to i8*
  %28 = bitcast %struct.TYPE_4__* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 4, i1 false)
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @svn_cstring_atoui64(i32* %8, i8* %29)
  %31 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %32 = call i32 @svn_error_quick_wrap(i32 %30, i32 %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = mul nsw i32 1048576, %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = call i32 @svn_cache_config_set(%struct.TYPE_4__* %9)
  br label %38

38:                                               ; preds = %25, %18
  %39 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %39
}

declare dso_local i32* @svn_hash_gets(i32*, i32) #1

declare dso_local i32 @svn_config_get(i32*, i8**, i32, i32, i32*) #1

declare dso_local %struct.TYPE_4__* @svn_cache_config_get(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_error_quick_wrap(i32, i32) #1

declare dso_local i32 @svn_cstring_atoui64(i32*, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_cache_config_set(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
