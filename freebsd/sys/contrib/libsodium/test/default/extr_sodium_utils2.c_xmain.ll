; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_sodium_utils2.c_xmain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_sodium_utils2.c_xmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIZE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1
@SIGABRT = common dso_local global i32 0, align 4
@SIGBUS = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = load i32, i32* @SIZE_MAX, align 4
  %6 = sub i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = call i8* @sodium_malloc(i64 %7)
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  br label %79

11:                                               ; preds = %0
  %12 = call i8* @sodium_malloc(i64 0)
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 1, i32* %1, align 4
  br label %79

15:                                               ; preds = %11
  %16 = load i32, i32* @SIZE_MAX, align 4
  %17 = udiv i32 %16, 2
  %18 = add i32 %17, 1
  %19 = load i32, i32* @SIZE_MAX, align 4
  %20 = udiv i32 %19, 2
  %21 = call i8* @sodium_allocarray(i32 %18, i32 %20)
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store i32 1, i32* %1, align 4
  br label %79

24:                                               ; preds = %15
  %25 = call i8* @sodium_allocarray(i32 0, i32 0)
  %26 = call i32 @sodium_free(i8* %25)
  %27 = call i8* @sodium_allocarray(i32 0, i32 1)
  %28 = call i32 @sodium_free(i8* %27)
  %29 = call i8* @sodium_allocarray(i32 1, i32 0)
  %30 = call i32 @sodium_free(i8* %29)
  %31 = call i8* @sodium_allocarray(i32 1000, i32 50)
  store i8* %31, i8** %2, align 8
  %32 = load i8*, i8** %2, align 8
  %33 = call i32 @memset(i8* %32, i32 0, i64 50000)
  %34 = load i8*, i8** %2, align 8
  %35 = call i32 @sodium_free(i8* %34)
  %36 = call i8* @sodium_malloc(i64 0)
  %37 = call i32 @sodium_free(i8* %36)
  %38 = call i32 @sodium_free(i8* null)
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %60, %24
  %40 = load i32, i32* %4, align 4
  %41 = icmp ult i32 %40, 10000
  br i1 %41, label %42, label %63

42:                                               ; preds = %39
  %43 = call i32 @randombytes_uniform(i32 100000)
  %44 = add i32 1, %43
  %45 = zext i32 %44 to i64
  store i64 %45, i64* %3, align 8
  %46 = load i64, i64* %3, align 8
  %47 = call i8* @sodium_malloc(i64 %46)
  store i8* %47, i8** %2, align 8
  %48 = load i8*, i8** %2, align 8
  %49 = icmp ne i8* %48, null
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load i8*, i8** %2, align 8
  %53 = load i32, i32* %4, align 4
  %54 = load i64, i64* %3, align 8
  %55 = call i32 @memset(i8* %52, i32 %53, i64 %54)
  %56 = load i8*, i8** %2, align 8
  %57 = call i32 @sodium_mprotect_noaccess(i8* %56)
  %58 = load i8*, i8** %2, align 8
  %59 = call i32 @sodium_free(i8* %58)
  br label %60

60:                                               ; preds = %42
  %61 = load i32, i32* %4, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %39

63:                                               ; preds = %39
  %64 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %65 = call i32 @randombytes_uniform(i32 100000)
  %66 = add i32 1, %65
  %67 = zext i32 %66 to i64
  store i64 %67, i64* %3, align 8
  %68 = load i64, i64* %3, align 8
  %69 = call i8* @sodium_malloc(i64 %68)
  store i8* %69, i8** %2, align 8
  %70 = load i8*, i8** %2, align 8
  %71 = icmp ne i8* %70, null
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load i8*, i8** %2, align 8
  %75 = call i32 @sodium_mprotect_readonly(i8* %74)
  %76 = load i8*, i8** %2, align 8
  %77 = call i32 @sodium_mprotect_readwrite(i8* %76)
  %78 = call i32 @segv_handler(i32 0)
  store i32 0, i32* %1, align 4
  br label %79

79:                                               ; preds = %63, %23, %14, %10
  %80 = load i32, i32* %1, align 4
  ret i32 %80
}

declare dso_local i8* @sodium_malloc(i64) #1

declare dso_local i8* @sodium_allocarray(i32, i32) #1

declare dso_local i32 @sodium_free(i8*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @randombytes_uniform(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sodium_mprotect_noaccess(i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @sodium_mprotect_readonly(i8*) #1

declare dso_local i32 @sodium_mprotect_readwrite(i8*) #1

declare dso_local i32 @segv_handler(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
