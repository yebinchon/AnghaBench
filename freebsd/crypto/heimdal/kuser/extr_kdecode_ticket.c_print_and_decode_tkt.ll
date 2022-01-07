; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kuser/extr_kdecode_ticket.c_print_and_decode_tkt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kuser/extr_kdecode_ticket.c_print_and_decode_tkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"decode_Ticket\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"krb5_string_to_key\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"krb5_crypto_init\00", align 1
@KRB5_KU_TICKET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"krb5_decrypt_EncryptedData\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"krb5_decode_EncTicketPart\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_7__*, i32, i32)* @print_and_decode_tkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_and_decode_tkt(i32 %0, %struct.TYPE_7__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_8__, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @decode_Ticket(i32 %18, i32 %21, %struct.TYPE_8__* %15, i64* %12)
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = load i32, i32* %5, align 4
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @krb5_err(i32 %26, i32 1, i64 %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %25, %4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @krb5_string_to_key(i32 %30, i32 %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32* %14)
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %9, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i32, i32* %5, align 4
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @krb5_err(i32 %37, i32 1, i64 %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %36, %29
  %41 = load i32, i32* %5, align 4
  %42 = call i64 @krb5_crypto_init(i32 %41, i32* %14, i32 0, i32* %10)
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %9, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* %5, align 4
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @krb5_err(i32 %46, i32 1, i64 %47, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %49

49:                                               ; preds = %45, %40
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @KRB5_KU_TICKET, align 4
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %54 = call i64 @krb5_decrypt_EncryptedData(i32 %50, i32 %51, i32 %52, i32* %53, %struct.TYPE_7__* %11)
  store i64 %54, i64* %9, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @krb5_crypto_destroy(i32 %55, i32 %56)
  %58 = load i64, i64* %9, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %49
  %61 = load i32, i32* %5, align 4
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @krb5_err(i32 %61, i32 1, i64 %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %64

64:                                               ; preds = %60, %49
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @decode_EncTicketPart(i32 %66, i32 %68, i32* %13, i64* %12)
  store i64 %69, i64* %9, align 8
  %70 = call i32 @krb5_data_free(%struct.TYPE_7__* %11)
  %71 = load i64, i64* %9, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %64
  %74 = load i32, i32* %5, align 4
  %75 = load i64, i64* %9, align 8
  %76 = call i32 @krb5_err(i32 %74, i32 1, i64 %75, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %77

77:                                               ; preds = %73, %64
  %78 = call i32 @free_EncTicketPart(i32* %13)
  ret void
}

declare dso_local i64 @decode_Ticket(i32, i32, %struct.TYPE_8__*, i64*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*) #1

declare dso_local i64 @krb5_string_to_key(i32, i32, i8*, i32, i32*) #1

declare dso_local i64 @krb5_crypto_init(i32, i32*, i32, i32*) #1

declare dso_local i64 @krb5_decrypt_EncryptedData(i32, i32, i32, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @krb5_crypto_destroy(i32, i32) #1

declare dso_local i64 @decode_EncTicketPart(i32, i32, i32*, i64*) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_7__*) #1

declare dso_local i32 @free_EncTicketPart(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
