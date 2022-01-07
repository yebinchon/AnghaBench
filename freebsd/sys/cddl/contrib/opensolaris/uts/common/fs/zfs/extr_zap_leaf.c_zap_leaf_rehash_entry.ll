; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zap_leaf.c_zap_leaf_rehash_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zap_leaf.c_zap_leaf_rehash_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zap_leaf_entry = type { i64, i64, i32 }

@CHAIN_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i32*, i64)* @zap_leaf_rehash_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @zap_leaf_rehash_entry(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.zap_leaf_entry*, align 8
  %6 = alloca %struct.zap_leaf_entry*, align 8
  %7 = alloca i64*, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call %struct.zap_leaf_entry* @ZAP_LEAF_ENTRY(i32* %8, i64 %9)
  store %struct.zap_leaf_entry* %10, %struct.zap_leaf_entry** %5, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = load %struct.zap_leaf_entry*, %struct.zap_leaf_entry** %5, align 8
  %13 = getelementptr inbounds %struct.zap_leaf_entry, %struct.zap_leaf_entry* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i64* @LEAF_HASH_ENTPTR(i32* %11, i32 %14)
  store i64* %15, i64** %7, align 8
  br label %16

16:                                               ; preds = %35, %2
  %17 = load i64*, i64** %7, align 8
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CHAIN_END, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %16
  %22 = load i32*, i32** %3, align 8
  %23 = load i64*, i64** %7, align 8
  %24 = load i64, i64* %23, align 8
  %25 = call %struct.zap_leaf_entry* @ZAP_LEAF_ENTRY(i32* %22, i64 %24)
  store %struct.zap_leaf_entry* %25, %struct.zap_leaf_entry** %6, align 8
  %26 = load %struct.zap_leaf_entry*, %struct.zap_leaf_entry** %6, align 8
  %27 = getelementptr inbounds %struct.zap_leaf_entry, %struct.zap_leaf_entry* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.zap_leaf_entry*, %struct.zap_leaf_entry** %5, align 8
  %30 = getelementptr inbounds %struct.zap_leaf_entry, %struct.zap_leaf_entry* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  br label %38

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.zap_leaf_entry*, %struct.zap_leaf_entry** %6, align 8
  %37 = getelementptr inbounds %struct.zap_leaf_entry, %struct.zap_leaf_entry* %36, i32 0, i32 0
  store i64* %37, i64** %7, align 8
  br label %16

38:                                               ; preds = %33, %16
  %39 = load i64*, i64** %7, align 8
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.zap_leaf_entry*, %struct.zap_leaf_entry** %5, align 8
  %42 = getelementptr inbounds %struct.zap_leaf_entry, %struct.zap_leaf_entry* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* %4, align 8
  %44 = load i64*, i64** %7, align 8
  store i64 %43, i64* %44, align 8
  %45 = load i64*, i64** %7, align 8
  ret i64* %45
}

declare dso_local %struct.zap_leaf_entry* @ZAP_LEAF_ENTRY(i32*, i64) #1

declare dso_local i64* @LEAF_HASH_ENTPTR(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
