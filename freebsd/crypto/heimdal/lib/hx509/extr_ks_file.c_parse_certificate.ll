; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_ks_file.c_parse_certificate.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_ks_file.c_parse_certificate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hx509_collector = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.hx509_collector*, i32*, i8*, i64, i32*)* @parse_certificate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_certificate(i32 %0, i8* %1, %struct.hx509_collector* %2, i32* %3, i8* %4, i64 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.hx509_collector*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i8* %1, i8** %10, align 8
  store %struct.hx509_collector* %2, %struct.hx509_collector** %11, align 8
  store i32* %3, i32** %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32* %6, i32** %15, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i8*, i8** %13, align 8
  %20 = load i64, i64* %14, align 8
  %21 = call i32 @hx509_cert_init_data(i32 %18, i8* %19, i64 %20, i32* %16)
  store i32 %21, i32* %17, align 4
  %22 = load i32, i32* %17, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %7
  %25 = load i32, i32* %17, align 4
  store i32 %25, i32* %8, align 4
  br label %34

26:                                               ; preds = %7
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.hx509_collector*, %struct.hx509_collector** %11, align 8
  %29 = load i32, i32* %16, align 4
  %30 = call i32 @_hx509_collector_certs_add(i32 %27, %struct.hx509_collector* %28, i32 %29)
  store i32 %30, i32* %17, align 4
  %31 = load i32, i32* %16, align 4
  %32 = call i32 @hx509_cert_free(i32 %31)
  %33 = load i32, i32* %17, align 4
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %26, %24
  %35 = load i32, i32* %8, align 4
  ret i32 %35
}

declare dso_local i32 @hx509_cert_init_data(i32, i8*, i64, i32*) #1

declare dso_local i32 @_hx509_collector_certs_add(i32, %struct.hx509_collector*, i32) #1

declare dso_local i32 @hx509_cert_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
