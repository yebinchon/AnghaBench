; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_textdump.c_db_textdump_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_textdump.c_db_textdump_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tIDENT = common dso_local global i32 0, align 4
@tEOL = common dso_local global i32 0, align 4
@db_tok_string = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"set\00", align 1
@textdump_pending = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"textdump set\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"textdump is set\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"textdump is not set\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"unset\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"textdump unset\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"dump\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @db_textdump_cmd(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = call i32 (...) @db_read_token()
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* @tIDENT, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = call i32 (...) @db_textdump_usage()
  br label %57

16:                                               ; preds = %4
  %17 = call i32 (...) @db_read_token()
  %18 = load i32, i32* @tEOL, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call i32 (...) @db_textdump_usage()
  br label %57

22:                                               ; preds = %16
  %23 = load i32, i32* @db_tok_string, align 4
  %24 = call i64 @strcmp(i32 %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  store i32 1, i32* @textdump_pending, align 4
  %27 = call i32 @db_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %57

28:                                               ; preds = %22
  %29 = load i32, i32* @db_tok_string, align 4
  %30 = call i64 @strcmp(i32 %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load i32, i32* @textdump_pending, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call i32 @db_printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %39

37:                                               ; preds = %32
  %38 = call i32 @db_printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %35
  br label %56

40:                                               ; preds = %28
  %41 = load i32, i32* @db_tok_string, align 4
  %42 = call i64 @strcmp(i32 %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  store i32 0, i32* @textdump_pending, align 4
  %45 = call i32 @db_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  br label %55

46:                                               ; preds = %40
  %47 = load i32, i32* @db_tok_string, align 4
  %48 = call i64 @strcmp(i32 %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  store i32 1, i32* @textdump_pending, align 4
  %51 = call i32 @doadump(i32 1)
  br label %54

52:                                               ; preds = %46
  %53 = call i32 (...) @db_textdump_usage()
  br label %54

54:                                               ; preds = %52, %50
  br label %55

55:                                               ; preds = %54, %44
  br label %56

56:                                               ; preds = %55, %39
  br label %57

57:                                               ; preds = %14, %20, %56, %26
  ret void
}

declare dso_local i32 @db_read_token(...) #1

declare dso_local i32 @db_textdump_usage(...) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @db_printf(i8*) #1

declare dso_local i32 @doadump(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
