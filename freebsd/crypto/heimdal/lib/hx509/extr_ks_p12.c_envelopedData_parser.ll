; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_ks_p12.c_envelopedData_parser.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_ks_p12.c_envelopedData_parser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hx509_collector = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@HX509_ERROR_APPEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"PKCS12 failed to unenvelope\00", align 1
@asn1_oid_id_pkcs7_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.hx509_collector*, i8*, i64, i32*)* @envelopedData_parser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @envelopedData_parser(i32 %0, %struct.hx509_collector* %1, i8* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hx509_collector*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_4__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.hx509_collector* %1, %struct.hx509_collector** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = call i32 @memset(i32* %13, i32 0, i32 4)
  %17 = load %struct.hx509_collector*, %struct.hx509_collector** %8, align 8
  %18 = call i32 @_hx509_collector_get_lock(%struct.hx509_collector* %17)
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %14, align 4
  %21 = call i32 @_hx509_lock_unlock_certs(i32 %20)
  %22 = load i8*, i8** %9, align 8
  %23 = load i64, i64* %10, align 8
  %24 = call i32 @hx509_cms_unenvelope(i32 %19, i32 %21, i32 0, i8* %22, i64 %23, i32* null, i32 0, i32* %13, %struct.TYPE_4__* %12)
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %5
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @HX509_ERROR_APPEND, align 4
  %30 = load i32, i32* %15, align 4
  %31 = call i32 @hx509_set_error_string(i32 %28, i32 %29, i32 %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %15, align 4
  store i32 %32, i32* %6, align 4
  br label %48

33:                                               ; preds = %5
  %34 = call i64 @der_heim_oid_cmp(i32* %13, i32* @asn1_oid_id_pkcs7_data)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.hx509_collector*, %struct.hx509_collector** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @parse_safe_content(i32 %37, %struct.hx509_collector* %38, i32 %40, i32 %42)
  store i32 %43, i32* %15, align 4
  br label %44

44:                                               ; preds = %36, %33
  %45 = call i32 @der_free_octet_string(%struct.TYPE_4__* %12)
  %46 = call i32 @der_free_oid(i32* %13)
  %47 = load i32, i32* %15, align 4
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %44, %27
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @_hx509_collector_get_lock(%struct.hx509_collector*) #1

declare dso_local i32 @hx509_cms_unenvelope(i32, i32, i32, i8*, i64, i32*, i32, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @_hx509_lock_unlock_certs(i32) #1

declare dso_local i32 @hx509_set_error_string(i32, i32, i32, i8*) #1

declare dso_local i64 @der_heim_oid_cmp(i32*, i32*) #1

declare dso_local i32 @parse_safe_content(i32, %struct.hx509_collector*, i32, i32) #1

declare dso_local i32 @der_free_octet_string(%struct.TYPE_4__*) #1

declare dso_local i32 @der_free_oid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
