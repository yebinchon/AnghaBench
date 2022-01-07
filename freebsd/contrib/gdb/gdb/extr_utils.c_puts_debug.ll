; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_utils.c_puts_debug.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_utils.c_puts_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@puts_debug.new_line = internal global i32 1, align 4
@puts_debug.return_p = internal global i32 0, align 4
@puts_debug.prev_prefix = internal global i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@puts_debug.prev_suffix = internal global i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), align 8
@gdb_stdlog = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"\\x%02x\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\\b\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\\f\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"\\v\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @puts_debug(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* @puts_debug.return_p, align 4
  br label %13

13:                                               ; preds = %12, %3
  %14 = load i32, i32* @puts_debug.return_p, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = load i8*, i8** @puts_debug.prev_prefix, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @strcmp(i8* %17, i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %16, %13
  %22 = load i32, i32* @puts_debug.new_line, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %21
  %25 = load i8*, i8** @puts_debug.prev_suffix, align 8
  %26 = load i32, i32* @gdb_stdlog, align 4
  %27 = call i32 @fputs_unfiltered(i8* %25, i32 %26)
  %28 = load i32, i32* @gdb_stdlog, align 4
  %29 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* @gdb_stdlog, align 4
  %32 = call i32 @fputs_unfiltered(i8* %30, i32 %31)
  br label %33

33:                                               ; preds = %24, %21, %16
  %34 = load i32, i32* @puts_debug.new_line, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  store i32 0, i32* @puts_debug.new_line, align 4
  %37 = load i8*, i8** %4, align 8
  %38 = load i32, i32* @gdb_stdlog, align 4
  %39 = call i32 @fputs_unfiltered(i8* %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %33
  %41 = load i8*, i8** %4, align 8
  store i8* %41, i8** @puts_debug.prev_prefix, align 8
  %42 = load i8*, i8** %6, align 8
  store i8* %42, i8** @puts_debug.prev_suffix, align 8
  br label %43

43:                                               ; preds = %86, %40
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %5, align 8
  %46 = load i8, i8* %44, align 1
  %47 = sext i8 %46 to i32
  store i32 %47, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %90

49:                                               ; preds = %43
  %50 = load i32, i32* %7, align 4
  switch i32 %50, label %51 [
    i32 92, label %65
    i32 8, label %68
    i32 12, label %71
    i32 10, label %74
    i32 13, label %77
    i32 9, label %80
    i32 11, label %83
  ]

51:                                               ; preds = %49
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @isprint(i32 %52) #3
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @gdb_stdlog, align 4
  %58 = call i32 @fputc_unfiltered(i32 %56, i32 %57)
  br label %64

59:                                               ; preds = %51
  %60 = load i32, i32* @gdb_stdlog, align 4
  %61 = load i32, i32* %7, align 4
  %62 = and i32 %61, 255
  %63 = call i32 @fprintf_unfiltered(i32 %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %59, %55
  br label %86

65:                                               ; preds = %49
  %66 = load i32, i32* @gdb_stdlog, align 4
  %67 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  br label %86

68:                                               ; preds = %49
  %69 = load i32, i32* @gdb_stdlog, align 4
  %70 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  br label %86

71:                                               ; preds = %49
  %72 = load i32, i32* @gdb_stdlog, align 4
  %73 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %72)
  br label %86

74:                                               ; preds = %49
  store i32 1, i32* @puts_debug.new_line, align 4
  %75 = load i32, i32* @gdb_stdlog, align 4
  %76 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %75)
  br label %86

77:                                               ; preds = %49
  %78 = load i32, i32* @gdb_stdlog, align 4
  %79 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %78)
  br label %86

80:                                               ; preds = %49
  %81 = load i32, i32* @gdb_stdlog, align 4
  %82 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %81)
  br label %86

83:                                               ; preds = %49
  %84 = load i32, i32* @gdb_stdlog, align 4
  %85 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %83, %80, %77, %74, %71, %68, %65, %64
  %87 = load i32, i32* %7, align 4
  %88 = icmp eq i32 %87, 13
  %89 = zext i1 %88 to i32
  store i32 %89, i32* @puts_debug.return_p, align 4
  br label %43

90:                                               ; preds = %43
  %91 = load i32, i32* @puts_debug.new_line, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load i8*, i8** %6, align 8
  %95 = load i32, i32* @gdb_stdlog, align 4
  %96 = call i32 @fputs_unfiltered(i8* %94, i32 %95)
  %97 = load i32, i32* @gdb_stdlog, align 4
  %98 = call i32 @fputs_unfiltered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %93, %90
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fputs_unfiltered(i8*, i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isprint(i32) #2

declare dso_local i32 @fputc_unfiltered(i32, i32) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
