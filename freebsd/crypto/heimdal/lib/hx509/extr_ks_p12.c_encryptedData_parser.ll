; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_ks_p12.c_encryptedData_parser.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_ks_p12.c_encryptedData_parser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hx509_collector = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@asn1_oid_id_pkcs7_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.hx509_collector*, i8*, i64, i32*)* @encryptedData_parser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encryptedData_parser(i32 %0, %struct.hx509_collector* %1, i8* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hx509_collector*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_4__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.hx509_collector* %1, %struct.hx509_collector** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = call i32 @memset(i32* %13, i32 0, i32 4)
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.hx509_collector*, %struct.hx509_collector** %8, align 8
  %18 = call i32 @_hx509_collector_get_lock(%struct.hx509_collector* %17)
  %19 = load i8*, i8** %9, align 8
  %20 = load i64, i64* %10, align 8
  %21 = call i32 @hx509_cms_decrypt_encrypted(i32 %16, i32 %18, i8* %19, i64 %20, i32* %13, %struct.TYPE_4__* %12)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* %14, align 4
  store i32 %25, i32* %6, align 4
  br label %41

26:                                               ; preds = %5
  %27 = call i64 @der_heim_oid_cmp(i32* %13, i32* @asn1_oid_id_pkcs7_data)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.hx509_collector*, %struct.hx509_collector** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @parse_safe_content(i32 %30, %struct.hx509_collector* %31, i32 %33, i32 %35)
  store i32 %36, i32* %14, align 4
  br label %37

37:                                               ; preds = %29, %26
  %38 = call i32 @der_free_octet_string(%struct.TYPE_4__* %12)
  %39 = call i32 @der_free_oid(i32* %13)
  %40 = load i32, i32* %14, align 4
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %37, %24
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @hx509_cms_decrypt_encrypted(i32, i32, i8*, i64, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @_hx509_collector_get_lock(%struct.hx509_collector*) #1

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
