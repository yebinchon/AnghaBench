; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ttymodes.c_speed_to_baud.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ttymodes.c_speed_to_baud.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @speed_to_baud to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @speed_to_baud(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %28 [
    i32 152, label %5
    i32 136, label %6
    i32 132, label %7
    i32 151, label %8
    i32 148, label %9
    i32 146, label %10
    i32 143, label %11
    i32 139, label %12
    i32 134, label %13
    i32 149, label %14
    i32 145, label %15
    i32 141, label %16
    i32 137, label %17
    i32 130, label %18
    i32 144, label %19
    i32 138, label %20
    i32 133, label %21
    i32 147, label %22
    i32 140, label %23
    i32 135, label %24
    i32 131, label %25
    i32 150, label %26
    i32 142, label %27
  ]

5:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

6:                                                ; preds = %1
  store i32 50, i32* %2, align 4
  br label %29

7:                                                ; preds = %1
  store i32 75, i32* %2, align 4
  br label %29

8:                                                ; preds = %1
  store i32 110, i32* %2, align 4
  br label %29

9:                                                ; preds = %1
  store i32 134, i32* %2, align 4
  br label %29

10:                                               ; preds = %1
  store i32 150, i32* %2, align 4
  br label %29

11:                                               ; preds = %1
  store i32 200, i32* %2, align 4
  br label %29

12:                                               ; preds = %1
  store i32 300, i32* %2, align 4
  br label %29

13:                                               ; preds = %1
  store i32 600, i32* %2, align 4
  br label %29

14:                                               ; preds = %1
  store i32 1200, i32* %2, align 4
  br label %29

15:                                               ; preds = %1
  store i32 1800, i32* %2, align 4
  br label %29

16:                                               ; preds = %1
  store i32 2400, i32* %2, align 4
  br label %29

17:                                               ; preds = %1
  store i32 4800, i32* %2, align 4
  br label %29

18:                                               ; preds = %1
  store i32 9600, i32* %2, align 4
  br label %29

19:                                               ; preds = %1
  store i32 19200, i32* %2, align 4
  br label %29

20:                                               ; preds = %1
  store i32 38400, i32* %2, align 4
  br label %29

21:                                               ; preds = %1
  store i32 7200, i32* %2, align 4
  br label %29

22:                                               ; preds = %1
  store i32 14400, i32* %2, align 4
  br label %29

23:                                               ; preds = %1
  store i32 28800, i32* %2, align 4
  br label %29

24:                                               ; preds = %1
  store i32 57600, i32* %2, align 4
  br label %29

25:                                               ; preds = %1
  store i32 76800, i32* %2, align 4
  br label %29

26:                                               ; preds = %1
  store i32 115200, i32* %2, align 4
  br label %29

27:                                               ; preds = %1
  store i32 230400, i32* %2, align 4
  br label %29

28:                                               ; preds = %1
  store i32 9600, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
