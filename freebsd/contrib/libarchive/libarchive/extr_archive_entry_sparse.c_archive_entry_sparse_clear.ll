; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry_sparse.c_archive_entry_sparse_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry_sparse.c_archive_entry_sparse_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32*, %struct.ae_sparse* }
%struct.ae_sparse = type { %struct.ae_sparse* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @archive_entry_sparse_clear(%struct.archive_entry* %0) #0 {
  %2 = alloca %struct.archive_entry*, align 8
  %3 = alloca %struct.ae_sparse*, align 8
  store %struct.archive_entry* %0, %struct.archive_entry** %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %6 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %5, i32 0, i32 1
  %7 = load %struct.ae_sparse*, %struct.ae_sparse** %6, align 8
  %8 = icmp ne %struct.ae_sparse* %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %4
  %10 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %11 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %10, i32 0, i32 1
  %12 = load %struct.ae_sparse*, %struct.ae_sparse** %11, align 8
  %13 = getelementptr inbounds %struct.ae_sparse, %struct.ae_sparse* %12, i32 0, i32 0
  %14 = load %struct.ae_sparse*, %struct.ae_sparse** %13, align 8
  store %struct.ae_sparse* %14, %struct.ae_sparse** %3, align 8
  %15 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %16 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %15, i32 0, i32 1
  %17 = load %struct.ae_sparse*, %struct.ae_sparse** %16, align 8
  %18 = call i32 @free(%struct.ae_sparse* %17)
  %19 = load %struct.ae_sparse*, %struct.ae_sparse** %3, align 8
  %20 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %21 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %20, i32 0, i32 1
  store %struct.ae_sparse* %19, %struct.ae_sparse** %21, align 8
  br label %4

22:                                               ; preds = %4
  %23 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %24 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  ret void
}

declare dso_local i32 @free(%struct.ae_sparse*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
