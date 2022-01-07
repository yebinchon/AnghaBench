; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_sym.c_db_printsym.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_sym.c_db_printsym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@db_maxoff = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%+#lr\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%#lr\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"+%+#lr\00", align 1
@DB_STGY_PROC = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c" [%s:%d]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @db_printsym(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @db_maxoff, align 8
  %15 = sub nsw i64 0, %14
  %16 = icmp sge i64 %13, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i64, i64* %3, align 8
  %19 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %18)
  br label %57

20:                                               ; preds = %12, %2
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @db_search_symbol(i64 %21, i64 %22, i64* %5)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @db_symbol_values(i32 %24, i8** %7, i32* null)
  %26 = load i8*, i8** %7, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %20
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @db_maxoff, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28, %20
  %33 = load i64, i64* %3, align 8
  %34 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  br label %57

35:                                               ; preds = %28
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  %38 = load i64, i64* %5, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i64, i64* %5, align 8
  %42 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64 %41)
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* @DB_STGY_PROC, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = load i32, i32* %9, align 4
  %49 = load i64, i64* %3, align 8
  %50 = call i64 @db_line_at_pc(i32 %48, i8** %6, i32* %8, i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i8*, i8** %6, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %47
  br label %57

57:                                               ; preds = %17, %32, %56, %43
  ret void
}

declare dso_local i32 @db_printf(i8*, ...) #1

declare dso_local i32 @db_search_symbol(i64, i64, i64*) #1

declare dso_local i32 @db_symbol_values(i32, i8**, i32*) #1

declare dso_local i64 @db_line_at_pc(i32, i8**, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
