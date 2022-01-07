; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_server.c_tlsv1_server_clear_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_server.c_tlsv1_server_clear_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_server = type { i64, i32*, i64, i64, i32*, i32*, i32, i32 }

@TLS_NULL_WITH_NULL_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tlsv1_server*)* @tlsv1_server_clear_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tlsv1_server_clear_data(%struct.tlsv1_server* %0) #0 {
  %2 = alloca %struct.tlsv1_server*, align 8
  store %struct.tlsv1_server* %0, %struct.tlsv1_server** %2, align 8
  %3 = load %struct.tlsv1_server*, %struct.tlsv1_server** %2, align 8
  %4 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %3, i32 0, i32 7
  %5 = load i32, i32* @TLS_NULL_WITH_NULL_NULL, align 4
  %6 = call i32 @tlsv1_record_set_cipher_suite(i32* %4, i32 %5)
  %7 = load %struct.tlsv1_server*, %struct.tlsv1_server** %2, align 8
  %8 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %7, i32 0, i32 7
  %9 = call i32 @tlsv1_record_change_write_cipher(i32* %8)
  %10 = load %struct.tlsv1_server*, %struct.tlsv1_server** %2, align 8
  %11 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %10, i32 0, i32 7
  %12 = call i32 @tlsv1_record_change_read_cipher(i32* %11)
  %13 = load %struct.tlsv1_server*, %struct.tlsv1_server** %2, align 8
  %14 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %13, i32 0, i32 6
  %15 = call i32 @tls_verify_hash_free(i32* %14)
  %16 = load %struct.tlsv1_server*, %struct.tlsv1_server** %2, align 8
  %17 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %16, i32 0, i32 5
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @crypto_public_key_free(i32* %18)
  %20 = load %struct.tlsv1_server*, %struct.tlsv1_server** %2, align 8
  %21 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %20, i32 0, i32 5
  store i32* null, i32** %21, align 8
  %22 = load %struct.tlsv1_server*, %struct.tlsv1_server** %2, align 8
  %23 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %22, i32 0, i32 4
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @os_free(i32* %24)
  %26 = load %struct.tlsv1_server*, %struct.tlsv1_server** %2, align 8
  %27 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %26, i32 0, i32 4
  store i32* null, i32** %27, align 8
  %28 = load %struct.tlsv1_server*, %struct.tlsv1_server** %2, align 8
  %29 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %28, i32 0, i32 3
  store i64 0, i64* %29, align 8
  %30 = load %struct.tlsv1_server*, %struct.tlsv1_server** %2, align 8
  %31 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = load %struct.tlsv1_server*, %struct.tlsv1_server** %2, align 8
  %33 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @os_free(i32* %34)
  %36 = load %struct.tlsv1_server*, %struct.tlsv1_server** %2, align 8
  %37 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %36, i32 0, i32 1
  store i32* null, i32** %37, align 8
  %38 = load %struct.tlsv1_server*, %struct.tlsv1_server** %2, align 8
  %39 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  ret void
}

declare dso_local i32 @tlsv1_record_set_cipher_suite(i32*, i32) #1

declare dso_local i32 @tlsv1_record_change_write_cipher(i32*) #1

declare dso_local i32 @tlsv1_record_change_read_cipher(i32*) #1

declare dso_local i32 @tls_verify_hash_free(i32*) #1

declare dso_local i32 @crypto_public_key_free(i32*) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
