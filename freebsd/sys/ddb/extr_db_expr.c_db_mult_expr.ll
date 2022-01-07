; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_expr.c_db_mult_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_expr.c_db_mult_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tSLASH = common dso_local global i32 0, align 4
@tPCT = common dso_local global i32 0, align 4
@tHASH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Expression syntax error after '%c'\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Division by 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @db_mult_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_mult_expr(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = call i32 @db_unary(i32* %4)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %108

10:                                               ; preds = %1
  %11 = call i32 (...) @db_read_token()
  store i32 %11, i32* %6, align 4
  br label %12

12:                                               ; preds = %101, %10
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 128
  br i1 %14, label %30, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @tSLASH, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %30, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @tPCT, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @tHASH, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 129
  br label %30

30:                                               ; preds = %27, %23, %19, %15, %12
  %31 = phi i1 [ true, %23 ], [ true, %19 ], [ true, %15 ], [ true, %12 ], [ %29, %27 ]
  br i1 %31, label %32, label %103

32:                                               ; preds = %30
  %33 = call i32 @db_term(i32* %5)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %64, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 128
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %59

39:                                               ; preds = %35
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @tSLASH, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %57

44:                                               ; preds = %39
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @tPCT, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %55

49:                                               ; preds = %44
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @tHASH, align 4
  %52 = icmp eq i32 %50, %51
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 35, i32 38
  br label %55

55:                                               ; preds = %49, %48
  %56 = phi i32 [ 37, %48 ], [ %54, %49 ]
  br label %57

57:                                               ; preds = %55, %43
  %58 = phi i32 [ 47, %43 ], [ %56, %55 ]
  br label %59

59:                                               ; preds = %57, %38
  %60 = phi i32 [ 42, %38 ], [ %58, %57 ]
  %61 = trunc i32 %60 to i8
  %62 = call i32 @db_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8 signext %61)
  %63 = call i32 @db_error(i8* null)
  br label %64

64:                                               ; preds = %59, %32
  %65 = load i32, i32* %6, align 4
  switch i32 %65, label %74 [
    i32 128, label %66
    i32 129, label %70
  ]

66:                                               ; preds = %64
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %4, align 4
  %69 = mul nsw i32 %68, %67
  store i32 %69, i32* %4, align 4
  br label %101

70:                                               ; preds = %64
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %4, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %4, align 4
  br label %101

74:                                               ; preds = %64
  %75 = load i32, i32* %5, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = call i32 @db_error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %74
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @tSLASH, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %4, align 4
  %86 = sdiv i32 %85, %84
  store i32 %86, i32* %4, align 4
  br label %100

87:                                               ; preds = %79
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @tPCT, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %4, align 4
  %94 = srem i32 %93, %92
  store i32 %94, i32* %4, align 4
  br label %99

95:                                               ; preds = %87
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @roundup(i32 %96, i32 %97)
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %95, %91
  br label %100

100:                                              ; preds = %99, %83
  br label %101

101:                                              ; preds = %100, %70, %66
  %102 = call i32 (...) @db_read_token()
  store i32 %102, i32* %6, align 4
  br label %12

103:                                              ; preds = %30
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @db_unread_token(i32 %104)
  %106 = load i32, i32* %4, align 4
  %107 = load i32*, i32** %3, align 8
  store i32 %106, i32* %107, align 4
  store i32 1, i32* %2, align 4
  br label %108

108:                                              ; preds = %103, %9
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @db_unary(i32*) #1

declare dso_local i32 @db_read_token(...) #1

declare dso_local i32 @db_term(i32*) #1

declare dso_local i32 @db_printf(i8*, i8 signext) #1

declare dso_local i32 @db_error(i8*) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @db_unread_token(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
