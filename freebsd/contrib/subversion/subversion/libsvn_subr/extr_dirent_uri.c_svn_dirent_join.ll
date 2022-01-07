; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_dirent_uri.c_svn_dirent_join.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_dirent_uri.c_svn_dirent_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @svn_dirent_join(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @strlen(i8* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @strlen(i8* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @svn_dirent_is_canonical(i8* %16, i32* %17)
  %19 = call i32 @assert(i32 %18)
  %20 = load i8*, i8** %6, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @svn_dirent_is_canonical(i8* %20, i32* %21)
  %23 = call i32 @assert(i32 %22)
  %24 = load i8*, i8** %6, align 8
  %25 = call i64 @svn_dirent_is_absolute(i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %3
  %28 = load i32*, i32** %7, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  %32 = call i8* @apr_pmemdup(i32* %28, i8* %29, i32 %31)
  store i8* %32, i8** %4, align 8
  br label %96

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
  br label %96

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
  br label %96

53:                                               ; preds = %43
  store i32 1, i32* %11, align 4
  %54 = load i8*, i8** %5, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 47
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  store i32 0, i32* %11, align 4
  br label %63

63:                                               ; preds = %62, %53
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %65, %66
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %67, %68
  %70 = add nsw i32 %69, 1
  %71 = call i8* @apr_palloc(i32* %64, i32 %70)
  store i8* %71, i8** %10, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @memcpy(i8* %72, i8* %73, i32 %74)
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %63
  %79 = load i8*, i8** %10, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  store i8 47, i8* %82, align 1
  br label %83

83:                                               ; preds = %78, %63
  %84 = load i8*, i8** %10, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i8*, i8** %6, align 8
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  %94 = call i32 @memcpy(i8* %90, i8* %91, i32 %93)
  %95 = load i8*, i8** %10, align 8
  store i8* %95, i8** %4, align 8
  br label %96

96:                                               ; preds = %83, %47, %37, %27
  %97 = load i8*, i8** %4, align 8
  ret i8* %97
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @svn_dirent_is_canonical(i8*, i32*) #1

declare dso_local i64 @svn_dirent_is_absolute(i8*) #1

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
