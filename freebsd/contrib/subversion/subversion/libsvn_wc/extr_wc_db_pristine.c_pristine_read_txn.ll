; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_pristine.c_pristine_read_txn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_pristine.c_pristine_read_txn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@STMT_SELECT_PRISTINE_SIZE = common dso_local global i32 0, align 4
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Pristine text '%s' not present\00", align 1
@APR_READ = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32*, %struct.TYPE_3__*, i32*, i8*, i32*, i32*)* @pristine_read_txn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pristine_read_txn(i32** %0, i32* %1, %struct.TYPE_3__* %2, i32* %3, i8* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store i32** %0, i32*** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %11, align 8
  store i32* %3, i32** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @STMT_SELECT_PRISTINE_SIZE, align 4
  %23 = call i32 @svn_sqlite__get_statement(i32** %16, i32 %21, i32 %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  %25 = load i32*, i32** %16, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = load i32*, i32** %15, align 8
  %28 = call i32 @svn_sqlite__bind_checksum(i32* %25, i32 1, i32* %26, i32* %27)
  %29 = call i32 @SVN_ERR(i32 %28)
  %30 = load i32*, i32** %16, align 8
  %31 = call i32 @svn_sqlite__step(i32* %17, i32* %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load i32*, i32** %10, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %7
  %36 = load i32*, i32** %16, align 8
  %37 = call i32 @svn_sqlite__column_int64(i32* %36, i32 0)
  %38 = load i32*, i32** %10, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %35, %7
  %40 = load i32*, i32** %16, align 8
  %41 = call i32 @svn_sqlite__reset(i32* %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  %43 = load i32, i32* %17, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @SVN_ERR_WC_PATH_NOT_FOUND, align 4
  %47 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %48 = load i32*, i32** %12, align 8
  %49 = load i32*, i32** %15, align 8
  %50 = call i32 @svn_checksum_to_cstring_display(i32* %48, i32* %49)
  %51 = call i32* @svn_error_createf(i32 %46, i32* null, i32 %47, i32 %50)
  store i32* %51, i32** %8, align 8
  br label %69

52:                                               ; preds = %39
  %53 = load i32**, i32*** %9, align 8
  %54 = icmp ne i32** %53, null
  br i1 %54, label %55, label %67

55:                                               ; preds = %52
  %56 = load i8*, i8** %13, align 8
  %57 = load i32, i32* @APR_READ, align 4
  %58 = load i32, i32* @APR_OS_DEFAULT, align 4
  %59 = load i32*, i32** %14, align 8
  %60 = call i32 @svn_io_file_open(i32** %18, i8* %56, i32 %57, i32 %58, i32* %59)
  %61 = call i32 @SVN_ERR(i32 %60)
  %62 = load i32*, i32** %18, align 8
  %63 = load i32, i32* @FALSE, align 4
  %64 = load i32*, i32** %14, align 8
  %65 = call i32* @svn_stream_from_aprfile2(i32* %62, i32 %63, i32* %64)
  %66 = load i32**, i32*** %9, align 8
  store i32* %65, i32** %66, align 8
  br label %67

67:                                               ; preds = %55, %52
  %68 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %68, i32** %8, align 8
  br label %69

69:                                               ; preds = %67, %45
  %70 = load i32*, i32** %8, align 8
  ret i32* %70
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bind_checksum(i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_sqlite__step(i32*, i32*) #1

declare dso_local i32 @svn_sqlite__column_int64(i32*, i32) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_checksum_to_cstring_display(i32*, i32*) #1

declare dso_local i32 @svn_io_file_open(i32**, i8*, i32, i32, i32*) #1

declare dso_local i32* @svn_stream_from_aprfile2(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
