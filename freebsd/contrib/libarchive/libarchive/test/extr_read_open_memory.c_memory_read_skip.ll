; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_read_open_memory.c_memory_read_skip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_read_open_memory.c_memory_read_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.read_memory_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*, i8*, i32)* @memory_read_skip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memory_read_skip(%struct.archive* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.archive*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.read_memory_data*, align 8
  store %struct.archive* %0, %struct.archive** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.read_memory_data*
  store %struct.read_memory_data* %9, %struct.read_memory_data** %7, align 8
  %10 = load %struct.archive*, %struct.archive** %4, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = load %struct.read_memory_data*, %struct.read_memory_data** %7, align 8
  %14 = getelementptr inbounds %struct.read_memory_data, %struct.read_memory_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.read_memory_data*, %struct.read_memory_data** %7, align 8
  %17 = getelementptr inbounds %struct.read_memory_data, %struct.read_memory_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %15, %18
  %20 = sext i32 %19 to i64
  %21 = icmp sgt i64 %12, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %3
  %23 = load %struct.read_memory_data*, %struct.read_memory_data** %7, align 8
  %24 = getelementptr inbounds %struct.read_memory_data, %struct.read_memory_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.read_memory_data*, %struct.read_memory_data** %7, align 8
  %27 = getelementptr inbounds %struct.read_memory_data, %struct.read_memory_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %25, %28
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %22, %3
  %31 = load i32, i32* %6, align 4
  %32 = icmp sgt i32 %31, 71
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 71, i32* %6, align 4
  br label %34

34:                                               ; preds = %33, %30
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.read_memory_data*, %struct.read_memory_data** %7, align 8
  %37 = getelementptr inbounds %struct.read_memory_data, %struct.read_memory_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
