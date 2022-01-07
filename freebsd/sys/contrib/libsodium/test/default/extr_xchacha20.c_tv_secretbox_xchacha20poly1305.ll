; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_xchacha20.c_tv_secretbox_xchacha20poly1305.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_xchacha20.c_tv_secretbox_xchacha20poly1305.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i32, i32, i32, i32 }

@tv_secretbox_xchacha20poly1305.tvs = internal constant [10 x %struct.TYPE_2__] [%struct.TYPE_2__ { i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0 }, %struct.TYPE_2__ { i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([159 x i8], [159 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.7, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0 }, %struct.TYPE_2__ { i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([295 x i8], [295 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([327 x i8], [327 x i8]* @.str.11, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0 }, %struct.TYPE_2__ { i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([183 x i8], [183 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([215 x i8], [215 x i8]* @.str.15, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0 }, %struct.TYPE_2__ { i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([153 x i8], [153 x i8]* @.str.19, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0 }, %struct.TYPE_2__ { i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0 }, %struct.TYPE_2__ { i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.26, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0 }, %struct.TYPE_2__ { i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([143 x i8], [143 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([175 x i8], [175 x i8]* @.str.30, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0 }, %struct.TYPE_2__ { i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.34, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0 }, %struct.TYPE_2__ { i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([139 x i8], [139 x i8]* @.str.38, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0 }], align 16
@.str = private unnamed_addr constant [65 x i8] c"065ff46a9dddb1ab047ee5914d6d575a828b8cc1f454b24e8cd0f57efdc49a34\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"f83262646ce01293b9923a65a073df78c54b2e799cd6c4e5\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"4c72340416339dcdea01b760db5adaf7\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"d3c71d54e6b13506e07aa2e7b412a17a7a1f34df3d3148cd3f45b91ccaa5f4d9\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"943b454a853aa514c63cf99b1e197bbb99da24b2e2d93e47\00", align 1
@.str.6 = private unnamed_addr constant [159 x i8] c"76bd706e07741e713d90efdb34ad202067263f984942aae8bda159f30dfccc72200f8093520b85c5ad124ff7c8b2d920946e5cfff4b819abf84c7b35a6205ca72c9f8747c3044dd73fb4bebda1b476\00", align 1
@.str.7 = private unnamed_addr constant [191 x i8] c"0384276f1cfa5c82c3e58f0f2acc1f821c6f526d2c19557cf8bd270fcde43fba1d88890663f7b2f5c6b1d7deccf5c91b4df5865dc55cc7e04d6793fc2db8f9e3b418f95cb796d67a7f3f7e097150cb607c435dacf82eac3d669866e5092ace\00", align 1
@.str.8 = private unnamed_addr constant [65 x i8] c"9498fdb922e0596e32af7f8108def2068f5a32a5ac70bd33ade371701f3d98d0\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"a0056f24be0d20106fe750e2ee3684d4457cbdcb3a74e566\00", align 1
@.str.10 = private unnamed_addr constant [295 x i8] c"b1bc9cfedb340fb06a37eba80439189e48aa0cfd37020eec0afa09165af12864671b3fbddbbb20ac18f586f2f66d13b3ca40c9a7e21c4513a5d87a95319f8ca3c2151e2a1b8b86a35653e77f90b9e63d2a84be9b9603876a89d60fd708edcd64b41be1064b8ad1046553aaeb51dc70b8112c9915d94f2a5dad1e14e7009db6c703c843a4f64b77d44b179b9579ac497dac2d33\00", align 1
@.str.11 = private unnamed_addr constant [327 x i8] c"4918790d46893fa3dca74d8abc57eef7fca2c6393d1beef5efa845ac20475db38d1a068debf4c5dbd8614eb072877c565dc52bd40941f0b590d2079a5028e426bf50bcbaadcbebf278bddceedc578a5e31379523dee15026ec82d34e56f2871fdf13255db199ac48f163d5ee7e4f4e09a39451356959d9242a39aea33990ab960a4c25346e3d9397fc5e7cb6266c2476411cd331f2bcb4486750c746947ec6401865d5\00", align 1
@.str.12 = private unnamed_addr constant [65 x i8] c"fa2d915e044d0519248150e7c815b01f0f2a691c626f8d22c3ef61e7f16eea47\00", align 1
@.str.13 = private unnamed_addr constant [49 x i8] c"c946065dc8befa9cc9f292ea2cf28f0256285565051792b7\00", align 1
@.str.14 = private unnamed_addr constant [183 x i8] c"d5be1a24c7872115dc5c5b4234dbee35a6f89ae3a91b3e33d75249a0aecfed252341295f49296f7ee14d64de1ea6355cb8facd065052d869aeb1763cda7e418a7e33b6f7a81327181df6cd4de3a126d9df1b5e8b0b1a6b281e63f2\00", align 1
@.str.15 = private unnamed_addr constant [215 x i8] c"6d32e3571afec58b0acabb54a287118b3ed6691f56cc8ead12d735352c9a050c2ca173c78b6092f9ad4b7c21c36fb0ce18560956395bab3099c54760a743051ac6a898a0b0034b5e953340c975cf7a873c56b27e66bca2bff1dd977addefc7935bb7550753dd13d1f1a43d\00", align 1
@.str.16 = private unnamed_addr constant [65 x i8] c"6f149c2ec27af45176030c8dd7ab0e1e488f5803f26f75045d7a56f59a587a85\00", align 1
@.str.17 = private unnamed_addr constant [49 x i8] c"952aff2f39bc70016f04ac7fb8b55fd22764ba16b56e255d\00", align 1
@.str.18 = private unnamed_addr constant [121 x i8] c"8fde598c4bde5786abdc6ab83fce66d59782b6ce36afe028c447ad4086a748764afa88a520e837a9d56d0b7693b0476649f24c2aa44b94615a1efc75\00", align 1
@.str.19 = private unnamed_addr constant [153 x i8] c"9bccf07974836fa4609d32d9527d928d184d9c6c0823af2f703e0e257a162d26d3678fa15ab1c4db76ac42084d32cefca8efaf77814c199b310999e327a3e3daa2e235b175979504ede87b58\00", align 1
@.str.20 = private unnamed_addr constant [65 x i8] c"b964b7fdf442efbcc2cd3e4cd596035bdfb05ed7d44f7fd4dce2d5614af5c8c4\00", align 1
@.str.21 = private unnamed_addr constant [49 x i8] c"2886fbfa4b35b68f28d31df6243a4fbc56475b69e24820a4\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"b83fbdd112bf0f7d62eff96c9faa8850\00", align 1
@.str.23 = private unnamed_addr constant [65 x i8] c"10c0ad4054b48d7d1de1d9ab6f782ca883d886573e9d18c1d47b6ee6b5208189\00", align 1
@.str.24 = private unnamed_addr constant [49 x i8] c"977edf57428d0e0247a3c88c9a9ec321bbaae1a4da8353b5\00", align 1
@.str.25 = private unnamed_addr constant [43 x i8] c"518e4a27949812424b2a381c3efea6055ee5e75eff\00", align 1
@.str.26 = private unnamed_addr constant [75 x i8] c"0c801a037c2ed0500d6ef68e8d195eceb05a15f8edb68b35773e81ac2aca18e9be53416f9a\00", align 1
@.str.27 = private unnamed_addr constant [65 x i8] c"7db0a81d01699c86f47a3ec76d46aa32660adad7f9ac72cf8396419f789f6bb1\00", align 1
@.str.28 = private unnamed_addr constant [49 x i8] c"e7cb57132ce954e28f4470cca1dbda20b534cdf32fbe3658\00", align 1
@.str.29 = private unnamed_addr constant [143 x i8] c"ee6511d403539e611ab312205f0c3b8f36a33d36f1dc44bb33d6836f0ab93b9f1747167bf0150f045fcd12a39479641d8bdde6fe01475196e8fe2c435e834e30a59f6aaa01ebcd\00", align 1
@.str.30 = private unnamed_addr constant [175 x i8] c"ae8b1d4df4f982b2702626feca07590fedd0dfa7ae34e6a098372a1aa32f9fbf0ce2a88b5c16a571ef48f3c9fda689ce8ebb9947c9e2a28e01b1191efc81ad2ce0ed6e6fc7c164b1fc7f3d50b7f5e47a895db3c1fc46c0\00", align 1
@.str.31 = private unnamed_addr constant [65 x i8] c"7b043dd27476cf5a2baf2907541d8241ecd8b97d38d08911737e69b0846732fb\00", align 1
@.str.32 = private unnamed_addr constant [49 x i8] c"74706a2855f946ed600e9b453c1ac372520b6a76a3c48a76\00", align 1
@.str.33 = private unnamed_addr constant [87 x i8] c"dbf165bb8352d6823991b99f3981ba9c8153635e5695477cba54e96a2a8c4dc5f9dbe817887d7340e3f48a\00", align 1
@.str.34 = private unnamed_addr constant [119 x i8] c"ce57261afba90a9598de15481c43f26f7b8c8cb2806c7c977752dba898dc51b92a3f1a62ebf696747bfccf72e0edda97f2ccd6d496f55aefbb3ec2\00", align 1
@.str.35 = private unnamed_addr constant [65 x i8] c"e588e418d658df1b2b1583122e26f74ca3506b425087bea895d81021168f8164\00", align 1
@.str.36 = private unnamed_addr constant [49 x i8] c"4f4d0ffd699268cd841ce4f603fe0cd27b8069fcf8215fbb\00", align 1
@.str.37 = private unnamed_addr constant [107 x i8] c"f91bcdcf4d08ba8598407ba8ef661e66c59ca9d89f3c0a3542e47246c777091e4864e63e1e3911dc01257255e551527a53a34481be\00", align 1
@.str.38 = private unnamed_addr constant [139 x i8] c"22dc88de7cacd4d9ce73359f7d6e16e74caeaa7b0d1ef2bb10fda4e79c3d5a9aa04b8b03575fd27bc970c9ed0dc80346162469e0547030ddccb8cdc95981400907c87c9442\00", align 1
@crypto_secretbox_xchacha20poly1305_KEYBYTES = common dso_local global i64 0, align 8
@crypto_secretbox_xchacha20poly1305_NONCEBYTES = common dso_local global i64 0, align 8
@crypto_secretbox_xchacha20poly1305_MACBYTES = common dso_local global i64 0, align 8
@crypto_secretbox_xchacha20poly1305_MESSAGEBYTES_MAX = common dso_local global i64 0, align 8
@.str.39 = private unnamed_addr constant [28 x i8] c"tv_secretbox_xchacha20: ok\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tv_secretbox_xchacha20poly1305 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tv_secretbox_xchacha20poly1305() #0 {
  %1 = alloca %struct.TYPE_2__*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = load i64, i64* @crypto_secretbox_xchacha20poly1305_KEYBYTES, align 8
  %11 = call i64 @sodium_malloc(i64 %10)
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** %4, align 8
  %13 = load i64, i64* @crypto_secretbox_xchacha20poly1305_NONCEBYTES, align 8
  %14 = call i64 @sodium_malloc(i64 %13)
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %3, align 8
  store i64 0, i64* %9, align 8
  br label %16

16:                                               ; preds = %254, %0
  %17 = load i64, i64* %9, align 8
  %18 = icmp ult i64 %17, 10
  br i1 %18, label %19, label %257

19:                                               ; preds = %16
  %20 = load i64, i64* %9, align 8
  %21 = getelementptr inbounds [10 x %struct.TYPE_2__], [10 x %struct.TYPE_2__]* @tv_secretbox_xchacha20poly1305.tvs, i64 0, i64 %20
  store %struct.TYPE_2__* %21, %struct.TYPE_2__** %1, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @strlen(i32 %24)
  %26 = sdiv i32 %25, 2
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i64 @sodium_malloc(i64 %28)
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %2, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = load i64, i64* @crypto_secretbox_xchacha20poly1305_KEYBYTES, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @strlen(i32 %38)
  %40 = call i32 @sodium_hex2bin(i8* %31, i64 %32, i32 %35, i32 %39, i32* null, i32* null, i32* null)
  %41 = load i8*, i8** %3, align 8
  %42 = load i64, i64* @crypto_secretbox_xchacha20poly1305_NONCEBYTES, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @strlen(i32 %48)
  %50 = call i32 @sodium_hex2bin(i8* %41, i64 %42, i32 %45, i32 %49, i32* null, i32* null, i32* null)
  %51 = load i8*, i8** %2, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @strlen(i32 %58)
  %60 = call i32 @sodium_hex2bin(i8* %51, i64 %52, i32 %55, i32 %59, i32* null, i32* null, i32* null)
  %61 = load i64, i64* @crypto_secretbox_xchacha20poly1305_MACBYTES, align 8
  %62 = load i64, i64* %7, align 8
  %63 = add i64 %61, %62
  %64 = call i64 @sodium_malloc(i64 %63)
  %65 = inttoptr i64 %64 to i8*
  store i8* %65, i8** %5, align 8
  %66 = load i64, i64* @crypto_secretbox_xchacha20poly1305_MACBYTES, align 8
  %67 = load i64, i64* %7, align 8
  %68 = add i64 %66, %67
  %69 = call i64 @sodium_malloc(i64 %68)
  %70 = inttoptr i64 %69 to i8*
  store i8* %70, i8** %6, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = load i64, i64* @crypto_secretbox_xchacha20poly1305_MACBYTES, align 8
  %73 = load i64, i64* %7, align 8
  %74 = add i64 %72, %73
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @strlen(i32 %80)
  %82 = call i32 @sodium_hex2bin(i8* %71, i64 %74, i32 %77, i32 %81, i32* null, i32* null, i32* null)
  %83 = load i8*, i8** %6, align 8
  %84 = load i8*, i8** %2, align 8
  %85 = load i8*, i8** %3, align 8
  %86 = load i8*, i8** %4, align 8
  %87 = call i64 @crypto_secretbox_xchacha20poly1305_easy(i8* %83, i8* %84, i64 0, i8* %85, i8* %86)
  %88 = icmp eq i64 %87, 0
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  %91 = load i8*, i8** %6, align 8
  %92 = load i8*, i8** %2, align 8
  %93 = load i64, i64* %7, align 8
  %94 = load i8*, i8** %3, align 8
  %95 = load i8*, i8** %4, align 8
  %96 = call i64 @crypto_secretbox_xchacha20poly1305_easy(i8* %91, i8* %92, i64 %93, i8* %94, i8* %95)
  %97 = icmp eq i64 %96, 0
  %98 = zext i1 %97 to i32
  %99 = call i32 @assert(i32 %98)
  %100 = load i8*, i8** %5, align 8
  %101 = load i8*, i8** %6, align 8
  %102 = load i64, i64* @crypto_secretbox_xchacha20poly1305_MACBYTES, align 8
  %103 = load i64, i64* %7, align 8
  %104 = add i64 %102, %103
  %105 = call i64 @memcmp(i8* %100, i8* %101, i64 %104)
  %106 = icmp eq i64 %105, 0
  %107 = zext i1 %106 to i32
  %108 = call i32 @assert(i32 %107)
  %109 = load i64, i64* @crypto_secretbox_xchacha20poly1305_MACBYTES, align 8
  %110 = load i64, i64* %7, align 8
  %111 = add i64 %109, %110
  %112 = call i64 @randombytes_uniform(i64 %111)
  store i64 %112, i64* %8, align 8
  %113 = load i8*, i8** %6, align 8
  %114 = load i8*, i8** %6, align 8
  %115 = load i64, i64* @crypto_secretbox_xchacha20poly1305_MACBYTES, align 8
  %116 = sub i64 %115, 1
  %117 = load i8*, i8** %3, align 8
  %118 = load i8*, i8** %4, align 8
  %119 = call i32 @crypto_secretbox_xchacha20poly1305_open_easy(i8* %113, i8* %114, i64 %116, i8* %117, i8* %118)
  %120 = icmp eq i32 %119, -1
  %121 = zext i1 %120 to i32
  %122 = call i32 @assert(i32 %121)
  %123 = load i8*, i8** %6, align 8
  %124 = load i8*, i8** %6, align 8
  %125 = load i8*, i8** %3, align 8
  %126 = load i8*, i8** %4, align 8
  %127 = call i32 @crypto_secretbox_xchacha20poly1305_open_easy(i8* %123, i8* %124, i64 0, i8* %125, i8* %126)
  %128 = icmp eq i32 %127, -1
  %129 = zext i1 %128 to i32
  %130 = call i32 @assert(i32 %129)
  %131 = load i8*, i8** %6, align 8
  %132 = load i64, i64* %8, align 8
  %133 = getelementptr inbounds i8, i8* %131, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = add i8 %134, 1
  store i8 %135, i8* %133, align 1
  %136 = load i8*, i8** %6, align 8
  %137 = load i8*, i8** %6, align 8
  %138 = load i64, i64* @crypto_secretbox_xchacha20poly1305_MACBYTES, align 8
  %139 = load i64, i64* %7, align 8
  %140 = add i64 %138, %139
  %141 = load i8*, i8** %3, align 8
  %142 = load i8*, i8** %4, align 8
  %143 = call i32 @crypto_secretbox_xchacha20poly1305_open_easy(i8* %136, i8* %137, i64 %140, i8* %141, i8* %142)
  %144 = icmp eq i32 %143, -1
  %145 = zext i1 %144 to i32
  %146 = call i32 @assert(i32 %145)
  %147 = load i8*, i8** %6, align 8
  %148 = load i64, i64* %8, align 8
  %149 = getelementptr inbounds i8, i8* %147, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = add i8 %150, -1
  store i8 %151, i8* %149, align 1
  %152 = load i8*, i8** %3, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 0
  %154 = load i8, i8* %153, align 1
  %155 = add i8 %154, 1
  store i8 %155, i8* %153, align 1
  %156 = load i8*, i8** %6, align 8
  %157 = load i8*, i8** %6, align 8
  %158 = load i64, i64* @crypto_secretbox_xchacha20poly1305_MACBYTES, align 8
  %159 = load i64, i64* %7, align 8
  %160 = add i64 %158, %159
  %161 = load i8*, i8** %3, align 8
  %162 = load i8*, i8** %4, align 8
  %163 = call i32 @crypto_secretbox_xchacha20poly1305_open_easy(i8* %156, i8* %157, i64 %160, i8* %161, i8* %162)
  %164 = icmp eq i32 %163, -1
  %165 = zext i1 %164 to i32
  %166 = call i32 @assert(i32 %165)
  %167 = load i8*, i8** %3, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 0
  %169 = load i8, i8* %168, align 1
  %170 = add i8 %169, -1
  store i8 %170, i8* %168, align 1
  %171 = load i8*, i8** %6, align 8
  %172 = load i8*, i8** %6, align 8
  %173 = load i64, i64* @crypto_secretbox_xchacha20poly1305_MACBYTES, align 8
  %174 = load i64, i64* %7, align 8
  %175 = add i64 %173, %174
  %176 = load i8*, i8** %3, align 8
  %177 = load i8*, i8** %4, align 8
  %178 = call i32 @crypto_secretbox_xchacha20poly1305_open_easy(i8* %171, i8* %172, i64 %175, i8* %176, i8* %177)
  %179 = icmp eq i32 %178, 0
  %180 = zext i1 %179 to i32
  %181 = call i32 @assert(i32 %180)
  %182 = load i8*, i8** %6, align 8
  %183 = load i8*, i8** %6, align 8
  %184 = load i64, i64* @crypto_secretbox_xchacha20poly1305_MACBYTES, align 8
  %185 = sub i64 %184, 1
  %186 = load i8*, i8** %3, align 8
  %187 = load i8*, i8** %4, align 8
  %188 = call i32 @crypto_secretbox_xchacha20poly1305_open_easy(i8* %182, i8* %183, i64 %185, i8* %186, i8* %187)
  %189 = icmp eq i32 %188, -1
  %190 = zext i1 %189 to i32
  %191 = call i32 @assert(i32 %190)
  %192 = load i8*, i8** %6, align 8
  %193 = load i8*, i8** %6, align 8
  %194 = load i8*, i8** %3, align 8
  %195 = load i8*, i8** %4, align 8
  %196 = call i32 @crypto_secretbox_xchacha20poly1305_open_easy(i8* %192, i8* %193, i64 0, i8* %194, i8* %195)
  %197 = icmp eq i32 %196, -1
  %198 = zext i1 %197 to i32
  %199 = call i32 @assert(i32 %198)
  %200 = load i8*, i8** %2, align 8
  %201 = load i8*, i8** %6, align 8
  %202 = load i64, i64* %7, align 8
  %203 = call i64 @memcmp(i8* %200, i8* %201, i64 %202)
  %204 = icmp eq i64 %203, 0
  %205 = zext i1 %204 to i32
  %206 = call i32 @assert(i32 %205)
  %207 = load i8*, i8** %6, align 8
  %208 = load i8*, i8** %5, align 8
  %209 = load i64, i64* @crypto_secretbox_xchacha20poly1305_MACBYTES, align 8
  %210 = getelementptr inbounds i8, i8* %208, i64 %209
  %211 = load i8*, i8** %5, align 8
  %212 = load i64, i64* %7, align 8
  %213 = load i8*, i8** %3, align 8
  %214 = load i8*, i8** %4, align 8
  %215 = call i64 @crypto_secretbox_xchacha20poly1305_open_detached(i8* %207, i8* %210, i8* %211, i64 %212, i8* %213, i8* %214)
  %216 = icmp eq i64 %215, 0
  %217 = zext i1 %216 to i32
  %218 = call i32 @assert(i32 %217)
  %219 = load i8*, i8** %5, align 8
  %220 = load i64, i64* @crypto_secretbox_xchacha20poly1305_MACBYTES, align 8
  %221 = getelementptr inbounds i8, i8* %219, i64 %220
  %222 = load i8*, i8** %5, align 8
  %223 = load i64, i64* %7, align 8
  %224 = load i8*, i8** %3, align 8
  %225 = load i8*, i8** %4, align 8
  %226 = call i64 @crypto_secretbox_xchacha20poly1305_open_detached(i8* null, i8* %221, i8* %222, i64 %223, i8* %224, i8* %225)
  %227 = icmp eq i64 %226, 0
  %228 = zext i1 %227 to i32
  %229 = call i32 @assert(i32 %228)
  %230 = load i8*, i8** %6, align 8
  %231 = load i64, i64* @crypto_secretbox_xchacha20poly1305_MACBYTES, align 8
  %232 = getelementptr inbounds i8, i8* %230, i64 %231
  %233 = load i8*, i8** %6, align 8
  %234 = load i8*, i8** %2, align 8
  %235 = load i64, i64* %7, align 8
  %236 = load i8*, i8** %3, align 8
  %237 = load i8*, i8** %4, align 8
  %238 = call i32 @crypto_secretbox_xchacha20poly1305_detached(i8* %232, i8* %233, i8* %234, i64 %235, i8* %236, i8* %237)
  %239 = load i8*, i8** %5, align 8
  %240 = load i8*, i8** %6, align 8
  %241 = load i64, i64* @crypto_secretbox_xchacha20poly1305_MACBYTES, align 8
  %242 = load i64, i64* %7, align 8
  %243 = add i64 %241, %242
  %244 = call i64 @memcmp(i8* %239, i8* %240, i64 %243)
  %245 = icmp eq i64 %244, 0
  %246 = zext i1 %245 to i32
  %247 = call i32 @assert(i32 %246)
  %248 = load i8*, i8** %5, align 8
  %249 = call i32 @sodium_free(i8* %248)
  %250 = load i8*, i8** %6, align 8
  %251 = call i32 @sodium_free(i8* %250)
  %252 = load i8*, i8** %2, align 8
  %253 = call i32 @sodium_free(i8* %252)
  br label %254

254:                                              ; preds = %19
  %255 = load i64, i64* %9, align 8
  %256 = add i64 %255, 1
  store i64 %256, i64* %9, align 8
  br label %16

257:                                              ; preds = %16
  %258 = load i8*, i8** %3, align 8
  %259 = call i32 @sodium_free(i8* %258)
  %260 = load i8*, i8** %4, align 8
  %261 = call i32 @sodium_free(i8* %260)
  %262 = call i64 (...) @crypto_secretbox_xchacha20poly1305_keybytes()
  %263 = load i64, i64* @crypto_secretbox_xchacha20poly1305_KEYBYTES, align 8
  %264 = icmp eq i64 %262, %263
  %265 = zext i1 %264 to i32
  %266 = call i32 @assert(i32 %265)
  %267 = call i64 (...) @crypto_secretbox_xchacha20poly1305_noncebytes()
  %268 = load i64, i64* @crypto_secretbox_xchacha20poly1305_NONCEBYTES, align 8
  %269 = icmp eq i64 %267, %268
  %270 = zext i1 %269 to i32
  %271 = call i32 @assert(i32 %270)
  %272 = call i64 (...) @crypto_secretbox_xchacha20poly1305_macbytes()
  %273 = load i64, i64* @crypto_secretbox_xchacha20poly1305_MACBYTES, align 8
  %274 = icmp eq i64 %272, %273
  %275 = zext i1 %274 to i32
  %276 = call i32 @assert(i32 %275)
  %277 = call i64 (...) @crypto_secretbox_xchacha20poly1305_messagebytes_max()
  %278 = load i64, i64* @crypto_secretbox_xchacha20poly1305_MESSAGEBYTES_MAX, align 8
  %279 = icmp eq i64 %277, %278
  %280 = zext i1 %279 to i32
  %281 = call i32 @assert(i32 %280)
  %282 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.39, i64 0, i64 0))
  ret void
}

declare dso_local i64 @sodium_malloc(i64) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @sodium_hex2bin(i8*, i64, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @crypto_secretbox_xchacha20poly1305_easy(i8*, i8*, i64, i8*, i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i64 @randombytes_uniform(i64) #1

declare dso_local i32 @crypto_secretbox_xchacha20poly1305_open_easy(i8*, i8*, i64, i8*, i8*) #1

declare dso_local i64 @crypto_secretbox_xchacha20poly1305_open_detached(i8*, i8*, i8*, i64, i8*, i8*) #1

declare dso_local i32 @crypto_secretbox_xchacha20poly1305_detached(i8*, i8*, i8*, i64, i8*, i8*) #1

declare dso_local i32 @sodium_free(i8*) #1

declare dso_local i64 @crypto_secretbox_xchacha20poly1305_keybytes(...) #1

declare dso_local i64 @crypto_secretbox_xchacha20poly1305_noncebytes(...) #1

declare dso_local i64 @crypto_secretbox_xchacha20poly1305_macbytes(...) #1

declare dso_local i64 @crypto_secretbox_xchacha20poly1305_messagebytes_max(...) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
