; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_ttls.c_eap_ttls_avp_hdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_ttls.c_eap_ttls_avp_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttls_avp_vendor = type { i8*, i8*, i8* }

@AVP_FLAGS_MANDATORY = common dso_local global i64 0, align 8
@AVP_FLAGS_VENDOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i64*, i32, i32, i32, i64)* @eap_ttls_avp_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @eap_ttls_avp_hdr(i64* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.ttls_avp_vendor*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64* %0, i64** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %14 = load i64*, i64** %6, align 8
  %15 = bitcast i64* %14 to %struct.ttls_avp_vendor*
  store %struct.ttls_avp_vendor* %15, %struct.ttls_avp_vendor** %11, align 8
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i64, i64* @AVP_FLAGS_MANDATORY, align 8
  br label %21

20:                                               ; preds = %5
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i64 [ %19, %18 ], [ 0, %20 ]
  store i64 %22, i64* %12, align 8
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = load i64, i64* @AVP_FLAGS_VENDOR, align 8
  %27 = load i64, i64* %12, align 8
  %28 = or i64 %27, %26
  store i64 %28, i64* %12, align 8
  store i64 24, i64* %13, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i8* @host_to_be32(i32 %29)
  %31 = load %struct.ttls_avp_vendor*, %struct.ttls_avp_vendor** %11, align 8
  %32 = getelementptr inbounds %struct.ttls_avp_vendor, %struct.ttls_avp_vendor* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  br label %34

33:                                               ; preds = %21
  store i64 4, i64* %13, align 8
  br label %34

34:                                               ; preds = %33, %25
  %35 = load i32, i32* %7, align 4
  %36 = call i8* @host_to_be32(i32 %35)
  %37 = load %struct.ttls_avp_vendor*, %struct.ttls_avp_vendor** %11, align 8
  %38 = getelementptr inbounds %struct.ttls_avp_vendor, %struct.ttls_avp_vendor* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load i64, i64* %12, align 8
  %40 = trunc i64 %39 to i32
  %41 = shl i32 %40, 24
  %42 = load i64, i64* %13, align 8
  %43 = load i64, i64* %10, align 8
  %44 = add i64 %42, %43
  %45 = trunc i64 %44 to i32
  %46 = or i32 %41, %45
  %47 = call i8* @host_to_be32(i32 %46)
  %48 = load %struct.ttls_avp_vendor*, %struct.ttls_avp_vendor** %11, align 8
  %49 = getelementptr inbounds %struct.ttls_avp_vendor, %struct.ttls_avp_vendor* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load i64*, i64** %6, align 8
  %51 = load i64, i64* %13, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  ret i64* %52
}

declare dso_local i8* @host_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
