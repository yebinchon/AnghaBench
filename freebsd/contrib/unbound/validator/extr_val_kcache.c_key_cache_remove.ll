; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_kcache.c_key_cache_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_kcache.c_key_cache_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_cache = type { i32 }
%struct.key_entry_key = type { i64, %struct.TYPE_2__, i32, i32* }
%struct.TYPE_2__ = type { i32, %struct.key_entry_key* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @key_cache_remove(%struct.key_cache* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.key_cache*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.key_entry_key, align 8
  store %struct.key_cache* %0, %struct.key_cache** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = getelementptr inbounds %struct.key_entry_key, %struct.key_entry_key* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store %struct.key_entry_key* %9, %struct.key_entry_key** %11, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = getelementptr inbounds %struct.key_entry_key, %struct.key_entry_key* %9, i32 0, i32 3
  store i32* %12, i32** %13, align 8
  %14 = load i64, i64* %7, align 8
  %15 = getelementptr inbounds %struct.key_entry_key, %struct.key_entry_key* %9, i32 0, i32 0
  store i64 %14, i64* %15, align 8
  %16 = load i32, i32* %8, align 4
  %17 = getelementptr inbounds %struct.key_entry_key, %struct.key_entry_key* %9, i32 0, i32 2
  store i32 %16, i32* %17, align 8
  %18 = call i32 @key_entry_hash(%struct.key_entry_key* %9)
  %19 = load %struct.key_cache*, %struct.key_cache** %5, align 8
  %20 = getelementptr inbounds %struct.key_cache, %struct.key_cache* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.key_entry_key, %struct.key_entry_key* %9, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @slabhash_remove(i32 %21, i32 %24, %struct.key_entry_key* %9)
  ret void
}

declare dso_local i32 @key_entry_hash(%struct.key_entry_key*) #1

declare dso_local i32 @slabhash_remove(i32, i32, %struct.key_entry_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
