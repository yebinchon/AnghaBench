; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crc.c__krb5_crc_init_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crc.c__krb5_crc_init_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_krb5_crc_init_table.flag = internal global i32 0, align 4
@CRC_GEN = common dso_local global i64 0, align 8
@table = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_krb5_crc_init_table() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @_krb5_crc_init_table.flag, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %45

8:                                                ; preds = %0
  %9 = load i64, i64* @CRC_GEN, align 8
  store i64 %9, i64* %2, align 8
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %41, %8
  %11 = load i32, i32* %3, align 4
  %12 = icmp ult i32 %11, 256
  br i1 %12, label %13, label %44

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %1, align 8
  store i32 8, i32* %4, align 4
  br label %16

16:                                               ; preds = %32, %13
  %17 = load i32, i32* %4, align 4
  %18 = icmp ugt i32 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %16
  %20 = load i64, i64* %1, align 8
  %21 = and i64 %20, 1
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i64, i64* %1, align 8
  %25 = lshr i64 %24, 1
  %26 = load i64, i64* %2, align 8
  %27 = xor i64 %25, %26
  store i64 %27, i64* %1, align 8
  br label %31

28:                                               ; preds = %19
  %29 = load i64, i64* %1, align 8
  %30 = lshr i64 %29, 1
  store i64 %30, i64* %1, align 8
  br label %31

31:                                               ; preds = %28, %23
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %4, align 4
  %34 = add i32 %33, -1
  store i32 %34, i32* %4, align 4
  br label %16

35:                                               ; preds = %16
  %36 = load i64, i64* %1, align 8
  %37 = load i64*, i64** @table, align 8
  %38 = load i32, i32* %3, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  store i64 %36, i64* %40, align 8
  br label %41

41:                                               ; preds = %35
  %42 = load i32, i32* %3, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %10

44:                                               ; preds = %10
  store i32 1, i32* @_krb5_crc_init_table.flag, align 4
  br label %45

45:                                               ; preds = %44, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
