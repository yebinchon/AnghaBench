; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_strings-table.c_get_next_length.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_strings-table.c_get_next_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64 }

@DB_DBT_USERMEM = common dso_local global i32 0, align 4
@DB_NEXT_DUP = common dso_local global i32 0, align 4
@SVN_BDB_DB_BUFFER_SMALL = common dso_local global i32 0, align 4
@DB_DBT_PARTIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32*, %struct.TYPE_6__*)* @get_next_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_next_length(i64* %0, i32* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_6__, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__, align 8
  store i64* %0, i64** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %11 = call i32 @svn_fs_base__clear_dbt(%struct.TYPE_6__* %8)
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* @DB_DBT_USERMEM, align 4
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %15, %13
  store i32 %16, i32* %14, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %19 = load i32, i32* @DB_NEXT_DUP, align 4
  %20 = call i32 @svn_bdb_dbc_get(i32* %17, %struct.TYPE_6__* %18, %struct.TYPE_6__* %8, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %49

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @SVN_BDB_DB_BUFFER_SMALL, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @svn_bdb_dbc_close(i32* %28)
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %4, align 4
  br label %54

31:                                               ; preds = %23
  %32 = call i32 @svn_fs_base__clear_dbt(%struct.TYPE_6__* %10)
  %33 = load i32, i32* @DB_DBT_USERMEM, align 4
  %34 = load i32, i32* @DB_DBT_PARTIAL, align 4
  %35 = or i32 %33, %34
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %35
  store i32 %38, i32* %36, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = load i32, i32* @DB_NEXT_DUP, align 4
  %42 = call i32 @svn_bdb_dbc_get(i32* %39, %struct.TYPE_6__* %40, %struct.TYPE_6__* %10, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %31
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @svn_bdb_dbc_close(i32* %46)
  br label %48

48:                                               ; preds = %45, %31
  br label %49

49:                                               ; preds = %48, %3
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64*, i64** %5, align 8
  store i64 %51, i64* %52, align 8
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %49, %27
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @svn_fs_base__clear_dbt(%struct.TYPE_6__*) #1

declare dso_local i32 @svn_bdb_dbc_get(i32*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @svn_bdb_dbc_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
