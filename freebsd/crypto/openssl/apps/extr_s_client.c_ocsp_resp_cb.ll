; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_s_client.c_ocsp_resp_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_s_client.c_ocsp_resp_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"OCSP response: \00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"no response sent\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"response parse error\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"\0A======================================\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"======================================\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @ocsp_resp_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocsp_resp_cb(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @SSL_get_tlsext_status_ocsp_resp(i32* %9, i8** %6)
  store i32 %10, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @BIO_puts(i8* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %13 = load i8*, i8** %6, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @BIO_puts(i8* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %40

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = call i32* @d2i_OCSP_RESPONSE(i32* null, i8** %6, i32 %19)
  store i32* %20, i32** %8, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @BIO_puts(i8* %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i8*, i8** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @BIO_dump_indent(i8* %26, i8* %27, i32 %28, i32 4)
  store i32 0, i32* %3, align 4
  br label %40

30:                                               ; preds = %18
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @BIO_puts(i8* %31, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i8*, i8** %5, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @OCSP_RESPONSE_print(i8* %33, i32* %34, i32 0)
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @BIO_puts(i8* %36, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @OCSP_RESPONSE_free(i32* %38)
  store i32 1, i32* %3, align 4
  br label %40

40:                                               ; preds = %30, %23, %15
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @SSL_get_tlsext_status_ocsp_resp(i32*, i8**) #1

declare dso_local i32 @BIO_puts(i8*, i8*) #1

declare dso_local i32* @d2i_OCSP_RESPONSE(i32*, i8**, i32) #1

declare dso_local i32 @BIO_dump_indent(i8*, i8*, i32, i32) #1

declare dso_local i32 @OCSP_RESPONSE_print(i8*, i32*, i32) #1

declare dso_local i32 @OCSP_RESPONSE_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
