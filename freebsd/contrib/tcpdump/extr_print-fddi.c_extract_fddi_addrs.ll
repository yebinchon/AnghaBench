; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-fddi.c_extract_fddi_addrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-fddi.c_extract_fddi_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fddi_header = type { i64*, i64* }

@fddi_bitswap = common dso_local global i64 0, align 8
@fddi_bit_swap = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fddi_header*, i8*, i8*)* @extract_fddi_addrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extract_fddi_addrs(%struct.fddi_header* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.fddi_header*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.fddi_header* %0, %struct.fddi_header** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i64, i64* @fddi_bitswap, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %55

10:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %29, %10
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 6
  br i1 %13, label %14, label %32

14:                                               ; preds = %11
  %15 = load i8*, i8** @fddi_bit_swap, align 8
  %16 = load %struct.fddi_header*, %struct.fddi_header** %4, align 8
  %17 = getelementptr inbounds %struct.fddi_header, %struct.fddi_header* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i8, i8* %15, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  store i8 %24, i8* %28, align 1
  br label %29

29:                                               ; preds = %14
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %11

32:                                               ; preds = %11
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %51, %32
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 6
  br i1 %35, label %36, label %54

36:                                               ; preds = %33
  %37 = load i8*, i8** @fddi_bit_swap, align 8
  %38 = load %struct.fddi_header*, %struct.fddi_header** %4, align 8
  %39 = getelementptr inbounds %struct.fddi_header, %struct.fddi_header* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i8, i8* %37, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  store i8 %46, i8* %50, align 1
  br label %51

51:                                               ; preds = %36
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %33

54:                                               ; preds = %33
  br label %68

55:                                               ; preds = %3
  %56 = load i8*, i8** %6, align 8
  %57 = load %struct.fddi_header*, %struct.fddi_header** %4, align 8
  %58 = getelementptr inbounds %struct.fddi_header, %struct.fddi_header* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = bitcast i64* %59 to i8*
  %61 = call i32 @memcpy(i8* %56, i8* %60, i32 6)
  %62 = load i8*, i8** %5, align 8
  %63 = load %struct.fddi_header*, %struct.fddi_header** %4, align 8
  %64 = getelementptr inbounds %struct.fddi_header, %struct.fddi_header* %63, i32 0, i32 1
  %65 = load i64*, i64** %64, align 8
  %66 = bitcast i64* %65 to i8*
  %67 = call i32 @memcpy(i8* %62, i8* %66, i32 6)
  br label %68

68:                                               ; preds = %55, %54
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
