; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/nvpair/extr_opensolaris_nvpair.c_nvs_native_nvp_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/nvpair/extr_opensolaris_nvpair.c_nvs_native_nvp_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@INT32_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*, i64*)* @nvs_native_nvp_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvs_native_nvp_size(i32* %0, %struct.TYPE_6__* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %8, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %15 = call i32 @NVP_TYPE(%struct.TYPE_6__* %14)
  switch i32 %15, label %39 [
    i32 129, label %16
    i32 128, label %28
  ]

16:                                               ; preds = %3
  store i64 0, i64* %9, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = call i32 @EMBEDDED_NVL(%struct.TYPE_6__* %18)
  %20 = call i32 @nvs_operation(i32* %17, i32 %19, i64* %9)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %4, align 4
  br label %49

24:                                               ; preds = %16
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %8, align 8
  %27 = add i64 %26, %25
  store i64 %27, i64* %8, align 8
  br label %40

28:                                               ; preds = %3
  %29 = load i32*, i32** %5, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = call i32 @nvs_embedded_nvl_array(i32* %29, %struct.TYPE_6__* %30, i64* %10)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %4, align 4
  br label %49

35:                                               ; preds = %28
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %8, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %8, align 8
  br label %40

39:                                               ; preds = %3
  br label %40

40:                                               ; preds = %39, %35, %24
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @INT32_MAX, align 8
  %43 = icmp ugt i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %4, align 4
  br label %49

46:                                               ; preds = %40
  %47 = load i64, i64* %8, align 8
  %48 = load i64*, i64** %7, align 8
  store i64 %47, i64* %48, align 8
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %46, %44, %33, %22
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @NVP_TYPE(%struct.TYPE_6__*) #1

declare dso_local i32 @nvs_operation(i32*, i32, i64*) #1

declare dso_local i32 @EMBEDDED_NVL(%struct.TYPE_6__*) #1

declare dso_local i32 @nvs_embedded_nvl_array(i32*, %struct.TYPE_6__*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
