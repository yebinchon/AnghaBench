; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_expr.c_db_shift_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_expr.c_db_shift_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tSHIFT_L = common dso_local global i32 0, align 4
@tSHIFT_R = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Expression syntax error after '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Negative shift amount %jd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @db_shift_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_shift_expr(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = call i32 @db_add_expr(i32* %4)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %61

10:                                               ; preds = %1
  %11 = call i32 (...) @db_read_token()
  store i32 %11, i32* %6, align 4
  br label %12

12:                                               ; preds = %54, %10
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @tSHIFT_L, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @tSHIFT_R, align 4
  %19 = icmp eq i32 %17, %18
  br label %20

20:                                               ; preds = %16, %12
  %21 = phi i1 [ true, %12 ], [ %19, %16 ]
  br i1 %21, label %22, label %56

22:                                               ; preds = %20
  %23 = call i32 @db_add_expr(i32* %5)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @tSHIFT_L, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %31 = call i32 @db_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %30)
  %32 = call i32 @db_error(i32* null)
  br label %33

33:                                               ; preds = %25, %22
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 @db_printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %39)
  %41 = call i32 @db_error(i32* null)
  br label %42

42:                                               ; preds = %36, %33
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @tSHIFT_L, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %4, align 4
  %49 = shl i32 %48, %47
  store i32 %49, i32* %4, align 4
  br label %54

50:                                               ; preds = %42
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %5, align 4
  %53 = ashr i32 %51, %52
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %50, %46
  %55 = call i32 (...) @db_read_token()
  store i32 %55, i32* %6, align 4
  br label %12

56:                                               ; preds = %20
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @db_unread_token(i32 %57)
  %59 = load i32, i32* %4, align 4
  %60 = load i32*, i32** %3, align 8
  store i32 %59, i32* %60, align 4
  store i32 1, i32* %2, align 4
  br label %61

61:                                               ; preds = %56, %9
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @db_add_expr(i32*) #1

declare dso_local i32 @db_read_token(...) #1

declare dso_local i32 @db_printf(i8*, i8*) #1

declare dso_local i32 @db_error(i32*) #1

declare dso_local i32 @db_unread_token(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
