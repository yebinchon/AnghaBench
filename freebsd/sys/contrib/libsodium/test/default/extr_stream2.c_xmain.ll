; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_stream2.c_xmain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_stream2.c_xmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@output = common dso_local global i64* null, align 8
@noncesuffix = common dso_local global i32 0, align 4
@secondkey = common dso_local global i32 0, align 4
@h = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = load i64*, i64** @output, align 8
  %4 = load i32, i32* @noncesuffix, align 4
  %5 = load i32, i32* @secondkey, align 4
  %6 = call i32 @crypto_stream_salsa20(i64* %3, i32 8, i32 %4, i32 %5)
  %7 = load i32*, i32** @h, align 8
  %8 = load i64*, i64** @output, align 8
  %9 = call i32 @crypto_hash_sha256(i32* %7, i64* %8, i32 8)
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %20, %0
  %11 = load i32, i32* %2, align 4
  %12 = icmp slt i32 %11, 32
  br i1 %12, label %13, label %23

13:                                               ; preds = %10
  %14 = load i32*, i32** @h, align 8
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %13
  %21 = load i32, i32* %2, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %2, align 4
  br label %10

23:                                               ; preds = %10
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 @assert(i32 0)
  %26 = load i64*, i64** @output, align 8
  %27 = load i64*, i64** @output, align 8
  %28 = load i32, i32* @noncesuffix, align 4
  %29 = load i32, i32* @secondkey, align 4
  %30 = call i32 @crypto_stream_salsa20_xor_ic(i64* %26, i64* %27, i32 4000, i32 %28, i32 0, i32 %29)
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %43, %23
  %32 = load i32, i32* %2, align 4
  %33 = icmp slt i32 %32, 4000
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = load i64*, i64** @output, align 8
  %36 = load i32, i32* %2, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  br label %43

43:                                               ; preds = %34
  %44 = load i32, i32* %2, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %2, align 4
  br label %31

46:                                               ; preds = %31
  %47 = load i64*, i64** @output, align 8
  %48 = load i64*, i64** @output, align 8
  %49 = load i32, i32* @noncesuffix, align 4
  %50 = load i32, i32* @secondkey, align 4
  %51 = call i32 @crypto_stream_salsa20_xor_ic(i64* %47, i64* %48, i32 4000, i32 %49, i32 1, i32 %50)
  %52 = load i32*, i32** @h, align 8
  %53 = load i64*, i64** @output, align 8
  %54 = call i32 @crypto_hash_sha256(i32* %52, i64* %53, i32 8)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %65, %46
  %56 = load i32, i32* %2, align 4
  %57 = icmp slt i32 %56, 32
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load i32*, i32** @h, align 8
  %60 = load i32, i32* %2, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %58
  %66 = load i32, i32* %2, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %2, align 4
  br label %55

68:                                               ; preds = %55
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %70 = call i32 (...) @crypto_stream_salsa20_keybytes()
  %71 = icmp ugt i32 %70, 0
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = call i32 (...) @crypto_stream_salsa20_noncebytes()
  %75 = icmp ugt i32 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = call i32 (...) @crypto_stream_salsa20_messagebytes_max()
  %79 = icmp ugt i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  ret i32 0
}

declare dso_local i32 @crypto_stream_salsa20(i64*, i32, i32, i32) #1

declare dso_local i32 @crypto_hash_sha256(i32*, i64*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @crypto_stream_salsa20_xor_ic(i64*, i64*, i32, i32, i32, i32) #1

declare dso_local i32 @crypto_stream_salsa20_keybytes(...) #1

declare dso_local i32 @crypto_stream_salsa20_noncebytes(...) #1

declare dso_local i32 @crypto_stream_salsa20_messagebytes_max(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
