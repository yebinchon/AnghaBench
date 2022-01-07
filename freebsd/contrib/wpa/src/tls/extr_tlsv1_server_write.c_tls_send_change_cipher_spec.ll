; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_server_write.c_tls_send_change_cipher_spec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_server_write.c_tls_send_change_cipher_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_server = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Handshake completed successfully\00", align 1
@ESTABLISHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.tlsv1_server*, i64*)* @tls_send_change_cipher_spec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @tls_send_change_cipher_spec(%struct.tlsv1_server* %0, i64* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.tlsv1_server*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.tlsv1_server* %0, %struct.tlsv1_server** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load i64*, i64** %5, align 8
  store i64 0, i64* %9, align 8
  %10 = call i32* @os_malloc(i32 1000)
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %44

14:                                               ; preds = %2
  %15 = load i32*, i32** %6, align 8
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1000
  store i32* %17, i32** %7, align 8
  %18 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i64 @tls_write_server_change_cipher_spec(%struct.tlsv1_server* %18, i32** %8, i32* %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %14
  %23 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call i64 @tls_write_server_finished(%struct.tlsv1_server* %23, i32** %8, i32* %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22, %14
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @os_free(i32* %28)
  store i32* null, i32** %3, align 8
  br label %44

30:                                               ; preds = %22
  %31 = load i32*, i32** %8, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = ptrtoint i32* %31 to i64
  %34 = ptrtoint i32* %32 to i64
  %35 = sub i64 %33, %34
  %36 = sdiv exact i64 %35, 4
  %37 = load i64*, i64** %5, align 8
  store i64 %36, i64* %37, align 8
  %38 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %39 = call i32 @tlsv1_server_log(%struct.tlsv1_server* %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @ESTABLISHED, align 4
  %41 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %42 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load i32*, i32** %6, align 8
  store i32* %43, i32** %3, align 8
  br label %44

44:                                               ; preds = %30, %27, %13
  %45 = load i32*, i32** %3, align 8
  ret i32* %45
}

declare dso_local i32* @os_malloc(i32) #1

declare dso_local i64 @tls_write_server_change_cipher_spec(%struct.tlsv1_server*, i32**, i32*) #1

declare dso_local i64 @tls_write_server_finished(%struct.tlsv1_server*, i32**, i32*) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @tlsv1_server_log(%struct.tlsv1_server*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
