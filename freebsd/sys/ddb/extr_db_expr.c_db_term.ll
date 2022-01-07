; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_expr.c_db_term.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_expr.c_db_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tIDENT = common dso_local global i32 0, align 4
@db_tok_string = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [23 x i8] c"Symbol '%s' not found\0A\00", align 1
@tNUMBER = common dso_local global i32 0, align 4
@db_tok_number = common dso_local global i64 0, align 8
@tDOT = common dso_local global i32 0, align 4
@db_dot = common dso_local global i64 0, align 8
@tDOTDOT = common dso_local global i32 0, align 4
@db_prev = common dso_local global i64 0, align 8
@tPLUS = common dso_local global i32 0, align 4
@db_next = common dso_local global i64 0, align 8
@tDITTO = common dso_local global i32 0, align 4
@db_last_addr = common dso_local global i64 0, align 8
@tDOLLAR = common dso_local global i32 0, align 4
@tLPAREN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Expression syntax error after '%c'\0A\00", align 1
@tRPAREN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Expression syntax error -- expected '%c'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*)* @db_term to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_term(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  %5 = call i32 (...) @db_read_token()
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @tIDENT, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %29

9:                                                ; preds = %1
  %10 = load i8, i8* @db_tok_string, align 1
  %11 = load i64*, i64** %3, align 8
  %12 = call i32 @db_value_of_name(i8 signext %10, i64* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %28, label %14

14:                                               ; preds = %9
  %15 = load i8, i8* @db_tok_string, align 1
  %16 = load i64*, i64** %3, align 8
  %17 = call i32 @db_value_of_name_pcpu(i8 signext %15, i64* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %14
  %20 = load i8, i8* @db_tok_string, align 1
  %21 = load i64*, i64** %3, align 8
  %22 = call i32 @db_value_of_name_vnet(i8 signext %20, i64* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load i8, i8* @db_tok_string, align 1
  %26 = call i32 @db_printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8 signext %25)
  %27 = call i32 @db_error(i32* null)
  br label %28

28:                                               ; preds = %24, %19, %14, %9
  store i32 1, i32* %2, align 4
  br label %97

29:                                               ; preds = %1
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @tNUMBER, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i64, i64* @db_tok_number, align 8
  %35 = load i64*, i64** %3, align 8
  store i64 %34, i64* %35, align 8
  store i32 1, i32* %2, align 4
  br label %97

36:                                               ; preds = %29
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @tDOT, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i64, i64* @db_dot, align 8
  %42 = load i64*, i64** %3, align 8
  store i64 %41, i64* %42, align 8
  store i32 1, i32* %2, align 4
  br label %97

43:                                               ; preds = %36
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @tDOTDOT, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i64, i64* @db_prev, align 8
  %49 = load i64*, i64** %3, align 8
  store i64 %48, i64* %49, align 8
  store i32 1, i32* %2, align 4
  br label %97

50:                                               ; preds = %43
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @tPLUS, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i64, i64* @db_next, align 8
  %56 = load i64*, i64** %3, align 8
  store i64 %55, i64* %56, align 8
  store i32 1, i32* %2, align 4
  br label %97

57:                                               ; preds = %50
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @tDITTO, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i64, i64* @db_last_addr, align 8
  %63 = load i64*, i64** %3, align 8
  store i64 %62, i64* %63, align 8
  store i32 1, i32* %2, align 4
  br label %97

64:                                               ; preds = %57
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @tDOLLAR, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load i64*, i64** %3, align 8
  %70 = call i32 @db_get_variable(i64* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  store i32 0, i32* %2, align 4
  br label %97

73:                                               ; preds = %68
  store i32 1, i32* %2, align 4
  br label %97

74:                                               ; preds = %64
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @tLPAREN, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %94

78:                                               ; preds = %74
  %79 = load i64*, i64** %3, align 8
  %80 = call i32 @db_expression(i64* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %78
  %83 = call i32 @db_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8 signext 40)
  %84 = call i32 @db_error(i32* null)
  br label %85

85:                                               ; preds = %82, %78
  %86 = call i32 (...) @db_read_token()
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @tRPAREN, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = call i32 @db_printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8 signext 41)
  %92 = call i32 @db_error(i32* null)
  br label %93

93:                                               ; preds = %90, %85
  store i32 1, i32* %2, align 4
  br label %97

94:                                               ; preds = %74
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @db_unread_token(i32 %95)
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %94, %93, %73, %72, %61, %54, %47, %40, %33, %28
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @db_read_token(...) #1

declare dso_local i32 @db_value_of_name(i8 signext, i64*) #1

declare dso_local i32 @db_value_of_name_pcpu(i8 signext, i64*) #1

declare dso_local i32 @db_value_of_name_vnet(i8 signext, i64*) #1

declare dso_local i32 @db_printf(i8*, i8 signext) #1

declare dso_local i32 @db_error(i32*) #1

declare dso_local i32 @db_get_variable(i64*) #1

declare dso_local i32 @db_expression(i64*) #1

declare dso_local i32 @db_unread_token(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
