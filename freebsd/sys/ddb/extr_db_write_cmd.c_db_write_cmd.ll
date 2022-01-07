; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_write_cmd.c_db_write_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_write_cmd.c_db_write_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"Unknown size\0A\00", align 1
@DB_STGY_ANY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"\09\09%#8lr\09=\09%#8lr\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Nothing written.\0A\00", align 1
@db_next = common dso_local global i8* null, align 8
@db_prev = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @db_write_cmd(i64 %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %13, align 4
  %14 = load i64, i64* %5, align 8
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %9, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  switch i32 %19, label %23 [
    i32 98, label %20
    i32 104, label %21
    i32 108, label %22
    i32 0, label %22
  ]

20:                                               ; preds = %4
  store i32 1, i32* %12, align 4
  br label %25

21:                                               ; preds = %4
  store i32 2, i32* %12, align 4
  br label %25

22:                                               ; preds = %4, %4
  store i32 4, i32* %12, align 4
  br label %25

23:                                               ; preds = %4
  %24 = call i32 @db_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %60

25:                                               ; preds = %22, %21, %20
  br label %26

26:                                               ; preds = %29, %25
  %27 = call i64 @db_expression(i64* %11)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %26
  %30 = load i8*, i8** %9, align 8
  %31 = load i32, i32* %12, align 4
  %32 = call i64 @db_get_value(i8* %30, i32 %31, i32 0)
  store i64 %32, i64* %10, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = load i32, i32* @DB_STGY_ANY, align 4
  %35 = call i32 @db_printsym(i8* %33, i32 %34)
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %11, align 8
  %38 = call i32 @db_printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %36, i64 %37)
  %39 = load i8*, i8** %9, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load i64, i64* %11, align 8
  %42 = call i32 @db_put_value(i8* %39, i32 %40, i64 %41)
  %43 = load i32, i32* %12, align 4
  %44 = load i8*, i8** %9, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr i8, i8* %44, i64 %45
  store i8* %46, i8** %9, align 8
  store i32 1, i32* %13, align 4
  br label %26

47:                                               ; preds = %26
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = call i32 @db_error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %47
  %53 = load i8*, i8** %9, align 8
  store i8* %53, i8** @db_next, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = sub i64 0, %56
  %58 = getelementptr i8, i8* %54, i64 %57
  store i8* %58, i8** @db_prev, align 8
  %59 = call i32 (...) @db_skip_to_eol()
  br label %60

60:                                               ; preds = %52, %23
  ret void
}

declare dso_local i32 @db_error(i8*) #1

declare dso_local i64 @db_expression(i64*) #1

declare dso_local i64 @db_get_value(i8*, i32, i32) #1

declare dso_local i32 @db_printsym(i8*, i32) #1

declare dso_local i32 @db_printf(i8*, i64, i64) #1

declare dso_local i32 @db_put_value(i8*, i32, i64) #1

declare dso_local i32 @db_skip_to_eol(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
