; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_sfp.c_find_zero_bit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_sfp.c_find_zero_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._nv = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @find_zero_bit(%struct._nv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._nv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct._nv* %0, %struct._nv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 1, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = mul nsw i32 8, %11
  %13 = shl i32 1, %12
  store i32 %13, i32* %9, align 4
  br label %14

14:                                               ; preds = %38, %3
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %41

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %38

24:                                               ; preds = %18
  %25 = load %struct._nv*, %struct._nv** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %26, %27
  %29 = call i8* @find_value(%struct._nv* %25, i32 %28)
  store i8* %29, i8** %10, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load i32, i32* %8, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %6, align 4
  %36 = load i8*, i8** %10, align 8
  store i8* %36, i8** %4, align 8
  br label %42

37:                                               ; preds = %24
  br label %38

38:                                               ; preds = %37, %23
  %39 = load i32, i32* %8, align 4
  %40 = mul nsw i32 %39, 2
  store i32 %40, i32* %8, align 4
  br label %14

41:                                               ; preds = %14
  store i8* null, i8** %4, align 8
  br label %42

42:                                               ; preds = %41, %31
  %43 = load i8*, i8** %4, align 8
  ret i8* %43
}

declare dso_local i8* @find_value(%struct._nv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
