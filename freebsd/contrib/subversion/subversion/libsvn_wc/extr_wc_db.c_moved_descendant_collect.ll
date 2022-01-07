; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_moved_descendant_collect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_moved_descendant_collect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@STMT_SELECT_MOVED_DESCENDANTS_SRC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"isd\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, %struct.TYPE_3__*, i8*, i32, i32*, i32*)* @moved_descendant_collect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @moved_descendant_collect(i32** %0, %struct.TYPE_3__* %1, i8* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i32** %0, i32*** %8, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load i32**, i32*** %8, align 8
  store i32* null, i32** %18, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @STMT_SELECT_MOVED_DESCENDANTS_SRC, align 4
  %23 = call i32 @svn_sqlite__get_statement(i32** %14, i32 %21, i32 %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  %25 = load i32*, i32** %14, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %10, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @svn_sqlite__bindf(i32* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %28, i8* %29, i32 %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load i32*, i32** %14, align 8
  %34 = call i32 @svn_sqlite__step(i64* %15, i32* %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  %36 = load i64, i64* %15, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %6
  %39 = load i32*, i32** %14, align 8
  %40 = call i32 @svn_sqlite__reset(i32* %39)
  %41 = call i32* @svn_error_trace(i32 %40)
  store i32* %41, i32** %7, align 8
  br label %74

42:                                               ; preds = %6
  br label %43

43:                                               ; preds = %60, %42
  %44 = load i64, i64* %15, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %69

46:                                               ; preds = %43
  %47 = load i32*, i32** %14, align 8
  %48 = load i32*, i32** %12, align 8
  %49 = call i8* @svn_sqlite__column_text(i32* %47, i32 1, i32* %48)
  store i8* %49, i8** %16, align 8
  %50 = load i32*, i32** %14, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = call i8* @svn_sqlite__column_text(i32* %50, i32 4, i32* %51)
  store i8* %52, i8** %17, align 8
  %53 = load i32**, i32*** %8, align 8
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %46
  %57 = load i32*, i32** %12, align 8
  %58 = call i32* @apr_hash_make(i32* %57)
  %59 = load i32**, i32*** %8, align 8
  store i32* %58, i32** %59, align 8
  br label %60

60:                                               ; preds = %56, %46
  %61 = load i32**, i32*** %8, align 8
  %62 = load i32*, i32** %61, align 8
  %63 = load i8*, i8** %17, align 8
  %64 = load i8*, i8** %16, align 8
  %65 = call i32 @svn_hash_sets(i32* %62, i8* %63, i8* %64)
  %66 = load i32*, i32** %14, align 8
  %67 = call i32 @svn_sqlite__step(i64* %15, i32* %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  br label %43

69:                                               ; preds = %43
  %70 = load i32*, i32** %14, align 8
  %71 = call i32 @svn_sqlite__reset(i32* %70)
  %72 = call i32 @SVN_ERR(i32 %71)
  %73 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %73, i32** %7, align 8
  br label %74

74:                                               ; preds = %69, %38
  %75 = load i32*, i32** %7, align 8
  ret i32* %75
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*, i32) #1

declare dso_local i32 @svn_sqlite__step(i64*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i8* @svn_sqlite__column_text(i32*, i32, i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
