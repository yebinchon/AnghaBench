; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_mergeinfo.c_svn_mergeinfo_dup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_mergeinfo.c_svn_mergeinfo_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svn_mergeinfo_dup(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @svn_hash__make(i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32* @apr_hash_first(i32* %12, i32 %13)
  store i32* %14, i32** %6, align 8
  br label %15

15:                                               ; preds = %35, %2
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %38

18:                                               ; preds = %15
  %19 = load i32*, i32** %6, align 8
  %20 = call i8* @apr_hash_this_key(i32* %19)
  store i8* %20, i8** %7, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @apr_hash_this_key_len(i32* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = call i32* @apr_hash_this_val(i32* %23)
  store i32* %24, i32** %9, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @apr_pstrmemdup(i32* %26, i8* %27, i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @svn_rangelist_dup(i32* %31, i32* %32)
  %34 = call i32 @apr_hash_set(i32 %25, i32 %29, i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %18
  %36 = load i32*, i32** %6, align 8
  %37 = call i32* @apr_hash_next(i32* %36)
  store i32* %37, i32** %6, align 8
  br label %15

38:                                               ; preds = %15
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @svn_hash__make(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i32 @apr_hash_this_key_len(i32*) #1

declare dso_local i32* @apr_hash_this_val(i32*) #1

declare dso_local i32 @apr_hash_set(i32, i32, i32, i32) #1

declare dso_local i32 @apr_pstrmemdup(i32*, i8*, i32) #1

declare dso_local i32 @svn_rangelist_dup(i32*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
