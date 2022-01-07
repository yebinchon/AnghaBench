; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_expr.c_db_add_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_expr.c_db_add_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [36 x i8] c"Expression syntax error after '%c'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @db_add_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_add_expr(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = call i32 @db_mult_expr(i32* %4)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %63

10:                                               ; preds = %1
  %11 = call i32 (...) @db_read_token()
  store i32 %11, i32* %6, align 4
  br label %12

12:                                               ; preds = %56, %10
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 128
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 129
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 130
  br label %21

21:                                               ; preds = %18, %15, %12
  %22 = phi i1 [ true, %15 ], [ true, %12 ], [ %20, %18 ]
  br i1 %22, label %23, label %58

23:                                               ; preds = %21
  %24 = call i32 @db_mult_expr(i32* %5)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 128
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %35

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 129
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 45, i32 124
  br label %35

35:                                               ; preds = %30, %29
  %36 = phi i32 [ 43, %29 ], [ %34, %30 ]
  %37 = trunc i32 %36 to i8
  %38 = call i32 @db_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8 signext %37)
  %39 = call i32 @db_error(i32* null)
  br label %40

40:                                               ; preds = %35, %23
  %41 = load i32, i32* %6, align 4
  switch i32 %41, label %54 [
    i32 128, label %42
    i32 129, label %46
    i32 130, label %50
  ]

42:                                               ; preds = %40
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %4, align 4
  br label %56

46:                                               ; preds = %40
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %4, align 4
  %49 = sub nsw i32 %48, %47
  store i32 %49, i32* %4, align 4
  br label %56

50:                                               ; preds = %40
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %4, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %4, align 4
  br label %56

54:                                               ; preds = %40
  %55 = call i32 (...) @__unreachable()
  br label %56

56:                                               ; preds = %54, %50, %46, %42
  %57 = call i32 (...) @db_read_token()
  store i32 %57, i32* %6, align 4
  br label %12

58:                                               ; preds = %21
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @db_unread_token(i32 %59)
  %61 = load i32, i32* %4, align 4
  %62 = load i32*, i32** %3, align 8
  store i32 %61, i32* %62, align 4
  store i32 1, i32* %2, align 4
  br label %63

63:                                               ; preds = %58, %9
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @db_mult_expr(i32*) #1

declare dso_local i32 @db_read_token(...) #1

declare dso_local i32 @db_printf(i8*, i8 signext) #1

declare dso_local i32 @db_error(i32*) #1

declare dso_local i32 @__unreachable(...) #1

declare dso_local i32 @db_unread_token(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
