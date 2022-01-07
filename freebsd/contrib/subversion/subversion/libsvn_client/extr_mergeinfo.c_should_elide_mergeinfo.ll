; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_mergeinfo.c_should_elide_mergeinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_mergeinfo.c_should_elide_mergeinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i8*, i32*)* @should_elide_mergeinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @should_elide_mergeinfo(i32* %0, i32* %1, i32* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %5
  %15 = load i32, i32* @FALSE, align 4
  %16 = load i32*, i32** %6, align 8
  store i32 %15, i32* %16, align 4
  br label %64

17:                                               ; preds = %5
  %18 = load i32*, i32** %8, align 8
  %19 = call i64 @apr_hash_count(i32* %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = load i32*, i32** %7, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32*, i32** %7, align 8
  %26 = call i64 @apr_hash_count(i32* %25)
  %27 = icmp eq i64 %26, 0
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i1 [ true, %21 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = load i32*, i32** %6, align 8
  store i32 %30, i32* %31, align 4
  br label %63

32:                                               ; preds = %17
  %33 = load i32*, i32** %7, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32*, i32** %7, align 8
  %37 = call i64 @apr_hash_count(i32* %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35, %32
  %40 = load i32, i32* @FALSE, align 4
  %41 = load i32*, i32** %6, align 8
  store i32 %40, i32* %41, align 4
  br label %62

42:                                               ; preds = %35
  %43 = load i8*, i8** %9, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i32*, i32** %7, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = call i32 @svn_mergeinfo__add_suffix_to_mergeinfo(i32** %11, i32* %46, i8* %47, i32* %48, i32* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  br label %54

52:                                               ; preds = %42
  %53 = load i32*, i32** %7, align 8
  store i32* %53, i32** %11, align 8
  br label %54

54:                                               ; preds = %52, %45
  %55 = load i32*, i32** %6, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* @TRUE, align 4
  %59 = load i32*, i32** %10, align 8
  %60 = call i32 @svn_mergeinfo__equals(i32* %55, i32* %56, i32* %57, i32 %58, i32* %59)
  %61 = call i32 @SVN_ERR(i32 %60)
  br label %62

62:                                               ; preds = %54, %39
  br label %63

63:                                               ; preds = %62, %28
  br label %64

64:                                               ; preds = %63, %14
  %65 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %65
}

declare dso_local i64 @apr_hash_count(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_mergeinfo__add_suffix_to_mergeinfo(i32**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_mergeinfo__equals(i32*, i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
