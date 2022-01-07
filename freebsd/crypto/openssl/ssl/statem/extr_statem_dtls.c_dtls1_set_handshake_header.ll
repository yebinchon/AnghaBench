; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_dtls.c_dtls1_set_handshake_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_dtls.c_dtls1_set_handshake_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@SSL3_MT_CHANGE_CIPHER_SPEC = common dso_local global i32 0, align 4
@SSL3_MT_CCS = common dso_local global i32 0, align 4
@DTLS1_HM_HEADER_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtls1_set_handshake_header(%struct.TYPE_7__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @SSL3_MT_CHANGE_CIPHER_SPEC, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %36

12:                                               ; preds = %3
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i32 %17, i32* %21, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = load i32, i32* @SSL3_MT_CCS, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dtls1_set_message_header_int(%struct.TYPE_7__* %22, i32 %23, i32 0, i32 %28, i32 0, i32 0)
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* @SSL3_MT_CCS, align 4
  %32 = call i32 @WPACKET_put_bytes_u8(i32* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %51

35:                                               ; preds = %12
  br label %50

36:                                               ; preds = %3
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @dtls1_set_message_header(%struct.TYPE_7__* %37, i32 %38, i32 0, i32 0, i32 0)
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* @DTLS1_HM_HEADER_LENGTH, align 4
  %42 = call i32 @WPACKET_allocate_bytes(i32* %40, i32 %41, i8** %8)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @WPACKET_start_sub_packet(i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44, %36
  store i32 0, i32* %4, align 4
  br label %51

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %49, %35
  store i32 1, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %48, %34
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @dtls1_set_message_header_int(%struct.TYPE_7__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @WPACKET_put_bytes_u8(i32*, i32) #1

declare dso_local i32 @dtls1_set_message_header(%struct.TYPE_7__*, i32, i32, i32, i32) #1

declare dso_local i32 @WPACKET_allocate_bytes(i32*, i32, i8**) #1

declare dso_local i32 @WPACKET_start_sub_packet(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
