; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_expr.c_db_unary.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_expr.c_db_unary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tMINUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Expression syntax error after '%c'\0A\00", align 1
@tEXCL = common dso_local global i32 0, align 4
@tBIT_NOT = common dso_local global i32 0, align 4
@tSTAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @db_unary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_unary(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = call i32 (...) @db_read_token()
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @tMINUS, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @db_unary(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = call i32 @db_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8 signext 45)
  %15 = call i32 @db_error(i32* null)
  br label %16

16:                                               ; preds = %13, %9
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 0, %18
  %20 = load i32*, i32** %3, align 8
  store i32 %19, i32* %20, align 4
  store i32 1, i32* %2, align 4
  br label %76

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @tEXCL, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @db_unary(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = call i32 @db_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8 signext 33)
  %31 = call i32 @db_error(i32* null)
  br label %32

32:                                               ; preds = %29, %25
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = load i32*, i32** %3, align 8
  store i32 %37, i32* %38, align 4
  store i32 1, i32* %2, align 4
  br label %76

39:                                               ; preds = %21
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @tBIT_NOT, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @db_unary(i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = call i32 @db_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8 signext 126)
  %49 = call i32 @db_error(i32* null)
  br label %50

50:                                               ; preds = %47, %43
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* %51, align 4
  %53 = xor i32 %52, -1
  %54 = load i32*, i32** %3, align 8
  store i32 %53, i32* %54, align 4
  store i32 1, i32* %2, align 4
  br label %76

55:                                               ; preds = %39
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @tSTAR, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %55
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @db_unary(i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = call i32 @db_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8 signext 42)
  %65 = call i32 @db_error(i32* null)
  br label %66

66:                                               ; preds = %63, %59
  %67 = load i32*, i32** %3, align 8
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @db_get_value(i32 %68, i32 8, i32 0)
  %70 = load i32*, i32** %3, align 8
  store i32 %69, i32* %70, align 4
  store i32 1, i32* %2, align 4
  br label %76

71:                                               ; preds = %55
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @db_unread_token(i32 %72)
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @db_term(i32* %74)
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %71, %66, %50, %32, %16
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @db_read_token(...) #1

declare dso_local i32 @db_printf(i8*, i8 signext) #1

declare dso_local i32 @db_error(i32*) #1

declare dso_local i32 @db_get_value(i32, i32, i32) #1

declare dso_local i32 @db_unread_token(i32) #1

declare dso_local i32 @db_term(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
