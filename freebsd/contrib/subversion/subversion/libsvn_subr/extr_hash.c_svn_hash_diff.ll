; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_hash.c_svn_hash_diff.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_hash.c_svn_hash_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_hash_diff_key_both = common dso_local global i32 0, align 4
@svn_hash_diff_key_a = common dso_local global i32 0, align 4
@svn_hash_diff_key_b = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_hash_diff(i32* %0, i32* %1, i32 (i8*, i32, i32, i8*)* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32 (i8*, i32, i32, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 (i8*, i32, i32, i8*)* %2, i32 (i8*, i32, i32, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %57

18:                                               ; preds = %5
  %19 = load i32*, i32** %10, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32* @apr_hash_first(i32* %19, i32* %20)
  store i32* %21, i32** %11, align 8
  br label %22

22:                                               ; preds = %53, %18
  %23 = load i32*, i32** %11, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %56

25:                                               ; preds = %22
  %26 = load i32*, i32** %11, align 8
  %27 = call i32 @apr_hash_this(i32* %26, i8** %12, i32* %13, i32* null)
  %28 = load i32*, i32** %7, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %44

30:                                               ; preds = %25
  %31 = load i32*, i32** %7, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = load i32, i32* %13, align 4
  %34 = call i64 @apr_hash_get(i32* %31, i8* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load i32 (i8*, i32, i32, i8*)*, i32 (i8*, i32, i32, i8*)** %8, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @svn_hash_diff_key_both, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 %37(i8* %38, i32 %39, i32 %40, i8* %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  br label %52

44:                                               ; preds = %30, %25
  %45 = load i32 (i8*, i32, i32, i8*)*, i32 (i8*, i32, i32, i8*)** %8, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @svn_hash_diff_key_a, align 4
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 %45(i8* %46, i32 %47, i32 %48, i8* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  br label %52

52:                                               ; preds = %44, %36
  br label %53

53:                                               ; preds = %52
  %54 = load i32*, i32** %11, align 8
  %55 = call i32* @apr_hash_next(i32* %54)
  store i32* %55, i32** %11, align 8
  br label %22

56:                                               ; preds = %22
  br label %57

57:                                               ; preds = %56, %5
  %58 = load i32*, i32** %7, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %91

60:                                               ; preds = %57
  %61 = load i32*, i32** %10, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = call i32* @apr_hash_first(i32* %61, i32* %62)
  store i32* %63, i32** %11, align 8
  br label %64

64:                                               ; preds = %87, %60
  %65 = load i32*, i32** %11, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %90

67:                                               ; preds = %64
  %68 = load i32*, i32** %11, align 8
  %69 = call i32 @apr_hash_this(i32* %68, i8** %14, i32* %15, i32* null)
  %70 = load i32*, i32** %6, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load i32*, i32** %6, align 8
  %74 = load i8*, i8** %14, align 8
  %75 = load i32, i32* %15, align 4
  %76 = call i64 @apr_hash_get(i32* %73, i8* %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %72, %67
  %79 = load i32 (i8*, i32, i32, i8*)*, i32 (i8*, i32, i32, i8*)** %8, align 8
  %80 = load i8*, i8** %14, align 8
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* @svn_hash_diff_key_b, align 4
  %83 = load i8*, i8** %9, align 8
  %84 = call i32 %79(i8* %80, i32 %81, i32 %82, i8* %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  br label %86

86:                                               ; preds = %78, %72
  br label %87

87:                                               ; preds = %86
  %88 = load i32*, i32** %11, align 8
  %89 = call i32* @apr_hash_next(i32* %88)
  store i32* %89, i32** %11, align 8
  br label %64

90:                                               ; preds = %64
  br label %91

91:                                               ; preds = %90, %57
  %92 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %92
}

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i32 @apr_hash_this(i32*, i8**, i32*, i32*) #1

declare dso_local i64 @apr_hash_get(i32*, i8*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
