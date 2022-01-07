; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_lruhash.c_bin_split.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_lruhash.c_bin_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lruhash = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.lruhash_entry* }
%struct.lruhash_entry = type { i32, %struct.lruhash_entry* }
%struct.lruhash_bin = type { i32, %struct.lruhash_entry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bin_split(%struct.lruhash* %0, %struct.lruhash_bin* %1, i32 %2) #0 {
  %4 = alloca %struct.lruhash*, align 8
  %5 = alloca %struct.lruhash_bin*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.lruhash_entry*, align 8
  %9 = alloca %struct.lruhash_entry*, align 8
  %10 = alloca %struct.lruhash_bin*, align 8
  %11 = alloca i32, align 4
  store %struct.lruhash* %0, %struct.lruhash** %4, align 8
  store %struct.lruhash_bin* %1, %struct.lruhash_bin** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.lruhash*, %struct.lruhash** %4, align 8
  %14 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %12, %15
  store i32 %16, i32* %11, align 4
  store i64 0, i64* %7, align 8
  br label %17

17:                                               ; preds = %96, %3
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.lruhash*, %struct.lruhash** %4, align 8
  %20 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %18, %21
  br i1 %22, label %23, label %99

23:                                               ; preds = %17
  %24 = load %struct.lruhash*, %struct.lruhash** %4, align 8
  %25 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @lock_quick_lock(i32* %29)
  %31 = load %struct.lruhash*, %struct.lruhash** %4, align 8
  %32 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load %struct.lruhash_entry*, %struct.lruhash_entry** %36, align 8
  store %struct.lruhash_entry* %37, %struct.lruhash_entry** %8, align 8
  %38 = load %struct.lruhash_bin*, %struct.lruhash_bin** %5, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds %struct.lruhash_bin, %struct.lruhash_bin* %38, i64 %39
  %41 = getelementptr inbounds %struct.lruhash_bin, %struct.lruhash_bin* %40, i32 0, i32 0
  %42 = call i32 @lock_quick_lock(i32* %41)
  %43 = load %struct.lruhash_bin*, %struct.lruhash_bin** %5, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %7, align 8
  %47 = or i64 %45, %46
  %48 = getelementptr inbounds %struct.lruhash_bin, %struct.lruhash_bin* %43, i64 %47
  %49 = getelementptr inbounds %struct.lruhash_bin, %struct.lruhash_bin* %48, i32 0, i32 0
  %50 = call i32 @lock_quick_lock(i32* %49)
  br label %51

51:                                               ; preds = %54, %23
  %52 = load %struct.lruhash_entry*, %struct.lruhash_entry** %8, align 8
  %53 = icmp ne %struct.lruhash_entry* %52, null
  br i1 %53, label %54, label %75

54:                                               ; preds = %51
  %55 = load %struct.lruhash_entry*, %struct.lruhash_entry** %8, align 8
  %56 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %55, i32 0, i32 1
  %57 = load %struct.lruhash_entry*, %struct.lruhash_entry** %56, align 8
  store %struct.lruhash_entry* %57, %struct.lruhash_entry** %9, align 8
  %58 = load %struct.lruhash_bin*, %struct.lruhash_bin** %5, align 8
  %59 = load %struct.lruhash_entry*, %struct.lruhash_entry** %8, align 8
  %60 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = and i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.lruhash_bin, %struct.lruhash_bin* %58, i64 %64
  store %struct.lruhash_bin* %65, %struct.lruhash_bin** %10, align 8
  %66 = load %struct.lruhash_bin*, %struct.lruhash_bin** %10, align 8
  %67 = getelementptr inbounds %struct.lruhash_bin, %struct.lruhash_bin* %66, i32 0, i32 1
  %68 = load %struct.lruhash_entry*, %struct.lruhash_entry** %67, align 8
  %69 = load %struct.lruhash_entry*, %struct.lruhash_entry** %8, align 8
  %70 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %69, i32 0, i32 1
  store %struct.lruhash_entry* %68, %struct.lruhash_entry** %70, align 8
  %71 = load %struct.lruhash_entry*, %struct.lruhash_entry** %8, align 8
  %72 = load %struct.lruhash_bin*, %struct.lruhash_bin** %10, align 8
  %73 = getelementptr inbounds %struct.lruhash_bin, %struct.lruhash_bin* %72, i32 0, i32 1
  store %struct.lruhash_entry* %71, %struct.lruhash_entry** %73, align 8
  %74 = load %struct.lruhash_entry*, %struct.lruhash_entry** %9, align 8
  store %struct.lruhash_entry* %74, %struct.lruhash_entry** %8, align 8
  br label %51

75:                                               ; preds = %51
  %76 = load %struct.lruhash_bin*, %struct.lruhash_bin** %5, align 8
  %77 = load i64, i64* %7, align 8
  %78 = getelementptr inbounds %struct.lruhash_bin, %struct.lruhash_bin* %76, i64 %77
  %79 = getelementptr inbounds %struct.lruhash_bin, %struct.lruhash_bin* %78, i32 0, i32 0
  %80 = call i32 @lock_quick_unlock(i32* %79)
  %81 = load %struct.lruhash_bin*, %struct.lruhash_bin** %5, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* %7, align 8
  %85 = or i64 %83, %84
  %86 = getelementptr inbounds %struct.lruhash_bin, %struct.lruhash_bin* %81, i64 %85
  %87 = getelementptr inbounds %struct.lruhash_bin, %struct.lruhash_bin* %86, i32 0, i32 0
  %88 = call i32 @lock_quick_unlock(i32* %87)
  %89 = load %struct.lruhash*, %struct.lruhash** %4, align 8
  %90 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %89, i32 0, i32 2
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load i64, i64* %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = call i32 @lock_quick_unlock(i32* %94)
  br label %96

96:                                               ; preds = %75
  %97 = load i64, i64* %7, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %7, align 8
  br label %17

99:                                               ; preds = %17
  ret void
}

declare dso_local i32 @lock_quick_lock(i32*) #1

declare dso_local i32 @lock_quick_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
