; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_examine.c_db_search_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_examine.c_db_search_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tSLASH = common dso_local global i32 0, align 4
@tIDENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Bad modifier\0A\00", align 1
@db_tok_string = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Address missing\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Value missing\0A\00", align 1
@tCOMMA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"Count missing\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @db_search_cmd(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %15 = call i32 (...) @db_read_token()
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @tSLASH, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %47

19:                                               ; preds = %4
  %20 = call i32 (...) @db_read_token()
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @tIDENT, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %43, %24
  %26 = call i32 @db_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 (...) @db_flush_lex()
  br label %89

28:                                               ; preds = %19
  %29 = load i32, i32* @db_tok_string, align 4
  %30 = call i32 @strcmp(i32 %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  store i32 1, i32* %11, align 4
  br label %46

33:                                               ; preds = %28
  %34 = load i32, i32* @db_tok_string, align 4
  %35 = call i32 @strcmp(i32 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  store i32 2, i32* %11, align 4
  br label %45

38:                                               ; preds = %33
  %39 = load i32, i32* @db_tok_string, align 4
  %40 = call i32 @strcmp(i32 %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  store i32 4, i32* %11, align 4
  br label %44

43:                                               ; preds = %38
  br label %25

44:                                               ; preds = %42
  br label %45

45:                                               ; preds = %44, %37
  br label %46

46:                                               ; preds = %45, %32
  br label %50

47:                                               ; preds = %4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @db_unread_token(i32 %48)
  store i32 4, i32* %11, align 4
  br label %50

50:                                               ; preds = %47, %46
  %51 = call i32 @db_expression(i32* %10)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = call i32 @db_printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %55 = call i32 (...) @db_flush_lex()
  br label %89

56:                                               ; preds = %50
  %57 = call i32 @db_expression(i32* %12)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = call i32 @db_printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %61 = call i32 (...) @db_flush_lex()
  br label %89

62:                                               ; preds = %56
  %63 = call i32 @db_expression(i32* %13)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  store i32 -1, i32* %13, align 4
  br label %66

66:                                               ; preds = %65, %62
  %67 = call i32 (...) @db_read_token()
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @tCOMMA, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = call i32 @db_expression(i32* %14)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = call i32 @db_printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %76 = call i32 (...) @db_flush_lex()
  br label %89

77:                                               ; preds = %71
  br label %81

78:                                               ; preds = %66
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @db_unread_token(i32 %79)
  store i32 -1, i32* %14, align 4
  br label %81

81:                                               ; preds = %78, %77
  %82 = call i32 (...) @db_skip_to_eol()
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @db_search(i32 %83, i32 %84, i32 %85, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %81, %74, %59, %53, %25
  ret void
}

declare dso_local i32 @db_read_token(...) #1

declare dso_local i32 @db_printf(i8*) #1

declare dso_local i32 @db_flush_lex(...) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @db_unread_token(i32) #1

declare dso_local i32 @db_expression(i32*) #1

declare dso_local i32 @db_skip_to_eol(...) #1

declare dso_local i32 @db_search(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
