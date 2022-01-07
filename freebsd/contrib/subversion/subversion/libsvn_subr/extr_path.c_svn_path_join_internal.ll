; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_path.c_svn_path_join_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_path.c_svn_path_join_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i32*)* @svn_path_join_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @svn_path_join_internal(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @strlen(i8* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @strlen(i8* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @svn_path_is_canonical_internal(i8* %15, i32* %16)
  %18 = call i32 @assert(i32 %17)
  %19 = load i8*, i8** %6, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @svn_path_is_canonical_internal(i8* %19, i32* %20)
  %22 = call i32 @assert(i32 %21)
  %23 = load i8*, i8** %6, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 47
  br i1 %26, label %27, label %33

27:                                               ; preds = %3
  %28 = load i32*, i32** %7, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  %32 = call i8* @apr_pmemdup(i32* %28, i8* %29, i32 %31)
  store i8* %32, i8** %4, align 8
  br label %89

33:                                               ; preds = %3
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 @SVN_PATH_IS_EMPTY(i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32*, i32** %7, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  %42 = call i8* @apr_pmemdup(i32* %38, i8* %39, i32 %41)
  store i8* %42, i8** %4, align 8
  br label %89

43:                                               ; preds = %33
  %44 = load i8*, i8** %6, align 8
  %45 = call i64 @SVN_PATH_IS_EMPTY(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i32*, i32** %7, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  %52 = call i8* @apr_pmemdup(i32* %48, i8* %49, i32 %51)
  store i8* %52, i8** %4, align 8
  br label %89

53:                                               ; preds = %43
  %54 = load i32, i32* %8, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 47
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 0, i32* %8, align 4
  br label %63

63:                                               ; preds = %62, %56, %53
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %66, %67
  %69 = add nsw i32 %68, 1
  %70 = call i8* @apr_palloc(i32* %64, i32 %69)
  store i8* %70, i8** %10, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @memcpy(i8* %71, i8* %72, i32 %73)
  %75 = load i8*, i8** %10, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  store i8 47, i8* %78, align 1
  %79 = load i8*, i8** %10, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = load i8*, i8** %6, align 8
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  %87 = call i32 @memcpy(i8* %83, i8* %84, i32 %86)
  %88 = load i8*, i8** %10, align 8
  store i8* %88, i8** %4, align 8
  br label %89

89:                                               ; preds = %63, %47, %37, %27
  %90 = load i8*, i8** %4, align 8
  ret i8* %90
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @svn_path_is_canonical_internal(i8*, i32*) #1

declare dso_local i8* @apr_pmemdup(i32*, i8*, i32) #1

declare dso_local i64 @SVN_PATH_IS_EMPTY(i8*) #1

declare dso_local i8* @apr_palloc(i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
