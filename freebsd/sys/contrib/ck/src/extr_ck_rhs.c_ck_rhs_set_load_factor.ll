; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_rhs.c_ck_rhs_set_load_factor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_rhs.c_ck_rhs_set_load_factor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_rhs = type { i32, %struct.ck_rhs_map* }
%struct.ck_rhs_map = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ck_rhs_set_load_factor(%struct.ck_rhs* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ck_rhs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ck_rhs_map*, align 8
  store %struct.ck_rhs* %0, %struct.ck_rhs** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ck_rhs*, %struct.ck_rhs** %4, align 8
  %8 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %7, i32 0, i32 1
  %9 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %8, align 8
  store %struct.ck_rhs_map* %9, %struct.ck_rhs_map** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp ugt i32 %13, 100
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %54

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.ck_rhs*, %struct.ck_rhs** %4, align 8
  %19 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %6, align 8
  %21 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.ck_rhs*, %struct.ck_rhs** %4, align 8
  %24 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = zext i32 %25 to i64
  %27 = mul i64 %22, %26
  %28 = udiv i64 %27, 100
  %29 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %6, align 8
  %30 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  br label %31

31:                                               ; preds = %49, %16
  %32 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %6, align 8
  %33 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %6, align 8
  %36 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ugt i64 %34, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %31
  %40 = load %struct.ck_rhs*, %struct.ck_rhs** %4, align 8
  %41 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %6, align 8
  %42 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = shl i64 %43, 1
  %45 = trunc i64 %44 to i32
  %46 = call i32 @ck_rhs_grow(%struct.ck_rhs* %40, i32 %45)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %54

49:                                               ; preds = %39
  %50 = load %struct.ck_rhs*, %struct.ck_rhs** %4, align 8
  %51 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %50, i32 0, i32 1
  %52 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %51, align 8
  store %struct.ck_rhs_map* %52, %struct.ck_rhs_map** %6, align 8
  br label %31

53:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %48, %15
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @ck_rhs_grow(%struct.ck_rhs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
