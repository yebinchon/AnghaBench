; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_util.c_ldns_int_to_hexdigit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_util.c_ldns_int_to_hexdigit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @ldns_int_to_hexdigit(i32 %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %21 [
    i32 0, label %5
    i32 1, label %6
    i32 2, label %7
    i32 3, label %8
    i32 4, label %9
    i32 5, label %10
    i32 6, label %11
    i32 7, label %12
    i32 8, label %13
    i32 9, label %14
    i32 10, label %15
    i32 11, label %16
    i32 12, label %17
    i32 13, label %18
    i32 14, label %19
    i32 15, label %20
  ]

5:                                                ; preds = %1
  store i8 48, i8* %2, align 1
  br label %23

6:                                                ; preds = %1
  store i8 49, i8* %2, align 1
  br label %23

7:                                                ; preds = %1
  store i8 50, i8* %2, align 1
  br label %23

8:                                                ; preds = %1
  store i8 51, i8* %2, align 1
  br label %23

9:                                                ; preds = %1
  store i8 52, i8* %2, align 1
  br label %23

10:                                               ; preds = %1
  store i8 53, i8* %2, align 1
  br label %23

11:                                               ; preds = %1
  store i8 54, i8* %2, align 1
  br label %23

12:                                               ; preds = %1
  store i8 55, i8* %2, align 1
  br label %23

13:                                               ; preds = %1
  store i8 56, i8* %2, align 1
  br label %23

14:                                               ; preds = %1
  store i8 57, i8* %2, align 1
  br label %23

15:                                               ; preds = %1
  store i8 97, i8* %2, align 1
  br label %23

16:                                               ; preds = %1
  store i8 98, i8* %2, align 1
  br label %23

17:                                               ; preds = %1
  store i8 99, i8* %2, align 1
  br label %23

18:                                               ; preds = %1
  store i8 100, i8* %2, align 1
  br label %23

19:                                               ; preds = %1
  store i8 101, i8* %2, align 1
  br label %23

20:                                               ; preds = %1
  store i8 102, i8* %2, align 1
  br label %23

21:                                               ; preds = %1
  %22 = call i32 (...) @abort() #2
  unreachable

23:                                               ; preds = %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %24 = load i8, i8* %2, align 1
  ret i8 %24
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
