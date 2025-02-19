; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client.c_tlsv1_client_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client.c_tlsv1_client_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_client = type { i32, i32, i32, %struct.tlsv1_client*, i32, i32, i32 }

@TLS_NULL_WITH_NULL_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tlsv1_client_deinit(%struct.tlsv1_client* %0) #0 {
  %2 = alloca %struct.tlsv1_client*, align 8
  store %struct.tlsv1_client* %0, %struct.tlsv1_client** %2, align 8
  %3 = load %struct.tlsv1_client*, %struct.tlsv1_client** %2, align 8
  %4 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %3, i32 0, i32 6
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @crypto_public_key_free(i32 %5)
  %7 = load %struct.tlsv1_client*, %struct.tlsv1_client** %2, align 8
  %8 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %7, i32 0, i32 5
  %9 = load i32, i32* @TLS_NULL_WITH_NULL_NULL, align 4
  %10 = call i32 @tlsv1_record_set_cipher_suite(i32* %8, i32 %9)
  %11 = load %struct.tlsv1_client*, %struct.tlsv1_client** %2, align 8
  %12 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %11, i32 0, i32 5
  %13 = call i32 @tlsv1_record_change_write_cipher(i32* %12)
  %14 = load %struct.tlsv1_client*, %struct.tlsv1_client** %2, align 8
  %15 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %14, i32 0, i32 5
  %16 = call i32 @tlsv1_record_change_read_cipher(i32* %15)
  %17 = load %struct.tlsv1_client*, %struct.tlsv1_client** %2, align 8
  %18 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %17, i32 0, i32 4
  %19 = call i32 @tls_verify_hash_free(i32* %18)
  %20 = load %struct.tlsv1_client*, %struct.tlsv1_client** %2, align 8
  %21 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %20, i32 0, i32 3
  %22 = load %struct.tlsv1_client*, %struct.tlsv1_client** %21, align 8
  %23 = call i32 @os_free(%struct.tlsv1_client* %22)
  %24 = load %struct.tlsv1_client*, %struct.tlsv1_client** %2, align 8
  %25 = call i32 @tlsv1_client_free_dh(%struct.tlsv1_client* %24)
  %26 = load %struct.tlsv1_client*, %struct.tlsv1_client** %2, align 8
  %27 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @tlsv1_cred_free(i32 %28)
  %30 = load %struct.tlsv1_client*, %struct.tlsv1_client** %2, align 8
  %31 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @wpabuf_free(i32 %32)
  %34 = load %struct.tlsv1_client*, %struct.tlsv1_client** %2, align 8
  %35 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @x509_certificate_chain_free(i32 %36)
  %38 = load %struct.tlsv1_client*, %struct.tlsv1_client** %2, align 8
  %39 = call i32 @os_free(%struct.tlsv1_client* %38)
  ret void
}

declare dso_local i32 @crypto_public_key_free(i32) #1

declare dso_local i32 @tlsv1_record_set_cipher_suite(i32*, i32) #1

declare dso_local i32 @tlsv1_record_change_write_cipher(i32*) #1

declare dso_local i32 @tlsv1_record_change_read_cipher(i32*) #1

declare dso_local i32 @tls_verify_hash_free(i32*) #1

declare dso_local i32 @os_free(%struct.tlsv1_client*) #1

declare dso_local i32 @tlsv1_client_free_dh(%struct.tlsv1_client*) #1

declare dso_local i32 @tlsv1_cred_free(i32) #1

declare dso_local i32 @wpabuf_free(i32) #1

declare dso_local i32 @x509_certificate_chain_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
