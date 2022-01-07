; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/engine/extr_eng_devcrypto.c_engine_load_devcrypto_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/engine/extr_eng_devcrypto.c_engine_load_devcrypto_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"/dev/crypto\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@cfd = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Could not open /dev/crypto: %s\0A\00", align 1
@devcrypto_unload = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"devcrypto\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"/dev/crypto engine\00", align 1
@devcrypto_ciphers = common dso_local global i32 0, align 4
@devcrypto_dh = common dso_local global i32 0, align 4
@devcrypto_digests = common dso_local global i32 0, align 4
@devcrypto_dsa = common dso_local global i32 0, align 4
@devcrypto_ec = common dso_local global i32 0, align 4
@devcrypto_rsa = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @engine_load_devcrypto_int() #0 {
  %1 = alloca i32*, align 8
  store i32* null, i32** %1, align 8
  %2 = load i32, i32* @O_RDWR, align 4
  %3 = call i32 @open(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %2, i32 0)
  store i32 %3, i32* @cfd, align 4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %0
  %6 = load i64, i64* @errno, align 8
  %7 = load i64, i64* @ENOENT, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = load i32, i32* @stderr, align 4
  %11 = load i64, i64* @errno, align 8
  %12 = call i8* @strerror(i64 %11)
  %13 = call i32 @fprintf(i32 %10, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %12)
  br label %14

14:                                               ; preds = %9, %5
  br label %51

15:                                               ; preds = %0
  %16 = call i32* (...) @ENGINE_new()
  store i32* %16, i32** %1, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %15
  %19 = load i32*, i32** %1, align 8
  %20 = load i32, i32* @devcrypto_unload, align 4
  %21 = call i32 @ENGINE_set_destroy_function(i32* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18, %15
  %24 = load i32*, i32** %1, align 8
  %25 = call i32 @ENGINE_free(i32* %24)
  %26 = load i32, i32* @cfd, align 4
  %27 = call i32 @close(i32 %26)
  br label %51

28:                                               ; preds = %18
  %29 = call i32 (...) @prepare_cipher_methods()
  %30 = load i32*, i32** %1, align 8
  %31 = call i32 @ENGINE_set_id(i32* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load i32*, i32** %1, align 8
  %35 = call i32 @ENGINE_set_name(i32* %34, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32*, i32** %1, align 8
  %39 = load i32, i32* @devcrypto_ciphers, align 4
  %40 = call i32 @ENGINE_set_ciphers(i32* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37, %33, %28
  %43 = load i32*, i32** %1, align 8
  %44 = call i32 @ENGINE_free(i32* %43)
  br label %51

45:                                               ; preds = %37
  %46 = load i32*, i32** %1, align 8
  %47 = call i32 @ENGINE_add(i32* %46)
  %48 = load i32*, i32** %1, align 8
  %49 = call i32 @ENGINE_free(i32* %48)
  %50 = call i32 (...) @ERR_clear_error()
  br label %51

51:                                               ; preds = %45, %42, %23, %14
  ret void
}

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @strerror(i64) #1

declare dso_local i32* @ENGINE_new(...) #1

declare dso_local i32 @ENGINE_set_destroy_function(i32*, i32) #1

declare dso_local i32 @ENGINE_free(i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @prepare_cipher_methods(...) #1

declare dso_local i32 @ENGINE_set_id(i32*, i8*) #1

declare dso_local i32 @ENGINE_set_name(i32*, i8*) #1

declare dso_local i32 @ENGINE_set_ciphers(i32*, i32) #1

declare dso_local i32 @ENGINE_add(i32*) #1

declare dso_local i32 @ERR_clear_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
