; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_pwhash_scrypt.c_tv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_pwhash_scrypt.c_tv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i64, i8*, i64, i64, i64 }

@tv.tests = internal global [10 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([255 x i8], [255 x i8]* @.str, i32 0, i32 0), i64 127, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i32 0, i32 0), i64 155, i64 481326, i64 7256678 }, %struct.anon { i8* getelementptr inbounds ([173 x i8], [173 x i8]* @.str.2, i32 0, i32 0), i64 86, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i32 0, i32 0), i64 250, i64 535778, i64 7849083 }, %struct.anon { i8* getelementptr inbounds ([367 x i8], [367 x i8]* @.str.4, i32 0, i32 0), i64 183, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i32 0, i32 0), i64 249, i64 311757, i64 7994791 }, %struct.anon { i8* getelementptr inbounds ([305 x i8], [305 x i8]* @.str.6, i32 0, i32 0), i64 152, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.7, i32 0, i32 0), i64 5, i64 643464, i64 1397645 }, %struct.anon { i8* getelementptr inbounds ([165 x i8], [165 x i8]* @.str.8, i32 0, i32 0), i64 82, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.9, i32 0, i32 0), i64 190, i64 758010, i64 5432947 }, %struct.anon { i8* getelementptr inbounds ([195 x i8], [195 x i8]* @.str.10, i32 0, i32 0), i64 97, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.11, i32 0, i32 0), i64 212, i64 233177, i64 13101817 }, %struct.anon { i8* getelementptr inbounds ([313 x i8], [313 x i8]* @.str.12, i32 0, i32 0), i64 156, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.13, i32 0, i32 0), i64 178, i64 234753, i64 4886999 }, %struct.anon { i8* getelementptr inbounds ([245 x i8], [245 x i8]* @.str.14, i32 0, i32 0), i64 122, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.15, i32 0, i32 0), i64 55, i64 695191, i64 15738350 }, %struct.anon { i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.16, i32 0, i32 0), i64 34, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.17, i32 0, i32 0), i64 231, i64 78652, i64 6631659 }, %struct.anon { i8* getelementptr inbounds ([441 x i8], [441 x i8]* @.str.18, i32 0, i32 0), i64 220, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19, i32 0, i32 0), i64 167, i64 717248, i64 10784179 }], align 16
@.str = private unnamed_addr constant [255 x i8] c"a347ae92bce9f80f6f595a4480fc9c2fe7e7d7148d371e9487d75f5c23008ffae065577a928febd9b1973a5a95073acdbeb6a030cfc0d79caa2dc5cd011cef02c08da232d76d52dfbca38ca8dcbd665b17d1665f7cf5fe59772ec909733b24de97d6f58d220b20c60d7c07ec1fd93c52c31020300c6c1facd77937a597c7a6\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"5541fbc995d5c197ba290346d2c559dedf405cf97e5f95482143202f9e74f5c2\00", align 1
@.str.2 = private unnamed_addr constant [173 x i8] c"e125cee61c8cb7778d9e5ad0a6f5d978ce9f84de213a8556d9ffe202020ab4a6ed9074a4eb3416f9b168f137510f3a30b70b96cbfa219ff99f6c6eaffb15c06b60e00cc2890277f0fd3c622115772f7048adaebed86e\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"f1192dd5dc2368b9cd421338b22433455ee0a3699f9379a08b9650ea2c126f0d\00", align 1
@.str.4 = private unnamed_addr constant [367 x i8] c"92263cbf6ac376499f68a4289d3bb59e5a22335eba63a32e6410249155b956b6a3b48d4a44906b18b897127300b375b8f834f1ceffc70880a885f47c33876717e392be57f7da3ae58da4fd1f43daa7e44bb82d3717af4319349c24cd31e46d295856b0441b6b289992a11ced1cc3bf3011604590244a3eb737ff221129215e4e4347f4915d41292b5173d196eb9add693be5319fdadc242906178bb6c0286c9b6ca6012746711f58c8c392016b2fdfc09c64f0f6b6ab7b\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"3b840e20e9555e9fb031c4ba1f1747ce25cc1d0ff664be676b9b4a90641ff194\00", align 1
@.str.6 = private unnamed_addr constant [305 x i8] c"027b6d8e8c8c474e9b69c7d9ed4f9971e8e1ce2f6ba95048414c3970f0f09b70e3b6c5ae05872b3d8678705b7d381829c351a5a9c88c233569b35d6b0b809df44b6451a9c273f1150e2ef8a0b5437eb701e373474cd44b97ef0248ebce2ca0400e1b53f3d86221eca3f18eb45b702b9172440f774a82cbf1f6f525df30a6e293c873cce69bb078ed1f0d31e7f9b8062409f37f19f8550aae\00", align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"eb2a3056a09ad2d7d7f975bcd707598f24cd32518cde3069f2e403b34bfee8a5\00", align 1
@.str.8 = private unnamed_addr constant [165 x i8] c"4a857e2ee8aa9b6056f2424e84d24a72473378906ee04a46cb05311502d5250b82ad86b83c8f20a23dbb74f6da60b0b6ecffd67134d45946ac8ebfb3064294bc097d43ced68642bfb8bbbdd0f50b30118f5e\00", align 1
@.str.9 = private unnamed_addr constant [65 x i8] c"39d82eef32010b8b79cc5ba88ed539fbaba741100f2edbeca7cc171ffeabf258\00", align 1
@.str.10 = private unnamed_addr constant [195 x i8] c"1845e375479537e9dd4f4486d5c91ac72775d66605eeb11a787b78a7745f1fd0052d526c67235dbae1b2a4d575a74cb551c8e9096c593a497aee74ba3047d911358ede57bc27c9ea1829824348daaab606217cc931dcb6627787bd6e4e5854f0e8\00", align 1
@.str.11 = private unnamed_addr constant [65 x i8] c"3ee91a805aa62cfbe8dce29a2d9a44373a5006f4a4ce24022aca9cecb29d1473\00", align 1
@.str.12 = private unnamed_addr constant [313 x i8] c"c7b09aec680e7b42fedd7fc792e78b2f6c1bea8f4a884320b648f81e8cf515e8ba9dcfb11d43c4aae114c1734aa69ca82d44998365db9c93744fa28b63fd16000e8261cbbe083e7e2da1e5f696bde0834fe53146d7e0e35e7de9920d041f5a5621aabe02da3e2b09b405b77937efef3197bd5772e41fdb73fb5294478e45208063b5f58e089dbeb6d6342a909c1307b3fff5fe2cf4da56bdae50848f\00", align 1
@.str.13 = private unnamed_addr constant [65 x i8] c"039c056d933b475032777edbaffac50f143f64c123329ed9cf59e3b65d3f43b6\00", align 1
@.str.14 = private unnamed_addr constant [245 x i8] c"8f3a06e2fd8711350a517bb12e31f3d3423e8dc0bb14aac8240fca0995938d59bb37bd0a7dfc9c9cc0705684b46612e8c8b1d6655fb0f9887562bb9899791a0250d1320f945eda48cdc20c233f40a5bb0a7e3ac5ad7250ce684f68fc0b8c9633bfd75aad116525af7bdcdbbdb4e00ab163fd4df08f243f12557e\00", align 1
@.str.15 = private unnamed_addr constant [65 x i8] c"90631f686a8c3dbc0703ffa353bc1fdf35774568ac62406f98a13ed8f47595fd\00", align 1
@.str.16 = private unnamed_addr constant [69 x i8] c"b540beb016a5366524d4605156493f9874514a5aa58818cd0c6dfffaa9e90205f17b\00", align 1
@.str.17 = private unnamed_addr constant [65 x i8] c"44071f6d181561670bda728d43fb79b443bb805afdebaf98622b5165e01b15fb\00", align 1
@.str.18 = private unnamed_addr constant [441 x i8] c"a14975c26c088755a8b715ff2528d647cd343987fcf4aa25e7194a8417fb2b4b3f7268da9f3182b4cfb22d138b2749d673a47ecc7525dd15a0a3c66046971784bb63d7eae24cc84f2631712075a10e10a96b0e0ee67c43e01c423cb9c44e5371017e9c496956b632158da3fe12addecb88912e6759bc37f9af2f45af72c5cae3b179ffb676a697de6ebe45cd4c16d4a9d642d29ddc0186a0a48cb6cd62bfc3dd229d313b301560971e740e2cf1f99a9a090a5b283f35475057e96d7064e2e0fc81984591068d55a3b4169f22cccb0745a2689407ea1901a0a766eb99\00", align 1
@.str.19 = private unnamed_addr constant [65 x i8] c"3d968b2752b8838431165059319f3ff8910b7b8ecb54ea01d3f54769e9d98daf\00", align 1
@crypto_pwhash_scryptsalsa208sha256_SALTBYTES = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [16 x i8] c"pwhash failure\0A\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tv() #0 {
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
  %14 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @tv.tests, i64 0, i64 %13
  %15 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 16
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @tv.tests, i64 0, i64 %17
  %19 = getelementptr inbounds %struct.anon, %struct.anon* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 16
  %21 = call i32 @strlen(i8* %20)
  %22 = call i32 @sodium_hex2bin(i8* %12, i32 256, i8* %16, i32 %21, i32* null, i32* null, i32* null)
  %23 = trunc i64 %8 to i32
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @tv.tests, i64 0, i64 %24
  %26 = getelementptr inbounds %struct.anon, %struct.anon* %25, i32 0, i32 2
  %27 = load i8*, i8** %26, align 16
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @tv.tests, i64 0, i64 %28
  %30 = getelementptr inbounds %struct.anon, %struct.anon* %29, i32 0, i32 2
  %31 = load i8*, i8** %30, align 16
  %32 = call i32 @strlen(i8* %31)
  %33 = call i32 @sodium_hex2bin(i8* %10, i32 %23, i8* %27, i32 %32, i32* null, i32* null, i32* null)
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @tv.tests, i64 0, i64 %35
  %37 = getelementptr inbounds %struct.anon, %struct.anon* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @tv.tests, i64 0, i64 %40
  %42 = getelementptr inbounds %struct.anon, %struct.anon* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @tv.tests, i64 0, i64 %44
  %46 = getelementptr inbounds %struct.anon, %struct.anon* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 16
  %48 = load i64, i64* %6, align 8
  %49 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @tv.tests, i64 0, i64 %48
  %50 = getelementptr inbounds %struct.anon, %struct.anon* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @crypto_pwhash_scryptsalsa208sha256(i8* %34, i64 %38, i8* %39, i64 %43, i8* %10, i64 %47, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %11
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %11
  %57 = getelementptr inbounds [513 x i8], [513 x i8]* %5, i64 0, i64 0
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %59 = load i64, i64* %6, align 8
  %60 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* @tv.tests, i64 0, i64 %59
  %61 = getelementptr inbounds %struct.anon, %struct.anon* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @sodium_bin2hex(i8* %57, i32 513, i8* %58, i64 %62)
  %64 = getelementptr inbounds [513 x i8], [513 x i8]* %5, i64 0, i64 0
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i8* %64)
  br label %66

66:                                               ; preds = %56
  %67 = load i64, i64* %6, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %6, align 8
  %69 = icmp ult i64 %68, 10
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
