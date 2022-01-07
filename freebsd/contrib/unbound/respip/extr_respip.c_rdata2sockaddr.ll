; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/respip/extr_respip.c_rdata2sockaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/respip/extr_respip.c_rdata2sockaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_rrset_data = type { i32*, i64* }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr_in = type { i32, i32, i32, i32 }
%struct.sockaddr_in6 = type { i32, i32, i32, i32 }

@LDNS_RR_TYPE_A = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_AAAA = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.packed_rrset_data*, i64, i64, %struct.sockaddr_storage*, i32*)* @rdata2sockaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdata2sockaddr(%struct.packed_rrset_data* %0, i64 %1, i64 %2, %struct.sockaddr_storage* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.packed_rrset_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sockaddr_storage*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.sockaddr_in*, align 8
  %13 = alloca %struct.sockaddr_in6*, align 8
  store %struct.packed_rrset_data* %0, %struct.packed_rrset_data** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.sockaddr_storage* %3, %struct.sockaddr_storage** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @LDNS_RR_TYPE_A, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %45

17:                                               ; preds = %5
  %18 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %19 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* %9, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 6
  br i1 %24, label %25, label %45

25:                                               ; preds = %17
  %26 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %10, align 8
  %27 = bitcast %struct.sockaddr_storage* %26 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %27, %struct.sockaddr_in** %12, align 8
  %28 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %29 = bitcast %struct.sockaddr_in* %28 to %struct.sockaddr_in6*
  %30 = call i32 @memset(%struct.sockaddr_in6* %29, i32 0, i32 16)
  %31 = load i32, i32* @AF_INET, align 4
  %32 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %35 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %34, i32 0, i32 2
  %36 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %37 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 2
  %43 = call i32 @memcpy(i32* %35, i64 %42, i32 4)
  %44 = load i32*, i32** %11, align 8
  store i32 16, i32* %44, align 4
  store i32 1, i32* %6, align 4
  br label %78

45:                                               ; preds = %17, %5
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* @LDNS_RR_TYPE_AAAA, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %76

49:                                               ; preds = %45
  %50 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %51 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %9, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 18
  br i1 %56, label %57, label %76

57:                                               ; preds = %49
  %58 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %10, align 8
  %59 = bitcast %struct.sockaddr_storage* %58 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %59, %struct.sockaddr_in6** %13, align 8
  %60 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %61 = call i32 @memset(%struct.sockaddr_in6* %60, i32 0, i32 16)
  %62 = load i32, i32* @AF_INET6, align 4
  %63 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %64 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %66 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %65, i32 0, i32 0
  %67 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %68 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = load i64, i64* %9, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, 2
  %74 = call i32 @memcpy(i32* %66, i64 %73, i32 4)
  %75 = load i32*, i32** %11, align 8
  store i32 16, i32* %75, align 4
  store i32 1, i32* %6, align 4
  br label %78

76:                                               ; preds = %49, %45
  br label %77

77:                                               ; preds = %76
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %77, %57, %25
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local i32 @memset(%struct.sockaddr_in6*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
