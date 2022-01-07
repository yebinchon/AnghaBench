; ModuleID = '/home/carl/AnghaBench/freebsd/stand/usb/tools/extr_sysinit.c_compare_R.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/usb/tools/extr_sysinit.c_compare_R.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysinit_data = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @compare_R to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_R(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sysinit_data**, align 8
  %7 = alloca %struct.sysinit_data**, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.sysinit_data**
  store %struct.sysinit_data** %9, %struct.sysinit_data*** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.sysinit_data**
  store %struct.sysinit_data** %11, %struct.sysinit_data*** %7, align 8
  %12 = load %struct.sysinit_data**, %struct.sysinit_data*** %6, align 8
  %13 = load %struct.sysinit_data*, %struct.sysinit_data** %12, align 8
  %14 = getelementptr inbounds %struct.sysinit_data, %struct.sysinit_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.sysinit_data**, %struct.sysinit_data*** %7, align 8
  %17 = load %struct.sysinit_data*, %struct.sysinit_data** %16, align 8
  %18 = getelementptr inbounds %struct.sysinit_data, %struct.sysinit_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %15, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %56

22:                                               ; preds = %2
  %23 = load %struct.sysinit_data**, %struct.sysinit_data*** %6, align 8
  %24 = load %struct.sysinit_data*, %struct.sysinit_data** %23, align 8
  %25 = getelementptr inbounds %struct.sysinit_data, %struct.sysinit_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.sysinit_data**, %struct.sysinit_data*** %7, align 8
  %28 = load %struct.sysinit_data*, %struct.sysinit_data** %27, align 8
  %29 = getelementptr inbounds %struct.sysinit_data, %struct.sysinit_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %26, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %56

33:                                               ; preds = %22
  %34 = load %struct.sysinit_data**, %struct.sysinit_data*** %6, align 8
  %35 = load %struct.sysinit_data*, %struct.sysinit_data** %34, align 8
  %36 = getelementptr inbounds %struct.sysinit_data, %struct.sysinit_data* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.sysinit_data**, %struct.sysinit_data*** %7, align 8
  %39 = load %struct.sysinit_data*, %struct.sysinit_data** %38, align 8
  %40 = getelementptr inbounds %struct.sysinit_data, %struct.sysinit_data* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %37, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  store i32 -1, i32* %3, align 4
  br label %56

44:                                               ; preds = %33
  %45 = load %struct.sysinit_data**, %struct.sysinit_data*** %6, align 8
  %46 = load %struct.sysinit_data*, %struct.sysinit_data** %45, align 8
  %47 = getelementptr inbounds %struct.sysinit_data, %struct.sysinit_data* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.sysinit_data**, %struct.sysinit_data*** %7, align 8
  %50 = load %struct.sysinit_data*, %struct.sysinit_data** %49, align 8
  %51 = getelementptr inbounds %struct.sysinit_data, %struct.sysinit_data* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %48, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  store i32 1, i32* %3, align 4
  br label %56

55:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %54, %43, %32, %21
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
