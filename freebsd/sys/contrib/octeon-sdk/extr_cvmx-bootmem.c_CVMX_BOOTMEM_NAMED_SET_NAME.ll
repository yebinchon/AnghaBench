; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-bootmem.c_CVMX_BOOTMEM_NAMED_SET_NAME.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-bootmem.c_CVMX_BOOTMEM_NAMED_SET_NAME.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cvmx_bootmem_named_block_desc_t = common dso_local global i32 0, align 4
@name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i8*, i32)* @CVMX_BOOTMEM_NAMED_SET_NAME to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CVMX_BOOTMEM_NAMED_SET_NAME(i64 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i64, i64* %4, align 8
  %10 = or i64 %9, -9223372036854775808
  store i64 %10, i64* %4, align 8
  %11 = load i32, i32* @cvmx_bootmem_named_block_desc_t, align 4
  %12 = load i32, i32* @name, align 4
  %13 = call i64 @offsetof(i32 %11, i32 %12)
  %14 = load i64, i64* %4, align 8
  %15 = add i64 %14, %13
  store i64 %15, i64* %4, align 8
  br label %16

16:                                               ; preds = %37, %3
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %7, align 4
  %19 = icmp ne i32 %17, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = load i64, i64* %4, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %4, align 8
  %26 = trunc i64 %24 to i32
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %5, align 8
  %29 = load i8, i8* %27, align 1
  %30 = sext i8 %29 to i32
  %31 = call i32 @cvmx_write64_uint8(i32 %26, i32 %30)
  br label %37

32:                                               ; preds = %20
  %33 = load i64, i64* %4, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %4, align 8
  %35 = trunc i64 %33 to i32
  %36 = call i32 @cvmx_write64_uint8(i32 %35, i32 0)
  br label %37

37:                                               ; preds = %32, %23
  br label %16

38:                                               ; preds = %16
  ret void
}

declare dso_local i64 @offsetof(i32, i32) #1

declare dso_local i32 @cvmx_write64_uint8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
