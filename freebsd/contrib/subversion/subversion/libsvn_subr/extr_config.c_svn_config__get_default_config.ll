; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_config.c_svn_config__get_default_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_config.c_svn_config__get_default_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@SVN_CONFIG_CATEGORY_CONFIG = common dso_local global i32 0, align 4
@SVN_CONFIG_CATEGORY_SERVERS = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_config__get_default_config(i32** %0, i32* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32** %0, i32*** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call i32* @svn_hash__make(i32* %6)
  %8 = load i32**, i32*** %3, align 8
  store i32* %7, i32** %8, align 8
  %9 = load i32, i32* @FALSE, align 4
  %10 = load i32, i32* @FALSE, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @svn_config_create2(i32** %5, i32 %9, i32 %10, i32* %11)
  %13 = call i32 @SVN_ERR(i32 %12)
  %14 = load i32**, i32*** %3, align 8
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* @SVN_CONFIG_CATEGORY_CONFIG, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @svn_hash_sets(i32* %15, i32 %16, i32* %17)
  %19 = load i32, i32* @FALSE, align 4
  %20 = load i32, i32* @FALSE, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @svn_config_create2(i32** %5, i32 %19, i32 %20, i32* %21)
  %23 = call i32 @SVN_ERR(i32 %22)
  %24 = load i32**, i32*** %3, align 8
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* @SVN_CONFIG_CATEGORY_SERVERS, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @svn_hash_sets(i32* %25, i32 %26, i32* %27)
  %29 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %29
}

declare dso_local i32* @svn_hash__make(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_config_create2(i32**, i32, i32, i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
