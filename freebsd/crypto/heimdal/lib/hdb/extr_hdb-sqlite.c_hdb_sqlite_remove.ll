; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_hdb-sqlite.c_hdb_sqlite_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_hdb-sqlite.c_hdb_sqlite_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32* }

@SQLITE_STATIC = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"sqlite remove failed: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_5__*, i32)* @hdb_sqlite_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hdb_sqlite_remove(i32 %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %10, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %11, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @krb5_unparse_name(i32 %19, i32 %20, i8** %9)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @free(i8* %25)
  %27 = load i64, i64* %8, align 8
  store i64 %27, i64* %4, align 8
  br label %55

28:                                               ; preds = %3
  %29 = load i32*, i32** %11, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i32, i32* @SQLITE_STATIC, align 4
  %32 = call i32 @sqlite3_bind_text(i32* %29, i32 1, i8* %30, i32 -1, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = call i64 @hdb_sqlite_step(i32 %33, i32 %36, i32* %37)
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* @SQLITE_DONE, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %28
  %43 = load i64, i64* @EINVAL, align 8
  store i64 %43, i64* %8, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @krb5_set_error_message(i32 %44, i64 %45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %46)
  br label %49

48:                                               ; preds = %28
  store i64 0, i64* %8, align 8
  br label %49

49:                                               ; preds = %48, %42
  %50 = load i32*, i32** %11, align 8
  %51 = call i32 @sqlite3_clear_bindings(i32* %50)
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @sqlite3_reset(i32* %52)
  %54 = load i64, i64* %8, align 8
  store i64 %54, i64* %4, align 8
  br label %55

55:                                               ; preds = %49, %24
  %56 = load i64, i64* %4, align 8
  ret i64 %56
}

declare dso_local i64 @krb5_unparse_name(i32, i32, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @sqlite3_bind_text(i32*, i32, i8*, i32, i32) #1

declare dso_local i64 @hdb_sqlite_step(i32, i32, i32*) #1

declare dso_local i32 @krb5_set_error_message(i32, i64, i8*, i64) #1

declare dso_local i32 @sqlite3_clear_bindings(i32*) #1

declare dso_local i32 @sqlite3_reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
