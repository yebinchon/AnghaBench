; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_arcfour.c_arcfour_mic_cksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_arcfour.c_arcfour_mic_cksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }

@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*, i32, i8*, i64, i8*, i64, i8*, i64, i8*, i64)* @arcfour_mic_cksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @arcfour_mic_cksum(i32 %0, i32* %1, i32 %2, i8* %3, i64 %4, i8* %5, i64 %6, i8* %7, i64 %8, i8* %9, i64 %10) #0 {
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.TYPE_6__, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  store i32 %0, i32* %13, align 4
  store i32* %1, i32** %14, align 8
  store i32 %2, i32* %15, align 4
  store i8* %3, i8** %16, align 8
  store i64 %4, i64* %17, align 8
  store i8* %5, i8** %18, align 8
  store i64 %6, i64* %19, align 8
  store i8* %7, i8** %20, align 8
  store i64 %8, i64* %21, align 8
  store i8* %9, i8** %22, align 8
  store i64 %10, i64* %23, align 8
  %29 = load i64, i64* %17, align 8
  %30 = icmp eq i64 %29, 8
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i64, i64* %19, align 8
  %34 = load i64, i64* %21, align 8
  %35 = add i64 %33, %34
  %36 = load i64, i64* %23, align 8
  %37 = add i64 %35, %36
  store i64 %37, i64* %26, align 8
  %38 = load i64, i64* %26, align 8
  %39 = call i8* @malloc(i64 %38)
  store i8* %39, i8** %25, align 8
  %40 = load i8*, i8** %25, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %11
  %43 = load i64, i64* @ENOMEM, align 8
  store i64 %43, i64* %12, align 8
  br label %96

44:                                               ; preds = %11
  %45 = load i8*, i8** %25, align 8
  %46 = load i8*, i8** %18, align 8
  %47 = load i64, i64* %19, align 8
  %48 = call i32 @memcpy(i8* %45, i8* %46, i64 %47)
  %49 = load i8*, i8** %25, align 8
  %50 = load i64, i64* %19, align 8
  %51 = getelementptr i8, i8* %49, i64 %50
  %52 = load i8*, i8** %20, align 8
  %53 = load i64, i64* %21, align 8
  %54 = call i32 @memcpy(i8* %51, i8* %52, i64 %53)
  %55 = load i8*, i8** %25, align 8
  %56 = load i64, i64* %19, align 8
  %57 = getelementptr i8, i8* %55, i64 %56
  %58 = load i64, i64* %21, align 8
  %59 = getelementptr i8, i8* %57, i64 %58
  %60 = load i8*, i8** %22, align 8
  %61 = load i64, i64* %23, align 8
  %62 = call i32 @memcpy(i8* %59, i8* %60, i64 %61)
  %63 = load i32, i32* %13, align 4
  %64 = load i32*, i32** %14, align 8
  %65 = call i64 @krb5_crypto_init(i32 %63, i32* %64, i32 0, i32* %27)
  store i64 %65, i64* %28, align 8
  %66 = load i64, i64* %28, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %44
  %69 = load i8*, i8** %25, align 8
  %70 = call i32 @free(i8* %69)
  %71 = load i64, i64* %28, align 8
  store i64 %71, i64* %12, align 8
  br label %96

72:                                               ; preds = %44
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %27, align 4
  %75 = load i32, i32* %15, align 4
  %76 = load i8*, i8** %25, align 8
  %77 = load i64, i64* %26, align 8
  %78 = call i64 @krb5_create_checksum(i32 %73, i32 %74, i32 %75, i32 0, i8* %76, i64 %77, %struct.TYPE_6__* %24)
  store i64 %78, i64* %28, align 8
  %79 = load i8*, i8** %25, align 8
  %80 = call i32 @free(i8* %79)
  %81 = load i64, i64* %28, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %72
  %84 = load i8*, i8** %16, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load i64, i64* %17, align 8
  %89 = call i32 @memcpy(i8* %84, i8* %87, i64 %88)
  %90 = call i32 @free_Checksum(%struct.TYPE_6__* %24)
  br label %91

91:                                               ; preds = %83, %72
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %27, align 4
  %94 = call i32 @krb5_crypto_destroy(i32 %92, i32 %93)
  %95 = load i64, i64* %28, align 8
  store i64 %95, i64* %12, align 8
  br label %96

96:                                               ; preds = %91, %68, %42
  %97 = load i64, i64* %12, align 8
  ret i64 %97
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @krb5_crypto_init(i32, i32*, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @krb5_create_checksum(i32, i32, i32, i32, i8*, i64, %struct.TYPE_6__*) #1

declare dso_local i32 @free_Checksum(%struct.TYPE_6__*) #1

declare dso_local i32 @krb5_crypto_destroy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
