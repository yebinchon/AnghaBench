; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/tests/tests/tap/extr_printf_test.c_snprintf__two_formatters.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/tests/tests/tap/extr_printf_test.c_snprintf__two_formatters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"%s, %s!\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Hello\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"tests\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"snprintf with two formatters failed\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Hello, tests!\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Bad formatting: got %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @snprintf__two_formatters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snprintf__two_formatters() #0 {
  %1 = alloca [128 x i8], align 16
  %2 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %3 = call i64 @snprintf(i8* %2, i32 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %4 = icmp sle i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = call i32 (i8*, ...) @fail(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %7 = call i32 @skip(i32 1)
  br label %19

8:                                                ; preds = %0
  %9 = call i32 (...) @pass()
  %10 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %11 = call i64 @strcmp(i8* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %15 = call i32 (i8*, ...) @fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %14)
  br label %18

16:                                               ; preds = %8
  %17 = call i32 (...) @pass()
  br label %18

18:                                               ; preds = %16, %13
  br label %19

19:                                               ; preds = %18, %5
  ret void
}

declare dso_local i64 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @fail(i8*, ...) #1

declare dso_local i32 @skip(i32) #1

declare dso_local i32 @pass(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
