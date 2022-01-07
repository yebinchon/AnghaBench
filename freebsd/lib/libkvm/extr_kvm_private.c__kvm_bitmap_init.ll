; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_private.c__kvm_bitmap_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_private.c__kvm_bitmap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_bitmap = type { i32, i32* }

@ULONG_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_kvm_bitmap_init(%struct.kvm_bitmap* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_bitmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.kvm_bitmap* %0, %struct.kvm_bitmap** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load i32, i32* @ULONG_MAX, align 4
  %9 = load i32*, i32** %7, align 8
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32* @calloc(i32 %10, i32 4)
  %12 = load %struct.kvm_bitmap*, %struct.kvm_bitmap** %5, align 8
  %13 = getelementptr inbounds %struct.kvm_bitmap, %struct.kvm_bitmap* %12, i32 0, i32 1
  store i32* %11, i32** %13, align 8
  %14 = load %struct.kvm_bitmap*, %struct.kvm_bitmap** %5, align 8
  %15 = getelementptr inbounds %struct.kvm_bitmap, %struct.kvm_bitmap* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %23

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.kvm_bitmap*, %struct.kvm_bitmap** %5, align 8
  %22 = getelementptr inbounds %struct.kvm_bitmap, %struct.kvm_bitmap* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  store i32 1, i32* %4, align 4
  br label %23

23:                                               ; preds = %19, %18
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i32* @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
