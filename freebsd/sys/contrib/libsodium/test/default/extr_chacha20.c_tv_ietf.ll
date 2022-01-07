; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_chacha20.c_tv_ietf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_chacha20.c_tv_ietf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i8*, i32 }

@tv_ietf.tests = internal global [7 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), i32 1 }, %struct.anon { i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), i32 1 }, %struct.anon { i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), i32 2 }, %struct.anon { i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0), i32 1 }, %struct.anon { i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0), i32 -1 }], align 16
@.str = private unnamed_addr constant [65 x i8] c"0000000000000000000000000000000000000000000000000000000000000000\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"000000000000000000000000\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"0000000000000000000000000000000000000000000000000000000000000001\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"00ff000000000000000000000000000000000000000000000000000000000000\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"000000000000000000000002\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"000000090000004a00000000\00", align 1
@crypto_stream_chacha20_KEYBYTES = common dso_local global i32 0, align 4
@crypto_stream_chacha20_IETF_NONCEBYTES = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"[%s]\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"Failed with length %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tv_ietf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tv_ietf() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [160 x i8], align 16
  %6 = alloca [160 x i8], align 16
  %7 = alloca [321 x i8], align 16
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = load i32, i32* @crypto_stream_chacha20_KEYBYTES, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %1, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %2, align 8
  %14 = load i32, i32* @crypto_stream_chacha20_IETF_NONCEBYTES, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %3, align 8
  store i64 0, i64* %8, align 8
  %17 = getelementptr inbounds [160 x i8], [160 x i8]* %6, i64 0, i64 0
  %18 = call i32 @memset(i8* %17, i32 0, i32 160)
  br label %19

19:                                               ; preds = %87, %0
  %20 = trunc i64 %11 to i32
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @tv_ietf.tests, i64 0, i64 %21
  %23 = getelementptr inbounds %struct.anon, %struct.anon* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @tv_ietf.tests, i64 0, i64 %25
  %27 = getelementptr inbounds %struct.anon, %struct.anon* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = call i32 @sodium_hex2bin(i8* %13, i32 %20, i8* %24, i32 %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32* null, i32* null)
  %31 = trunc i64 %15 to i32
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @tv_ietf.tests, i64 0, i64 %32
  %34 = getelementptr inbounds %struct.anon, %struct.anon* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @tv_ietf.tests, i64 0, i64 %36
  %38 = getelementptr inbounds %struct.anon, %struct.anon* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = call i32 @sodium_hex2bin(i8* %16, i32 %31, i8* %35, i32 %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32* null, i32* null)
  %42 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %43 = call i32 @memset(i8* %42, i32 0, i32 160)
  %44 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %45 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @tv_ietf.tests, i64 0, i64 %46
  %48 = getelementptr inbounds %struct.anon, %struct.anon* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @crypto_stream_chacha20_ietf_xor_ic(i8* %44, i8* %45, i32 160, i8* %16, i32 %49, i8* %13)
  %51 = getelementptr inbounds [321 x i8], [321 x i8]* %7, i64 0, i64 0
  %52 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %53 = call i32 @sodium_bin2hex(i8* %51, i32 321, i8* %52, i32 160)
  %54 = getelementptr inbounds [321 x i8], [321 x i8]* %7, i64 0, i64 0
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %54)
  store i64 1, i64* %9, align 8
  br label %56

56:                                               ; preds = %83, %19
  %57 = load i64, i64* %9, align 8
  %58 = icmp ult i64 %57, 160
  br i1 %58, label %59, label %86

59:                                               ; preds = %56
  %60 = load i64, i64* %9, align 8
  %61 = call i64 @sodium_malloc(i64 %60)
  %62 = inttoptr i64 %61 to i8*
  store i8* %62, i8** %4, align 8
  %63 = load i8*, i8** %4, align 8
  %64 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %65 = load i64, i64* %9, align 8
  %66 = trunc i64 %65 to i32
  %67 = load i64, i64* %8, align 8
  %68 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @tv_ietf.tests, i64 0, i64 %67
  %69 = getelementptr inbounds %struct.anon, %struct.anon* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @crypto_stream_chacha20_ietf_xor_ic(i8* %63, i8* %64, i32 %66, i8* %16, i32 %70, i8* %13)
  %72 = load i8*, i8** %4, align 8
  %73 = getelementptr inbounds [160 x i8], [160 x i8]* %6, i64 0, i64 0
  %74 = load i64, i64* %9, align 8
  %75 = call i64 @memcmp(i8* %72, i8* %73, i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %59
  %78 = load i64, i64* %9, align 8
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i64 %78)
  br label %80

80:                                               ; preds = %77, %59
  %81 = load i8*, i8** %4, align 8
  %82 = call i32 @sodium_free(i8* %81)
  br label %83

83:                                               ; preds = %80
  %84 = load i64, i64* %9, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %9, align 8
  br label %56

86:                                               ; preds = %56
  br label %87

87:                                               ; preds = %86
  %88 = load i64, i64* %8, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %8, align 8
  %90 = icmp ult i64 %89, 7
  br i1 %90, label %19, label %91

91:                                               ; preds = %87
  %92 = call i32 @assert(i32 1)
  store i64 1, i64* %9, align 8
  br label %93

93:                                               ; preds = %110, %91
  %94 = load i64, i64* %9, align 8
  %95 = icmp ult i64 %94, 66
  br i1 %95, label %96, label %113

