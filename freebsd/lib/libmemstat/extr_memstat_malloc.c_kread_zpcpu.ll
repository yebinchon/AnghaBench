; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libmemstat/extr_memstat_malloc.c_kread_zpcpu.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libmemstat/extr_memstat_malloc.c_kread_zpcpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MEMSTAT_ERROR_KVM = common dso_local global i32 0, align 4
@MEMSTAT_ERROR_KVM_SHORTREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i64, i32)* @kread_zpcpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kread_zpcpu(i32* %0, i32 %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i8*, i8** %9, align 8
  %16 = load i64, i64* %10, align 8
  %17 = load i32, i32* %11, align 4
  %18 = call i64 @kvm_read_zpcpu(i32* %13, i32 %14, i8* %15, i64 %16, i32 %17)
  store i64 %18, i64* %12, align 8
  %19 = load i64, i64* %12, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @MEMSTAT_ERROR_KVM, align 4
  store i32 %22, i32* %6, align 4
  br label %30

23:                                               ; preds = %5
  %24 = load i64, i64* %12, align 8
  %25 = load i64, i64* %10, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @MEMSTAT_ERROR_KVM_SHORTREAD, align 4
  store i32 %28, i32* %6, align 4
  br label %30

29:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %29, %27, %21
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local i64 @kvm_read_zpcpu(i32*, i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
