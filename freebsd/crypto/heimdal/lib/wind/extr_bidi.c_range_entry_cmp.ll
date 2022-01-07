; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/wind/extr_bidi.c_range_entry_cmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/wind/extr_bidi.c_range_entry_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.range_entry = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @range_entry_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @range_entry_cmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.range_entry*, align 8
  %7 = alloca %struct.range_entry*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.range_entry*
  store %struct.range_entry* %9, %struct.range_entry** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.range_entry*
  store %struct.range_entry* %11, %struct.range_entry** %7, align 8
  %12 = load %struct.range_entry*, %struct.range_entry** %6, align 8
  %13 = getelementptr inbounds %struct.range_entry, %struct.range_entry* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.range_entry*, %struct.range_entry** %7, align 8
  %16 = getelementptr inbounds %struct.range_entry, %struct.range_entry* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sge i64 %14, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %2
  %20 = load %struct.range_entry*, %struct.range_entry** %6, align 8
  %21 = getelementptr inbounds %struct.range_entry, %struct.range_entry* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.range_entry*, %struct.range_entry** %7, align 8
  %24 = getelementptr inbounds %struct.range_entry, %struct.range_entry* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.range_entry*, %struct.range_entry** %7, align 8
  %27 = getelementptr inbounds %struct.range_entry, %struct.range_entry* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %25, %28
  %30 = icmp slt i64 %22, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %41

32:                                               ; preds = %19, %2
  %33 = load %struct.range_entry*, %struct.range_entry** %6, align 8
  %34 = getelementptr inbounds %struct.range_entry, %struct.range_entry* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.range_entry*, %struct.range_entry** %7, align 8
  %37 = getelementptr inbounds %struct.range_entry, %struct.range_entry* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %35, %38
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %32, %31
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
