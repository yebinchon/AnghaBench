; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_ht.c_ck_ht_map_probe_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_ht.c_ck_ht_map_probe_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_ht_map = type { i64, i64 }
%struct.TYPE_3__ = type { i64 }

@CK_HT_BUCKET_SHIFT = common dso_local global i64 0, align 8
@CK_HT_BUCKET_MASK = common dso_local global i32 0, align 4
@CK_HT_BUCKET_LENGTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ck_ht_map*, i64, i64, i64)* @ck_ht_map_probe_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ck_ht_map_probe_next(%struct.ck_ht_map* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca %struct.ck_ht_map*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_3__, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i64 %2, i64* %12, align 8
  store %struct.ck_ht_map* %0, %struct.ck_ht_map** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* @CK_HT_BUCKET_SHIFT, align 8
  %15 = lshr i64 %13, %14
  store i64 %15, i64* %11, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ck_ht_map*, %struct.ck_ht_map** %6, align 8
  %19 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = lshr i64 %17, %20
  %22 = load i64, i64* %11, align 8
  %23 = lshr i64 %21, %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i64 %23, i64* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @CK_HT_BUCKET_MASK, align 4
  %28 = xor i32 %27, -1
  %29 = sext i32 %28 to i64
  %30 = and i64 %26, %29
  %31 = shl i64 %30, 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @CK_HT_BUCKET_MASK, align 4
  %35 = sext i32 %34 to i64
  %36 = and i64 %33, %35
  %37 = or i64 %31, %36
  store i64 %37, i64* %10, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %11, align 8
  %40 = add i64 %38, %39
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* @CK_HT_BUCKET_LENGTH, align 8
  %43 = or i64 %41, %42
  %44 = add i64 %40, %43
  %45 = load %struct.ck_ht_map*, %struct.ck_ht_map** %6, align 8
  %46 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = and i64 %44, %47
  ret i64 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
