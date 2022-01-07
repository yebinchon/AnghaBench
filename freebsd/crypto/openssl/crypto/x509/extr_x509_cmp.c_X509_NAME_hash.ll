; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_cmp.c_X509_NAME_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_cmp.c_X509_NAME_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@SHA_DIGEST_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @X509_NAME_hash(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i64 0, i64* %4, align 8
  %8 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = call i32 @i2d_X509_NAME(%struct.TYPE_4__* %12, i32* null)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (...) @EVP_sha1()
  %21 = call i32 @EVP_Digest(i32 %16, i32 %19, i8* %11, i32* null, i32 %20, i32* null)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  store i32 1, i32* %7, align 4
  br label %45

24:                                               ; preds = %1
  %25 = getelementptr inbounds i8, i8* %11, i64 0
  %26 = load i8, i8* %25, align 16
  %27 = zext i8 %26 to i64
  %28 = getelementptr inbounds i8, i8* %11, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i64
  %31 = shl i64 %30, 8
  %32 = or i64 %27, %31
  %33 = getelementptr inbounds i8, i8* %11, i64 2
  %34 = load i8, i8* %33, align 2
  %35 = zext i8 %34 to i64
  %36 = shl i64 %35, 16
  %37 = or i64 %32, %36
  %38 = getelementptr inbounds i8, i8* %11, i64 3
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i64
  %41 = shl i64 %40, 24
  %42 = or i64 %37, %41
  %43 = and i64 %42, 4294967295
  store i64 %43, i64* %4, align 8
  %44 = load i64, i64* %4, align 8
  store i64 %44, i64* %2, align 8
  store i32 1, i32* %7, align 4
  br label %45

45:                                               ; preds = %24, %23
  %46 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %46)
  %47 = load i64, i64* %2, align 8
  ret i64 %47
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @i2d_X509_NAME(%struct.TYPE_4__*, i32*) #2

declare dso_local i32 @EVP_Digest(i32, i32, i8*, i32*, i32, i32*) #2

declare dso_local i32 @EVP_sha1(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
