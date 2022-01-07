; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_hdb-sqlite.c_hdb_sqlite_open_database.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_hdb-sqlite.c_hdb_sqlite_open_database.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32*, i32 }

@SQLITE_OPEN_READWRITE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Error opening sqlite database %s: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_5__*, i32)* @hdb_sqlite_open_database to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdb_sqlite_open_database(i32 %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %9, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* @SQLITE_OPEN_READWRITE, align 4
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @sqlite3_open_v2(i32 %16, i32** %18, i32 %21, i32* null)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %53

25:                                               ; preds = %3
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %48

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOENT, align 4
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @sqlite3_errmsg(i32* %39)
  %41 = call i32 @krb5_set_error_message(i32 %32, i32 %33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @sqlite3_close(i32* %44)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  br label %51

48:                                               ; preds = %25
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @krb5_enomem(i32 %49)
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %48, %30
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %4, align 4
  br label %54

53:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %51
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @sqlite3_open_v2(i32, i32**, i32, i32*) #1

declare dso_local i32 @krb5_set_error_message(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @sqlite3_errmsg(i32*) #1

declare dso_local i32 @sqlite3_close(i32*) #1

declare dso_local i32 @krb5_enomem(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
