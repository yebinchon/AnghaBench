; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_pmeth_lib.c_EVP_PKEY_CTX_ctrl_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_pmeth_lib.c_EVP_PKEY_CTX_ctrl_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { {}* }

@EVP_F_EVP_PKEY_CTX_CTRL_STR = common dso_local global i32 0, align 4
@EVP_R_COMMAND_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@EVP_PKEY_OP_TYPE_SIG = common dso_local global i32 0, align 4
@EVP_PKEY_CTRL_MD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_PKEY_CTX_ctrl_str(%struct.TYPE_7__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %9 = icmp ne %struct.TYPE_7__* %8, null
  br i1 %9, label %10, label %23

10:                                               ; preds = %3
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = icmp ne %struct.TYPE_6__* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = bitcast {}** %19 to i32 (%struct.TYPE_7__*, i8*, i8*)**
  %21 = load i32 (%struct.TYPE_7__*, i8*, i8*)*, i32 (%struct.TYPE_7__*, i8*, i8*)** %20, align 8
  %22 = icmp ne i32 (%struct.TYPE_7__*, i8*, i8*)* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %15, %10, %3
  %24 = load i32, i32* @EVP_F_EVP_PKEY_CTX_CTRL_STR, align 4
  %25 = load i32, i32* @EVP_R_COMMAND_NOT_SUPPORTED, align 4
  %26 = call i32 @EVPerr(i32 %24, i32 %25)
  store i32 -2, i32* %4, align 4
  br label %48

27:                                               ; preds = %15
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = load i32, i32* @EVP_PKEY_OP_TYPE_SIG, align 4
  %34 = load i32, i32* @EVP_PKEY_CTRL_MD, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @EVP_PKEY_CTX_md(%struct.TYPE_7__* %32, i32 %33, i32 %34, i8* %35)
  store i32 %36, i32* %4, align 4
  br label %48

37:                                               ; preds = %27
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = bitcast {}** %41 to i32 (%struct.TYPE_7__*, i8*, i8*)**
  %43 = load i32 (%struct.TYPE_7__*, i8*, i8*)*, i32 (%struct.TYPE_7__*, i8*, i8*)** %42, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 %43(%struct.TYPE_7__* %44, i8* %45, i8* %46)
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %37, %31, %23
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @EVPerr(i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @EVP_PKEY_CTX_md(%struct.TYPE_7__*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
