; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-tdep.c_sparc_integral_or_pointer_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-tdep.c_sparc_integral_or_pointer_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.type*)* @sparc_integral_or_pointer_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sparc_integral_or_pointer_p(%struct.type* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.type*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %3, align 8
  %6 = load %struct.type*, %struct.type** %3, align 8
  %7 = call i32 @TYPE_CODE(%struct.type* %6)
  switch i32 %7, label %36 [
    i32 131, label %8
    i32 134, label %8
    i32 133, label %8
    i32 132, label %8
    i32 129, label %8
    i32 130, label %25
    i32 128, label %25
  ]

8:                                                ; preds = %1, %1, %1, %1, %1
  %9 = load %struct.type*, %struct.type** %3, align 8
  %10 = call i32 @TYPE_LENGTH(%struct.type* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %22, label %13

13:                                               ; preds = %8
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 4
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 8
  br label %22

22:                                               ; preds = %19, %16, %13, %8
  %23 = phi i1 [ true, %16 ], [ true, %13 ], [ true, %8 ], [ %21, %19 ]
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %2, align 4
  br label %38

25:                                               ; preds = %1, %1
  %26 = load %struct.type*, %struct.type** %3, align 8
  %27 = call i32 @TYPE_LENGTH(%struct.type* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 4
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 8
  br label %33

33:                                               ; preds = %30, %25
  %34 = phi i1 [ true, %25 ], [ %32, %30 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %2, align 4
  br label %38

36:                                               ; preds = %1
  br label %37

37:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %33, %22
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
