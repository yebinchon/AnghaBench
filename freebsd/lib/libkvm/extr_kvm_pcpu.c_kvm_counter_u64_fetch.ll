; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_pcpu.c_kvm_counter_u64_fetch.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_pcpu.c_kvm_counter_u64_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mp_ncpus = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kvm_counter_u64_fetch(i32* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @mp_ncpus, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = call i64 @_kvm_pcpu_init(i32* %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i64 0, i64* %3, align 8
  br label %39

16:                                               ; preds = %11
  br label %17

17:                                               ; preds = %16, %2
  store i64 0, i64* %6, align 8
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %34, %17
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @mp_ncpus, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @kvm_read_zpcpu(i32* %23, i32 %24, i64* %7, i32 8, i32 %25)
  %27 = sext i32 %26 to i64
  %28 = icmp ne i64 %27, 8
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i64 0, i64* %3, align 8
  br label %39

30:                                               ; preds = %22
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %6, align 8
  %33 = add nsw i64 %32, %31
  store i64 %33, i64* %6, align 8
  br label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %18

37:                                               ; preds = %18
  %38 = load i64, i64* %6, align 8
  store i64 %38, i64* %3, align 8
  br label %39

39:                                               ; preds = %37, %29, %15
  %40 = load i64, i64* %3, align 8
  ret i64 %40
}

declare dso_local i64 @_kvm_pcpu_init(i32*) #1

declare dso_local i32 @kvm_read_zpcpu(i32*, i32, i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
