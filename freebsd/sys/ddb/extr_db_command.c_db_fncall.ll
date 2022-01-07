; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_command.c_db_fncall.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_command.c_db_fncall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DB_MAXARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Bad function\0A\00", align 1
@tLPAREN = common dso_local global i32 0, align 4
@tCOMMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Too many arguments (max %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Argument missing\0A\00", align 1
@tRPAREN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Mismatched parens\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"= %#lr\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i64, i8*)* @db_fncall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @db_fncall(i64 %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %16 = load i32, i32* @DB_MAXARGS, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i64, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %20 = call i64 @db_expression(i64* %9)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 (...) @db_flush_lex()
  store i32 1, i32* %15, align 4
  br label %83

25:                                               ; preds = %4
  %26 = call i32 (...) @db_read_token()
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* @tLPAREN, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %72

30:                                               ; preds = %25
  %31 = getelementptr inbounds i64, i64* %19, i64 0
  %32 = call i64 @db_expression(i64* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %64

34:                                               ; preds = %30
  %35 = load i32, i32* %12, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %12, align 4
  br label %37

37:                                               ; preds = %58, %34
  %38 = call i32 (...) @db_read_token()
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* @tCOMMA, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %37
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @DB_MAXARGS, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i32, i32* @DB_MAXARGS, align 4
  %47 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = call i32 (...) @db_flush_lex()
  store i32 1, i32* %15, align 4
  br label %83

49:                                               ; preds = %41
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %19, i64 %51
  %53 = call i64 @db_expression(i64* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  %56 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %57 = call i32 (...) @db_flush_lex()
  store i32 1, i32* %15, align 4
  br label %83

58:                                               ; preds = %49
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %12, align 4
  br label %37

61:                                               ; preds = %37
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @db_unread_token(i32 %62)
  br label %64

64:                                               ; preds = %61, %30
  %65 = call i32 (...) @db_read_token()
  %66 = load i32, i32* @tRPAREN, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %70 = call i32 (...) @db_flush_lex()
  store i32 1, i32* %15, align 4
  br label %83

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71, %25
  %73 = call i32 (...) @db_skip_to_eol()
  %74 = call i32 (...) @db_disable_pager()
  %75 = load i64, i64* %9, align 8
  %76 = load i32, i32* %12, align 4
  %77 = call i64 @DB_CALL(i64 %75, i64* %13, i32 %76, i64* %19)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load i64, i64* %13, align 8
  %81 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i64 %80)
  br label %82

82:                                               ; preds = %79, %72
  store i32 0, i32* %15, align 4
  br label %83

83:                                               ; preds = %82, %68, %55, %45, %22
  %84 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %84)
  %85 = load i32, i32* %15, align 4
  switch i32 %85, label %87 [
    i32 0, label %86
    i32 1, label %86
  ]

86:                                               ; preds = %83, %83
  ret void

87:                                               ; preds = %83
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @db_expression(i64*) #2

declare dso_local i32 @db_printf(i8*, ...) #2

declare dso_local i32 @db_flush_lex(...) #2

declare dso_local i32 @db_read_token(...) #2

declare dso_local i32 @db_unread_token(i32) #2

declare dso_local i32 @db_skip_to_eol(...) #2

declare dso_local i32 @db_disable_pager(...) #2

declare dso_local i64 @DB_CALL(i64, i64*, i32, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
