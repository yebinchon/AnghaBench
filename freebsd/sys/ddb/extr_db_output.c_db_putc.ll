; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_output.c_db_putc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_output.c_db_putc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kdb_active = common dso_local global i32 0, align 4
@ddb_use_printf = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@db_maxlines = common dso_local global i64 0, align 8
@db_newlines = common dso_local global i64 0, align 8
@db_output_position = common dso_local global i64 0, align 8
@db_last_non_space = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @db_putc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @db_putc(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @kdb_active, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i64, i64* @ddb_use_printf, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %38

8:                                                ; preds = %5, %1
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @kdb_active, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  br label %106

14:                                               ; preds = %8
  %15 = load i32, i32* %2, align 4
  %16 = icmp eq i32 %15, 13
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %2, align 4
  %19 = icmp eq i32 %18, 10
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %14
  %21 = call i32 (...) @db_check_interrupt()
  br label %22

22:                                               ; preds = %20, %17
  %23 = load i32, i32* %2, align 4
  %24 = icmp eq i32 %23, 10
  br i1 %24, label %25, label %37

25:                                               ; preds = %22
  %26 = load i64, i64* @db_maxlines, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load i64, i64* @db_newlines, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* @db_newlines, align 8
  %31 = load i64, i64* @db_newlines, align 8
  %32 = load i64, i64* @db_maxlines, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = call i32 (...) @db_pager()
  br label %36

36:                                               ; preds = %34, %28
  br label %37

37:                                               ; preds = %36, %25, %22
  br label %106

38:                                               ; preds = %5
  %39 = load i32, i32* %2, align 4
  %40 = icmp sgt i32 %39, 32
  br i1 %40, label %41, label %53

41:                                               ; preds = %38
  %42 = load i32, i32* %2, align 4
  %43 = icmp sle i32 %42, 126
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = call i32 (...) @db_force_whitespace()
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @cnputc(i32 %46)
  %48 = load i32, i32* %2, align 4
  %49 = call i32 @db_capture_writech(i32 %48)
  %50 = load i64, i64* @db_output_position, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* @db_output_position, align 8
  %52 = load i64, i64* @db_output_position, align 8
  store i64 %52, i64* @db_last_non_space, align 8
  br label %106

53:                                               ; preds = %41, %38
  %54 = load i32, i32* %2, align 4
  %55 = icmp eq i32 %54, 10
  br i1 %55, label %56, label %74

56:                                               ; preds = %53
  %57 = load i32, i32* %2, align 4
  %58 = call i32 @cnputc(i32 %57)
  %59 = load i32, i32* %2, align 4
  %60 = call i32 @db_capture_writech(i32 %59)
  store i64 0, i64* @db_output_position, align 8
  store i64 0, i64* @db_last_non_space, align 8
  %61 = call i32 (...) @db_check_interrupt()
  %62 = load i64, i64* @db_maxlines, align 8
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %56
  %65 = load i64, i64* @db_newlines, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* @db_newlines, align 8
  %67 = load i64, i64* @db_newlines, align 8
  %68 = load i64, i64* @db_maxlines, align 8
  %69 = icmp sge i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = call i32 (...) @db_pager()
  br label %72

72:                                               ; preds = %70, %64
  br label %73

73:                                               ; preds = %72, %56
  br label %105

74:                                               ; preds = %53
  %75 = load i32, i32* %2, align 4
  %76 = icmp eq i32 %75, 13
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load i32, i32* %2, align 4
  %79 = call i32 @cnputc(i32 %78)
  %80 = load i32, i32* %2, align 4
  %81 = call i32 @db_capture_writech(i32 %80)
  store i64 0, i64* @db_output_position, align 8
  store i64 0, i64* @db_last_non_space, align 8
  %82 = call i32 (...) @db_check_interrupt()
  br label %104

83:                                               ; preds = %74
  %84 = load i32, i32* %2, align 4
  %85 = icmp eq i32 %84, 9
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i64, i64* @db_output_position, align 8
  %88 = call i64 @NEXT_TAB(i64 %87)
  store i64 %88, i64* @db_output_position, align 8
  br label %103

89:                                               ; preds = %83
  %90 = load i32, i32* %2, align 4
  %91 = icmp eq i32 %90, 32
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i64, i64* @db_output_position, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* @db_output_position, align 8
  br label %102

95:                                               ; preds = %89
  %96 = load i32, i32* %2, align 4
  %97 = icmp eq i32 %96, 7
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, i32* %2, align 4
  %100 = call i32 @cnputc(i32 %99)
  br label %101

101:                                              ; preds = %98, %95
  br label %102

102:                                              ; preds = %101, %92
  br label %103

103:                                              ; preds = %102, %86
  br label %104

104:                                              ; preds = %103, %77
  br label %105

105:                                              ; preds = %104, %73
  br label %106

106:                                              ; preds = %13, %37, %105, %44
  ret void
}

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @db_check_interrupt(...) #1

declare dso_local i32 @db_pager(...) #1

declare dso_local i32 @db_force_whitespace(...) #1

declare dso_local i32 @cnputc(i32) #1

declare dso_local i32 @db_capture_writech(i32) #1

declare dso_local i64 @NEXT_TAB(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
