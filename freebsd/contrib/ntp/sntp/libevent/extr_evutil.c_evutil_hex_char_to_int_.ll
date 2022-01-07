; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evutil.c_evutil_hex_char_to_int_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evutil.c_evutil_hex_char_to_int_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evutil_hex_char_to_int_(i8 signext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  %4 = load i8, i8* %3, align 1
  %5 = sext i8 %4 to i32
  switch i32 %5, label %22 [
    i32 48, label %6
    i32 49, label %7
    i32 50, label %8
    i32 51, label %9
    i32 52, label %10
    i32 53, label %11
    i32 54, label %12
    i32 55, label %13
    i32 56, label %14
    i32 57, label %15
    i32 65, label %16
    i32 97, label %16
    i32 66, label %17
    i32 98, label %17
    i32 67, label %18
    i32 99, label %18
    i32 68, label %19
    i32 100, label %19
    i32 69, label %20
    i32 101, label %20
    i32 70, label %21
    i32 102, label %21
  ]

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %23

7:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %23

8:                                                ; preds = %1
  store i32 2, i32* %2, align 4
  br label %23

9:                                                ; preds = %1
  store i32 3, i32* %2, align 4
  br label %23

10:                                               ; preds = %1
  store i32 4, i32* %2, align 4
  br label %23

11:                                               ; preds = %1
  store i32 5, i32* %2, align 4
  br label %23

12:                                               ; preds = %1
  store i32 6, i32* %2, align 4
  br label %23

13:                                               ; preds = %1
  store i32 7, i32* %2, align 4
  br label %23

14:                                               ; preds = %1
  store i32 8, i32* %2, align 4
  br label %23

15:                                               ; preds = %1
  store i32 9, i32* %2, align 4
  br label %23

16:                                               ; preds = %1, %1
  store i32 10, i32* %2, align 4
  br label %23

17:                                               ; preds = %1, %1
  store i32 11, i32* %2, align 4
  br label %23

18:                                               ; preds = %1, %1
  store i32 12, i32* %2, align 4
  br label %23

19:                                               ; preds = %1, %1
  store i32 13, i32* %2, align 4
  br label %23

20:                                               ; preds = %1, %1
  store i32 14, i32* %2, align 4
  br label %23

21:                                               ; preds = %1, %1
  store i32 15, i32* %2, align 4
  br label %23

22:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
