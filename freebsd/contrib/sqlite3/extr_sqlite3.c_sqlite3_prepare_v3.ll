; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_sqlite3_prepare_v3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_sqlite3_prepare_v3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_PREPARE_SAVESQL = common dso_local global i32 0, align 4
@SQLITE_PREPARE_MASK = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3_prepare_v3(i32* %0, i8* %1, i32 %2, i32 %3, i32** %4, i8** %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32** %4, i32*** %11, align 8
  store i8** %5, i8*** %12, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @SQLITE_PREPARE_SAVESQL, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @SQLITE_PREPARE_MASK, align 4
  %20 = and i32 %18, %19
  %21 = or i32 %17, %20
  %22 = load i32**, i32*** %11, align 8
  %23 = load i8**, i8*** %12, align 8
  %24 = call i32 @sqlite3LockAndPrepare(i32* %14, i8* %15, i32 %16, i32 %21, i32 0, i32** %22, i8** %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* @SQLITE_OK, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %35, label %28

28:                                               ; preds = %6
  %29 = load i32**, i32*** %11, align 8
  %30 = icmp eq i32** %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = load i32**, i32*** %11, align 8
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br label %35

35:                                               ; preds = %31, %28, %6
  %36 = phi i1 [ true, %28 ], [ true, %6 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i32, i32* %13, align 4
  ret i32 %39
}

declare dso_local i32 @sqlite3LockAndPrepare(i32*, i8*, i32, i32, i32, i32**, i8**) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
