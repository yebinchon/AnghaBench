; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_hdb-sqlite.c_hdb_sqlite_prepare_stmt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_hdb-sqlite.c_hdb_sqlite_prepare_stmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_RETRIES = common dso_local global i32 0, align 4
@SQLITE_BUSY = common dso_local global i32 0, align 4
@SQLITE_IOERR_BLOCKED = common dso_local global i32 0, align 4
@SQLITE_LOCKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"hdb-sqlite: prepare busy\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to prepare stmt %s: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32**, i8*)* @hdb_sqlite_prepare_stmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdb_sqlite_prepare_stmt(i32 %0, i32* %1, i32** %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %7, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = load i32**, i32*** %8, align 8
  %15 = call i32 @sqlite3_prepare_v2(i32* %12, i8* %13, i32 -1, i32** %14, i32* null)
  store i32 %15, i32* %10, align 4
  br label %16

16:                                               ; preds = %37, %4
  %17 = load i32, i32* %11, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* @MAX_RETRIES, align 4
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %16
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @SQLITE_BUSY, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %33, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @SQLITE_IOERR_BLOCKED, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @SQLITE_LOCKED, align 4
  %32 = icmp eq i32 %30, %31
  br label %33

33:                                               ; preds = %29, %25, %21
  %34 = phi i1 [ true, %25 ], [ true, %21 ], [ %32, %29 ]
  br label %35

35:                                               ; preds = %33, %16
  %36 = phi i1 [ false, %16 ], [ %34, %33 ]
  br i1 %36, label %37, label %45

37:                                               ; preds = %35
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @krb5_warnx(i32 %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %40 = call i32 @sleep(i32 1)
  %41 = load i32*, i32** %7, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load i32**, i32*** %8, align 8
  %44 = call i32 @sqlite3_prepare_v2(i32* %41, i8* %42, i32 -1, i32** %43, i32* null)
  store i32 %44, i32* %10, align 4
  br label %16

45:                                               ; preds = %35
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @SQLITE_OK, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @EINVAL, align 4
  %52 = load i8*, i8** %9, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @sqlite3_errmsg(i32* %53)
  %55 = call i32 @krb5_set_error_message(i32 %50, i32 %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %52, i32 %54)
  %56 = load i32, i32* @EINVAL, align 4
  store i32 %56, i32* %5, align 4
  br label %58

57:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %49
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @sqlite3_prepare_v2(i32*, i8*, i32, i32**, i32*) #1

declare dso_local i32 @krb5_warnx(i32, i8*) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @krb5_set_error_message(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @sqlite3_errmsg(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
