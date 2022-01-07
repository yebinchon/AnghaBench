; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_server_write.c_tls_server_cert_chain_der_len.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_server_write.c_tls_server_cert_chain_der_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_server = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.x509_certificate* }
%struct.x509_certificate = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tlsv1_server*)* @tls_server_cert_chain_der_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tls_server_cert_chain_der_len(%struct.tlsv1_server* %0) #0 {
  %2 = alloca %struct.tlsv1_server*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.x509_certificate*, align 8
  store %struct.tlsv1_server* %0, %struct.tlsv1_server** %2, align 8
  store i64 0, i64* %3, align 8
  %5 = load %struct.tlsv1_server*, %struct.tlsv1_server** %2, align 8
  %6 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.tlsv1_server*, %struct.tlsv1_server** %2, align 8
  %11 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.x509_certificate*, %struct.x509_certificate** %13, align 8
  br label %16

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %15, %9
  %17 = phi %struct.x509_certificate* [ %14, %9 ], [ null, %15 ]
  store %struct.x509_certificate* %17, %struct.x509_certificate** %4, align 8
  br label %18

18:                                               ; preds = %32, %16
  %19 = load %struct.x509_certificate*, %struct.x509_certificate** %4, align 8
  %20 = icmp ne %struct.x509_certificate* %19, null
  br i1 %20, label %21, label %41

21:                                               ; preds = %18
  %22 = load %struct.x509_certificate*, %struct.x509_certificate** %4, align 8
  %23 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 3, %24
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, %25
  store i64 %27, i64* %3, align 8
  %28 = load %struct.x509_certificate*, %struct.x509_certificate** %4, align 8
  %29 = call i64 @x509_certificate_self_signed(%struct.x509_certificate* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %41

32:                                               ; preds = %21
  %33 = load %struct.tlsv1_server*, %struct.tlsv1_server** %2, align 8
  %34 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.x509_certificate*, %struct.x509_certificate** %4, align 8
  %39 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %38, i32 0, i32 0
  %40 = call %struct.x509_certificate* @x509_certificate_get_subject(i32 %37, i32* %39)
  store %struct.x509_certificate* %40, %struct.x509_certificate** %4, align 8
  br label %18

41:                                               ; preds = %31, %18
  %42 = load i64, i64* %3, align 8
  ret i64 %42
}

declare dso_local i64 @x509_certificate_self_signed(%struct.x509_certificate*) #1

declare dso_local %struct.x509_certificate* @x509_certificate_get_subject(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
