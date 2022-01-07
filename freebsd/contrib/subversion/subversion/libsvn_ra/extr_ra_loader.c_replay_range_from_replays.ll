; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_ra_loader.c_replay_range_from_replays.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_ra_loader.c_replay_range_from_replays.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i64, i64, i64, i32, i32 (i64, i8*, i32**, i8**, i32*, i32*)*, i32 (i64, i8*, i32*, i8*, i32*, i32*)*, i8*, i32*)* @replay_range_from_replays to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @replay_range_from_replays(i32* %0, i64 %1, i64 %2, i64 %3, i32 %4, i32 (i64, i8*, i32**, i8**, i32*, i32*)* %5, i32 (i64, i8*, i32*, i8*, i32*, i32*)* %6, i8* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32 (i64, i8*, i32**, i8**, i32*, i32*)*, align 8
  %16 = alloca i32 (i64, i8*, i32*, i8*, i32*, i32*)*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  store i32* %0, i32** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 (i64, i8*, i32**, i8**, i32*, i32*)* %5, i32 (i64, i8*, i32**, i8**, i32*, i32*)** %15, align 8
  store i32 (i64, i8*, i32*, i8*, i32*, i32*)* %6, i32 (i64, i8*, i32*, i8*, i32*, i32*)** %16, align 8
  store i8* %7, i8** %17, align 8
  store i32* %8, i32** %18, align 8
  %24 = load i32*, i32** %18, align 8
  %25 = call i32* @svn_pool_create(i32* %24)
  store i32* %25, i32** %19, align 8
  %26 = load i64, i64* %11, align 8
  store i64 %26, i64* %20, align 8
  br label %27

27:                                               ; preds = %64, %9
  %28 = load i64, i64* %20, align 8
  %29 = load i64, i64* %12, align 8
  %30 = icmp sle i64 %28, %29
  br i1 %30, label %31, label %67

31:                                               ; preds = %27
  %32 = load i32*, i32** %19, align 8
  %33 = call i32 @svn_pool_clear(i32* %32)
  %34 = load i32*, i32** %10, align 8
  %35 = load i64, i64* %20, align 8
  %36 = load i32*, i32** %19, align 8
  %37 = call i32 @svn_ra_rev_proplist(i32* %34, i64 %35, i32** %23, i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load i32 (i64, i8*, i32**, i8**, i32*, i32*)*, i32 (i64, i8*, i32**, i8**, i32*, i32*)** %15, align 8
  %40 = load i64, i64* %20, align 8
  %41 = load i8*, i8** %17, align 8
  %42 = load i32*, i32** %23, align 8
  %43 = load i32*, i32** %19, align 8
  %44 = call i32 %39(i64 %40, i8* %41, i32** %21, i8** %22, i32* %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load i32*, i32** %10, align 8
  %47 = load i64, i64* %20, align 8
  %48 = load i64, i64* %13, align 8
  %49 = load i32, i32* %14, align 4
  %50 = load i32*, i32** %21, align 8
  %51 = load i8*, i8** %22, align 8
  %52 = load i32*, i32** %19, align 8
  %53 = call i32 @svn_ra_replay(i32* %46, i64 %47, i64 %48, i32 %49, i32* %50, i8* %51, i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  %55 = load i32 (i64, i8*, i32*, i8*, i32*, i32*)*, i32 (i64, i8*, i32*, i8*, i32*, i32*)** %16, align 8
  %56 = load i64, i64* %20, align 8
  %57 = load i8*, i8** %17, align 8
  %58 = load i32*, i32** %21, align 8
  %59 = load i8*, i8** %22, align 8
  %60 = load i32*, i32** %23, align 8
  %61 = load i32*, i32** %19, align 8
  %62 = call i32 %55(i64 %56, i8* %57, i32* %58, i8* %59, i32* %60, i32* %61)
  %63 = call i32 @SVN_ERR(i32 %62)
  br label %64

64:                                               ; preds = %31
  %65 = load i64, i64* %20, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %20, align 8
  br label %27

67:                                               ; preds = %27
  %68 = load i32*, i32** %19, align 8
  %69 = call i32 @svn_pool_destroy(i32* %68)
  %70 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %70
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_rev_proplist(i32*, i64, i32**, i32*) #1

declare dso_local i32 @svn_ra_replay(i32*, i64, i64, i32, i32*, i8*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
