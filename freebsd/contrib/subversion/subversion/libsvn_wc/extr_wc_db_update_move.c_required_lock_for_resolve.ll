; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_required_lock_for_resolve.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_required_lock_for_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@STMT_SELECT_MOVED_OUTSIDE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"isd\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, %struct.TYPE_3__*, i8*, i32*, i32*)* @required_lock_for_resolve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @required_lock_for_resolve(i8** %0, %struct.TYPE_3__* %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i8** %0, i8*** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i8**, i8*** %6, align 8
  store i8* %14, i8** %15, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @STMT_SELECT_MOVED_OUTSIDE, align 4
  %20 = call i32 @svn_sqlite__get_statement(i32** %11, i32 %18, i32 %19)
  %21 = call i32 @SVN_ERR(i32 %20)
  %22 = load i32*, i32** %11, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @svn_sqlite__bindf(i32* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %25, i8* %26, i32 0)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load i32*, i32** %11, align 8
  %30 = call i32 @svn_sqlite__step(i64* %12, i32* %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  br label %32

32:                                               ; preds = %35, %5
  %33 = load i64, i64* %12, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = load i32*, i32** %11, align 8
  %37 = call i8* @svn_sqlite__column_text(i32* %36, i32 1, i32* null)
  store i8* %37, i8** %13, align 8
  %38 = load i8**, i8*** %6, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = load i8*, i8** %13, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = call i8* @svn_relpath_get_longest_ancestor(i8* %39, i8* %40, i32* %41)
  %43 = load i8**, i8*** %6, align 8
  store i8* %42, i8** %43, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 @svn_sqlite__step(i64* %12, i32* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  br label %32

47:                                               ; preds = %32
  %48 = load i32*, i32** %11, align 8
  %49 = call i32 @svn_sqlite__reset(i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load i32*, i32** %9, align 8
  %52 = load i8**, i8*** %6, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = call i8* @apr_pstrdup(i32* %51, i8* %53)
  %55 = load i8**, i8*** %6, align 8
  store i8* %54, i8** %55, align 8
  %56 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %56
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*, i32) #1

declare dso_local i32 @svn_sqlite__step(i64*, i32*) #1

declare dso_local i8* @svn_sqlite__column_text(i32*, i32, i32*) #1

declare dso_local i8* @svn_relpath_get_longest_ancestor(i8*, i8*, i32*) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
