; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/engines/extr_e_ossltest.c_bind_ossltest.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/engines/extr_e_ossltest.c_bind_ossltest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@engine_ossltest_id = common dso_local global i32 0, align 4
@engine_ossltest_name = common dso_local global i32 0, align 4
@ossltest_digests = common dso_local global i32 0, align 4
@ossltest_ciphers = common dso_local global i32 0, align 4
@ossltest_destroy = common dso_local global i32 0, align 4
@ossltest_init = common dso_local global i32 0, align 4
@ossltest_finish = common dso_local global i32 0, align 4
@OSSLTEST_F_BIND_OSSLTEST = common dso_local global i32 0, align 4
@OSSLTEST_R_INIT_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @bind_ossltest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bind_ossltest(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = call i32 (...) @ERR_load_OSSLTEST_strings()
  %5 = load i32*, i32** %3, align 8
  %6 = load i32, i32* @engine_ossltest_id, align 4
  %7 = call i32 @ENGINE_set_id(i32* %5, i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %44

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* @engine_ossltest_name, align 4
  %12 = call i32 @ENGINE_set_name(i32* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %44

14:                                               ; preds = %9
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* @ossltest_digests, align 4
  %17 = call i32 @ENGINE_set_digests(i32* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %14
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* @ossltest_ciphers, align 4
  %22 = call i32 @ENGINE_set_ciphers(i32* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %19
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 (...) @ossltest_rand_method()
  %27 = call i32 @ENGINE_set_RAND(i32* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %24
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* @ossltest_destroy, align 4
  %32 = call i32 @ENGINE_set_destroy_function(i32* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* @ossltest_init, align 4
  %37 = call i32 @ENGINE_set_init_function(i32* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* @ossltest_finish, align 4
  %42 = call i32 @ENGINE_set_finish_function(i32* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %39, %34, %29, %24, %19, %14, %9, %1
  %45 = load i32, i32* @OSSLTEST_F_BIND_OSSLTEST, align 4
  %46 = load i32, i32* @OSSLTEST_R_INIT_FAILED, align 4
  %47 = call i32 @OSSLTESTerr(i32 %45, i32 %46)
  store i32 0, i32* %2, align 4
  br label %49

48:                                               ; preds = %39
  store i32 1, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %44
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @ERR_load_OSSLTEST_strings(...) #1

declare dso_local i32 @ENGINE_set_id(i32*, i32) #1

declare dso_local i32 @ENGINE_set_name(i32*, i32) #1

declare dso_local i32 @ENGINE_set_digests(i32*, i32) #1

declare dso_local i32 @ENGINE_set_ciphers(i32*, i32) #1

declare dso_local i32 @ENGINE_set_RAND(i32*, i32) #1

declare dso_local i32 @ossltest_rand_method(...) #1

declare dso_local i32 @ENGINE_set_destroy_function(i32*, i32) #1

declare dso_local i32 @ENGINE_set_init_function(i32*, i32) #1

declare dso_local i32 @ENGINE_set_finish_function(i32*, i32) #1

declare dso_local i32 @OSSLTESTerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
