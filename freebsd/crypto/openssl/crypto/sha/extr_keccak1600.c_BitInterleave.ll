; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/sha/extr_keccak1600.c_BitInterleave.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/sha/extr_keccak1600.c_BitInterleave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BIT_INTERLEAVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @BitInterleave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BitInterleave(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i64, i64* @BIT_INTERLEAVE, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %125

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = ashr i32 %10, 32
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %2, align 4
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, 1431655765
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = ashr i32 %15, 1
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, 858993459
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = ashr i32 %21, 2
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, 252645135
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = ashr i32 %27, 4
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, 16711935
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = ashr i32 %33, 8
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, 65535
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %3, align 4
  %40 = and i32 %39, 1431655765
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = ashr i32 %41, 1
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, 858993459
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = ashr i32 %47, 2
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = and i32 %51, 252645135
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = ashr i32 %53, 4
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = and i32 %57, 16711935
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = ashr i32 %59, 8
  %61 = load i32, i32* %6, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = shl i32 %63, 16
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %4, align 4
  %66 = and i32 %65, -1431655766
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = shl i32 %67, 1
  %69 = load i32, i32* %4, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = and i32 %71, -858993460
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = shl i32 %73, 2
  %75 = load i32, i32* %4, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = and i32 %77, -252645136
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = shl i32 %79, 4
  %81 = load i32, i32* %4, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = and i32 %83, -16711936
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = shl i32 %85, 8
  %87 = load i32, i32* %4, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = ashr i32 %89, 16
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %3, align 4
  %92 = and i32 %91, -1431655766
  store i32 %92, i32* %3, align 4
  %93 = load i32, i32* %3, align 4
  %94 = shl i32 %93, 1
  %95 = load i32, i32* %3, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %3, align 4
  %97 = load i32, i32* %3, align 4
  %98 = and i32 %97, -858993460
  store i32 %98, i32* %3, align 4
  %99 = load i32, i32* %3, align 4
  %100 = shl i32 %99, 2
  %101 = load i32, i32* %3, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %3, align 4
  %103 = load i32, i32* %3, align 4
  %104 = and i32 %103, -252645136
  store i32 %104, i32* %3, align 4
  %105 = load i32, i32* %3, align 4
  %106 = shl i32 %105, 4
  %107 = load i32, i32* %3, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %3, align 4
  %109 = load i32, i32* %3, align 4
  %110 = and i32 %109, -16711936
  store i32 %110, i32* %3, align 4
  %111 = load i32, i32* %3, align 4
  %112 = shl i32 %111, 8
  %113 = load i32, i32* %3, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %3, align 4
  %115 = load i32, i32* %3, align 4
  %116 = and i32 %115, -65536
  store i32 %116, i32* %3, align 4
  %117 = load i32, i32* %3, align 4
  %118 = load i32, i32* %4, align 4
  %119 = or i32 %117, %118
  %120 = shl i32 %119, 32
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* %5, align 4
  %123 = or i32 %121, %122
  %124 = or i32 %120, %123
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %9, %1
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
