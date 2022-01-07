; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_rhs.c_ck_rhs_map_bound_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_rhs.c_ck_rhs_map_bound_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_rhs_map = type { i64, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@CK_RHS_WORD_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ck_rhs_map*, i64)* @ck_rhs_map_bound_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ck_rhs_map_bound_get(%struct.ck_rhs_map* %0, i64 %1) #0 {
  %3 = alloca %struct.ck_rhs_map*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ck_rhs_map* %0, %struct.ck_rhs_map** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %3, align 8
  %9 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = and i64 %7, %10
  store i64 %11, i64* %5, align 8
  %12 = load i32, i32* @CK_RHS_WORD_MAX, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %3, align 8
  %14 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %3, align 8
  %19 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %18, i32 0, i32 1
  %20 = call i32 @ck_pr_load_uint(i32* %19)
  store i32 %20, i32* %6, align 4
  br label %38

21:                                               ; preds = %2
  %22 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %3, align 8
  %23 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = call i32 @CK_RHS_LOAD(i32* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @CK_RHS_WORD_MAX, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %21
  %34 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %3, align 8
  %35 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %34, i32 0, i32 1
  %36 = call i32 @ck_pr_load_uint(i32* %35)
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %33, %21
  br label %38

38:                                               ; preds = %37, %17
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i32 @ck_pr_load_uint(i32*) #1

declare dso_local i32 @CK_RHS_LOAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
