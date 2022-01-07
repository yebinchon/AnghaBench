; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/conf/extr_conf_mod.c_module_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/conf/extr_conf_mod.c_module_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONF_MFLAGS_NO_DSO = common dso_local global i64 0, align 8
@CONF_MFLAGS_SILENT = common dso_local global i64 0, align 8
@CONF_F_MODULE_RUN = common dso_local global i32 0, align 4
@CONF_R_UNKNOWN_MODULE_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"module=\00", align 1
@CONF_R_MODULE_INITIALIZATION_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%-8d\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c", value=\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c", retcode=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i64)* @module_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @module_run(i32* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i32* @module_find(i8* %14)
  store i32* %15, i32** %10, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %4
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* @CONF_MFLAGS_NO_DSO, align 8
  %21 = and i64 %19, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load i32*, i32** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i32* @module_load_dso(i32* %24, i8* %25, i8* %26)
  store i32* %27, i32** %10, align 8
  br label %28

28:                                               ; preds = %23, %18, %4
  %29 = load i32*, i32** %10, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %43, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* @CONF_MFLAGS_SILENT, align 8
  %34 = and i64 %32, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @CONF_F_MODULE_RUN, align 4
  %38 = load i32, i32* @CONF_R_UNKNOWN_MODULE_NAME, align 4
  %39 = call i32 @CONFerr(i32 %37, i32 %38)
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 (i32, i8*, i8*, ...) @ERR_add_error_data(i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %36, %31
  store i32 -1, i32* %5, align 4
  br label %76

43:                                               ; preds = %28
  %44 = load i32*, i32** %10, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @module_init(i32* %44, i8* %45, i8* %46, i32* %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp sle i32 %49, 0
  br i1 %50, label %51, label %74

51:                                               ; preds = %43
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* @CONF_MFLAGS_SILENT, align 8
  %54 = and i64 %52, %53
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %73, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @DECIMAL_SIZE(i32 %57)
  %59 = add nsw i32 %58, 1
  %60 = zext i32 %59 to i64
  %61 = call i8* @llvm.stacksave()
  store i8* %61, i8** %12, align 8
  %62 = alloca i8, i64 %60, align 16
  store i64 %60, i64* %13, align 8
  %63 = load i32, i32* @CONF_F_MODULE_RUN, align 4
  %64 = load i32, i32* @CONF_R_MODULE_INITIALIZATION_ERROR, align 4
  %65 = call i32 @CONFerr(i32 %63, i32 %64)
  %66 = trunc i64 %60 to i32
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @BIO_snprintf(i8* %62, i32 %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = load i8*, i8** %7, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = call i32 (i32, i8*, i8*, ...) @ERR_add_error_data(i32 6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %62)
  %72 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %72)
  br label %73

73:                                               ; preds = %56, %51
  br label %74

74:                                               ; preds = %73, %43
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %74, %42
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32* @module_find(i8*) #1

declare dso_local i32* @module_load_dso(i32*, i8*, i8*) #1

declare dso_local i32 @CONFerr(i32, i32) #1

declare dso_local i32 @ERR_add_error_data(i32, i8*, i8*, ...) #1

declare dso_local i32 @module_init(i32*, i8*, i8*, i32*) #1

declare dso_local i32 @DECIMAL_SIZE(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @BIO_snprintf(i8*, i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
