; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/conf/extr_conf_lib.c_NCONF_get_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/conf/extr_conf_lib.c_NCONF_get_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONF_F_NCONF_GET_STRING = common dso_local global i32 0, align 4
@CONF_R_NO_CONF_OR_ENVIRONMENT_VARIABLE = common dso_local global i32 0, align 4
@CONF_R_NO_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"group=\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c" name=\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @NCONF_get_string(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i8* @_CONF_get_string(i32* %9, i8* %10, i8* %11)
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i8*, i8** %8, align 8
  store i8* %16, i8** %4, align 8
  br label %31

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* @CONF_F_NCONF_GET_STRING, align 4
  %22 = load i32, i32* @CONF_R_NO_CONF_OR_ENVIRONMENT_VARIABLE, align 4
  %23 = call i32 @CONFerr(i32 %21, i32 %22)
  store i8* null, i8** %4, align 8
  br label %31

24:                                               ; preds = %17
  %25 = load i32, i32* @CONF_F_NCONF_GET_STRING, align 4
  %26 = load i32, i32* @CONF_R_NO_VALUE, align 4
  %27 = call i32 @CONFerr(i32 %25, i32 %26)
  %28 = load i8*, i8** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @ERR_add_error_data(i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  store i8* null, i8** %4, align 8
  br label %31

31:                                               ; preds = %24, %20, %15
  %32 = load i8*, i8** %4, align 8
  ret i8* %32
}

declare dso_local i8* @_CONF_get_string(i32*, i8*, i8*) #1

declare dso_local i32 @CONFerr(i32, i32) #1

declare dso_local i32 @ERR_add_error_data(i32, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
