; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_rd_req.c_decrypt_tkt_enc_part.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_rd_req.c_decrypt_tkt_enc_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@KRB5_KU_TICKET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to decode encrypted ticket part\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*, i32*, i32*)* @decrypt_tkt_enc_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @decrypt_tkt_enc_part(i32 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_4__, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = call i64 @krb5_crypto_init(i32 %14, i32* %15, i32 0, i32* %13)
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* %10, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i64, i64* %10, align 8
  store i64 %20, i64* %5, align 8
  br label %51

21:                                               ; preds = %4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* @KRB5_KU_TICKET, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = call i64 @krb5_decrypt_EncryptedData(i32 %22, i32 %23, i32 %24, i32* %25, %struct.TYPE_4__* %11)
  store i64 %26, i64* %10, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %13, align 4
  %29 = call i32 @krb5_crypto_destroy(i32 %27, i32 %28)
  %30 = load i64, i64* %10, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i64, i64* %10, align 8
  store i64 %33, i64* %5, align 8
  br label %51

34:                                               ; preds = %21
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %9, align 8
  %40 = call i64 @decode_EncTicketPart(i32 %36, i32 %38, i32* %39, i64* %12)
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %10, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %34
  %44 = load i32, i32* %6, align 4
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @N_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %47 = call i32 @krb5_set_error_message(i32 %44, i64 %45, i32 %46)
  br label %48

48:                                               ; preds = %43, %34
  %49 = call i32 @krb5_data_free(%struct.TYPE_4__* %11)
  %50 = load i64, i64* %10, align 8
  store i64 %50, i64* %5, align 8
  br label %51

51:                                               ; preds = %48, %32, %19
  %52 = load i64, i64* %5, align 8
  ret i64 %52
}

declare dso_local i64 @krb5_crypto_init(i32, i32*, i32, i32*) #1

declare dso_local i64 @krb5_decrypt_EncryptedData(i32, i32, i32, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @krb5_crypto_destroy(i32, i32) #1

declare dso_local i64 @decode_EncTicketPart(i32, i32, i32*, i64*) #1

declare dso_local i32 @krb5_set_error_message(i32, i64, i32) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
