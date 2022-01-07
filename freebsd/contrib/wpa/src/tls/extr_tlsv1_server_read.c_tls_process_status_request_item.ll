; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_server_read.c_tls_process_status_request_item.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_server_read.c_tls_process_status_request_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_server = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"TLSv1: CertificateStatusType %u\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"TLSv1: OCSPStatusRequest\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tlsv1_server*, i32*, i64)* @tls_process_status_request_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tls_process_status_request_item(%struct.tlsv1_server* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.tlsv1_server*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.tlsv1_server* %0, %struct.tlsv1_server** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i32*, i32** %5, align 8
  store i32* %10, i32** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = ptrtoint i32* %14 to i64
  %17 = ptrtoint i32* %15 to i64
  %18 = sub i64 %16, %17
  %19 = sdiv exact i64 %18, 4
  %20 = icmp slt i64 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %51

22:                                               ; preds = %3
  %23 = load i32*, i32** %7, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %7, align 8
  %25 = load i32, i32* %23, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* @MSG_DEBUG, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @wpa_printf(i32 %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 2
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %51

35:                                               ; preds = %31, %22
  %36 = load i32, i32* @MSG_DEBUG, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = ptrtoint i32* %38 to i64
  %41 = ptrtoint i32* %39 to i64
  %42 = sub i64 %40, %41
  %43 = sdiv exact i64 %42, 4
  %44 = trunc i64 %43 to i32
  %45 = call i32 @wpa_hexdump(i32 %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32* %37, i32 %44)
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %48, label %51

48:                                               ; preds = %35
  %49 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %50 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %49, i32 0, i32 0
  store i32 1, i32* %50, align 4
  br label %51

51:                                               ; preds = %21, %34, %48, %35
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
