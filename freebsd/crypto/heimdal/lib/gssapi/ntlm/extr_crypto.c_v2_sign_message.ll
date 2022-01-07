; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/ntlm/extr_crypto.c_v2_sign_message.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/ntlm/extr_crypto.c_v2_sign_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@GSS_S_FAILURE = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i32*, i32, i8*)* @v2_sign_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v2_sign_message(%struct.TYPE_3__* %0, i8* %1, i32* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca [16 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %15 = call i32* (...) @HMAC_CTX_new()
  store i32* %15, i32** %14, align 8
  %16 = load i32*, i32** %14, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %19, i32* %6, align 4
  br label %65

20:                                               ; preds = %5
  %21 = load i32*, i32** %14, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 (...) @EVP_md5()
  %24 = call i32 @HMAC_Init_ex(i32* %21, i8* %22, i32 16, i32 %23, i32* null)
  %25 = load i32, i32* %10, align 4
  %26 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %27 = call i32 @encode_le_uint32(i32 %25, i8* %26)
  %28 = load i32*, i32** %14, align 8
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %30 = call i32 @HMAC_Update(i32* %28, i8* %29, i32 4)
  %31 = load i32*, i32** %14, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @HMAC_Update(i32* %31, i8* %34, i32 %37)
  %39 = load i32*, i32** %14, align 8
  %40 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %41 = call i32 @HMAC_Final(i32* %39, i8* %40, i32* %13)
  %42 = load i32*, i32** %14, align 8
  %43 = call i32 @HMAC_CTX_free(i32* %42)
  %44 = load i8*, i8** %11, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = call i32 @encode_le_uint32(i32 1, i8* %45)
  %47 = load i32*, i32** %9, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %20
  %50 = load i32*, i32** %9, align 8
  %51 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %52 = load i8*, i8** %11, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 4
  %54 = call i32 @RC4(i32* %50, i32 8, i8* %51, i8* %53)
  br label %60

55:                                               ; preds = %20
  %56 = load i8*, i8** %11, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 4
  %58 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %59 = call i32 @memcpy(i8* %57, i8* %58, i32 8)
  br label %60

60:                                               ; preds = %55, %49
  %61 = load i8*, i8** %11, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 12
  %63 = call i32 @memset(i8* %62, i32 0, i32 4)
  %64 = load i32, i32* @GSS_S_COMPLETE, align 4
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %60, %18
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i32* @HMAC_CTX_new(...) #1

declare dso_local i32 @HMAC_Init_ex(i32*, i8*, i32, i32, i32*) #1

declare dso_local i32 @EVP_md5(...) #1

declare dso_local i32 @encode_le_uint32(i32, i8*) #1

declare dso_local i32 @HMAC_Update(i32*, i8*, i32) #1

declare dso_local i32 @HMAC_Final(i32*, i8*, i32*) #1

declare dso_local i32 @HMAC_CTX_free(i32*) #1

declare dso_local i32 @RC4(i32*, i32, i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
