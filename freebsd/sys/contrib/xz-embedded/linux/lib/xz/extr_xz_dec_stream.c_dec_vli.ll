; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/xz-embedded/linux/lib/xz/extr_xz_dec_stream.c_dec_vli.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/xz-embedded/linux/lib/xz/extr_xz_dec_stream.c_dec_vli.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xz_dec = type { i32, i32 }

@XZ_DATA_ERROR = common dso_local global i32 0, align 4
@XZ_STREAM_END = common dso_local global i32 0, align 4
@VLI_BYTES_MAX = common dso_local global i32 0, align 4
@XZ_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xz_dec*, i32*, i64*, i64)* @dec_vli to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dec_vli(%struct.xz_dec* %0, i32* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xz_dec*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.xz_dec* %0, %struct.xz_dec** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.xz_dec*, %struct.xz_dec** %6, align 8
  %12 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load %struct.xz_dec*, %struct.xz_dec** %6, align 8
  %17 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %16, i32 0, i32 1
  store i32 0, i32* %17, align 4
  br label %18

18:                                               ; preds = %15, %4
  br label %19

19:                                               ; preds = %73, %18
  %20 = load i64*, i64** %8, align 8
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %74

24:                                               ; preds = %19
  %25 = load i32*, i32** %7, align 8
  %26 = load i64*, i64** %8, align 8
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %10, align 4
  %30 = load i64*, i64** %8, align 8
  %31 = load i64, i64* %30, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %30, align 8
  %33 = load i32, i32* %10, align 4
  %34 = and i32 %33, 127
  %35 = load %struct.xz_dec*, %struct.xz_dec** %6, align 8
  %36 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %34, %37
  %39 = load %struct.xz_dec*, %struct.xz_dec** %6, align 8
  %40 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* %10, align 4
  %44 = and i32 %43, 128
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %24
  %47 = load i32, i32* %10, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load %struct.xz_dec*, %struct.xz_dec** %6, align 8
  %51 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @XZ_DATA_ERROR, align 4
  store i32 %55, i32* %5, align 4
  br label %76

56:                                               ; preds = %49, %46
  %57 = load %struct.xz_dec*, %struct.xz_dec** %6, align 8
  %58 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %57, i32 0, i32 0
  store i32 0, i32* %58, align 4
  %59 = load i32, i32* @XZ_STREAM_END, align 4
  store i32 %59, i32* %5, align 4
  br label %76

60:                                               ; preds = %24
  %61 = load %struct.xz_dec*, %struct.xz_dec** %6, align 8
  %62 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 7
  store i32 %64, i32* %62, align 4
  %65 = load %struct.xz_dec*, %struct.xz_dec** %6, align 8
  %66 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @VLI_BYTES_MAX, align 4
  %69 = mul nsw i32 7, %68
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %60
  %72 = load i32, i32* @XZ_DATA_ERROR, align 4
  store i32 %72, i32* %5, align 4
  br label %76

73:                                               ; preds = %60
  br label %19

74:                                               ; preds = %19
  %75 = load i32, i32* @XZ_OK, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %74, %71, %56, %54
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
