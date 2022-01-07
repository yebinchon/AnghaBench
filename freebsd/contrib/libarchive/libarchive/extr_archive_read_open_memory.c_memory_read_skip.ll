; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_open_memory.c_memory_read_skip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_open_memory.c_memory_read_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.read_memory_data = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.archive*, i8*, i64)* @memory_read_skip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @memory_read_skip(%struct.archive* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.archive*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.read_memory_data*, align 8
  store %struct.archive* %0, %struct.archive** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.read_memory_data*
  store %struct.read_memory_data* %9, %struct.read_memory_data** %7, align 8
  %10 = load %struct.archive*, %struct.archive** %4, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.read_memory_data*, %struct.read_memory_data** %7, align 8
  %13 = getelementptr inbounds %struct.read_memory_data, %struct.read_memory_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.read_memory_data*, %struct.read_memory_data** %7, align 8
  %16 = getelementptr inbounds %struct.read_memory_data, %struct.read_memory_data* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %14, %17
  %19 = icmp sgt i64 %11, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %3
  %21 = load %struct.read_memory_data*, %struct.read_memory_data** %7, align 8
  %22 = getelementptr inbounds %struct.read_memory_data, %struct.read_memory_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.read_memory_data*, %struct.read_memory_data** %7, align 8
  %25 = getelementptr inbounds %struct.read_memory_data, %struct.read_memory_data* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %23, %26
  store i64 %27, i64* %6, align 8
  br label %28

28:                                               ; preds = %20, %3
  %29 = load %struct.read_memory_data*, %struct.read_memory_data** %7, align 8
  %30 = getelementptr inbounds %struct.read_memory_data, %struct.read_memory_data* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = sdiv i64 %32, %31
  store i64 %33, i64* %6, align 8
  %34 = load %struct.read_memory_data*, %struct.read_memory_data** %7, align 8
  %35 = getelementptr inbounds %struct.read_memory_data, %struct.read_memory_data* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = mul nsw i64 %37, %36
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.read_memory_data*, %struct.read_memory_data** %7, align 8
  %41 = getelementptr inbounds %struct.read_memory_data, %struct.read_memory_data* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, %39
  store i64 %43, i64* %41, align 8
  %44 = load i64, i64* %6, align 8
  ret i64 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
