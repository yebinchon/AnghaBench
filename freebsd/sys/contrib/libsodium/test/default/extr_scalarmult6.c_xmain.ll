; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_scalarmult6.c_xmain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_scalarmult6.c_xmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_scalarmult_BYTES = common dso_local global i32 0, align 4
@crypto_scalarmult_SCALARBYTES = common dso_local global i32 0, align 4
@bobsk_ = common dso_local global i32 0, align 4
@alicepk_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"0x%02x\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %7 = load i32, i32* @crypto_scalarmult_BYTES, align 4
  %8 = call i64 @sodium_malloc(i32 %7)
  %9 = inttoptr i64 %8 to i8*
  store i8* %9, i8** %2, align 8
  %10 = load i32, i32* @crypto_scalarmult_SCALARBYTES, align 4
  %11 = call i64 @sodium_malloc(i32 %10)
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** %3, align 8
  %13 = load i32, i32* @crypto_scalarmult_SCALARBYTES, align 4
  %14 = call i64 @sodium_malloc(i32 %13)
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %4, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %0
  %19 = load i8*, i8** %3, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i8*, i8** %4, align 8
  %23 = icmp ne i8* %22, null
  br label %24

24:                                               ; preds = %21, %18, %0
  %25 = phi i1 [ false, %18 ], [ false, %0 ], [ %23, %21 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i8*, i8** %3, align 8
  %29 = load i32, i32* @bobsk_, align 4
  %30 = load i32, i32* @crypto_scalarmult_SCALARBYTES, align 4
  %31 = call i32 @memcpy(i8* %28, i32 %29, i32 %30)
  %32 = load i8*, i8** %4, align 8
  %33 = load i32, i32* @alicepk_, align 4
  %34 = load i32, i32* @crypto_scalarmult_SCALARBYTES, align 4
  %35 = call i32 @memcpy(i8* %32, i32 %33, i32 %34)
  %36 = load i8*, i8** %2, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @crypto_scalarmult(i8* %36, i8* %37, i8* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 @sodium_free(i8* %44)
  %46 = load i8*, i8** %3, align 8
  %47 = call i32 @sodium_free(i8* %46)
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %72, %24
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 32
  br i1 %50, label %51, label %75

51:                                               ; preds = %48
  %52 = load i32, i32* %5, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %58

56:                                               ; preds = %51
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %54
  %59 = load i8*, i8** %2, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %5, align 4
  %67 = srem i32 %66, 8
  %68 = icmp eq i32 %67, 7
  br i1 %68, label %69, label %71

69:                                               ; preds = %58
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %58
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %48

75:                                               ; preds = %48
  %76 = load i8*, i8** %2, align 8
  %77 = call i32 @sodium_free(i8* %76)
  ret i32 0
}

declare dso_local i64 @sodium_malloc(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @crypto_scalarmult(i8*, i8*, i8*) #1

declare dso_local i32 @sodium_free(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
