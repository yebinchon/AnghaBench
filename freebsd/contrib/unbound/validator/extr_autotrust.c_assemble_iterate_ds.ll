; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_assemble_iterate_ds.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_assemble_iterate_ds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.autr_ta = type { i64, i64, %struct.autr_ta*, i32* }

@LDNS_RR_TYPE_DS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.autr_ta**, i32**, i64*, i64*)* @assemble_iterate_ds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assemble_iterate_ds(%struct.autr_ta** %0, i32** %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.autr_ta**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  store %struct.autr_ta** %0, %struct.autr_ta*** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  br label %10

10:                                               ; preds = %51, %4
  %11 = load %struct.autr_ta**, %struct.autr_ta*** %6, align 8
  %12 = load %struct.autr_ta*, %struct.autr_ta** %11, align 8
  %13 = icmp ne %struct.autr_ta* %12, null
  br i1 %13, label %14, label %57

14:                                               ; preds = %10
  %15 = load %struct.autr_ta**, %struct.autr_ta*** %6, align 8
  %16 = load %struct.autr_ta*, %struct.autr_ta** %15, align 8
  %17 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.autr_ta**, %struct.autr_ta*** %6, align 8
  %20 = load %struct.autr_ta*, %struct.autr_ta** %19, align 8
  %21 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.autr_ta**, %struct.autr_ta*** %6, align 8
  %24 = load %struct.autr_ta*, %struct.autr_ta** %23, align 8
  %25 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @sldns_wirerr_get_type(i32* %18, i64 %22, i64 %26)
  %28 = load i64, i64* @LDNS_RR_TYPE_DS, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %51

30:                                               ; preds = %14
  %31 = load %struct.autr_ta**, %struct.autr_ta*** %6, align 8
  %32 = load %struct.autr_ta*, %struct.autr_ta** %31, align 8
  %33 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = load i32**, i32*** %7, align 8
  store i32* %34, i32** %35, align 8
  %36 = load %struct.autr_ta**, %struct.autr_ta*** %6, align 8
  %37 = load %struct.autr_ta*, %struct.autr_ta** %36, align 8
  %38 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64*, i64** %8, align 8
  store i64 %39, i64* %40, align 8
  %41 = load %struct.autr_ta**, %struct.autr_ta*** %6, align 8
  %42 = load %struct.autr_ta*, %struct.autr_ta** %41, align 8
  %43 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64*, i64** %9, align 8
  store i64 %44, i64* %45, align 8
  %46 = load %struct.autr_ta**, %struct.autr_ta*** %6, align 8
  %47 = load %struct.autr_ta*, %struct.autr_ta** %46, align 8
  %48 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %47, i32 0, i32 2
  %49 = load %struct.autr_ta*, %struct.autr_ta** %48, align 8
  %50 = load %struct.autr_ta**, %struct.autr_ta*** %6, align 8
  store %struct.autr_ta* %49, %struct.autr_ta** %50, align 8
  store i32 1, i32* %5, align 4
  br label %58

51:                                               ; preds = %14
  %52 = load %struct.autr_ta**, %struct.autr_ta*** %6, align 8
  %53 = load %struct.autr_ta*, %struct.autr_ta** %52, align 8
  %54 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %53, i32 0, i32 2
  %55 = load %struct.autr_ta*, %struct.autr_ta** %54, align 8
  %56 = load %struct.autr_ta**, %struct.autr_ta*** %6, align 8
  store %struct.autr_ta* %55, %struct.autr_ta** %56, align 8
  br label %10

57:                                               ; preds = %10
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %30
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i64 @sldns_wirerr_get_type(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
