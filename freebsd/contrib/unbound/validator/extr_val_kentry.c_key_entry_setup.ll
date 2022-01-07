; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_kentry.c_key_entry_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_kentry.c_key_entry_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regional = type { i32 }
%struct.key_entry_key = type { i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { %struct.key_entry_data*, %struct.key_entry_key* }
%struct.key_entry_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regional*, i32*, i64, i32, %struct.key_entry_key**, %struct.key_entry_data**)* @key_entry_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_entry_setup(%struct.regional* %0, i32* %1, i64 %2, i32 %3, %struct.key_entry_key** %4, %struct.key_entry_data** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.regional*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.key_entry_key**, align 8
  %13 = alloca %struct.key_entry_data**, align 8
  store %struct.regional* %0, %struct.regional** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.key_entry_key** %4, %struct.key_entry_key*** %12, align 8
  store %struct.key_entry_data** %5, %struct.key_entry_data*** %13, align 8
  %14 = load %struct.regional*, %struct.regional** %8, align 8
  %15 = call i8* @regional_alloc(%struct.regional* %14, i32 32)
  %16 = bitcast i8* %15 to %struct.key_entry_key*
  %17 = load %struct.key_entry_key**, %struct.key_entry_key*** %12, align 8
  store %struct.key_entry_key* %16, %struct.key_entry_key** %17, align 8
  %18 = load %struct.key_entry_key**, %struct.key_entry_key*** %12, align 8
  %19 = load %struct.key_entry_key*, %struct.key_entry_key** %18, align 8
  %20 = icmp ne %struct.key_entry_key* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %69

22:                                               ; preds = %6
  %23 = load %struct.key_entry_key**, %struct.key_entry_key*** %12, align 8
  %24 = load %struct.key_entry_key*, %struct.key_entry_key** %23, align 8
  %25 = call i32 @memset(%struct.key_entry_key* %24, i32 0, i32 32)
  %26 = load %struct.key_entry_key**, %struct.key_entry_key*** %12, align 8
  %27 = load %struct.key_entry_key*, %struct.key_entry_key** %26, align 8
  %28 = load %struct.key_entry_key**, %struct.key_entry_key*** %12, align 8
  %29 = load %struct.key_entry_key*, %struct.key_entry_key** %28, align 8
  %30 = getelementptr inbounds %struct.key_entry_key, %struct.key_entry_key* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store %struct.key_entry_key* %27, %struct.key_entry_key** %31, align 8
  %32 = load %struct.regional*, %struct.regional** %8, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @regional_alloc_init(%struct.regional* %32, i32* %33, i64 %34)
  %36 = load %struct.key_entry_key**, %struct.key_entry_key*** %12, align 8
  %37 = load %struct.key_entry_key*, %struct.key_entry_key** %36, align 8
  %38 = getelementptr inbounds %struct.key_entry_key, %struct.key_entry_key* %37, i32 0, i32 3
  store i32 %35, i32* %38, align 4
  %39 = load %struct.key_entry_key**, %struct.key_entry_key*** %12, align 8
  %40 = load %struct.key_entry_key*, %struct.key_entry_key** %39, align 8
  %41 = getelementptr inbounds %struct.key_entry_key, %struct.key_entry_key* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %69

45:                                               ; preds = %22
  %46 = load i64, i64* %10, align 8
  %47 = load %struct.key_entry_key**, %struct.key_entry_key*** %12, align 8
  %48 = load %struct.key_entry_key*, %struct.key_entry_key** %47, align 8
  %49 = getelementptr inbounds %struct.key_entry_key, %struct.key_entry_key* %48, i32 0, i32 0
  store i64 %46, i64* %49, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.key_entry_key**, %struct.key_entry_key*** %12, align 8
  %52 = load %struct.key_entry_key*, %struct.key_entry_key** %51, align 8
  %53 = getelementptr inbounds %struct.key_entry_key, %struct.key_entry_key* %52, i32 0, i32 2
  store i32 %50, i32* %53, align 8
  %54 = load %struct.regional*, %struct.regional** %8, align 8
  %55 = call i8* @regional_alloc(%struct.regional* %54, i32 4)
  %56 = bitcast i8* %55 to %struct.key_entry_data*
  %57 = load %struct.key_entry_data**, %struct.key_entry_data*** %13, align 8
  store %struct.key_entry_data* %56, %struct.key_entry_data** %57, align 8
  %58 = load %struct.key_entry_data**, %struct.key_entry_data*** %13, align 8
  %59 = load %struct.key_entry_data*, %struct.key_entry_data** %58, align 8
  %60 = icmp ne %struct.key_entry_data* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %45
  store i32 0, i32* %7, align 4
  br label %69

62:                                               ; preds = %45
  %63 = load %struct.key_entry_data**, %struct.key_entry_data*** %13, align 8
  %64 = load %struct.key_entry_data*, %struct.key_entry_data** %63, align 8
  %65 = load %struct.key_entry_key**, %struct.key_entry_key*** %12, align 8
  %66 = load %struct.key_entry_key*, %struct.key_entry_key** %65, align 8
  %67 = getelementptr inbounds %struct.key_entry_key, %struct.key_entry_key* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store %struct.key_entry_data* %64, %struct.key_entry_data** %68, align 8
  store i32 1, i32* %7, align 4
  br label %69

69:                                               ; preds = %62, %61, %44, %21
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local i8* @regional_alloc(%struct.regional*, i32) #1

declare dso_local i32 @memset(%struct.key_entry_key*, i32, i32) #1

declare dso_local i32 @regional_alloc_init(%struct.regional*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
