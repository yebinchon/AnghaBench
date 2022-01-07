; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/conf/extr_conf_mod.c_module_load_dso.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/conf/extr_conf_mod.c_module_load_dso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"path\00", align 1
@CONF_R_ERROR_LOADING_DSO = common dso_local global i32 0, align 4
@DSO_mod_init_name = common dso_local global i32 0, align 4
@CONF_R_MISSING_INIT_FUNCTION = common dso_local global i32 0, align 4
@DSO_mod_finish_name = common dso_local global i32 0, align 4
@CONF_F_MODULE_LOAD_DSO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"module=\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c", path=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i8*)* @module_load_dso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @module_load_dso(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* null, i32** %8, align 8
  store i8* null, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i8* @NCONF_get_string(i32* %14, i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %11, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = call i32 (...) @ERR_clear_error()
  %21 = load i8*, i8** %6, align 8
  store i8* %21, i8** %11, align 8
  br label %22

22:                                               ; preds = %19, %3
  %23 = load i8*, i8** %11, align 8
  %24 = call i32* @DSO_load(i32* null, i8* %23, i32* null, i32 0)
  store i32* %24, i32** %8, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @CONF_R_ERROR_LOADING_DSO, align 4
  store i32 %28, i32* %12, align 4
  br label %53

29:                                               ; preds = %22
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* @DSO_mod_init_name, align 4
  %32 = call i64 @DSO_bind_func(i32* %30, i32 %31)
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %9, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @CONF_R_MISSING_INIT_FUNCTION, align 4
  store i32 %37, i32* %12, align 4
  br label %53

38:                                               ; preds = %29
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* @DSO_mod_finish_name, align 4
  %41 = call i64 @DSO_bind_func(i32* %39, i32 %40)
  %42 = inttoptr i64 %41 to i32*
  store i32* %42, i32** %10, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = call i32* @module_add(i32* %43, i8* %44, i32* %45, i32* %46)
  store i32* %47, i32** %13, align 8
  %48 = load i32*, i32** %13, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %38
  br label %53

51:                                               ; preds = %38
  %52 = load i32*, i32** %13, align 8
  store i32* %52, i32** %4, align 8
  br label %62

53:                                               ; preds = %50, %36, %27
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @DSO_free(i32* %54)
  %56 = load i32, i32* @CONF_F_MODULE_LOAD_DSO, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @CONFerr(i32 %56, i32 %57)
  %59 = load i8*, i8** %6, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = call i32 @ERR_add_error_data(i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %60)
  store i32* null, i32** %4, align 8
  br label %62

62:                                               ; preds = %53, %51
  %63 = load i32*, i32** %4, align 8
  ret i32* %63
}

declare dso_local i8* @NCONF_get_string(i32*, i8*, i8*) #1

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i32* @DSO_load(i32*, i8*, i32*, i32) #1

declare dso_local i64 @DSO_bind_func(i32*, i32) #1

declare dso_local i32* @module_add(i32*, i8*, i32*, i32*) #1

declare dso_local i32 @DSO_free(i32*) #1

declare dso_local i32 @CONFerr(i32, i32) #1

declare dso_local i32 @ERR_add_error_data(i32, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
