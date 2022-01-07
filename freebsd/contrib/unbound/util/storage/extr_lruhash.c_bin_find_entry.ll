; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_lruhash.c_bin_find_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_lruhash.c_bin_find_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lruhash_entry = type { i64, %struct.lruhash_entry*, i32 }
%struct.lruhash = type { i64 (i32, i8*)* }
%struct.lruhash_bin = type { %struct.lruhash_entry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.lruhash_entry* @bin_find_entry(%struct.lruhash* %0, %struct.lruhash_bin* %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.lruhash_entry*, align 8
  %6 = alloca %struct.lruhash*, align 8
  %7 = alloca %struct.lruhash_bin*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.lruhash_entry*, align 8
  store %struct.lruhash* %0, %struct.lruhash** %6, align 8
  store %struct.lruhash_bin* %1, %struct.lruhash_bin** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.lruhash_bin*, %struct.lruhash_bin** %7, align 8
  %12 = getelementptr inbounds %struct.lruhash_bin, %struct.lruhash_bin* %11, i32 0, i32 0
  %13 = load %struct.lruhash_entry*, %struct.lruhash_entry** %12, align 8
  store %struct.lruhash_entry* %13, %struct.lruhash_entry** %10, align 8
  br label %14

14:                                               ; preds = %35, %4
  %15 = load %struct.lruhash_entry*, %struct.lruhash_entry** %10, align 8
  %16 = icmp ne %struct.lruhash_entry* %15, null
  br i1 %16, label %17, label %39

17:                                               ; preds = %14
  %18 = load %struct.lruhash_entry*, %struct.lruhash_entry** %10, align 8
  %19 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %8, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %17
  %24 = load %struct.lruhash*, %struct.lruhash** %6, align 8
  %25 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %24, i32 0, i32 0
  %26 = load i64 (i32, i8*)*, i64 (i32, i8*)** %25, align 8
  %27 = load %struct.lruhash_entry*, %struct.lruhash_entry** %10, align 8
  %28 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = call i64 %26(i32 %29, i8* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load %struct.lruhash_entry*, %struct.lruhash_entry** %10, align 8
  store %struct.lruhash_entry* %34, %struct.lruhash_entry** %5, align 8
  br label %40

35:                                               ; preds = %23, %17
  %36 = load %struct.lruhash_entry*, %struct.lruhash_entry** %10, align 8
  %37 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %36, i32 0, i32 1
  %38 = load %struct.lruhash_entry*, %struct.lruhash_entry** %37, align 8
  store %struct.lruhash_entry* %38, %struct.lruhash_entry** %10, align 8
  br label %14

39:                                               ; preds = %14
  store %struct.lruhash_entry* null, %struct.lruhash_entry** %5, align 8
  br label %40

40:                                               ; preds = %39, %33
  %41 = load %struct.lruhash_entry*, %struct.lruhash_entry** %5, align 8
  ret %struct.lruhash_entry* %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
