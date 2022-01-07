; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_rhs.c_ck_rhs_get_first_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_rhs.c_ck_rhs_get_first_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_rhs_map = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ck_rhs_map*, i64, i32)* @ck_rhs_get_first_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ck_rhs_get_first_offset(%struct.ck_rhs_map* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.ck_rhs_map*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ck_rhs_map* %0, %struct.ck_rhs_map** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  br label %7

7:                                                ; preds = %16, %3
  %8 = load i32, i32* %6, align 4
  %9 = zext i32 %8 to i64
  %10 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %4, align 8
  %11 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = zext i32 %12 to i64
  %14 = add i64 %13, 1
  %15 = icmp ugt i64 %9, %14
  br i1 %15, label %16, label %57

16:                                               ; preds = %7
  %17 = load i32, i32* %6, align 4
  %18 = sub i32 %17, 1
  %19 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %4, align 8
  %20 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = xor i32 %21, -1
  %23 = and i32 %18, %22
  %24 = zext i32 %23 to i64
  %25 = load i64, i64* %5, align 8
  %26 = sub i64 %25, %24
  store i64 %26, i64* %5, align 8
  %27 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %4, align 8
  %28 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = and i64 %30, %29
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %4, align 8
  %34 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = xor i32 %35, -1
  %37 = zext i32 %36 to i64
  %38 = and i64 %32, %37
  %39 = load i64, i64* %5, align 8
  %40 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %4, align 8
  %41 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = zext i32 %42 to i64
  %44 = sub i64 %39, %43
  %45 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %4, align 8
  %46 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = zext i32 %47 to i64
  %49 = and i64 %44, %48
  %50 = add i64 %38, %49
  store i64 %50, i64* %5, align 8
  %51 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %4, align 8
  %52 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add i32 %53, 1
  %55 = load i32, i32* %6, align 4
  %56 = sub i32 %55, %54
  store i32 %56, i32* %6, align 4
  br label %7

57:                                               ; preds = %7
  %58 = load i64, i64* %5, align 8
  %59 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %4, align 8
  %60 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = xor i32 %61, -1
  %63 = zext i32 %62 to i64
  %64 = and i64 %58, %63
  %65 = load i64, i64* %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sub i32 %66, 1
  %68 = zext i32 %67 to i64
  %69 = sub i64 %65, %68
  %70 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %4, align 8
  %71 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = zext i32 %72 to i64
  %74 = and i64 %69, %73
  %75 = add i64 %64, %74
  ret i64 %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
