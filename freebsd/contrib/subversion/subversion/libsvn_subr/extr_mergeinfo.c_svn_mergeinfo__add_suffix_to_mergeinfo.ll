; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_mergeinfo.c_svn_mergeinfo__add_suffix_to_mergeinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_mergeinfo.c_svn_mergeinfo__add_suffix_to_mergeinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_mergeinfo__add_suffix_to_mergeinfo(i32* %0, i32 %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %5
  %17 = load i8*, i8** %8, align 8
  %18 = call i64 @svn_relpath_is_canonical(i8* %17)
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %16, %5
  %21 = phi i1 [ false, %5 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @SVN_ERR_ASSERT(i32 %22)
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 @apr_hash_make(i32* %24)
  %26 = load i32*, i32** %6, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32* @apr_hash_first(i32* %27, i32 %28)
  store i32* %29, i32** %11, align 8
  br label %30

30:                                               ; preds = %46, %20
  %31 = load i32*, i32** %11, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %49

33:                                               ; preds = %30
  %34 = load i32*, i32** %11, align 8
  %35 = call i8* @apr_hash_this_key(i32* %34)
  store i8* %35, i8** %12, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = call i32* @apr_hash_this_val(i32* %36)
  store i32* %37, i32** %13, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %12, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @svn_fspath__join(i8* %40, i8* %41, i32* %42)
  %44 = load i32*, i32** %13, align 8
  %45 = call i32 @svn_hash_sets(i32 %39, i32 %43, i32* %44)
  br label %46

46:                                               ; preds = %33
  %47 = load i32*, i32** %11, align 8
  %48 = call i32* @apr_hash_next(i32* %47)
  store i32* %48, i32** %11, align 8
  br label %30

49:                                               ; preds = %30
  %50 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %50
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i64 @svn_relpath_is_canonical(i8*) #1

declare dso_local i32 @apr_hash_make(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i32* @apr_hash_this_val(i32*) #1

declare dso_local i32 @svn_hash_sets(i32, i32, i32*) #1

declare dso_local i32 @svn_fspath__join(i8*, i8*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
