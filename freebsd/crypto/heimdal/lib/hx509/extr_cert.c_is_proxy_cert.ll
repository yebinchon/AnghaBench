; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_cert.c_is_proxy_cert.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_cert.c_is_proxy_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@asn1_oid_id_pkix_pe_proxyCertInfo = common dso_local global i32 0, align 4
@HX509_EXTENSION_NOT_FOUND = common dso_local global i32 0, align 4
@HX509_EXTRA_DATA_AFTER_STRUCTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*)* @is_proxy_cert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_proxy_cert(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 0, i64* %12, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @memset(i32* %16, i32 0, i32 4)
  br label %18

18:                                               ; preds = %15, %3
  %19 = load i32*, i32** %6, align 8
  %20 = call %struct.TYPE_5__* @find_extension(i32* %19, i32* @asn1_oid_id_pkix_pe_proxyCertInfo, i64* %12)
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %9, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %22 = icmp eq %struct.TYPE_5__* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @hx509_clear_error_string(i32 %24)
  %26 = load i32, i32* @HX509_EXTENSION_NOT_FOUND, align 4
  store i32 %26, i32* %4, align 4
  br label %64

27:                                               ; preds = %18
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @decode_ProxyCertInfo(i32 %31, i64 %35, i32* %8, i64* %10)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %27
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @hx509_clear_error_string(i32 %40)
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %4, align 4
  br label %64

43:                                               ; preds = %27
  %44 = load i64, i64* %10, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %44, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = call i32 @free_ProxyCertInfo(i32* %8)
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @hx509_clear_error_string(i32 %52)
  %54 = load i32, i32* @HX509_EXTRA_DATA_AFTER_STRUCTURE, align 4
  store i32 %54, i32* %4, align 4
  br label %64

55:                                               ; preds = %43
  %56 = load i32*, i32** %7, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = call i32 @free_ProxyCertInfo(i32* %8)
  br label %63

60:                                               ; preds = %55
  %61 = load i32, i32* %8, align 4
  %62 = load i32*, i32** %7, align 8
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %60, %58
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %50, %39, %23
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local %struct.TYPE_5__* @find_extension(i32*, i32*, i64*) #1

declare dso_local i32 @hx509_clear_error_string(i32) #1

declare dso_local i32 @decode_ProxyCertInfo(i32, i64, i32*, i64*) #1

declare dso_local i32 @free_ProxyCertInfo(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
