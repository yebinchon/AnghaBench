; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_checksum.c_init_crc10_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_checksum.c_init_crc10_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crc10_table = common dso_local global i32 0, align 4
@CRC10_POLYNOMIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_crc10_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_crc10_table() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [256 x i32], align 16
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %33, %0
  %6 = load i32, i32* %1, align 4
  %7 = icmp slt i32 %6, 256
  br i1 %7, label %8, label %36

8:                                                ; preds = %5
  %9 = load i32, i32* %1, align 4
  %10 = trunc i32 %9 to i16
  %11 = zext i16 %10 to i32
  %12 = shl i32 %11, 2
  store i32 %12, i32* %3, align 4
  store i32 0, i32* %2, align 4
  br label %13

13:                                               ; preds = %25, %8
  %14 = load i32, i32* %2, align 4
  %15 = icmp slt i32 %14, 8
  br i1 %15, label %16, label %28

16:                                               ; preds = %13
  %17 = load i32, i32* %3, align 4
  %18 = shl i32 %17, 1
  store i32 %18, i32* %3, align 4
  %19 = and i32 %18, 1024
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* %3, align 4
  %23 = xor i32 %22, 1587
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %21, %16
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %2, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %2, align 4
  br label %13

28:                                               ; preds = %13
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 %31
  store i32 %29, i32* %32, align 4
  br label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %1, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %1, align 4
  br label %5

36:                                               ; preds = %5
  %37 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 0
  %38 = load i32, i32* @crc10_table, align 4
  %39 = call i64 @memcmp(i32* %37, i32 %38, i32 1024)
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
