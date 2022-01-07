; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client.c_tlsv1_client_shutdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client.c_tlsv1_client_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_client = type { i64, i32*, i64, i32, i32, i32 }

@CLIENT_HELLO = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"TLSv1: Failed to re-initialize verify hash\00", align 1
@TLS_NULL_WITH_NULL_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tlsv1_client_shutdown(%struct.tlsv1_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tlsv1_client*, align 8
  store %struct.tlsv1_client* %0, %struct.tlsv1_client** %3, align 8
  %4 = load i32, i32* @CLIENT_HELLO, align 4
  %5 = load %struct.tlsv1_client*, %struct.tlsv1_client** %3, align 8
  %6 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %5, i32 0, i32 5
  store i32 %4, i32* %6, align 8
  %7 = load %struct.tlsv1_client*, %struct.tlsv1_client** %3, align 8
  %8 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %7, i32 0, i32 4
  %9 = call i64 @tls_verify_hash_init(i32* %8)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @MSG_DEBUG, align 4
  %13 = call i32 @wpa_printf(i32 %12, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %35

14:                                               ; preds = %1
  %15 = load %struct.tlsv1_client*, %struct.tlsv1_client** %3, align 8
  %16 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %15, i32 0, i32 3
  %17 = load i32, i32* @TLS_NULL_WITH_NULL_NULL, align 4
  %18 = call i32 @tlsv1_record_set_cipher_suite(i32* %16, i32 %17)
  %19 = load %struct.tlsv1_client*, %struct.tlsv1_client** %3, align 8
  %20 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %19, i32 0, i32 3
  %21 = call i32 @tlsv1_record_change_write_cipher(i32* %20)
  %22 = load %struct.tlsv1_client*, %struct.tlsv1_client** %3, align 8
  %23 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %22, i32 0, i32 3
  %24 = call i32 @tlsv1_record_change_read_cipher(i32* %23)
  %25 = load %struct.tlsv1_client*, %struct.tlsv1_client** %3, align 8
  %26 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.tlsv1_client*, %struct.tlsv1_client** %3, align 8
  %28 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @crypto_public_key_free(i32* %29)
  %31 = load %struct.tlsv1_client*, %struct.tlsv1_client** %3, align 8
  %32 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %31, i32 0, i32 1
  store i32* null, i32** %32, align 8
  %33 = load %struct.tlsv1_client*, %struct.tlsv1_client** %3, align 8
  %34 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %14, %11
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i64 @tls_verify_hash_init(i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @tlsv1_record_set_cipher_suite(i32*, i32) #1

declare dso_local i32 @tlsv1_record_change_write_cipher(i32*) #1

declare dso_local i32 @tlsv1_record_change_read_cipher(i32*) #1

declare dso_local i32 @crypto_public_key_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
