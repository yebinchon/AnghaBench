; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_get_operative_immediate_children.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_get_operative_immediate_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i32*, i32*, i64, i32* }

@svn_depth_infinity = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TRUE = common dso_local global i32 0, align 4
@log_find_operative_subtree_revs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i8*, i64, i64, i8*, i64, i32*, i32*, i32*, i32*)* @get_operative_immediate_children to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_operative_immediate_children(i32** %0, i8* %1, i64 %2, i64 %3, i8* %4, i64 %5, i32* %6, i32* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_3__, align 8
  store i32** %0, i32*** %12, align 8
  store i8* %1, i8** %13, align 8
  store i64 %2, i64* %14, align 8
  store i64 %3, i64* %15, align 8
  store i8* %4, i8** %16, align 8
  store i64 %5, i64* %17, align 8
  store i32* %6, i32** %18, align 8
  store i32* %7, i32** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  %23 = load i64, i64* %14, align 8
  %24 = call i32 @SVN_IS_VALID_REVNUM(i64 %23)
  %25 = call i32 @SVN_ERR_ASSERT(i32 %24)
  %26 = load i64, i64* %15, align 8
  %27 = call i32 @SVN_IS_VALID_REVNUM(i64 %26)
  %28 = call i32 @SVN_ERR_ASSERT(i32 %27)
  %29 = load i64, i64* %14, align 8
  %30 = load i64, i64* %15, align 8
  %31 = icmp sle i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @SVN_ERR_ASSERT(i32 %32)
  %34 = load i32*, i32** %20, align 8
  %35 = call i32* @apr_hash_make(i32* %34)
  %36 = load i32**, i32*** %12, align 8
  store i32* %35, i32** %36, align 8
  %37 = load i64, i64* %17, align 8
  %38 = load i64, i64* @svn_depth_infinity, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %10
  %41 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %41, i32** %11, align 8
  br label %65

42:                                               ; preds = %10
  %43 = load i32**, i32*** %12, align 8
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 5
  store i32* %44, i32** %45, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i8* %46, i8** %47, align 8
  %48 = load i8*, i8** %16, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store i8* %48, i8** %49, align 8
  %50 = load i64, i64* %17, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 4
  store i64 %50, i64* %51, align 8
  %52 = load i32*, i32** %18, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  store i32* %52, i32** %53, align 8
  %54 = load i32*, i32** %20, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  store i32* %54, i32** %55, align 8
  %56 = load i32*, i32** %19, align 8
  %57 = load i64, i64* %15, align 8
  %58 = load i64, i64* %14, align 8
  %59 = load i32, i32* @TRUE, align 4
  %60 = load i32, i32* @log_find_operative_subtree_revs, align 4
  %61 = load i32*, i32** %21, align 8
  %62 = call i32 @get_log(i32* %56, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 %57, i64 %58, i32 %59, i32 %60, %struct.TYPE_3__* %22, i32* %61)
  %63 = call i32 @SVN_ERR(i32 %62)
  %64 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %64, i32** %11, align 8
  br label %65

65:                                               ; preds = %42, %40
  %66 = load i32*, i32** %11, align 8
  ret i32* %66
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_log(i32*, i8*, i64, i64, i32, i32, %struct.TYPE_3__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
