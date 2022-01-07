; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_onetimeauth.c_xmain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_onetimeauth.c_xmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = common dso_local global i64* null, align 8
@c = common dso_local global i64 0, align 8
@rs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c",0x%02x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"poly1305\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = call i32 (...) @crypto_onetimeauth_statebytes()
  %5 = sext i32 %4 to i64
  %6 = icmp eq i64 %5, 4
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load i64*, i64** @a, align 8
  %10 = load i64, i64* @c, align 8
  %11 = load i32, i32* @rs, align 4
  %12 = call i32 @crypto_onetimeauth(i64* %9, i64 %10, i32 131, i32 %11)
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %30, %0
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 16
  br i1 %15, label %16, label %33

16:                                               ; preds = %13
  %17 = load i64*, i64** @a, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = srem i32 %24, 8
  %26 = icmp eq i32 %25, 7
  br i1 %26, label %27, label %29

27:                                               ; preds = %16
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %16
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %13

33:                                               ; preds = %13
  %34 = load i64*, i64** @a, align 8
  %35 = call i32 @memset(i64* %34, i32 0, i32 8)
  %36 = load i32, i32* @rs, align 4
  %37 = call i32 @crypto_onetimeauth_init(i32* %2, i32 %36)
  %38 = load i64, i64* @c, align 8
  %39 = call i32 @crypto_onetimeauth_update(i32* %2, i64 %38, i32 100)
  %40 = load i64, i64* @c, align 8
  %41 = call i32 @crypto_onetimeauth_update(i32* %2, i64 %40, i32 0)
  %42 = load i64, i64* @c, align 8
  %43 = add nsw i64 %42, 100
  %44 = call i32 @crypto_onetimeauth_update(i32* %2, i64 %43, i32 31)
  %45 = load i64*, i64** @a, align 8
  %46 = call i32 @crypto_onetimeauth_final(i32* %2, i64* %45)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %64, %33
  %48 = load i32, i32* %3, align 4
  %49 = icmp slt i32 %48, 16
  br i1 %49, label %50, label %67

50:                                               ; preds = %47
  %51 = load i64*, i64** @a, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %3, align 4
  %59 = srem i32 %58, 8
  %60 = icmp eq i32 %59, 7
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %50
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %47

67:                                               ; preds = %47
  %68 = call i32 (...) @crypto_onetimeauth_bytes()
  %69 = icmp ugt i32 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = call i32 (...) @crypto_onetimeauth_keybytes()
  %73 = icmp ugt i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  %76 = call i32 (...) @crypto_onetimeauth_primitive()
  %77 = call i64 @strcmp(i32 %76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %78 = icmp eq i64 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = call i32 (...) @crypto_onetimeauth_poly1305_bytes()
  %82 = call i32 (...) @crypto_onetimeauth_bytes()
  %83 = icmp eq i32 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  %86 = call i32 (...) @crypto_onetimeauth_poly1305_keybytes()
  %87 = call i32 (...) @crypto_onetimeauth_keybytes()
  %88 = icmp eq i32 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  %91 = call i32 (...) @crypto_onetimeauth_statebytes()
  %92 = icmp sgt i32 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  %95 = call i32 (...) @crypto_onetimeauth_statebytes()
  %96 = call i32 (...) @crypto_onetimeauth_poly1305_statebytes()
  %97 = icmp eq i32 %95, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 @assert(i32 %98)
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @crypto_onetimeauth_statebytes(...) #1

declare dso_local i32 @crypto_onetimeauth(i64*, i64, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @crypto_onetimeauth_init(i32*, i32) #1

declare dso_local i32 @crypto_onetimeauth_update(i32*, i64, i32) #1

declare dso_local i32 @crypto_onetimeauth_final(i32*, i64*) #1

declare dso_local i32 @crypto_onetimeauth_bytes(...) #1

declare dso_local i32 @crypto_onetimeauth_keybytes(...) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @crypto_onetimeauth_primitive(...) #1

declare dso_local i32 @crypto_onetimeauth_poly1305_bytes(...) #1

declare dso_local i32 @crypto_onetimeauth_poly1305_keybytes(...) #1

declare dso_local i32 @crypto_onetimeauth_poly1305_statebytes(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
