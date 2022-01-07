; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_examine.c_db_print_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_examine.c_db_print_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@db_print_format = common dso_local global i8 0, align 1
@DB_STGY_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%+11lr\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%8lx\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%8ly\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%11ld\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%11lu\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%16lo\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Syntax error: unsupported print modifier\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @db_print_cmd(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %8, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i8*, i8** %8, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  store i8 %18, i8* @db_print_format, align 1
  br label %19

19:                                               ; preds = %15, %4
  %20 = load i8, i8* @db_print_format, align 1
  %21 = sext i8 %20 to i32
  switch i32 %21, label %65 [
    i32 97, label %22
    i32 114, label %26
    i32 120, label %30
    i32 122, label %34
    i32 100, label %38
    i32 117, label %42
    i32 111, label %46
    i32 99, label %50
  ]

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @DB_STGY_ANY, align 4
  %25 = call i32 @db_printsym(i32 %23, i32 %24)
  br label %67

26:                                               ; preds = %19
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %28)
  br label %67

30:                                               ; preds = %19
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  br label %67

34:                                               ; preds = %19
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 %36)
  br label %67

38:                                               ; preds = %19
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i64 %40)
  br label %67

42:                                               ; preds = %19
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64 %44)
  br label %67

46:                                               ; preds = %19
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i64 %48)
  br label %67

50:                                               ; preds = %19
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %51, 255
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp sge i32 %53, 32
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i32, i32* %9, align 4
  %57 = icmp sle i32 %56, 126
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %9, align 4
  %60 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %59)
  br label %64

61:                                               ; preds = %55, %50
  %62 = load i32, i32* %9, align 4
  %63 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %61, %58
  br label %67

65:                                               ; preds = %19
  store i8 120, i8* @db_print_format, align 1
  %66 = call i32 @db_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %64, %46, %42, %38, %34, %30, %26, %22
  %68 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  ret void
}

declare dso_local i32 @db_printsym(i32, i32) #1

declare dso_local i32 @db_printf(i8*, ...) #1

declare dso_local i32 @db_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
