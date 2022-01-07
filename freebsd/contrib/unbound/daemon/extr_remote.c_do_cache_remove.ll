; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_do_cache_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_do_cache_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.query_info = type { i64, i32*, i64, i64, i32* }

@LDNS_RR_TYPE_SOA = common dso_local global i64 0, align 8
@PACKED_RRSET_SOA_NEG = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_AAAA = common dso_local global i64 0, align 8
@BIT_CD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.worker*, i32*, i64, i64, i64)* @do_cache_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_cache_remove(%struct.worker* %0, i32* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.worker*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.query_info, align 8
  store %struct.worker* %0, %struct.worker** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load %struct.worker*, %struct.worker** %6, align 8
  %14 = getelementptr inbounds %struct.worker, %struct.worker* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %10, align 8
  %21 = call i32 @rrset_cache_remove(i32 %16, i32* %17, i64 %18, i64 %19, i64 %20, i32 0)
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @LDNS_RR_TYPE_SOA, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %5
  %26 = load %struct.worker*, %struct.worker** %6, align 8
  %27 = getelementptr inbounds %struct.worker, %struct.worker* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i32, i32* @PACKED_RRSET_SOA_NEG, align 4
  %35 = call i32 @rrset_cache_remove(i32 %29, i32* %30, i64 %31, i64 %32, i64 %33, i32 %34)
  br label %36

36:                                               ; preds = %25, %5
  %37 = load i32*, i32** %7, align 8
  %38 = getelementptr inbounds %struct.query_info, %struct.query_info* %12, i32 0, i32 4
  store i32* %37, i32** %38, align 8
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds %struct.query_info, %struct.query_info* %12, i32 0, i32 0
  store i64 %39, i64* %40, align 8
  %41 = load i64, i64* %9, align 8
  %42 = getelementptr inbounds %struct.query_info, %struct.query_info* %12, i32 0, i32 3
  store i64 %41, i64* %42, align 8
  %43 = load i64, i64* %10, align 8
  %44 = getelementptr inbounds %struct.query_info, %struct.query_info* %12, i32 0, i32 2
  store i64 %43, i64* %44, align 8
  %45 = getelementptr inbounds %struct.query_info, %struct.query_info* %12, i32 0, i32 1
  store i32* null, i32** %45, align 8
  %46 = call i32 @query_info_hash(%struct.query_info* %12, i32 0)
  store i32 %46, i32* %11, align 4
  %47 = load %struct.worker*, %struct.worker** %6, align 8
  %48 = getelementptr inbounds %struct.worker, %struct.worker* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @slabhash_remove(i32 %50, i32 %51, %struct.query_info* %12)
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* @LDNS_RR_TYPE_AAAA, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %36
  %57 = load i32, i32* @BIT_CD, align 4
  %58 = call i32 @query_info_hash(%struct.query_info* %12, i32 %57)
  store i32 %58, i32* %11, align 4
  %59 = load %struct.worker*, %struct.worker** %6, align 8
  %60 = getelementptr inbounds %struct.worker, %struct.worker* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @slabhash_remove(i32 %62, i32 %63, %struct.query_info* %12)
  br label %65

65:                                               ; preds = %56, %36
  ret void
}

declare dso_local i32 @rrset_cache_remove(i32, i32*, i64, i64, i64, i32) #1

declare dso_local i32 @query_info_hash(%struct.query_info*, i32) #1

declare dso_local i32 @slabhash_remove(i32, i32, %struct.query_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
