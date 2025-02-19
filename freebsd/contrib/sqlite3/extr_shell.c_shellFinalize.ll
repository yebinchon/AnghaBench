; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_shellFinalize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_shellFinalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_OK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"SQL error: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @shellFinalize(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %31

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = call i32* @sqlite3_db_handle(i32* %10)
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @sqlite3_finalize(i32* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SQLITE_OK, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %9
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @SQLITE_OK, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i32, i32* @stderr, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @sqlite3_errmsg(i32* %24)
  %26 = call i32 @raw_printf(i32 %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %22, %18
  %28 = load i32, i32* %6, align 4
  %29 = load i32*, i32** %3, align 8
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %27, %9
  br label %31

31:                                               ; preds = %30, %2
  ret void
}

declare dso_local i32* @sqlite3_db_handle(i32*) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @raw_printf(i32, i8*, i32) #1

declare dso_local i32 @sqlite3_errmsg(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
