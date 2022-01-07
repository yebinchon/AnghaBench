; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_objset.c_dnode_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_objset.c_dnode_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zfs_crc64_table = common dso_local global i32* null, align 8
@ZFS_CRC64_POLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @dnode_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dnode_hash(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = ptrtoint i32* %7 to i64
  store i64 %8, i64* %5, align 8
  store i32 -1, i32* %6, align 4
  %9 = load i32*, i32** @zfs_crc64_table, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 128
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @ZFS_CRC64_POLY, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = ashr i32 %16, 8
  %18 = load i32*, i32** @zfs_crc64_table, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* %5, align 8
  %22 = lshr i64 %21, 6
  %23 = xor i64 %20, %22
  %24 = and i64 %23, 255
  %25 = getelementptr inbounds i32, i32* %18, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = xor i32 %17, %26
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = ashr i32 %28, 8
  %30 = load i32*, i32** @zfs_crc64_table, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %4, align 4
  %33 = ashr i32 %32, 0
  %34 = xor i32 %31, %33
  %35 = and i32 %34, 255
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %30, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = xor i32 %29, %38
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = ashr i32 %40, 8
  %42 = load i32*, i32** @zfs_crc64_table, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %4, align 4
  %45 = ashr i32 %44, 8
  %46 = xor i32 %43, %45
  %47 = and i32 %46, 255
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %42, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = xor i32 %41, %50
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = ashr i32 %52, 8
  %54 = load i32*, i32** @zfs_crc64_table, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %4, align 4
  %57 = ashr i32 %56, 16
  %58 = xor i32 %55, %57
  %59 = and i32 %58, 255
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %54, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = xor i32 %53, %62
  store i32 %63, i32* %6, align 4
  %64 = load i64, i64* %5, align 8
  %65 = lshr i64 %64, 14
  %66 = load i32, i32* %4, align 4
  %67 = ashr i32 %66, 24
  %68 = sext i32 %67 to i64
  %69 = xor i64 %65, %68
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = xor i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
