; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/engines/extr_e_afalg.c_bind_afalg.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/engines/extr_e_afalg.c_bind_afalg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@engine_afalg_id = common dso_local global i32 0, align 4
@engine_afalg_name = common dso_local global i32 0, align 4
@afalg_destroy = common dso_local global i32 0, align 4
@afalg_init = common dso_local global i32 0, align 4
@afalg_finish = common dso_local global i32 0, align 4
@AFALG_F_BIND_AFALG = common dso_local global i32 0, align 4
@AFALG_R_INIT_FAILED = common dso_local global i32 0, align 4
@afalg_cipher_nids = common dso_local global i32* null, align 8
@afalg_ciphers = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @bind_afalg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bind_afalg(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i16, align 2
  store i32* %0, i32** %3, align 8
  %5 = call i32 (...) @ERR_load_AFALG_strings()
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* @engine_afalg_id, align 4
  %8 = call i32 @ENGINE_set_id(i32* %6, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* @engine_afalg_name, align 4
  %13 = call i32 @ENGINE_set_name(i32* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %10
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @afalg_destroy, align 4
  %18 = call i32 @ENGINE_set_destroy_function(i32* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* @afalg_init, align 4
  %23 = call i32 @ENGINE_set_init_function(i32* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* @afalg_finish, align 4
  %28 = call i32 @ENGINE_set_finish_function(i32* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25, %20, %15, %10, %1
  %31 = load i32, i32* @AFALG_F_BIND_AFALG, align 4
  %32 = load i32, i32* @AFALG_R_INIT_FAILED, align 4
  %33 = call i32 @AFALGerr(i32 %31, i32 %32)
  store i32 0, i32* %2, align 4
  br label %68

34:                                               ; preds = %25
  store i16 0, i16* %4, align 2
  br label %35

35:                                               ; preds = %55, %34
  %36 = load i16, i16* %4, align 2
  %37 = zext i16 %36 to i32
  %38 = load i32*, i32** @afalg_cipher_nids, align 8
  %39 = call zeroext i16 @OSSL_NELEM(i32* %38)
  %40 = zext i16 %39 to i32
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %35
  %43 = load i32*, i32** @afalg_cipher_nids, align 8
  %44 = load i16, i16* %4, align 2
  %45 = zext i16 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32* @afalg_aes_cbc(i32 %47)
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load i32, i32* @AFALG_F_BIND_AFALG, align 4
  %52 = load i32, i32* @AFALG_R_INIT_FAILED, align 4
  %53 = call i32 @AFALGerr(i32 %51, i32 %52)
  store i32 0, i32* %2, align 4
  br label %68

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %54
  %56 = load i16, i16* %4, align 2
  %57 = add i16 %56, 1
  store i16 %57, i16* %4, align 2
  br label %35

58:                                               ; preds = %35
  %59 = load i32*, i32** %3, align 8
  %60 = load i32, i32* @afalg_ciphers, align 4
  %61 = call i32 @ENGINE_set_ciphers(i32* %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* @AFALG_F_BIND_AFALG, align 4
  %65 = load i32, i32* @AFALG_R_INIT_FAILED, align 4
  %66 = call i32 @AFALGerr(i32 %64, i32 %65)
  store i32 0, i32* %2, align 4
  br label %68

67:                                               ; preds = %58
  store i32 1, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %63, %50, %30
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @ERR_load_AFALG_strings(...) #1

declare dso_local i32 @ENGINE_set_id(i32*, i32) #1

declare dso_local i32 @ENGINE_set_name(i32*, i32) #1

declare dso_local i32 @ENGINE_set_destroy_function(i32*, i32) #1

declare dso_local i32 @ENGINE_set_init_function(i32*, i32) #1

declare dso_local i32 @ENGINE_set_finish_function(i32*, i32) #1

declare dso_local i32 @AFALGerr(i32, i32) #1

declare dso_local zeroext i16 @OSSL_NELEM(i32*) #1

declare dso_local i32* @afalg_aes_cbc(i32) #1

declare dso_local i32 @ENGINE_set_ciphers(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
