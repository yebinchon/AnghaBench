; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_tar_large.c_memory_read_skip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_tar_large.c_memory_read_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.memdata = type { i64, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.archive*, i8*, i64)* @memory_read_skip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @memory_read_skip(%struct.archive* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.archive*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.memdata*, align 8
  store %struct.archive* %0, %struct.archive** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.memdata*
  store %struct.memdata* %10, %struct.memdata** %8, align 8
  %11 = load %struct.archive*, %struct.archive** %5, align 8
  %12 = load %struct.memdata*, %struct.memdata** %8, align 8
  %13 = getelementptr inbounds %struct.memdata, %struct.memdata* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.memdata*, %struct.memdata** %8, align 8
  %18 = getelementptr inbounds %struct.memdata, %struct.memdata* %17, i32 0, i32 1
  store i32* null, i32** %18, align 8
  store i64 0, i64* %4, align 8
  br label %43

19:                                               ; preds = %3
  %20 = load %struct.memdata*, %struct.memdata** %8, align 8
  %21 = getelementptr inbounds %struct.memdata, %struct.memdata* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %19
  %25 = load %struct.memdata*, %struct.memdata** %8, align 8
  %26 = getelementptr inbounds %struct.memdata, %struct.memdata* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.memdata*, %struct.memdata** %8, align 8
  %32 = getelementptr inbounds %struct.memdata, %struct.memdata* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %7, align 8
  br label %34

34:                                               ; preds = %30, %24
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.memdata*, %struct.memdata** %8, align 8
  %37 = getelementptr inbounds %struct.memdata, %struct.memdata* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %38, %35
  store i64 %39, i64* %37, align 8
  br label %41

40:                                               ; preds = %19
  store i64 0, i64* %7, align 8
  br label %41

41:                                               ; preds = %40, %34
  %42 = load i64, i64* %7, align 8
  store i64 %42, i64* %4, align 8
  br label %43

43:                                               ; preds = %41, %16
  %44 = load i64, i64* %4, align 8
  ret i64 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
