; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_hooks.c_parse_hooks_env_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_hooks.c_parse_hooks_env_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_hooks_env_option_baton = type { i8*, i32* }

@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i32*)* @parse_hooks_env_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_hooks_env_option(i8* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.parse_hooks_env_option_baton*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.parse_hooks_env_option_baton*
  store %struct.parse_hooks_env_option_baton* %13, %struct.parse_hooks_env_option_baton** %9, align 8
  %14 = load %struct.parse_hooks_env_option_baton*, %struct.parse_hooks_env_option_baton** %9, align 8
  %15 = getelementptr inbounds %struct.parse_hooks_env_option_baton, %struct.parse_hooks_env_option_baton* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = call i32* @apr_hash_pool_get(i32* %16)
  store i32* %17, i32** %10, align 8
  %18 = load %struct.parse_hooks_env_option_baton*, %struct.parse_hooks_env_option_baton** %9, align 8
  %19 = getelementptr inbounds %struct.parse_hooks_env_option_baton, %struct.parse_hooks_env_option_baton* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.parse_hooks_env_option_baton*, %struct.parse_hooks_env_option_baton** %9, align 8
  %22 = getelementptr inbounds %struct.parse_hooks_env_option_baton, %struct.parse_hooks_env_option_baton* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32* @svn_hash_gets(i32* %20, i8* %23)
  store i32* %24, i32** %11, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %4
  %28 = load i32*, i32** %10, align 8
  %29 = call i32* @apr_hash_make(i32* %28)
  store i32* %29, i32** %11, align 8
  %30 = load %struct.parse_hooks_env_option_baton*, %struct.parse_hooks_env_option_baton** %9, align 8
  %31 = getelementptr inbounds %struct.parse_hooks_env_option_baton, %struct.parse_hooks_env_option_baton* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = load %struct.parse_hooks_env_option_baton*, %struct.parse_hooks_env_option_baton** %9, align 8
  %35 = getelementptr inbounds %struct.parse_hooks_env_option_baton, %struct.parse_hooks_env_option_baton* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32* @apr_pstrdup(i32* %33, i8* %36)
  %38 = load i32*, i32** %11, align 8
  %39 = call i32 @svn_hash_sets(i32* %32, i32* %37, i32* %38)
  br label %40

40:                                               ; preds = %27, %4
  %41 = load i32*, i32** %11, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = call i32* @apr_pstrdup(i32* %42, i8* %43)
  %45 = load i32*, i32** %10, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call i32* @apr_pstrdup(i32* %45, i8* %46)
  %48 = call i32 @svn_hash_sets(i32* %41, i32* %44, i32* %47)
  %49 = load i32, i32* @TRUE, align 4
  ret i32 %49
}

declare dso_local i32* @apr_hash_pool_get(i32*) #1

declare dso_local i32* @svn_hash_gets(i32*, i8*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i32*, i32*) #1

declare dso_local i32* @apr_pstrdup(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