96:                                               ; preds = %93
  %97 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %98 = load i64, i64* %9, align 8
  %99 = and i64 %98, 255
  %100 = trunc i64 %99 to i32
  %101 = call i32 @memset(i8* %97, i32 %100, i32 160)
  %102 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %103 = load i64, i64* %9, align 8
  %104 = call i32 @crypto_stream_chacha20(i8* %102, i64 %103, i8* %16, i8* %13)
  %105 = getelementptr inbounds [321 x i8], [321 x i8]* %7, i64 0, i64 0
  %106 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %107 = call i32 @sodium_bin2hex(i8* %105, i32 321, i8* %106, i32 160)
  %108 = getelementptr inbounds [321 x i8], [321 x i8]* %7, i64 0, i64 0
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %108)
  br label %110

110:                                              ; preds = %96
  %111 = load i64, i64* %9, align 8
  %112 = add i64 %111, 3
  store i64 %112, i64* %9, align 8
  br label %93

113:                                              ; preds = %93
  %114 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %115 = call i32 @randombytes_buf(i8* %114, i32 160)
  %116 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %117 = call i64 @crypto_stream_chacha20_ietf(i8* %116, i32 160, i8* %16, i8* %13)
  %118 = getelementptr inbounds [321 x i8], [321 x i8]* %7, i64 0, i64 0
  %119 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %120 = call i32 @sodium_bin2hex(i8* %118, i32 321, i8* %119, i32 160)
  %121 = getelementptr inbounds [321 x i8], [321 x i8]* %7, i64 0, i64 0
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %121)
  %123 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %124 = call i64 @crypto_stream_chacha20_ietf(i8* %123, i32 0, i8* %16, i8* %13)
  %125 = icmp eq i64 %124, 0
  %126 = zext i1 %125 to i32
  %127 = call i32 @assert(i32 %126)
  %128 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %129 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %130 = call i64 @crypto_stream_chacha20_ietf_xor(i8* %128, i8* %129, i32 0, i8* %16, i8* %13)
  %131 = icmp eq i64 %130, 0
  %132 = zext i1 %131 to i32
  %133 = call i32 @assert(i32 %132)
  %134 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %135 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %136 = call i64 @crypto_stream_chacha20_ietf_xor(i8* %134, i8* %135, i32 0, i8* %16, i8* %13)
  %137 = icmp eq i64 %136, 0
  %138 = zext i1 %137 to i32
  %139 = call i32 @assert(i32 %138)
  %140 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %141 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %142 = call i64 @crypto_stream_chacha20_ietf_xor_ic(i8* %140, i8* %141, i32 0, i8* %16, i32 1, i8* %13)
  %143 = icmp eq i64 %142, 0
  %144 = zext i1 %143 to i32
  %145 = call i32 @assert(i32 %144)
  %146 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %147 = call i32 @memset(i8* %146, i32 66, i32 160)
  %148 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %149 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %150 = call i64 @crypto_stream_chacha20_ietf_xor(i8* %148, i8* %149, i32 160, i8* %16, i8* %13)
  %151 = getelementptr inbounds [321 x i8], [321 x i8]* %7, i64 0, i64 0
  %152 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %153 = call i32 @sodium_bin2hex(i8* %151, i32 321, i8* %152, i32 160)
  %154 = getelementptr inbounds [321 x i8], [321 x i8]* %7, i64 0, i64 0
  %155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %154)
  %156 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %157 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %158 = call i64 @crypto_stream_chacha20_ietf_xor_ic(i8* %156, i8* %157, i32 160, i8* %16, i32 0, i8* %13)
  %159 = getelementptr inbounds [321 x i8], [321 x i8]* %7, i64 0, i64 0
  %160 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %161 = call i32 @sodium_bin2hex(i8* %159, i32 321, i8* %160, i32 160)
  %162 = getelementptr inbounds [321 x i8], [321 x i8]* %7, i64 0, i64 0
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %162)
  %164 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %165 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %166 = call i64 @crypto_stream_chacha20_ietf_xor_ic(i8* %164, i8* %165, i32 160, i8* %16, i32 1, i8* %13)
  %167 = getelementptr inbounds [321 x i8], [321 x i8]* %7, i64 0, i64 0
  %168 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %169 = call i32 @sodium_bin2hex(i8* %167, i32 321, i8* %168, i32 160)
  %170 = getelementptr inbounds [321 x i8], [321 x i8]* %7, i64 0, i64 0
  %171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %170)
  %172 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %172)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @sodium_hex2bin(i8*, i32, i8*, i32, i8*, i32*, i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @crypto_stream_chacha20_ietf_xor_ic(i8*, i8*, i32, i8*, i32, i8*) #2

declare dso_local i32 @sodium_bin2hex(i8*, i32, i8*, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i64 @sodium_malloc(i64) #2

declare dso_local i64 @memcmp(i8*, i8*, i64) #2

declare dso_local i32 @sodium_free(i8*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @crypto_stream_chacha20(i8*, i64, i8*, i8*) #2

declare dso_local i32 @randombytes_buf(i8*, i32) #2

declare dso_local i64 @crypto_stream_chacha20_ietf(i8*, i32, i8*, i8*) #2

declare dso_local i64 @crypto_stream_chacha20_ietf_xor(i8*, i8*, i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
