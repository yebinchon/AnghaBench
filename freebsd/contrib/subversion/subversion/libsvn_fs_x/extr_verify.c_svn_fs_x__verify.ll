; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_verify.c_svn_fs_x__verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_verify.c_svn_fs_x__verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__verify(i32* %0, i64 %1, i64 %2, i32 %3, i8* %4, i32 %5, i8* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store i32* %7, i32** %16, align 8
  %17 = load i64, i64* %10, align 8
  %18 = call i32 @SVN_IS_VALID_REVNUM(i64 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %8
  store i64 0, i64* %10, align 8
  br label %21

21:                                               ; preds = %20, %8
  %22 = load i64, i64* %11, align 8
  %23 = call i32 @SVN_IS_VALID_REVNUM(i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = load i32*, i32** %9, align 8
  %27 = load i32*, i32** %16, align 8
  %28 = call i32 @svn_fs_x__youngest_rev(i64* %11, i32* %26, i32* %27)
  %29 = call i32 @SVN_ERR(i32 %28)
  br label %30

30:                                               ; preds = %25, %21
  %31 = load i64, i64* %10, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = load i32*, i32** %16, align 8
  %34 = call i32 @svn_fs_x__ensure_revision_exists(i64 %31, i32* %32, i32* %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  %36 = load i64, i64* %11, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = load i32*, i32** %16, align 8
  %39 = call i32 @svn_fs_x__ensure_revision_exists(i64 %36, i32* %37, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  %41 = load i32*, i32** %9, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load i8*, i8** %13, align 8
  %46 = load i32, i32* %14, align 4
  %47 = load i8*, i8** %15, align 8
  %48 = load i32*, i32** %16, align 8
  %49 = call i32 @verify_metadata_consistency(i32* %41, i64 %42, i64 %43, i32 %44, i8* %45, i32 %46, i8* %47, i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load i32*, i32** %9, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i32, i32* %12, align 4
  %55 = load i8*, i8** %13, align 8
  %56 = load i32, i32* %14, align 4
  %57 = load i8*, i8** %15, align 8
  %58 = load i32*, i32** %16, align 8
  %59 = call i32 @verify_rep_cache(i32* %51, i64 %52, i64 %53, i32 %54, i8* %55, i32 %56, i8* %57, i32* %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  %61 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %61
}

declare dso_local i32 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__youngest_rev(i64*, i32*, i32*) #1

declare dso_local i32 @svn_fs_x__ensure_revision_exists(i64, i32*, i32*) #1

declare dso_local i32 @verify_metadata_consistency(i32*, i64, i64, i32, i8*, i32, i8*, i32*) #1

declare dso_local i32 @verify_rep_cache(i32*, i64, i64, i32, i8*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
