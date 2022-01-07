; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_write.c_tlsv1_client_handshake_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_write.c_tlsv1_client_handshake_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_client = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"TLSv1: Handshake completed successfully\00", align 1
@ESTABLISHED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"TLSv1: Unexpected state %d while generating reply\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @tlsv1_client_handshake_write(%struct.tlsv1_client* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.tlsv1_client*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store %struct.tlsv1_client* %0, %struct.tlsv1_client** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %9 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %31 [
    i32 128, label %11
    i32 129, label %15
    i32 130, label %19
  ]

11:                                               ; preds = %3
  %12 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %13 = load i64*, i64** %6, align 8
  %14 = call i32* @tls_send_client_key_exchange(%struct.tlsv1_client* %12, i64* %13)
  store i32* %14, i32** %4, align 8
  br label %37

15:                                               ; preds = %3
  %16 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %17 = load i64*, i64** %6, align 8
  %18 = call i32* @tls_send_change_cipher_spec(%struct.tlsv1_client* %16, i64* %17)
  store i32* %18, i32** %4, align 8
  br label %37

19:                                               ; preds = %3
  %20 = load i32, i32* @MSG_DEBUG, align 4
  %21 = call i32 (i32, i8*, ...) @wpa_printf(i32 %20, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ESTABLISHED, align 4
  %23 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %24 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i64*, i64** %6, align 8
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = call i32* @os_malloc(i32 1)
  store i32* %29, i32** %4, align 8
  br label %37

30:                                               ; preds = %19
  store i32* null, i32** %4, align 8
  br label %37

31:                                               ; preds = %3
  %32 = load i32, i32* @MSG_DEBUG, align 4
  %33 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %34 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32, i8*, ...) @wpa_printf(i32 %32, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  store i32* null, i32** %4, align 8
  br label %37

37:                                               ; preds = %31, %30, %28, %15, %11
  %38 = load i32*, i32** %4, align 8
  ret i32* %38
}

declare dso_local i32* @tls_send_client_key_exchange(%struct.tlsv1_client*, i64*) #1

declare dso_local i32* @tls_send_change_cipher_spec(%struct.tlsv1_client*, i64*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32* @os_malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
