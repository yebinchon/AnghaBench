; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_pax.c_archive_write_pax_finish_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_pax.c_archive_write_pax_finish_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i64 }
%struct.pax = type { i64, i64, %struct.sparse_block* }
%struct.sparse_block = type { i64, %struct.sparse_block*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*)* @archive_write_pax_finish_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_write_pax_finish_entry(%struct.archive_write* %0) #0 {
  %2 = alloca %struct.archive_write*, align 8
  %3 = alloca %struct.pax*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sparse_block*, align 8
  store %struct.archive_write* %0, %struct.archive_write** %2, align 8
  %7 = load %struct.archive_write*, %struct.archive_write** %2, align 8
  %8 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.pax*
  store %struct.pax* %10, %struct.pax** %3, align 8
  %11 = load %struct.pax*, %struct.pax** %3, align 8
  %12 = getelementptr inbounds %struct.pax, %struct.pax* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %51

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %37, %16
  %18 = load %struct.pax*, %struct.pax** %3, align 8
  %19 = getelementptr inbounds %struct.pax, %struct.pax* %18, i32 0, i32 2
  %20 = load %struct.sparse_block*, %struct.sparse_block** %19, align 8
  %21 = icmp ne %struct.sparse_block* %20, null
  br i1 %21, label %22, label %50

22:                                               ; preds = %17
  %23 = load %struct.pax*, %struct.pax** %3, align 8
  %24 = getelementptr inbounds %struct.pax, %struct.pax* %23, i32 0, i32 2
  %25 = load %struct.sparse_block*, %struct.sparse_block** %24, align 8
  %26 = getelementptr inbounds %struct.sparse_block, %struct.sparse_block* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %22
  %30 = load %struct.pax*, %struct.pax** %3, align 8
  %31 = getelementptr inbounds %struct.pax, %struct.pax* %30, i32 0, i32 2
  %32 = load %struct.sparse_block*, %struct.sparse_block** %31, align 8
  %33 = getelementptr inbounds %struct.sparse_block, %struct.sparse_block* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %4, align 8
  %36 = add nsw i64 %35, %34
  store i64 %36, i64* %4, align 8
  br label %37

37:                                               ; preds = %29, %22
  %38 = load %struct.pax*, %struct.pax** %3, align 8
  %39 = getelementptr inbounds %struct.pax, %struct.pax* %38, i32 0, i32 2
  %40 = load %struct.sparse_block*, %struct.sparse_block** %39, align 8
  %41 = getelementptr inbounds %struct.sparse_block, %struct.sparse_block* %40, i32 0, i32 1
  %42 = load %struct.sparse_block*, %struct.sparse_block** %41, align 8
  store %struct.sparse_block* %42, %struct.sparse_block** %6, align 8
  %43 = load %struct.pax*, %struct.pax** %3, align 8
  %44 = getelementptr inbounds %struct.pax, %struct.pax* %43, i32 0, i32 2
  %45 = load %struct.sparse_block*, %struct.sparse_block** %44, align 8
  %46 = call i32 @free(%struct.sparse_block* %45)
  %47 = load %struct.sparse_block*, %struct.sparse_block** %6, align 8
  %48 = load %struct.pax*, %struct.pax** %3, align 8
  %49 = getelementptr inbounds %struct.pax, %struct.pax* %48, i32 0, i32 2
  store %struct.sparse_block* %47, %struct.sparse_block** %49, align 8
  br label %17

50:                                               ; preds = %17
  br label %51

51:                                               ; preds = %50, %1
  %52 = load %struct.archive_write*, %struct.archive_write** %2, align 8
  %53 = load i64, i64* %4, align 8
  %54 = load %struct.pax*, %struct.pax** %3, align 8
  %55 = getelementptr inbounds %struct.pax, %struct.pax* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  %58 = call i32 @__archive_write_nulls(%struct.archive_write* %52, i64 %57)
  store i32 %58, i32* %5, align 4
  %59 = load %struct.pax*, %struct.pax** %3, align 8
  %60 = getelementptr inbounds %struct.pax, %struct.pax* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  %61 = load %struct.pax*, %struct.pax** %3, align 8
  %62 = getelementptr inbounds %struct.pax, %struct.pax* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @free(%struct.sparse_block*) #1

declare dso_local i32 @__archive_write_nulls(%struct.archive_write*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
