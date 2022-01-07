; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_dirent_uri.c_svn_relpath_join.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_dirent_uri.c_svn_relpath_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @svn_relpath_join(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i64 @strlen(i8* %11)
  store i64 %12, i64* %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @strlen(i8* %13)
  store i64 %14, i64* %9, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @relpath_is_canonical(i8* %15)
  %17 = call i32 @assert(i32 %16)
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @relpath_is_canonical(i8* %18)
  %20 = call i32 @assert(i32 %19)
  %21 = load i64, i64* %8, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load i32*, i32** %7, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* %9, align 8
  %27 = add nsw i64 %26, 1
  %28 = call i8* @apr_pmemdup(i32* %24, i8* %25, i64 %27)
  store i8* %28, i8** %4, align 8
  br label %62

29:                                               ; preds = %3
  %30 = load i64, i64* %9, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32*, i32** %7, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load i64, i64* %8, align 8
  %36 = add nsw i64 %35, 1
  %37 = call i8* @apr_pmemdup(i32* %33, i8* %34, i64 %36)
  store i8* %37, i8** %4, align 8
  br label %62

38:                                               ; preds = %29
  %39 = load i32*, i32** %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = add nsw i64 %40, 1
  %42 = load i64, i64* %9, align 8
  %43 = add nsw i64 %41, %42
  %44 = add nsw i64 %43, 1
  %45 = call i8* @apr_palloc(i32* %39, i64 %44)
  store i8* %45, i8** %10, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @memcpy(i8* %46, i8* %47, i64 %48)
  %50 = load i8*, i8** %10, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8 47, i8* %52, align 1
  %53 = load i8*, i8** %10, align 8
  %54 = load i64, i64* %8, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = load i8*, i8** %6, align 8
  %58 = load i64, i64* %9, align 8
  %59 = add nsw i64 %58, 1
  %60 = call i32 @memcpy(i8* %56, i8* %57, i64 %59)
  %61 = load i8*, i8** %10, align 8
  store i8* %61, i8** %4, align 8
  br label %62

62:                                               ; preds = %38, %32, %23
  %63 = load i8*, i8** %4, align 8
  ret i8* %63
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @relpath_is_canonical(i8*) #1

declare dso_local i8* @apr_pmemdup(i32*, i8*, i64) #1

declare dso_local i8* @apr_palloc(i32*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
