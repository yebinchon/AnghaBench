; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_p_lib.c_EVP_PKEY_new_raw_private_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_p_lib.c_EVP_PKEY_new_raw_private_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_9__*, i8*, i64)* }

@EVP_F_EVP_PKEY_NEW_RAW_PRIVATE_KEY = common dso_local global i32 0, align 4
@EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE = common dso_local global i32 0, align 4
@EVP_R_KEY_SETUP_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @EVP_PKEY_new_raw_private_key(i32 %0, i32* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = call %struct.TYPE_9__* (...) @EVP_PKEY_new()
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %10, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %13 = icmp eq %struct.TYPE_9__* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @pkey_set_type(%struct.TYPE_9__* %15, i32* %16, i32 %17, i32* null, i32 -1)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14, %4
  br label %49

21:                                               ; preds = %14
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32 (%struct.TYPE_9__*, i8*, i64)*, i32 (%struct.TYPE_9__*, i8*, i64)** %25, align 8
  %27 = icmp eq i32 (%struct.TYPE_9__*, i8*, i64)* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i32, i32* @EVP_F_EVP_PKEY_NEW_RAW_PRIVATE_KEY, align 4
  %30 = load i32, i32* @EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE, align 4
  %31 = call i32 @EVPerr(i32 %29, i32 %30)
  br label %49

32:                                               ; preds = %21
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32 (%struct.TYPE_9__*, i8*, i64)*, i32 (%struct.TYPE_9__*, i8*, i64)** %36, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i32 %37(%struct.TYPE_9__* %38, i8* %39, i64 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %32
  %44 = load i32, i32* @EVP_F_EVP_PKEY_NEW_RAW_PRIVATE_KEY, align 4
  %45 = load i32, i32* @EVP_R_KEY_SETUP_FAILED, align 4
  %46 = call i32 @EVPerr(i32 %44, i32 %45)
  br label %49

47:                                               ; preds = %32
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %48, %struct.TYPE_9__** %5, align 8
  br label %52

49:                                               ; preds = %43, %28, %20
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %51 = call i32 @EVP_PKEY_free(%struct.TYPE_9__* %50)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %5, align 8
  br label %52

52:                                               ; preds = %49, %47
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  ret %struct.TYPE_9__* %53
}

declare dso_local %struct.TYPE_9__* @EVP_PKEY_new(...) #1

declare dso_local i32 @pkey_set_type(%struct.TYPE_9__*, i32*, i32, i32*, i32) #1

declare dso_local i32 @EVPerr(i32, i32) #1

declare dso_local i32 @EVP_PKEY_free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
