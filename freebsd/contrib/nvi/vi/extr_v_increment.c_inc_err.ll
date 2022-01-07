; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_increment.c_inc_err.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_increment.c_inc_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"182|Resulting number too large\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"183|Resulting number too small\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @inc_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inc_err(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %17 [
    i32 131, label %6
    i32 130, label %7
    i32 129, label %9
    i32 128, label %13
  ]

6:                                                ; preds = %2
  br label %17

7:                                                ; preds = %2
  %8 = call i32 (...) @abort() #3
  unreachable

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* @M_ERR, align 4
  %12 = call i32 @msgq(i32* %10, i32 %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %17

13:                                               ; preds = %2
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* @M_ERR, align 4
  %16 = call i32 @msgq(i32* %14, i32 %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %2, %13, %9, %6
  ret void
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

declare dso_local i32 @msgq(i32*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
