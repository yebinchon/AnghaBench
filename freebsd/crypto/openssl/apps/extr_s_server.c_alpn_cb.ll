; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_s_server.c_alpn_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_s_server.c_alpn_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@s_quiet = common dso_local global i32 0, align 4
@bio_s_out = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"ALPN protocols advertised by the client: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@OPENSSL_NPN_NEGOTIATED = common dso_local global i64 0, align 8
@SSL_TLSEXT_ERR_NOACK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"ALPN protocols selected: \00", align 1
@SSL_TLSEXT_ERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i8*, i8*, i32, i8*)* @alpn_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alpn_cb(i32* %0, i8** %1, i8* %2, i8* %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_2__*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %16 = load i8*, i8** %13, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %14, align 8
  %18 = load i32, i32* @s_quiet, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %59, label %20

20:                                               ; preds = %6
  %21 = load i32, i32* @bio_s_out, align 4
  %22 = call i32 @BIO_printf(i32 %21, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %15, align 4
  br label %23

23:                                               ; preds = %33, %20
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %56

27:                                               ; preds = %23
  %28 = load i32, i32* %15, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* @bio_s_out, align 4
  %32 = call i32 (i32, ...) @BIO_write(i32 %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i32, i32* @bio_s_out, align 4
  %35 = load i8*, i8** %11, align 8
  %36 = load i32, i32* %15, align 4
  %37 = add i32 %36, 1
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  %40 = load i8*, i8** %11, align 8
  %41 = load i32, i32* %15, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = call i32 (i32, ...) @BIO_write(i32 %34, i8* %39, i32 %45)
  %47 = load i8*, i8** %11, align 8
  %48 = load i32, i32* %15, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = add nsw i32 %52, 1
  %54 = load i32, i32* %15, align 4
  %55 = add i32 %54, %53
  store i32 %55, i32* %15, align 4
  br label %23

56:                                               ; preds = %23
  %57 = load i32, i32* @bio_s_out, align 4
  %58 = call i32 (i32, ...) @BIO_write(i32 %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  br label %59

59:                                               ; preds = %56, %6
  %60 = load i8**, i8*** %9, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i8*, i8** %11, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i64 @SSL_select_next_proto(i8** %60, i8* %61, i32 %64, i32 %67, i8* %68, i32 %69)
  %71 = load i64, i64* @OPENSSL_NPN_NEGOTIATED, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %59
  %74 = load i32, i32* @SSL_TLSEXT_ERR_NOACK, align 4
  store i32 %74, i32* %7, align 4
  br label %92

75:                                               ; preds = %59
  %76 = load i32, i32* @s_quiet, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %90, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* @bio_s_out, align 4
  %80 = call i32 @BIO_printf(i32 %79, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %81 = load i32, i32* @bio_s_out, align 4
  %82 = load i8**, i8*** %9, align 8
  %83 = load i8*, i8** %82, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = call i32 (i32, ...) @BIO_write(i32 %81, i8* %83, i32 %86)
  %88 = load i32, i32* @bio_s_out, align 4
  %89 = call i32 (i32, ...) @BIO_write(i32 %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  br label %90

90:                                               ; preds = %78, %75
  %91 = load i32, i32* @SSL_TLSEXT_ERR_OK, align 4
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %90, %73
  %93 = load i32, i32* %7, align 4
  ret i32 %93
}

declare dso_local i32 @BIO_printf(i32, i8*) #1

declare dso_local i32 @BIO_write(i32, ...) #1

declare dso_local i64 @SSL_select_next_proto(i8**, i8*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
