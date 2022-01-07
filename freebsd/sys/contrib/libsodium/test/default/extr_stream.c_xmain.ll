; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_stream.c_xmain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_stream.c_xmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@output = common dso_local global i64* null, align 8
@nonce = common dso_local global i32 0, align 4
@firstkey = common dso_local global i32 0, align 4
@h = common dso_local global i64* null, align 8
@hex = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"xsalsa20\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = load i64*, i64** @output, align 8
  %4 = call i32 @randombytes_buf(i64* %3, i32 8)
  %5 = load i64*, i64** @output, align 8
  %6 = load i32, i32* @nonce, align 4
  %7 = load i32, i32* @firstkey, align 4
  %8 = call i32 @crypto_stream(i64* %5, i32 8, i32 %6, i32 %7)
  %9 = load i64*, i64** @h, align 8
  %10 = load i64*, i64** @output, align 8
  %11 = call i32 @crypto_hash_sha256(i64* %9, i64* %10, i32 8)
  %12 = load i8*, i8** @hex, align 8
  %13 = load i64*, i64** @h, align 8
  %14 = call i32 @sodium_bin2hex(i8* %12, i32 8, i64* %13, i32 8)
  %15 = load i8*, i8** @hex, align 8
  %16 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = call i32 @assert(i32 0)
  %18 = load i64*, i64** @output, align 8
  %19 = load i64*, i64** @output, align 8
  %20 = load i32, i32* @nonce, align 4
  %21 = load i32, i32* @firstkey, align 4
  %22 = call i32 @crypto_stream_xsalsa20_xor_ic(i64* %18, i64* %19, i32 4000, i32 %20, i64 0, i32 %21)
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %35, %0
  %24 = load i32, i32* %2, align 4
  %25 = icmp slt i32 %24, 4000
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load i64*, i64** @output, align 8
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  br label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %2, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %2, align 4
  br label %23

38:                                               ; preds = %23
  %39 = load i64*, i64** @output, align 8
  %40 = load i64*, i64** @output, align 8
  %41 = load i32, i32* @nonce, align 4
  %42 = load i32, i32* @firstkey, align 4
  %43 = call i32 @crypto_stream_xsalsa20_xor_ic(i64* %39, i64* %40, i32 4000, i32 %41, i64 1, i32 %42)
  %44 = load i64*, i64** @h, align 8
  %45 = load i64*, i64** @output, align 8
  %46 = call i32 @crypto_hash_sha256(i64* %44, i64* %45, i32 8)
  %47 = load i8*, i8** @hex, align 8
  %48 = load i64*, i64** @h, align 8
  %49 = call i32 @sodium_bin2hex(i8* %47, i32 8, i64* %48, i32 8)
  %50 = load i8*, i8** @hex, align 8
  %51 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %50)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %70, %38
  %53 = load i32, i32* %2, align 4
  %54 = icmp slt i32 %53, 64
  br i1 %54, label %55, label %73

55:                                               ; preds = %52
  %56 = load i64*, i64** @output, align 8
  %57 = load i32, i32* %2, align 4
  %58 = call i32 @memset(i64* %56, i32 %57, i32 64)
  %59 = load i64*, i64** @output, align 8
  %60 = load i32, i32* %2, align 4
  %61 = and i32 %60, 255
  %62 = load i32, i32* @nonce, align 4
  %63 = load i32, i32* @firstkey, align 4
  %64 = call i32 @crypto_stream(i64* %59, i32 %61, i32 %62, i32 %63)
  %65 = load i8*, i8** @hex, align 8
  %66 = load i64*, i64** @output, align 8
  %67 = call i32 @sodium_bin2hex(i8* %65, i32 8, i64* %66, i32 64)
  %68 = load i8*, i8** @hex, align 8
  %69 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %68)
  br label %70

70:                                               ; preds = %55
  %71 = load i32, i32* %2, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %2, align 4
  br label %52

73:                                               ; preds = %52
  %74 = load i64*, i64** @output, align 8
  %75 = call i32 @memset(i64* %74, i32 0, i32 192)
  %76 = load i64*, i64** @output, align 8
  %77 = load i64*, i64** @output, align 8
  %78 = load i32, i32* @nonce, align 4
  %79 = load i32, i32* @firstkey, align 4
  %80 = call i32 @crypto_stream_xsalsa20_xor_ic(i64* %76, i64* %77, i32 192, i32 %78, i64 4294967295, i32 %79)
  %81 = load i8*, i8** @hex, align 8
  %82 = load i64*, i64** @output, align 8
  %83 = call i32 @sodium_bin2hex(i8* %81, i32 385, i64* %82, i32 192)
  %84 = load i8*, i8** @hex, align 8
  %85 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %84)
  %86 = call i32 (...) @crypto_stream_keybytes()
  %87 = icmp ugt i32 %86, 0
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  %90 = call i32 (...) @crypto_stream_noncebytes()
  %91 = icmp ugt i32 %90, 0
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = call i32 (...) @crypto_stream_messagebytes_max()
  %95 = icmp ugt i32 %94, 0
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  %98 = call i32 (...) @crypto_stream_primitive()
  %99 = call i64 @strcmp(i32 %98, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %100 = icmp eq i64 %99, 0
  %101 = zext i1 %100 to i32
  %102 = call i32 @assert(i32 %101)
  %103 = call i32 (...) @crypto_stream_keybytes()
  %104 = call i32 (...) @crypto_stream_xsalsa20_keybytes()
  %105 = icmp eq i32 %103, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @assert(i32 %106)
  %108 = call i32 (...) @crypto_stream_noncebytes()
  %109 = call i32 (...) @crypto_stream_xsalsa20_noncebytes()
  %110 = icmp eq i32 %108, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 @assert(i32 %111)
  %113 = call i32 (...) @crypto_stream_messagebytes_max()
  %114 = call i32 (...) @crypto_stream_xsalsa20_messagebytes_max()
  %115 = icmp eq i32 %113, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 @assert(i32 %116)
  ret i32 0
}

declare dso_local i32 @randombytes_buf(i64*, i32) #1

declare dso_local i32 @crypto_stream(i64*, i32, i32, i32) #1

declare dso_local i32 @crypto_hash_sha256(i64*, i64*, i32) #1

declare dso_local i32 @sodium_bin2hex(i8*, i32, i64*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @crypto_stream_xsalsa20_xor_ic(i64*, i64*, i32, i32, i64, i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @crypto_stream_keybytes(...) #1

declare dso_local i32 @crypto_stream_noncebytes(...) #1

declare dso_local i32 @crypto_stream_messagebytes_max(...) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @crypto_stream_primitive(...) #1

declare dso_local i32 @crypto_stream_xsalsa20_keybytes(...) #1

declare dso_local i32 @crypto_stream_xsalsa20_noncebytes(...) #1

declare dso_local i32 @crypto_stream_xsalsa20_messagebytes_max(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
