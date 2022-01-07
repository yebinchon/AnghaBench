; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-rx.c_rx_cache_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-rx.c_rx_cache_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rx_cache_entry = type { i64, i64, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.rx_header = type { i32, i32 }
%struct.ip = type { i32, i32 }

@rx_cache_hint = common dso_local global i32 0, align 4
@rx_cache = common dso_local global %struct.rx_cache_entry* null, align 8
@RX_CACHE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rx_header*, %struct.ip*, i32, i32*)* @rx_cache_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx_cache_find(%struct.rx_header* %0, %struct.ip* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rx_header*, align 8
  %7 = alloca %struct.ip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rx_cache_entry*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.rx_header* %0, %struct.rx_header** %6, align 8
  store %struct.ip* %1, %struct.ip** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load %struct.ip*, %struct.ip** %7, align 8
  %15 = getelementptr inbounds %struct.ip, %struct.ip* %14, i32 0, i32 1
  %16 = call i32 @UNALIGNED_MEMCPY(i64* %12, i32* %15, i32 8)
  %17 = load %struct.ip*, %struct.ip** %7, align 8
  %18 = getelementptr inbounds %struct.ip, %struct.ip* %17, i32 0, i32 0
  %19 = call i32 @UNALIGNED_MEMCPY(i64* %13, i32* %18, i32 8)
  %20 = load i32, i32* @rx_cache_hint, align 4
  store i32 %20, i32* %10, align 4
  br label %21

21:                                               ; preds = %74, %4
  %22 = load %struct.rx_cache_entry*, %struct.rx_cache_entry** @rx_cache, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.rx_cache_entry, %struct.rx_cache_entry* %22, i64 %24
  store %struct.rx_cache_entry* %25, %struct.rx_cache_entry** %11, align 8
  %26 = load %struct.rx_cache_entry*, %struct.rx_cache_entry** %11, align 8
  %27 = getelementptr inbounds %struct.rx_cache_entry, %struct.rx_cache_entry* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.rx_header*, %struct.rx_header** %6, align 8
  %30 = getelementptr inbounds %struct.rx_header, %struct.rx_header* %29, i32 0, i32 1
  %31 = call i64 @EXTRACT_32BITS(i32* %30)
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %67

33:                                               ; preds = %21
  %34 = load %struct.rx_cache_entry*, %struct.rx_cache_entry** %11, align 8
  %35 = getelementptr inbounds %struct.rx_cache_entry, %struct.rx_cache_entry* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %12, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %67

40:                                               ; preds = %33
  %41 = load %struct.rx_cache_entry*, %struct.rx_cache_entry** %11, align 8
  %42 = getelementptr inbounds %struct.rx_cache_entry, %struct.rx_cache_entry* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %13, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %67

47:                                               ; preds = %40
  %48 = load %struct.rx_cache_entry*, %struct.rx_cache_entry** %11, align 8
  %49 = getelementptr inbounds %struct.rx_cache_entry, %struct.rx_cache_entry* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.rx_header*, %struct.rx_header** %6, align 8
  %52 = getelementptr inbounds %struct.rx_header, %struct.rx_header* %51, i32 0, i32 0
  %53 = call i64 @EXTRACT_32BITS(i32* %52)
  %54 = icmp eq i64 %50, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %47
  %56 = load %struct.rx_cache_entry*, %struct.rx_cache_entry** %11, align 8
  %57 = getelementptr inbounds %struct.rx_cache_entry, %struct.rx_cache_entry* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* @rx_cache_hint, align 4
  %63 = load %struct.rx_cache_entry*, %struct.rx_cache_entry** %11, align 8
  %64 = getelementptr inbounds %struct.rx_cache_entry, %struct.rx_cache_entry* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %9, align 8
  store i32 %65, i32* %66, align 4
  store i32 1, i32* %5, align 4
  br label %79

67:                                               ; preds = %55, %47, %40, %33, %21
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* @RX_CACHE_SIZE, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i32 0, i32* %10, align 4
  br label %73

73:                                               ; preds = %72, %67
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @rx_cache_hint, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %21, label %78

78:                                               ; preds = %74
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %78, %61
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @UNALIGNED_MEMCPY(i64*, i32*, i32) #1

declare dso_local i64 @EXTRACT_32BITS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
