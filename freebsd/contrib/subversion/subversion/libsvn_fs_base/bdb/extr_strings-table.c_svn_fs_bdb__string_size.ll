; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_strings-table.c_svn_fs_bdb__string_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_strings-table.c_svn_fs_bdb__string_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DB_NOTFOUND = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"fetching string length\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_bdb__string_size(i64* %0, i32* %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i64* %0, i64** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = call i32 @svn_fs_base__str_to_dbt(i32* %13, i8* %17)
  %19 = load i32*, i32** %8, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = call i32 @locate_key(i64* %15, i32** %14, i32* %13, i32* %19, i32* %20, i32* %21)
  %23 = call i32 @SVN_ERR(i32 %22)
  %24 = load i64, i64* %15, align 8
  store i64 %24, i64* %16, align 8
  br label %25

25:                                               ; preds = %5, %43
  %26 = load i32*, i32** %14, align 8
  %27 = call i32 @get_next_length(i64* %15, i32* %26, i32* %13)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @DB_NOTFOUND, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i64, i64* %16, align 8
  %33 = load i64*, i64** %7, align 8
  store i64 %32, i64* %33, align 8
  %34 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %34, i32** %6, align 8
  br label %47

35:                                               ; preds = %25
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @N_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* %12, align 4
  %42 = call i32* @BDB_WRAP(i32* %39, i32 %40, i32 %41)
  store i32* %42, i32** %6, align 8
  br label %47

43:                                               ; preds = %35
  %44 = load i64, i64* %15, align 8
  %45 = load i64, i64* %16, align 8
  %46 = add nsw i64 %45, %44
  store i64 %46, i64* %16, align 8
  br label %25

47:                                               ; preds = %38, %31
  %48 = load i32*, i32** %6, align 8
  ret i32* %48
}

declare dso_local i32 @svn_fs_base__str_to_dbt(i32*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @locate_key(i64*, i32**, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @get_next_length(i64*, i32*, i32*) #1

declare dso_local i32* @BDB_WRAP(i32*, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
