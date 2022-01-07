; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_auth7.c_xmain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_auth7.c_xmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@key = common dso_local global i32 0, align 4
@c = common dso_local global i32* null, align 8
@a = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"fail %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"forgery %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i64 0, i64* %2, align 8
  br label %3

3:                                                ; preds = %75, %0
  %4 = load i64, i64* %2, align 8
  %5 = icmp ult i64 %4, 8
  br i1 %5, label %6, label %78

6:                                                ; preds = %3
  %7 = load i32, i32* @key, align 4
  %8 = call i32 @crypto_auth_keygen(i32 %7)
  %9 = load i32*, i32** @c, align 8
  %10 = load i64, i64* %2, align 8
  %11 = call i32 @randombytes_buf(i32* %9, i64 %10)
  %12 = load i32*, i32** @a, align 8
  %13 = load i32*, i32** @c, align 8
  %14 = load i64, i64* %2, align 8
  %15 = load i32, i32* @key, align 4
  %16 = call i32 @crypto_auth_hmacsha512(i32* %12, i32* %13, i64 %14, i32 %15)
  %17 = load i32*, i32** @a, align 8
  %18 = load i32*, i32** @c, align 8
  %19 = load i64, i64* %2, align 8
  %20 = load i32, i32* @key, align 4
  %21 = call i64 @crypto_auth_hmacsha512_verify(i32* %17, i32* %18, i64 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %6
  %24 = load i64, i64* %2, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 100, i32* %1, align 4
  br label %79

27:                                               ; preds = %6
  %28 = load i64, i64* %2, align 8
  %29 = icmp ugt i64 %28, 0
  br i1 %29, label %30, label %74

30:                                               ; preds = %27
  %31 = call i32 (...) @rand()
  %32 = srem i32 %31, 255
  %33 = add nsw i32 1, %32
  %34 = load i32*, i32** @c, align 8
  %35 = call i32 (...) @rand()
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %2, align 8
  %38 = urem i64 %36, %37
  %39 = getelementptr inbounds i32, i32* %34, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, %33
  store i32 %41, i32* %39, align 4
  %42 = load i32*, i32** @a, align 8
  %43 = load i32*, i32** @c, align 8
  %44 = load i64, i64* %2, align 8
  %45 = load i32, i32* @key, align 4
  %46 = call i64 @crypto_auth_hmacsha512_verify(i32* %42, i32* %43, i64 %44, i32 %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %30
  %49 = load i64, i64* %2, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  store i32 100, i32* %1, align 4
  br label %79

52:                                               ; preds = %30
  %53 = call i32 (...) @rand()
  %54 = srem i32 %53, 255
  %55 = add nsw i32 1, %54
  %56 = load i32*, i32** @a, align 8
  %57 = call i32 (...) @rand()
  %58 = sext i32 %57 to i64
  %59 = urem i64 %58, 8
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, %55
  store i32 %62, i32* %60, align 4
  %63 = load i32*, i32** @a, align 8
  %64 = load i32*, i32** @c, align 8
  %65 = load i64, i64* %2, align 8
  %66 = load i32, i32* @key, align 4
  %67 = call i64 @crypto_auth_hmacsha512_verify(i32* %63, i32* %64, i64 %65, i32 %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %52
  %70 = load i64, i64* %2, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  store i32 100, i32* %1, align 4
  br label %79

73:                                               ; preds = %52
  br label %74

74:                                               ; preds = %73, %27
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %2, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %2, align 8
  br label %3

78:                                               ; preds = %3
  store i32 0, i32* %1, align 4
  br label %79

79:                                               ; preds = %78, %69, %48, %23
  %80 = load i32, i32* %1, align 4
  ret i32 %80
}

declare dso_local i32 @crypto_auth_keygen(i32) #1

declare dso_local i32 @randombytes_buf(i32*, i64) #1

declare dso_local i32 @crypto_auth_hmacsha512(i32*, i32*, i64, i32) #1

declare dso_local i64 @crypto_auth_hmacsha512_verify(i32*, i32*, i64, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @rand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
