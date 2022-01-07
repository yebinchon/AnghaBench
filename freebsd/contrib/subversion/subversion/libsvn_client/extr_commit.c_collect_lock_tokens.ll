; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_commit.c_collect_lock_tokens.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_commit.c_collect_lock_tokens.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32*, i8*, i32*)* @collect_lock_tokens to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @collect_lock_tokens(i32** %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = call i32* @apr_hash_make(i32* %13)
  %15 = load i32**, i32*** %5, align 8
  store i32* %14, i32** %15, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32* @apr_hash_first(i32* %16, i32* %17)
  store i32* %18, i32** %9, align 8
  br label %19

19:                                               ; preds = %40, %4
  %20 = load i32*, i32** %9, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %43

22:                                               ; preds = %19
  %23 = load i32*, i32** %9, align 8
  %24 = call i8* @apr_hash_this_key(i32* %23)
  store i8* %24, i8** %10, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i8* @apr_hash_this_val(i32* %25)
  store i8* %26, i8** %11, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = call i8* @svn_uri_skip_ancestor(i8* %27, i8* %28, i32* %29)
  store i8* %30, i8** %12, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %22
  %34 = load i32**, i32*** %5, align 8
  %35 = load i32*, i32** %34, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = call i32 @svn_hash_sets(i32* %35, i8* %36, i8* %37)
  br label %39

39:                                               ; preds = %33, %22
  br label %40

40:                                               ; preds = %39
  %41 = load i32*, i32** %9, align 8
  %42 = call i32* @apr_hash_next(i32* %41)
  store i32* %42, i32** %9, align 8
  br label %19

43:                                               ; preds = %19
  %44 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %44
}

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i8* @apr_hash_this_val(i32*) #1

declare dso_local i8* @svn_uri_skip_ancestor(i8*, i8*, i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i8*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
