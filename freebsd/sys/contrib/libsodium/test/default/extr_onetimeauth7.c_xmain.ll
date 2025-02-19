; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_onetimeauth7.c_xmain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_onetimeauth7.c_xmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@key = common dso_local global i32 0, align 4
@c = common dso_local global i32* null, align 8
@a = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"fail %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"forgery %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %72, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 1000
  br i1 %5, label %6, label %75

6:                                                ; preds = %3
  %7 = load i32, i32* @key, align 4
  %8 = call i32 @crypto_onetimeauth_keygen(i32 %7)
  %9 = load i32*, i32** @c, align 8
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @randombytes_buf(i32* %9, i32 %10)
  %12 = load i32*, i32** @a, align 8
  %13 = load i32*, i32** @c, align 8
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @key, align 4
  %16 = call i32 @crypto_onetimeauth(i32* %12, i32* %13, i32 %14, i32 %15)
  %17 = load i32*, i32** @a, align 8
  %18 = load i32*, i32** @c, align 8
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @key, align 4
  %21 = call i64 @crypto_onetimeauth_verify(i32* %17, i32* %18, i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 100, i32* %1, align 4
  br label %76

26:                                               ; preds = %6
  %27 = load i32, i32* %2, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %71

29:                                               ; preds = %26
  %30 = call i32 (...) @rand()
  %31 = srem i32 %30, 255
  %32 = add nsw i32 1, %31
  %33 = load i32*, i32** @c, align 8
  %34 = call i32 (...) @rand()
  %35 = load i32, i32* %2, align 4
  %36 = srem i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, %32
  store i32 %40, i32* %38, align 4
  %41 = load i32*, i32** @a, align 8
  %42 = load i32*, i32** @c, align 8
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* @key, align 4
  %45 = call i64 @crypto_onetimeauth_verify(i32* %41, i32* %42, i32 %43, i32 %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %29
  %48 = load i32, i32* %2, align 4
  %49 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  store i32 100, i32* %1, align 4
  br label %76

50:                                               ; preds = %29
  %51 = call i32 (...) @rand()
  %52 = srem i32 %51, 255
  %53 = add nsw i32 1, %52
  %54 = load i32*, i32** @a, align 8
  %55 = call i32 (...) @rand()
  %56 = sext i32 %55 to i64
  %57 = urem i64 %56, 8
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, %53
  store i32 %60, i32* %58, align 4
  %61 = load i32*, i32** @a, align 8
  %62 = load i32*, i32** @c, align 8
  %63 = load i32, i32* %2, align 4
  %64 = load i32, i32* @key, align 4
  %65 = call i64 @crypto_onetimeauth_verify(i32* %61, i32* %62, i32 %63, i32 %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %50
  %68 = load i32, i32* %2, align 4
  %69 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  store i32 100, i32* %1, align 4
  br label %76

70:                                               ; preds = %50
  br label %71

71:                                               ; preds = %70, %26
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %2, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %2, align 4
  br label %3

75:                                               ; preds = %3
  store i32 0, i32* %1, align 4
  br label %76

76:                                               ; preds = %75, %67, %47, %23
  %77 = load i32, i32* %1, align 4
  ret i32 %77
}

declare dso_local i32 @crypto_onetimeauth_keygen(i32) #1

declare dso_local i32 @randombytes_buf(i32*, i32) #1

declare dso_local i32 @crypto_onetimeauth(i32*, i32*, i32, i32) #1

declare dso_local i64 @crypto_onetimeauth_verify(i32*, i32*, i32, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @rand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
