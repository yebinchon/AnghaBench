; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_cert.c_hx509_cert_check_eku.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_cert.c_hx509_cert_check_eku.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32* }

@HX509_CERTIFICATE_MISSING_EKU = common dso_local global i32 0, align 4
@id_any_eku = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hx509_cert_check_eku(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @_hx509_get_cert(i32 %13)
  %15 = call i32 @find_extension_eku(i32 %14, %struct.TYPE_4__* %10)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @hx509_clear_error_string(i32 %19)
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %5, align 4
  br label %51

22:                                               ; preds = %4
  store i64 0, i64* %12, align 8
  br label %23

23:                                               ; preds = %43, %22
  %24 = load i64, i64* %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %23
  %29 = load i32*, i32** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* %12, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = call i64 @der_heim_oid_cmp(i32* %29, i32* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = call i32 @free_ExtKeyUsage(%struct.TYPE_4__* %10)
  store i32 0, i32* %5, align 4
  br label %51

38:                                               ; preds = %28
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %42

42:                                               ; preds = %41, %38
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %12, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %12, align 8
  br label %23

46:                                               ; preds = %23
  %47 = call i32 @free_ExtKeyUsage(%struct.TYPE_4__* %10)
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @hx509_clear_error_string(i32 %48)
  %50 = load i32, i32* @HX509_CERTIFICATE_MISSING_EKU, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %46, %36, %18
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @find_extension_eku(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @_hx509_get_cert(i32) #1

declare dso_local i32 @hx509_clear_error_string(i32) #1

declare dso_local i64 @der_heim_oid_cmp(i32*, i32*) #1

declare dso_local i32 @free_ExtKeyUsage(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
