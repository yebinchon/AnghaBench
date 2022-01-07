; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_entries.c_prune_deleted.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_entries.c_prune_deleted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32*, i32*, i32*)* @prune_deleted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @prune_deleted(i32** %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32**, i32*** %6, align 8
  store i32* null, i32** %18, align 8
  %19 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %19, i32** %5, align 8
  br label %78

20:                                               ; preds = %4
  %21 = load i32*, i32** %9, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i32* @apr_hash_first(i32* %21, i32* %22)
  store i32* %23, i32** %10, align 8
  br label %24

24:                                               ; preds = %36, %20
  %25 = load i32*, i32** %10, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %24
  %28 = load i32*, i32** %10, align 8
  %29 = call i32* @apr_hash_this_val(i32* %28)
  %30 = call i32 @svn_wc__entry_is_hidden(i64* %11, i32* %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load i64, i64* %11, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %39

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35
  %37 = load i32*, i32** %10, align 8
  %38 = call i32* @apr_hash_next(i32* %37)
  store i32* %38, i32** %10, align 8
  br label %24

39:                                               ; preds = %34, %24
  %40 = load i32*, i32** %10, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load i32*, i32** %7, align 8
  %44 = load i32**, i32*** %6, align 8
  store i32* %43, i32** %44, align 8
  %45 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %45, i32** %5, align 8
  br label %78

46:                                               ; preds = %39
  %47 = load i32*, i32** %8, align 8
  %48 = call i32* @apr_hash_make(i32* %47)
  %49 = load i32**, i32*** %6, align 8
  store i32* %48, i32** %49, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = call i32* @apr_hash_first(i32* %50, i32* %51)
  store i32* %52, i32** %10, align 8
  br label %53

53:                                               ; preds = %73, %46
  %54 = load i32*, i32** %10, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %76

56:                                               ; preds = %53
  %57 = load i32*, i32** %10, align 8
  %58 = call i8* @apr_hash_this_key(i32* %57)
  store i8* %58, i8** %12, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = call i32* @apr_hash_this_val(i32* %59)
  store i32* %60, i32** %13, align 8
  %61 = load i32*, i32** %13, align 8
  %62 = call i32 @svn_wc__entry_is_hidden(i64* %14, i32* %61)
  %63 = call i32 @SVN_ERR(i32 %62)
  %64 = load i64, i64* %14, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %56
  %67 = load i32**, i32*** %6, align 8
  %68 = load i32*, i32** %67, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = load i32*, i32** %13, align 8
  %71 = call i32 @svn_hash_sets(i32* %68, i8* %69, i32* %70)
  br label %72

72:                                               ; preds = %66, %56
  br label %73

73:                                               ; preds = %72
  %74 = load i32*, i32** %10, align 8
  %75 = call i32* @apr_hash_next(i32* %74)
  store i32* %75, i32** %10, align 8
  br label %53

76:                                               ; preds = %53
  %77 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %77, i32** %5, align 8
  br label %78

78:                                               ; preds = %76, %42, %17
  %79 = load i32*, i32** %5, align 8
  ret i32* %79
}

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__entry_is_hidden(i64*, i32*) #1

declare dso_local i32* @apr_hash_this_val(i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
