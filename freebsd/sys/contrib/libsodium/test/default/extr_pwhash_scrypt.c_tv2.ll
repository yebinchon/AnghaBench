; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_pwhash_scrypt.c_tv2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_pwhash_scrypt.c_tv2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i64, i8*, i64, i64, i64 }

@tv2.tests = internal global [2 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([255 x i8], [255 x i8]* @.str, i32 0, i32 0), i64 127, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i32 0, i32 0), i64 155, i64 64, i64 1397645 }, %struct.anon { i8* getelementptr inbounds ([255 x i8], [255 x i8]* @.str, i32 0, i32 0), i64 127, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i32 0, i32 0), i64 155, i64 32768, i64 1397645 }], align 16
@.str = private unnamed_addr constant [255 x i8] c"a347ae92bce9f80f6f595a4480fc9c2fe7e7d7148d371e9487d75f5c23008ffae065577a928febd9b1973a5a95073acdbeb6a030cfc0d79caa2dc5cd011cef02c08da232d76d52dfbca38ca8dcbd665b17d1665f7cf5fe59772ec909733b24de97d6f58d220b20c60d7c07ec1fd93c52c31020300c6c1facd77937a597c7a6\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"5541fbc995d5c197ba290346d2c559dedf405cf97e5f95482143202f9e74f5c2\00", align 1
@crypto_pwhash_scryptsalsa208sha256_SALTBYTES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"pwhash failure\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tv2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tv2() #0 {
  %1 = alloca [256 x i8], align 16
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca [513 x i8], align 16
  %6 = alloca i64, align 8
  %7 = load i32, i32* @crypto_pwhash_scryptsalsa208sha256_SALTBYTES, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %2, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %3, align 8
  store i64 0, i64* %6, align 8
  br label %11

11:                                               ; preds = %66, %0
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %13 = load i64, i64* %6, align 8
  %14 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @tv2.tests, i64 0, i64 %13
  %15 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 16
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @tv2.tests, i64 0, i64 %17
  %19 = getelementptr inbounds %struct.anon, %struct.anon* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 16
  %21 = call i32 @strlen(i8* %20)
  %22 = call i32 @sodium_hex2bin(i8* %12, i32 256, i8* %16, i32 %21, i32* null, i32* null, i32* null)
  %23 = trunc i64 %8 to i32
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @tv2.tests, i64 0, i64 %24
  %26 = getelementptr inbounds %struct.anon, %struct.anon* %25, i32 0, i32 2
  %27 = load i8*, i8** %26, align 16
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @tv2.tests, i64 0, i64 %28
  %30 = getelementptr inbounds %struct.anon, %struct.anon* %29, i32 0, i32 2
  %31 = load i8*, i8** %30, align 16
  %32 = call i32 @strlen(i8* %31)
  %33 = call i32 @sodium_hex2bin(i8* %10, i32 %23, i8* %27, i32 %32, i32* null, i32* null, i32* null)
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @tv2.tests, i64 0, i64 %35
  %37 = getelementptr inbounds %struct.anon, %struct.anon* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @tv2.tests, i64 0, i64 %40
  %42 = getelementptr inbounds %struct.anon, %struct.anon* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @tv2.tests, i64 0, i64 %44
  %46 = getelementptr inbounds %struct.anon, %struct.anon* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 16
  %48 = load i64, i64* %6, align 8
  %49 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @tv2.tests, i64 0, i64 %48
  %50 = getelementptr inbounds %struct.anon, %struct.anon* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @crypto_pwhash_scryptsalsa208sha256(i8* %34, i64 %38, i8* %39, i64 %43, i8* %10, i64 %47, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %11
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %11
  %57 = getelementptr inbounds [513 x i8], [513 x i8]* %5, i64 0, i64 0
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %59 = load i64, i64* %6, align 8
  %60 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @tv2.tests, i64 0, i64 %59
  %61 = getelementptr inbounds %struct.anon, %struct.anon* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @sodium_bin2hex(i8* %57, i32 513, i8* %58, i64 %62)
  %64 = getelementptr inbounds [513 x i8], [513 x i8]* %5, i64 0, i64 0
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %64)
  br label %66

66:                                               ; preds = %56
  %67 = load i64, i64* %6, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %6, align 8
  %69 = icmp ult i64 %68, 2
  br i1 %69, label %11, label %70

70:                                               ; preds = %66
  %71 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %71)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sodium_hex2bin(i8*, i32, i8*, i32, i32*, i32*, i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @crypto_pwhash_scryptsalsa208sha256(i8*, i64, i8*, i64, i8*, i64, i64) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @sodium_bin2hex(i8*, i32, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
