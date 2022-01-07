; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_next_test.c__testl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_next_test.c__testl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ALL_STD_EXCEPT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"%d: %s returned %La, expecting %La\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"%d: %s raised 0x%x, expecting 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, x86_fp80, x86_fp80, i32)* @_testl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_testl(i8* %0, i32 %1, x86_fp80 %2, x86_fp80 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca x86_fp80, align 16
  %9 = alloca x86_fp80, align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store x86_fp80 %2, x86_fp80* %8, align 16
  store x86_fp80 %3, x86_fp80* %9, align 16
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* @ALL_STD_EXCEPT, align 4
  %13 = call i32 @fetestexcept(i32 %12)
  store i32 %13, i32* %11, align 4
  %14 = load x86_fp80, x86_fp80* %8, align 16
  %15 = load x86_fp80, x86_fp80* %9, align 16
  %16 = call i32 @fpequal(x86_fp80 %14, x86_fp80 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @stderr, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = load x86_fp80, x86_fp80* %8, align 16
  %23 = fptosi x86_fp80 %22 to i32
  %24 = load x86_fp80, x86_fp80* %9, align 16
  %25 = fptosi x86_fp80 %24 to i32
  %26 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %20, i8* %21, i32 %23, i32 %25)
  %27 = call i32 (...) @abort() #3
  unreachable

28:                                               ; preds = %5
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load i32, i32* @stderr, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @fprintf(i32 %33, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %34, i8* %35, i32 %36, i32 %37)
  %39 = call i32 (...) @abort() #3
  unreachable

40:                                               ; preds = %28
  ret void
}

declare dso_local i32 @fetestexcept(i32) #1

declare dso_local i32 @fpequal(x86_fp80, x86_fp80) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
