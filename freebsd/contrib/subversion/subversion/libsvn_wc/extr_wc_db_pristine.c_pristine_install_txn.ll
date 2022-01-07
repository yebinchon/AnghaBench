; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_pristine.c_pristine_install_txn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_pristine.c_pristine_install_txn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@STMT_SELECT_PRISTINE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@APR_FINFO_SIZE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@STMT_INSERT_PRISTINE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_ERR_WC_CORRUPT_TEXT_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i8*, i32*, i32*, i32*)* @pristine_install_txn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pristine_install_txn(i32* %0, i32* %1, i8* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_4__, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* @STMT_SELECT_PRISTINE, align 4
  %19 = call i32 @svn_sqlite__get_statement(i32** %14, i32* %17, i32 %18)
  %20 = call i32 @SVN_ERR(i32 %19)
  %21 = load i32*, i32** %14, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = call i32 @svn_sqlite__bind_checksum(i32* %21, i32 1, i32* %22, i32* %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  %26 = load i32*, i32** %14, align 8
  %27 = call i32 @svn_sqlite__step(i64* %15, i32* %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load i32*, i32** %14, align 8
  %30 = call i32 @svn_sqlite__reset(i32* %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load i64, i64* %15, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %6
  %35 = load i32*, i32** %9, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = call i32 @svn_stream__install_delete(i32* %35, i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %39, i32** %7, align 8
  br label %80

40:                                               ; preds = %6
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* @APR_FINFO_SIZE, align 4
  %43 = load i32*, i32** %13, align 8
  %44 = call i32 @svn_stream__install_get_info(%struct.TYPE_4__* %16, i32* %41, i32 %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load i32*, i32** %9, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = load i32, i32* @TRUE, align 4
  %49 = load i32*, i32** %13, align 8
  %50 = call i32 @svn_stream__install_stream(i32* %46, i8* %47, i32 %48, i32* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* @STMT_INSERT_PRISTINE, align 4
  %54 = call i32 @svn_sqlite__get_statement(i32** %14, i32* %52, i32 %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  %56 = load i32*, i32** %14, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = load i32*, i32** %13, align 8
  %59 = call i32 @svn_sqlite__bind_checksum(i32* %56, i32 1, i32* %57, i32* %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  %61 = load i32*, i32** %14, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = load i32*, i32** %13, align 8
  %64 = call i32 @svn_sqlite__bind_checksum(i32* %61, i32 2, i32* %62, i32* %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  %66 = load i32*, i32** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @svn_sqlite__bind_int64(i32* %66, i32 3, i64 %68)
  %70 = call i32 @SVN_ERR(i32 %69)
  %71 = load i32*, i32** %14, align 8
  %72 = call i32 @svn_sqlite__insert(i32* null, i32* %71)
  %73 = call i32 @SVN_ERR(i32 %72)
  %74 = load i8*, i8** %10, align 8
  %75 = load i32, i32* @FALSE, align 4
  %76 = load i32*, i32** %13, align 8
  %77 = call i32 @svn_io_set_file_read_only(i8* %74, i32 %75, i32* %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  %79 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %79, i32** %7, align 8
  br label %80

80:                                               ; preds = %40, %34
  %81 = load i32*, i32** %7, align 8
  ret i32* %81
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32*, i32) #1

declare dso_local i32 @svn_sqlite__bind_checksum(i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_sqlite__step(i64*, i32*) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i32 @svn_stream__install_delete(i32*, i32*) #1

declare dso_local i32 @svn_stream__install_get_info(%struct.TYPE_4__*, i32*, i32, i32*) #1

declare dso_local i32 @svn_stream__install_stream(i32*, i8*, i32, i32*) #1

declare dso_local i32 @svn_sqlite__bind_int64(i32*, i32, i64) #1

declare dso_local i32 @svn_sqlite__insert(i32*, i32*) #1

declare dso_local i32 @svn_io_set_file_read_only(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
