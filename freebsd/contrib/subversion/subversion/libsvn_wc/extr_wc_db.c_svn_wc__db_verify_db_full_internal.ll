; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_verify_db_full_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_verify_db_full_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@STMT_STATIC_VERIFY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_verify_db_full_internal(%struct.TYPE_3__* %0, i32* (i8*, i32, i8*, i32, i32, i8*, i32*)* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32* (i8*, i32, i8*, i32, i32, i8*, i32*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* (i8*, i32, i8*, i32, i32, i8*, i32*)* %1, i32* (i8*, i32, i8*, i32, i32, i8*, i32*)** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32* null, i32** %11, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i32* @svn_pool_create(i32* %17)
  store i32* %18, i32** %12, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @STMT_STATIC_VERIFY, align 4
  %23 = call i32 @svn_sqlite__get_statement(i32** %9, i32 %21, i32 %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @svn_sqlite__step(i64* %10, i32* %25)
  %27 = call i32 @SVN_ERR(i32 %26)
  br label %28

28:                                               ; preds = %58, %4
  %29 = load i64, i64* %10, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %62

31:                                               ; preds = %28
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @svn_sqlite__column_int(i32* %32, i32 1)
  store i32 %33, i32* %14, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @svn_sqlite__column_int(i32* %34, i32 2)
  store i32 %35, i32* %15, align 4
  %36 = load i32*, i32** %12, align 8
  %37 = call i32 @svn_pool_clear(i32* %36)
  %38 = load i32*, i32** %9, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = call i8* @svn_sqlite__column_text(i32* %38, i32 0, i32* %39)
  store i8* %40, i8** %13, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = call i8* @svn_sqlite__column_text(i32* %41, i32 3, i32* %42)
  store i8* %43, i8** %16, align 8
  %44 = load i32* (i8*, i32, i8*, i32, i32, i8*, i32*)*, i32* (i8*, i32, i8*, i32, i32, i8*, i32*)** %6, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %13, align 8
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %15, align 4
  %52 = load i8*, i8** %16, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = call i32* %44(i8* %45, i32 %48, i8* %49, i32 %50, i32 %51, i8* %52, i32* %53)
  store i32* %54, i32** %11, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %31
  br label %62

58:                                               ; preds = %31
  %59 = load i32*, i32** %9, align 8
  %60 = call i32 @svn_sqlite__step(i64* %10, i32* %59)
  %61 = call i32 @SVN_ERR(i32 %60)
  br label %28

62:                                               ; preds = %57, %28
  %63 = load i32*, i32** %12, align 8
  %64 = call i32 @svn_pool_destroy(i32* %63)
  %65 = load i32*, i32** %11, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 @svn_sqlite__reset(i32* %66)
  %68 = call i32 @svn_error_compose_create(i32* %65, i32 %67)
  %69 = call i32* @svn_error_trace(i32 %68)
  ret i32* %69
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__step(i64*, i32*) #1

declare dso_local i32 @svn_sqlite__column_int(i32*, i32) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i8* @svn_sqlite__column_text(i32*, i32, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_error_compose_create(i32*, i32) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
