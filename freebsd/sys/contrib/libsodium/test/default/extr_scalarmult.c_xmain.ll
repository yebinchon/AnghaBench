; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_scalarmult.c_xmain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_scalarmult.c_xmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_scalarmult_BYTES = common dso_local global i32 0, align 4
@alicesk = common dso_local global i32 0, align 4
@hex = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@bobsk = common dso_local global i32 0, align 4
@small_order_p = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"curve25519\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = load i32, i32* @crypto_scalarmult_BYTES, align 4
  %7 = call i64 @sodium_malloc(i32 %6)
  %8 = inttoptr i64 %7 to i8*
  store i8* %8, i8** %2, align 8
  %9 = load i32, i32* @crypto_scalarmult_BYTES, align 4
  %10 = call i64 @sodium_malloc(i32 %9)
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** %3, align 8
  %12 = load i32, i32* @crypto_scalarmult_BYTES, align 4
  %13 = call i64 @sodium_malloc(i32 %12)
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %0
  %18 = load i8*, i8** %3, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i8*, i8** %4, align 8
  %22 = icmp ne i8* %21, null
  br label %23

23:                                               ; preds = %20, %17, %0
  %24 = phi i1 [ false, %17 ], [ false, %0 ], [ %22, %20 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i8*, i8** %2, align 8
  %28 = load i32, i32* @alicesk, align 4
  %29 = call i32 @crypto_scalarmult_base(i8* %27, i32 %28)
  %30 = load i8*, i8** @hex, align 8
  %31 = load i8*, i8** %2, align 8
  %32 = load i32, i32* @crypto_scalarmult_BYTES, align 4
  %33 = call i32 @sodium_bin2hex(i8* %30, i32 8, i8* %31, i32 %32)
  %34 = load i8*, i8** @hex, align 8
  %35 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %34)
  %36 = load i8*, i8** %3, align 8
  %37 = load i32, i32* @bobsk, align 4
  %38 = call i32 @crypto_scalarmult_base(i8* %36, i32 %37)
  %39 = load i8*, i8** @hex, align 8
  %40 = load i8*, i8** %3, align 8
  %41 = load i32, i32* @crypto_scalarmult_BYTES, align 4
  %42 = call i32 @sodium_bin2hex(i8* %39, i32 8, i8* %40, i32 %41)
  %43 = load i8*, i8** @hex, align 8
  %44 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %43)
  %45 = load i8*, i8** %4, align 8
  %46 = load i32, i32* @alicesk, align 4
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 @crypto_scalarmult(i8* %45, i32 %46, i8* %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load i8*, i8** @hex, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = load i32, i32* @crypto_scalarmult_BYTES, align 4
  %56 = call i32 @sodium_bin2hex(i8* %53, i32 8, i8* %54, i32 %55)
  %57 = load i8*, i8** @hex, align 8
  %58 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %57)
  %59 = load i8*, i8** %4, align 8
  %60 = load i32, i32* @bobsk, align 4
  %61 = load i8*, i8** %2, align 8
  %62 = call i32 @crypto_scalarmult(i8* %59, i32 %60, i8* %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp eq i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load i8*, i8** @hex, align 8
  %68 = load i8*, i8** %4, align 8
  %69 = load i32, i32* @crypto_scalarmult_BYTES, align 4
  %70 = call i32 @sodium_bin2hex(i8* %67, i32 8, i8* %68, i32 %69)
  %71 = load i8*, i8** @hex, align 8
  %72 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %71)
  %73 = load i8*, i8** %4, align 8
  %74 = load i32, i32* @bobsk, align 4
  %75 = load i8*, i8** @small_order_p, align 8
  %76 = call i32 @crypto_scalarmult(i8* %73, i32 %74, i8* %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp eq i32 %77, -1
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = load i8*, i8** %3, align 8
  %82 = call i32 @sodium_free(i8* %81)
  %83 = load i8*, i8** %2, align 8
  %84 = call i32 @sodium_free(i8* %83)
  %85 = load i8*, i8** %4, align 8
  %86 = call i32 @sodium_free(i8* %85)
  %87 = call i32 (...) @crypto_scalarmult_bytes()
  %88 = icmp ugt i32 %87, 0
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  %91 = call i32 (...) @crypto_scalarmult_scalarbytes()
  %92 = icmp ugt i32 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  %95 = call i32 (...) @crypto_scalarmult_primitive()
  %96 = call i64 @strcmp(i32 %95, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %97 = icmp eq i64 %96, 0
  %98 = zext i1 %97 to i32
  %99 = call i32 @assert(i32 %98)
  %100 = call i32 (...) @crypto_scalarmult_bytes()
  %101 = call i32 (...) @crypto_scalarmult_curve25519_bytes()
  %102 = icmp eq i32 %100, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 @assert(i32 %103)
  %105 = call i32 (...) @crypto_scalarmult_scalarbytes()
  %106 = call i32 (...) @crypto_scalarmult_curve25519_scalarbytes()
  %107 = icmp eq i32 %105, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  %110 = call i32 (...) @crypto_scalarmult_bytes()
  %111 = call i32 (...) @crypto_scalarmult_scalarbytes()
  %112 = icmp eq i32 %110, %111
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  ret i32 0
}

declare dso_local i64 @sodium_malloc(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @crypto_scalarmult_base(i8*, i32) #1

declare dso_local i32 @sodium_bin2hex(i8*, i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @crypto_scalarmult(i8*, i32, i8*) #1

declare dso_local i32 @sodium_free(i8*) #1

declare dso_local i32 @crypto_scalarmult_bytes(...) #1

declare dso_local i32 @crypto_scalarmult_scalarbytes(...) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @crypto_scalarmult_primitive(...) #1

declare dso_local i32 @crypto_scalarmult_curve25519_bytes(...) #1

declare dso_local i32 @crypto_scalarmult_curve25519_scalarbytes(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
