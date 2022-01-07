; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_lruhash.c_lruhash_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_lruhash.c_lruhash_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lruhash = type { i64, i32, i64, i64, i32*, i32*, i32*, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lruhash_clear(%struct.lruhash* %0) #0 {
  %2 = alloca %struct.lruhash*, align 8
  %3 = alloca i64, align 8
  store %struct.lruhash* %0, %struct.lruhash** %2, align 8
  %4 = load %struct.lruhash*, %struct.lruhash** %2, align 8
  %5 = icmp ne %struct.lruhash* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %55

7:                                                ; preds = %1
  %8 = load %struct.lruhash*, %struct.lruhash** %2, align 8
  %9 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %8, i32 0, i32 9
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @fptr_whitelist_hash_delkeyfunc(i32 %10)
  %12 = call i32 @fptr_ok(i32 %11)
  %13 = load %struct.lruhash*, %struct.lruhash** %2, align 8
  %14 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @fptr_whitelist_hash_deldatafunc(i32 %15)
  %17 = call i32 @fptr_ok(i32 %16)
  %18 = load %struct.lruhash*, %struct.lruhash** %2, align 8
  %19 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @fptr_whitelist_hash_markdelfunc(i32 %20)
  %22 = call i32 @fptr_ok(i32 %21)
  %23 = load %struct.lruhash*, %struct.lruhash** %2, align 8
  %24 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %23, i32 0, i32 1
  %25 = call i32 @lock_quick_lock(i32* %24)
  store i64 0, i64* %3, align 8
  br label %26

26:                                               ; preds = %40, %7
  %27 = load i64, i64* %3, align 8
  %28 = load %struct.lruhash*, %struct.lruhash** %2, align 8
  %29 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %27, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %26
  %33 = load %struct.lruhash*, %struct.lruhash** %2, align 8
  %34 = load %struct.lruhash*, %struct.lruhash** %2, align 8
  %35 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %34, i32 0, i32 6
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* %3, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = call i32 @bin_clear(%struct.lruhash* %33, i32* %38)
  br label %40

40:                                               ; preds = %32
  %41 = load i64, i64* %3, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %3, align 8
  br label %26

43:                                               ; preds = %26
  %44 = load %struct.lruhash*, %struct.lruhash** %2, align 8
  %45 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %44, i32 0, i32 5
  store i32* null, i32** %45, align 8
  %46 = load %struct.lruhash*, %struct.lruhash** %2, align 8
  %47 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %46, i32 0, i32 4
  store i32* null, i32** %47, align 8
  %48 = load %struct.lruhash*, %struct.lruhash** %2, align 8
  %49 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %48, i32 0, i32 3
  store i64 0, i64* %49, align 8
  %50 = load %struct.lruhash*, %struct.lruhash** %2, align 8
  %51 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load %struct.lruhash*, %struct.lruhash** %2, align 8
  %53 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %52, i32 0, i32 1
  %54 = call i32 @lock_quick_unlock(i32* %53)
  br label %55

55:                                               ; preds = %43, %6
  ret void
}

declare dso_local i32 @fptr_ok(i32) #1

declare dso_local i32 @fptr_whitelist_hash_delkeyfunc(i32) #1

declare dso_local i32 @fptr_whitelist_hash_deldatafunc(i32) #1

declare dso_local i32 @fptr_whitelist_hash_markdelfunc(i32) #1

declare dso_local i32 @lock_quick_lock(i32*) #1

declare dso_local i32 @bin_clear(%struct.lruhash*, i32*) #1

declare dso_local i32 @lock_quick_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
