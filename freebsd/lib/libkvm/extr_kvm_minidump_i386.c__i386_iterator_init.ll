; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_minidump_i386.c__i386_iterator_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_minidump_i386.c__i386_iterator_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i386_iter = type { i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.vmstate* }
%struct.vmstate = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i386_iter*, %struct.TYPE_5__*)* @_i386_iterator_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_i386_iterator_init(%struct.i386_iter* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.i386_iter*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.vmstate*, align 8
  store %struct.i386_iter* %0, %struct.i386_iter** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load %struct.vmstate*, %struct.vmstate** %7, align 8
  store %struct.vmstate* %8, %struct.vmstate** %5, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = load %struct.i386_iter*, %struct.i386_iter** %3, align 8
  %11 = getelementptr inbounds %struct.i386_iter, %struct.i386_iter* %10, i32 0, i32 2
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %11, align 8
  %12 = load %struct.i386_iter*, %struct.i386_iter** %3, align 8
  %13 = getelementptr inbounds %struct.i386_iter, %struct.i386_iter* %12, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = load %struct.vmstate*, %struct.vmstate** %5, align 8
  %15 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load %struct.vmstate*, %struct.vmstate** %5, align 8
  %21 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = udiv i64 %24, 4
  %26 = trunc i64 %25 to i32
  %27 = load %struct.i386_iter*, %struct.i386_iter** %3, align 8
  %28 = getelementptr inbounds %struct.i386_iter, %struct.i386_iter* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  br label %39

29:                                               ; preds = %2
  %30 = load %struct.vmstate*, %struct.vmstate** %5, align 8
  %31 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = udiv i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = load %struct.i386_iter*, %struct.i386_iter** %3, align 8
  %38 = getelementptr inbounds %struct.i386_iter, %struct.i386_iter* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %29, %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
