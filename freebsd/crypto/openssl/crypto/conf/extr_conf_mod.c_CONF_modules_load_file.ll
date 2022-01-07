; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/conf/extr_conf_mod.c_CONF_modules_load_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/conf/extr_conf_mod.c_CONF_modules_load_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONF_MFLAGS_IGNORE_MISSING_FILE = common dso_local global i64 0, align 8
@CONF_R_NO_SUCH_FILE = common dso_local global i64 0, align 8
@CONF_MFLAGS_IGNORE_RETURN_CODES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CONF_modules_load_file(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* null, i8** %8, align 8
  store i32* null, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = call i32* @NCONF_new(i32* null)
  store i32* %11, i32** %9, align 8
  %12 = load i32*, i32** %9, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %49

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = call i8* (...) @CONF_get1_default_config_file()
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  br label %49

23:                                               ; preds = %18
  br label %26

24:                                               ; preds = %15
  %25 = load i8*, i8** %5, align 8
  store i8* %25, i8** %8, align 8
  br label %26

26:                                               ; preds = %24, %23
  %27 = load i32*, i32** %9, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i64 @NCONF_load(i32* %27, i8* %28, i32* null)
  %30 = icmp sle i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %26
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @CONF_MFLAGS_IGNORE_MISSING_FILE, align 8
  %34 = and i64 %32, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = call i32 (...) @ERR_peek_last_error()
  %38 = call i64 @ERR_GET_REASON(i32 %37)
  %39 = load i64, i64* @CONF_R_NO_SUCH_FILE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = call i32 (...) @ERR_clear_error()
  store i32 1, i32* %10, align 4
  br label %43

43:                                               ; preds = %41, %36, %31
  br label %49

44:                                               ; preds = %26
  %45 = load i32*, i32** %9, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @CONF_modules_load(i32* %45, i8* %46, i64 %47)
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %44, %43, %22, %14
  %50 = load i8*, i8** %5, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @OPENSSL_free(i8* %53)
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @NCONF_free(i32* %56)
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* @CONF_MFLAGS_IGNORE_RETURN_CODES, align 8
  %60 = and i64 %58, %59
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  store i32 1, i32* %4, align 4
  br label %65

63:                                               ; preds = %55
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %62
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32* @NCONF_new(i32*) #1

declare dso_local i8* @CONF_get1_default_config_file(...) #1

declare dso_local i64 @NCONF_load(i32*, i8*, i32*) #1

declare dso_local i64 @ERR_GET_REASON(i32) #1

declare dso_local i32 @ERR_peek_last_error(...) #1

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i32 @CONF_modules_load(i32*, i8*, i64) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @NCONF_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
