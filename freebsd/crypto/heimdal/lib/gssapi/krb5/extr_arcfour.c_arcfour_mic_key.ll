; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_arcfour.c_arcfour_mic_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_arcfour.c_arcfour_mic_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }

@ENCTYPE_ARCFOUR_HMAC_MD5_56 = common dso_local global i64 0, align 8
@__const.arcfour_mic_key.L40 = private unnamed_addr constant [14 x i8] c"fortybits\00\00\00\00\00", align 1
@CKSUMTYPE_RSA_MD5 = common dso_local global i32 0, align 4
@ENCTYPE_ARCFOUR_HMAC_MD5 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_8__*, i8*, i64, i8*, i64)* @arcfour_mic_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @arcfour_mic_key(i32 %0, %struct.TYPE_8__* %1, i8* %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_9__, align 8
  %16 = alloca %struct.TYPE_8__, align 8
  %17 = alloca [16 x i8], align 16
  %18 = alloca %struct.TYPE_9__, align 8
  %19 = alloca [4 x i8], align 1
  %20 = alloca [14 x i8], align 1
  store i32 %0, i32* %8, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %21 = getelementptr inbounds [4 x i8], [4 x i8]* %19, i64 0, i64 0
  %22 = call i32 @memset(i8* %21, i32 0, i32 4)
  %23 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  store i32 16, i32* %27, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ENCTYPE_ARCFOUR_HMAC_MD5_56, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %6
  %34 = bitcast [14 x i8]* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %34, i8* align 1 getelementptr inbounds ([14 x i8], [14 x i8]* @__const.arcfour_mic_key.L40, i32 0, i32 0), i64 14, i1 false)
  %35 = getelementptr inbounds [14 x i8], [14 x i8]* %20, i64 0, i64 0
  %36 = getelementptr inbounds i8, i8* %35, i64 10
  %37 = getelementptr inbounds [4 x i8], [4 x i8]* %19, i64 0, i64 0
  %38 = call i32 @memcpy(i8* %36, i8* %37, i32 4)
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @CKSUMTYPE_RSA_MD5, align 4
  %41 = getelementptr inbounds [14 x i8], [14 x i8]* %20, i64 0, i64 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %43 = call i64 @krb5_hmac(i32 %39, i32 %40, i8* %41, i64 14, i32 0, %struct.TYPE_8__* %42, %struct.TYPE_9__* %15)
  store i64 %43, i64* %14, align 8
  %44 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 7
  %45 = call i32 @memset(i8* %44, i32 171, i32 9)
  br label %52

46:                                               ; preds = %6
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @CKSUMTYPE_RSA_MD5, align 4
  %49 = getelementptr inbounds [4 x i8], [4 x i8]* %19, i64 0, i64 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %51 = call i64 @krb5_hmac(i32 %47, i32 %48, i8* %49, i64 4, i32 0, %struct.TYPE_8__* %50, %struct.TYPE_9__* %15)
  store i64 %51, i64* %14, align 8
  br label %52

52:                                               ; preds = %46, %33
  %53 = load i64, i64* %14, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i64, i64* %14, align 8
  store i64 %56, i64* %7, align 8
  br label %76

57:                                               ; preds = %52
  %58 = load i64, i64* @ENCTYPE_ARCFOUR_HMAC_MD5, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  store i64 %58, i64* %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %62 = bitcast %struct.TYPE_7__* %60 to i8*
  %63 = bitcast %struct.TYPE_7__* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %62, i8* align 8 %63, i64 16, i1 false)
  %64 = load i8*, i8** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  %67 = load i64, i64* %13, align 8
  %68 = trunc i64 %67 to i32
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @CKSUMTYPE_RSA_MD5, align 4
  %73 = load i8*, i8** %10, align 8
  %74 = load i64, i64* %11, align 8
  %75 = call i64 @krb5_hmac(i32 %71, i32 %72, i8* %73, i64 %74, i32 0, %struct.TYPE_8__* %16, %struct.TYPE_9__* %18)
  store i64 %75, i64* %7, align 8
  br label %76

76:                                               ; preds = %57, %55
  %77 = load i64, i64* %7, align 8
  ret i64 %77
}

declare dso_local i32 @memset(i8*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @krb5_hmac(i32, i32, i8*, i64, i32, %struct.TYPE_8__*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
