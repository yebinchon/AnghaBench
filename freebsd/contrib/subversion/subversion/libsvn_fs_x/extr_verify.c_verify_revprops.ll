; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_verify.c_verify_revprops.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_verify.c_verify_revprops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SVN_PROP_REVISION_DATE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i64, i64, i32 (i8*)*, i8*, i32*)* @verify_revprops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @verify_revprops(i32* %0, i64 %1, i64 %2, i32 (i8*)* %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32 (i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_3__*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 (i8*)* %3, i32 (i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32* %5, i32** %12, align 8
  %17 = load i32*, i32** %12, align 8
  %18 = call i32* @svn_pool_create(i32* %17)
  store i32* %18, i32** %14, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @svn_fs_x__invalidate_revprop_generation(i32* %19)
  %21 = load i64, i64* %8, align 8
  store i64 %21, i64* %13, align 8
  br label %22

22:                                               ; preds = %55, %6
  %23 = load i64, i64* %13, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %58

26:                                               ; preds = %22
  %27 = load i32*, i32** %14, align 8
  %28 = call i32 @svn_pool_clear(i32* %27)
  %29 = load i32*, i32** %7, align 8
  %30 = load i64, i64* %13, align 8
  %31 = load i32, i32* @SVN_PROP_REVISION_DATE, align 4
  %32 = load i32, i32* @FALSE, align 4
  %33 = load i32*, i32** %14, align 8
  %34 = load i32*, i32** %14, align 8
  %35 = call i32 @svn_fs_x__revision_prop(%struct.TYPE_3__** %15, i32* %29, i64 %30, i32 %31, i32 %32, i32* %33, i32* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %38 = icmp ne %struct.TYPE_3__* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %26
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %14, align 8
  %44 = call i32 @svn_time_from_cstring(i32* %16, i32 %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  br label %46

46:                                               ; preds = %39, %26
  %47 = load i32 (i8*)*, i32 (i8*)** %10, align 8
  %48 = icmp ne i32 (i8*)* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32 (i8*)*, i32 (i8*)** %10, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = call i32 %50(i8* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  br label %54

54:                                               ; preds = %49, %46
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %13, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %13, align 8
  br label %22

58:                                               ; preds = %22
  %59 = load i32*, i32** %14, align 8
  %60 = call i32 @svn_pool_destroy(i32* %59)
  %61 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %61
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_fs_x__invalidate_revprop_generation(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__revision_prop(%struct.TYPE_3__**, i32*, i64, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_time_from_cstring(i32*, i32, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
