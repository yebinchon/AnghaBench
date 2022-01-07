; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_pristine.c_pristine_transfer_txn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_pristine.c_pristine_transfer_txn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@STMT_SELECT_COPY_PRISTINES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"is\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*, %struct.TYPE_6__*, i8*, i32, i8*, i32*)* @pristine_transfer_txn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pristine_transfer_txn(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1, i8* %2, i32 %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  %21 = load i32*, i32** %13, align 8
  %22 = call i32* @svn_pool_create(i32* %21)
  store i32* %22, i32** %16, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @STMT_SELECT_COPY_PRISTINES, align 4
  %27 = call i32 @svn_sqlite__get_statement(i32** %14, i32 %25, i32 %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load i32*, i32** %14, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %10, align 8
  %34 = call i32 @svn_sqlite__bindf(i32* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %32, i8* %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  %36 = load i32*, i32** %14, align 8
  %37 = call i32 @svn_sqlite__step(i64* %15, i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  br label %39

39:                                               ; preds = %72, %6
  %40 = load i64, i64* %15, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %76

42:                                               ; preds = %39
  %43 = load i32*, i32** %16, align 8
  %44 = call i32 @svn_pool_clear(i32* %43)
  %45 = load i32*, i32** %14, align 8
  %46 = load i32*, i32** %16, align 8
  %47 = call i32 @svn_sqlite__column_checksum(i32** %17, i32* %45, i32 0, i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = load i32*, i32** %14, align 8
  %50 = load i32*, i32** %16, align 8
  %51 = call i32 @svn_sqlite__column_checksum(i32** %18, i32* %49, i32 1, i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  %53 = load i32*, i32** %14, align 8
  %54 = call i32 @svn_sqlite__column_int64(i32* %53, i32 2)
  store i32 %54, i32* %19, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %57 = load i32*, i32** %17, align 8
  %58 = load i32*, i32** %18, align 8
  %59 = load i32, i32* %19, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i8*, i8** %12, align 8
  %62 = load i32*, i32** %16, align 8
  %63 = call i32* @maybe_transfer_one_pristine(%struct.TYPE_6__* %55, %struct.TYPE_6__* %56, i32* %57, i32* %58, i32 %59, i32 %60, i8* %61, i32* %62)
  store i32* %63, i32** %20, align 8
  %64 = load i32*, i32** %20, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %42
  %67 = load i32*, i32** %20, align 8
  %68 = load i32*, i32** %14, align 8
  %69 = call i32 @svn_sqlite__reset(i32* %68)
  %70 = call i32 @svn_error_compose_create(i32* %67, i32 %69)
  %71 = call i32* @svn_error_trace(i32 %70)
  store i32* %71, i32** %7, align 8
  br label %83

72:                                               ; preds = %42
  %73 = load i32*, i32** %14, align 8
  %74 = call i32 @svn_sqlite__step(i64* %15, i32* %73)
  %75 = call i32 @SVN_ERR(i32 %74)
  br label %39

76:                                               ; preds = %39
  %77 = load i32*, i32** %14, align 8
  %78 = call i32 @svn_sqlite__reset(i32* %77)
  %79 = call i32 @SVN_ERR(i32 %78)
  %80 = load i32*, i32** %16, align 8
  %81 = call i32 @svn_pool_destroy(i32* %80)
  %82 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %82, i32** %7, align 8
  br label %83

83:                                               ; preds = %76, %66
  %84 = load i32*, i32** %7, align 8
  ret i32* %84
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*) #1

declare dso_local i32 @svn_sqlite__step(i64*, i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @svn_sqlite__column_checksum(i32**, i32*, i32, i32*) #1

declare dso_local i32 @svn_sqlite__column_int64(i32*, i32) #1

declare dso_local i32* @maybe_transfer_one_pristine(%struct.TYPE_6__*, %struct.TYPE_6__*, i32*, i32*, i32, i32, i8*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_error_compose_create(i32*, i32) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
