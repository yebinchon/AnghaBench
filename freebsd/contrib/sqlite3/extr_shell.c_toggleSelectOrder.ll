; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_toggleSelectOrder.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_toggleSelectOrder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"PRAGMA reverse_unordered_selects\00", align 1
@SQLITE_ROW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"PRAGMA reverse_unordered_selects(%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @toggleSelectOrder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @toggleSelectOrder(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [100 x i8], align 16
  store i32* %0, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @sqlite3_prepare_v2(i32* %6, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 -1, i32** %3, i32 0)
  %8 = load i32*, i32** %3, align 8
  %9 = call i64 @sqlite3_step(i32* %8)
  %10 = load i64, i64* @SQLITE_ROW, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @sqlite3_column_int(i32* %13, i32 0)
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %12, %1
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @sqlite3_finalize(i32* %16)
  %18 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @sqlite3_snprintf(i32 100, i8* %18, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32*, i32** %2, align 8
  %25 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %26 = call i32 @sqlite3_exec(i32* %24, i8* %25, i32 0, i32 0, i32 0)
  ret void
}

declare dso_local i32 @sqlite3_prepare_v2(i32*, i8*, i32, i32**, i32) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_column_int(i32*, i32) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @sqlite3_snprintf(i32, i8*, i8*, i32) #1

declare dso_local i32 @sqlite3_exec(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
