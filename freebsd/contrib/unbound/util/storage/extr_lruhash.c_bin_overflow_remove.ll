; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_lruhash.c_bin_overflow_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_lruhash.c_bin_overflow_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lruhash_bin = type { %struct.lruhash_entry* }
%struct.lruhash_entry = type { %struct.lruhash_entry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bin_overflow_remove(%struct.lruhash_bin* %0, %struct.lruhash_entry* %1) #0 {
  %3 = alloca %struct.lruhash_bin*, align 8
  %4 = alloca %struct.lruhash_entry*, align 8
  %5 = alloca %struct.lruhash_entry*, align 8
  %6 = alloca %struct.lruhash_entry**, align 8
  store %struct.lruhash_bin* %0, %struct.lruhash_bin** %3, align 8
  store %struct.lruhash_entry* %1, %struct.lruhash_entry** %4, align 8
  %7 = load %struct.lruhash_bin*, %struct.lruhash_bin** %3, align 8
  %8 = getelementptr inbounds %struct.lruhash_bin, %struct.lruhash_bin* %7, i32 0, i32 0
  %9 = load %struct.lruhash_entry*, %struct.lruhash_entry** %8, align 8
  store %struct.lruhash_entry* %9, %struct.lruhash_entry** %5, align 8
  %10 = load %struct.lruhash_bin*, %struct.lruhash_bin** %3, align 8
  %11 = getelementptr inbounds %struct.lruhash_bin, %struct.lruhash_bin* %10, i32 0, i32 0
  store %struct.lruhash_entry** %11, %struct.lruhash_entry*** %6, align 8
  br label %12

12:                                               ; preds = %24, %2
  %13 = load %struct.lruhash_entry*, %struct.lruhash_entry** %5, align 8
  %14 = icmp ne %struct.lruhash_entry* %13, null
  br i1 %14, label %15, label %30

15:                                               ; preds = %12
  %16 = load %struct.lruhash_entry*, %struct.lruhash_entry** %5, align 8
  %17 = load %struct.lruhash_entry*, %struct.lruhash_entry** %4, align 8
  %18 = icmp eq %struct.lruhash_entry* %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load %struct.lruhash_entry*, %struct.lruhash_entry** %5, align 8
  %21 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %20, i32 0, i32 0
  %22 = load %struct.lruhash_entry*, %struct.lruhash_entry** %21, align 8
  %23 = load %struct.lruhash_entry**, %struct.lruhash_entry*** %6, align 8
  store %struct.lruhash_entry* %22, %struct.lruhash_entry** %23, align 8
  br label %30

24:                                               ; preds = %15
  %25 = load %struct.lruhash_entry*, %struct.lruhash_entry** %5, align 8
  %26 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %25, i32 0, i32 0
  store %struct.lruhash_entry** %26, %struct.lruhash_entry*** %6, align 8
  %27 = load %struct.lruhash_entry*, %struct.lruhash_entry** %5, align 8
  %28 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %27, i32 0, i32 0
  %29 = load %struct.lruhash_entry*, %struct.lruhash_entry** %28, align 8
  store %struct.lruhash_entry* %29, %struct.lruhash_entry** %5, align 8
  br label %12

30:                                               ; preds = %19, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
