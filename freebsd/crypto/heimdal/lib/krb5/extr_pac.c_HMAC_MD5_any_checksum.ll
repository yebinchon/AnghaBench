; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_pac.c_HMAC_MD5_any_checksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_pac.c_HMAC_MD5_any_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct._krb5_key_data = type { i32 }

@CKSUMTYPE_HMAC_MD5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*, i8*, i64, i32, %struct.TYPE_4__*)* @HMAC_MD5_any_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @HMAC_MD5_any_checksum(i32 %0, i32* %1, i8* %2, i64 %3, i32 %4, %struct.TYPE_4__* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca %struct._krb5_key_data, align 4
  %15 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %13, align 8
  %16 = call i32 @memset(%struct._krb5_key_data* %14, i32 0, i32 4)
  %17 = load i32, i32* %8, align 4
  %18 = load i32*, i32** %9, align 8
  %19 = getelementptr inbounds %struct._krb5_key_data, %struct._krb5_key_data* %14, i32 0, i32 0
  %20 = call i64 @krb5_copy_keyblock(i32 %17, i32* %18, i32* %19)
  store i64 %20, i64* %15, align 8
  %21 = load i64, i64* %15, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %6
  %24 = load i64, i64* %15, align 8
  store i64 %24, i64* %7, align 8
  br label %59

25:                                               ; preds = %6
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = call i64 @krb5_data_alloc(i32* %27, i32 16)
  store i64 %28, i64* %15, align 8
  %29 = load i64, i64* %15, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load i32, i32* %8, align 4
  %33 = getelementptr inbounds %struct._krb5_key_data, %struct._krb5_key_data* %14, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @krb5_free_keyblock(i32 %32, i32 %34)
  %36 = load i64, i64* %15, align 8
  store i64 %36, i64* %7, align 8
  br label %59

37:                                               ; preds = %25
  %38 = load i32, i32* @CKSUMTYPE_HMAC_MD5, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i8*, i8** %10, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %46 = call i64 @_krb5_HMAC_MD5_checksum(i32 %41, %struct._krb5_key_data* %14, i8* %42, i64 %43, i32 %44, %struct.TYPE_4__* %45)
  store i64 %46, i64* %15, align 8
  %47 = load i64, i64* %15, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %37
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = call i32 @krb5_data_free(i32* %51)
  br label %53

53:                                               ; preds = %49, %37
  %54 = load i32, i32* %8, align 4
  %55 = getelementptr inbounds %struct._krb5_key_data, %struct._krb5_key_data* %14, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @krb5_free_keyblock(i32 %54, i32 %56)
  %58 = load i64, i64* %15, align 8
  store i64 %58, i64* %7, align 8
  br label %59

59:                                               ; preds = %53, %31, %23
  %60 = load i64, i64* %7, align 8
  ret i64 %60
}

declare dso_local i32 @memset(%struct._krb5_key_data*, i32, i32) #1

declare dso_local i64 @krb5_copy_keyblock(i32, i32*, i32*) #1

declare dso_local i64 @krb5_data_alloc(i32*, i32) #1

declare dso_local i32 @krb5_free_keyblock(i32, i32) #1

declare dso_local i64 @_krb5_HMAC_MD5_checksum(i32, %struct._krb5_key_data*, i8*, i64, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @krb5_data_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
