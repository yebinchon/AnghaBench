; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_hooks.c_svn_repos__parse_hooks_env.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_hooks.c_svn_repos__parse_hooks_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_hooks_env_section_baton = type { i32*, i32* }

@svn_node_none = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@parse_hooks_env_section = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_repos__parse_hooks_env(i32** %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.parse_hooks_env_section_baton, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store i32** %0, i32*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %43

14:                                               ; preds = %4
  %15 = load i8*, i8** %6, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = call i32 @svn_io_check_path(i8* %15, i64* %10, i32* %16)
  %18 = call i32 @SVN_ERR(i32 %17)
  %19 = load i32*, i32** %7, align 8
  %20 = call i32* @apr_hash_make(i32* %19)
  %21 = getelementptr inbounds %struct.parse_hooks_env_section_baton, %struct.parse_hooks_env_section_baton* %9, i32 0, i32 0
  store i32* %20, i32** %21, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @svn_node_none, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %14
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* @FALSE, align 4
  %28 = load i32, i32* @TRUE, align 4
  %29 = load i32, i32* @TRUE, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @svn_config_read3(i32** %11, i8* %26, i32 %27, i32 %28, i32 %29, i32* %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load i32*, i32** %11, align 8
  %34 = getelementptr inbounds %struct.parse_hooks_env_section_baton, %struct.parse_hooks_env_section_baton* %9, i32 0, i32 1
  store i32* %33, i32** %34, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* @parse_hooks_env_section, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @svn_config_enumerate_sections2(i32* %35, i32 %36, %struct.parse_hooks_env_section_baton* %9, i32* %37)
  br label %39

39:                                               ; preds = %25, %14
  %40 = getelementptr inbounds %struct.parse_hooks_env_section_baton, %struct.parse_hooks_env_section_baton* %9, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32**, i32*** %5, align 8
  store i32* %41, i32** %42, align 8
  br label %45

43:                                               ; preds = %4
  %44 = load i32**, i32*** %5, align 8
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %43, %39
  %46 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %46
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @svn_config_read3(i32**, i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_config_enumerate_sections2(i32*, i32, %struct.parse_hooks_env_section_baton*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
