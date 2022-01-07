; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_minidump_mips.c__mips_iterator_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_minidump_mips.c__mips_iterator_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips_iter = type { i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.vmstate* }
%struct.vmstate = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mips_iter*, %struct.TYPE_5__*)* @_mips_iterator_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_mips_iterator_init(%struct.mips_iter* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.mips_iter*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.vmstate*, align 8
  store %struct.mips_iter* %0, %struct.mips_iter** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load %struct.vmstate*, %struct.vmstate** %7, align 8
  store %struct.vmstate* %8, %struct.vmstate** %5, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = load %struct.mips_iter*, %struct.mips_iter** %3, align 8
  %11 = getelementptr inbounds %struct.mips_iter, %struct.mips_iter* %10, i32 0, i32 2
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %11, align 8
  %12 = load %struct.mips_iter*, %struct.mips_iter** %3, align 8
  %13 = getelementptr inbounds %struct.mips_iter, %struct.mips_iter* %12, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = load %struct.vmstate*, %struct.vmstate** %5, align 8
  %15 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 64
  br i1 %17, label %18, label %28

18:                                               ; preds = %2
  %19 = load %struct.vmstate*, %struct.vmstate** %5, align 8
  %20 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = udiv i64 %23, 4
  %25 = trunc i64 %24 to i32
  %26 = load %struct.mips_iter*, %struct.mips_iter** %3, align 8
  %27 = getelementptr inbounds %struct.mips_iter, %struct.mips_iter* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %38

28:                                               ; preds = %2
  %29 = load %struct.vmstate*, %struct.vmstate** %5, align 8
  %30 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = udiv i64 %33, 4
  %35 = trunc i64 %34 to i32
  %36 = load %struct.mips_iter*, %struct.mips_iter** %3, align 8
  %37 = getelementptr inbounds %struct.mips_iter, %struct.mips_iter* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  br label %38

38:                                               ; preds = %28, %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
