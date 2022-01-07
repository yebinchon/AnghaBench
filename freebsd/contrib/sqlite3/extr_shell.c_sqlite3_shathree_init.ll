; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_sqlite3_shathree_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_sqlite3_shathree_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"sha3\00", align 1
@SQLITE_UTF8 = common dso_local global i32 0, align 4
@sha3Func = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"sha3_query\00", align 1
@sha3QueryFunc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3_shathree_init(i32* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* @SQLITE_OK, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32*, i32** %6, align 8
  %10 = call i32 @SQLITE_EXTENSION_INIT2(i32* %9)
  %11 = load i8**, i8*** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* @SQLITE_UTF8, align 4
  %14 = load i32, i32* @sha3Func, align 4
  %15 = call i32 @sqlite3_create_function(i32* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 1, i32 %13, i32 0, i32 %14, i32 0, i32 0)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @SQLITE_OK, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* @SQLITE_UTF8, align 4
  %22 = load i32, i32* @sha3Func, align 4
  %23 = call i32 @sqlite3_create_function(i32* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 2, i32 %21, i32 0, i32 %22, i32 0, i32 0)
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %19, %3
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @SQLITE_OK, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @SQLITE_UTF8, align 4
  %31 = load i32, i32* @sha3QueryFunc, align 4
  %32 = call i32 @sqlite3_create_function(i32* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 1, i32 %30, i32 0, i32 %31, i32 0, i32 0)
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %28, %24
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @SQLITE_OK, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* @SQLITE_UTF8, align 4
  %40 = load i32, i32* @sha3QueryFunc, align 4
  %41 = call i32 @sqlite3_create_function(i32* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 2, i32 %39, i32 0, i32 %40, i32 0, i32 0)
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %37, %33
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @SQLITE_EXTENSION_INIT2(i32*) #1

declare dso_local i32 @sqlite3_create_function(i32*, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
