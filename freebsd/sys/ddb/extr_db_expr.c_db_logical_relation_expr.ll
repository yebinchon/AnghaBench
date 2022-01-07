; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_expr.c_db_logical_relation_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_expr.c_db_logical_relation_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [36 x i8] c"Expression syntax error after '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @db_logical_relation_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_logical_relation_expr(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = call i32 @db_shift_expr(i32* %4)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %107

10:                                               ; preds = %1
  %11 = call i32 (...) @db_read_token()
  store i32 %11, i32* %6, align 4
  br label %12

12:                                               ; preds = %100, %10
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 129
  br i1 %14, label %30, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 128
  br i1 %17, label %30, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 133
  br i1 %20, label %30, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 132
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 131
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 130
  br label %30

30:                                               ; preds = %27, %24, %21, %18, %15, %12
  %31 = phi i1 [ true, %24 ], [ true, %21 ], [ true, %18 ], [ true, %15 ], [ true, %12 ], [ %29, %27 ]
  br i1 %31, label %32, label %102

32:                                               ; preds = %30
  %33 = call i32 @db_shift_expr(i32* %5)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %66, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 129
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %62

39:                                               ; preds = %35
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, 128
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %60

43:                                               ; preds = %39
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %44, 133
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %58

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 132
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %56

51:                                               ; preds = %47
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %52, 131
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)
  br label %56

56:                                               ; preds = %51, %50
  %57 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %50 ], [ %55, %51 ]
  br label %58

58:                                               ; preds = %56, %46
  %59 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %46 ], [ %57, %56 ]
  br label %60

60:                                               ; preds = %58, %42
  %61 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %42 ], [ %59, %58 ]
  br label %62

62:                                               ; preds = %60, %38
  %63 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %38 ], [ %61, %60 ]
  %64 = call i32 @db_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %63)
  %65 = call i32 @db_error(i32* null)
  br label %66

66:                                               ; preds = %62, %32
  %67 = load i32, i32* %6, align 4
  switch i32 %67, label %98 [
    i32 129, label %68
    i32 128, label %73
    i32 133, label %78
    i32 132, label %83
    i32 131, label %88
    i32 130, label %93
  ]

68:                                               ; preds = %66
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp eq i32 %69, %70
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %4, align 4
  br label %100

73:                                               ; preds = %66
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %74, %75
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %4, align 4
  br label %100

78:                                               ; preds = %66
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp sgt i32 %79, %80
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %4, align 4
  br label %100

83:                                               ; preds = %66
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* %5, align 4
  %86 = icmp sge i32 %84, %85
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %4, align 4
  br label %100

88:                                               ; preds = %66
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp slt i32 %89, %90
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %4, align 4
  br label %100

93:                                               ; preds = %66
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* %5, align 4
  %96 = icmp sle i32 %94, %95
  %97 = zext i1 %96 to i32
  store i32 %97, i32* %4, align 4
  br label %100

98:                                               ; preds = %66
  %99 = call i32 (...) @__unreachable()
  br label %100

100:                                              ; preds = %98, %93, %88, %83, %78, %73, %68
  %101 = call i32 (...) @db_read_token()
  store i32 %101, i32* %6, align 4
  br label %12

102:                                              ; preds = %30
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @db_unread_token(i32 %103)
  %105 = load i32, i32* %4, align 4
  %106 = load i32*, i32** %3, align 8
  store i32 %105, i32* %106, align 4
  store i32 1, i32* %2, align 4
  br label %107

107:                                              ; preds = %102, %9
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @db_shift_expr(i32*) #1

declare dso_local i32 @db_read_token(...) #1

declare dso_local i32 @db_printf(i8*, i8*) #1

declare dso_local i32 @db_error(i32*) #1

declare dso_local i32 @__unreachable(...) #1

declare dso_local i32 @db_unread_token(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
