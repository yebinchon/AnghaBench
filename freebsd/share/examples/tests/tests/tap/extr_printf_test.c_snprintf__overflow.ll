; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/tests/tests/tap/extr_printf_test.c_snprintf__overflow.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/tests/tests/tap/extr_printf_test.c_snprintf__overflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"snprintf did not return the expected number of characters\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"012345678\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Bad formatting: got %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @snprintf__overflow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snprintf__overflow() #0 {
  %1 = alloca [10 x i8], align 1
  %2 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %3 = call i32 @snprintf(i8* %2, i32 10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %4 = icmp ne i32 %3, 16
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = call i32 (i8*, ...) @fail(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %7 = call i32 @skip(i32 1)
  br label %18

8:                                                ; preds = %0
  %9 = call i32 (...) @pass()
  %10 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %11 = call i64 @strcmp(i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %15 = call i32 (i8*, ...) @fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %14)
  br label %18

16:                                               ; preds = %8
  %17 = call i32 (...) @pass()
  br label %18

18:                                               ; preds = %5, %16, %13
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

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
