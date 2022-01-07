; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-rx.c_rx_cache_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-rx.c_rx_cache_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rx_cache_entry = type { i32, i8*, i8*, i32, i32, i8* }
%struct.TYPE_3__ = type { i32* }
%struct.ip = type { i32, i32 }
%struct.rx_header = type { i32, i32 }

@rx_cache = common dso_local global %struct.rx_cache_entry* null, align 8
@rx_cache_next = common dso_local global i64 0, align 8
@RX_CACHE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, %struct.ip*, i32)* @rx_cache_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rx_cache_insert(%struct.TYPE_3__* %0, i32* %1, %struct.ip* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rx_cache_entry*, align 8
  %10 = alloca %struct.rx_header*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.ip* %2, %struct.ip** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = bitcast i32* %11 to %struct.rx_header*
  store %struct.rx_header* %12, %struct.rx_header** %10, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = ptrtoint i32* %15 to i64
  %18 = ptrtoint i32* %16 to i64
  %19 = sub i64 %17, %18
  %20 = sdiv exact i64 %19, 4
  %21 = add nsw i64 %20, 1
  %22 = icmp sle i64 %21, 12
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  br label %62

24:                                               ; preds = %4
  %25 = load %struct.rx_cache_entry*, %struct.rx_cache_entry** @rx_cache, align 8
  %26 = load i64, i64* @rx_cache_next, align 8
  %27 = getelementptr inbounds %struct.rx_cache_entry, %struct.rx_cache_entry* %25, i64 %26
  store %struct.rx_cache_entry* %27, %struct.rx_cache_entry** %9, align 8
  %28 = load i64, i64* @rx_cache_next, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* @rx_cache_next, align 8
  %30 = load i64, i64* @RX_CACHE_SIZE, align 8
  %31 = icmp uge i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i64 0, i64* @rx_cache_next, align 8
  br label %33

33:                                               ; preds = %32, %24
  %34 = load %struct.rx_header*, %struct.rx_header** %10, align 8
  %35 = getelementptr inbounds %struct.rx_header, %struct.rx_header* %34, i32 0, i32 1
  %36 = call i8* @EXTRACT_32BITS(i32* %35)
  %37 = load %struct.rx_cache_entry*, %struct.rx_cache_entry** %9, align 8
  %38 = getelementptr inbounds %struct.rx_cache_entry, %struct.rx_cache_entry* %37, i32 0, i32 5
  store i8* %36, i8** %38, align 8
  %39 = load %struct.rx_cache_entry*, %struct.rx_cache_entry** %9, align 8
  %40 = getelementptr inbounds %struct.rx_cache_entry, %struct.rx_cache_entry* %39, i32 0, i32 4
  %41 = load %struct.ip*, %struct.ip** %7, align 8
  %42 = getelementptr inbounds %struct.ip, %struct.ip* %41, i32 0, i32 1
  %43 = call i32 @UNALIGNED_MEMCPY(i32* %40, i32* %42, i32 4)
  %44 = load %struct.rx_cache_entry*, %struct.rx_cache_entry** %9, align 8
  %45 = getelementptr inbounds %struct.rx_cache_entry, %struct.rx_cache_entry* %44, i32 0, i32 3
  %46 = load %struct.ip*, %struct.ip** %7, align 8
  %47 = getelementptr inbounds %struct.ip, %struct.ip* %46, i32 0, i32 0
  %48 = call i32 @UNALIGNED_MEMCPY(i32* %45, i32* %47, i32 4)
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.rx_cache_entry*, %struct.rx_cache_entry** %9, align 8
  %51 = getelementptr inbounds %struct.rx_cache_entry, %struct.rx_cache_entry* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.rx_header*, %struct.rx_header** %10, align 8
  %53 = getelementptr inbounds %struct.rx_header, %struct.rx_header* %52, i32 0, i32 0
  %54 = call i8* @EXTRACT_32BITS(i32* %53)
  %55 = load %struct.rx_cache_entry*, %struct.rx_cache_entry** %9, align 8
  %56 = getelementptr inbounds %struct.rx_cache_entry, %struct.rx_cache_entry* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 8
  %59 = call i8* @EXTRACT_32BITS(i32* %58)
  %60 = load %struct.rx_cache_entry*, %struct.rx_cache_entry** %9, align 8
  %61 = getelementptr inbounds %struct.rx_cache_entry, %struct.rx_cache_entry* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  br label %62

62:                                               ; preds = %33, %23
  ret void
}

declare dso_local i8* @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @UNALIGNED_MEMCPY(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
