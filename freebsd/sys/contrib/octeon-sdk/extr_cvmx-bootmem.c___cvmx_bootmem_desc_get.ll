; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-bootmem.c___cvmx_bootmem_desc_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-bootmem.c___cvmx_bootmem_desc_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @__cvmx_bootmem_desc_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cvmx_bootmem_desc_get(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = add nsw i32 %8, %9
  %11 = sext i32 %10 to i64
  %12 = or i64 -9223372036854775808, %11
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %21 [
    i32 4, label %15
    i32 8, label %18
  ]

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @cvmx_read64_uint32(i32 %16)
  store i32 %17, i32* %4, align 4
  br label %22

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @cvmx_read64_uint64(i32 %19)
  store i32 %20, i32* %4, align 4
  br label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %21, %18, %15
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i32 @cvmx_read64_uint32(i32) #1

declare dso_local i32 @cvmx_read64_uint64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
