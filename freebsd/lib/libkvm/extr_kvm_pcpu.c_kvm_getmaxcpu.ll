; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_pcpu.c_kvm_getmaxcpu.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_pcpu.c_kvm_getmaxcpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@maxcpu = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_getmaxcpu(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 (...) @_kvm_pcpu_clear()
  store i32 0, i32* %2, align 4
  br label %20

8:                                                ; preds = %1
  %9 = load i64, i64* @maxcpu, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load i32*, i32** %3, align 8
  %13 = call i64 @_kvm_pcpu_init(i32* %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 -1, i32* %2, align 4
  br label %20

16:                                               ; preds = %11
  br label %17

17:                                               ; preds = %16, %8
  %18 = load i64, i64* @maxcpu, align 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %17, %15, %6
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @_kvm_pcpu_clear(...) #1

declare dso_local i64 @_kvm_pcpu_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
