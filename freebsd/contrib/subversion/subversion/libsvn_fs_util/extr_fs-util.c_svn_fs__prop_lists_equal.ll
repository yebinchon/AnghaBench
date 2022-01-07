; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_util/extr_fs-util.c_svn_fs__prop_lists_equal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_util/extr_fs-util.c_svn_fs__prop_lists_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svn_fs__prop_lists_equal(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = icmp eq i32* %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @TRUE, align 4
  store i32 %17, i32* %4, align 4
  br label %72

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32*, i32** %6, align 8
  %23 = call i64 @apr_hash_count(i32* %22)
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %4, align 4
  br label %72

26:                                               ; preds = %18
  %27 = load i32*, i32** %6, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32*, i32** %5, align 8
  %31 = call i64 @apr_hash_count(i32* %30)
  %32 = icmp eq i64 %31, 0
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %4, align 4
  br label %72

34:                                               ; preds = %26
  %35 = load i32*, i32** %5, align 8
  %36 = call i64 @apr_hash_count(i32* %35)
  %37 = load i32*, i32** %6, align 8
  %38 = call i64 @apr_hash_count(i32* %37)
  %39 = icmp ne i64 %36, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %4, align 4
  br label %72

42:                                               ; preds = %34
  %43 = load i32*, i32** %7, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = call i32* @apr_hash_first(i32* %43, i32* %44)
  store i32* %45, i32** %8, align 8
  br label %46

46:                                               ; preds = %67, %42
  %47 = load i32*, i32** %8, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %70

49:                                               ; preds = %46
  %50 = load i32*, i32** %8, align 8
  %51 = bitcast i32** %11 to i8**
  %52 = call i32 @apr_hash_this(i32* %50, i8** %9, i32* %10, i8** %51)
  %53 = load i32*, i32** %6, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32* @apr_hash_get(i32* %53, i8* %54, i32 %55)
  store i32* %56, i32** %12, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %49
  %60 = load i32*, i32** %11, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = call i32 @svn_string_compare(i32* %60, i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %59, %49
  %65 = load i32, i32* @FALSE, align 4
  store i32 %65, i32* %4, align 4
  br label %72

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66
  %68 = load i32*, i32** %8, align 8
  %69 = call i32* @apr_hash_next(i32* %68)
  store i32* %69, i32** %8, align 8
  br label %46

70:                                               ; preds = %46
  %71 = load i32, i32* @TRUE, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %70, %64, %40, %29, %21, %16
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i64 @apr_hash_count(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i32 @apr_hash_this(i32*, i8**, i32*, i8**) #1

declare dso_local i32* @apr_hash_get(i32*, i8*, i32) #1

declare dso_local i32 @svn_string_compare(i32*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
