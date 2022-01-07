; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_evp_pkey.c_EVP_PKCS82PKEY.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_evp_pkey.c_EVP_PKCS82PKEY.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_9__*, i32*)* }

@EVP_F_EVP_PKCS82PKEY = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@EVP_R_UNSUPPORTED_PRIVATE_KEY_ALGORITHM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"TYPE=\00", align 1
@EVP_R_PRIVATE_KEY_DECODE_ERROR = common dso_local global i32 0, align 4
@EVP_R_METHOD_NOT_SUPPORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @EVP_PKCS82PKEY(i32* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [80 x i8], align 16
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @PKCS8_pkey_get0(i32** %5, i32* null, i32* null, i32* null, i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %64

11:                                               ; preds = %1
  %12 = call %struct.TYPE_9__* (...) @EVP_PKEY_new()
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %4, align 8
  %13 = icmp eq %struct.TYPE_9__* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i32, i32* @EVP_F_EVP_PKCS82PKEY, align 4
  %16 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %17 = call i32 @EVPerr(i32 %15, i32 %16)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %64

18:                                               ; preds = %11
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @OBJ_obj2nid(i32* %20)
  %22 = call i32 @EVP_PKEY_set_type(%struct.TYPE_9__* %19, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @EVP_F_EVP_PKCS82PKEY, align 4
  %26 = load i32, i32* @EVP_R_UNSUPPORTED_PRIVATE_KEY_ALGORITHM, align 4
  %27 = call i32 @EVPerr(i32 %25, i32 %26)
  %28 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @i2t_ASN1_OBJECT(i8* %28, i32 80, i32* %29)
  %31 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %32 = call i32 @ERR_add_error_data(i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %31)
  br label %61

33:                                               ; preds = %18
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32 (%struct.TYPE_9__*, i32*)*, i32 (%struct.TYPE_9__*, i32*)** %37, align 8
  %39 = icmp ne i32 (%struct.TYPE_9__*, i32*)* %38, null
  br i1 %39, label %40, label %55

40:                                               ; preds = %33
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32 (%struct.TYPE_9__*, i32*)*, i32 (%struct.TYPE_9__*, i32*)** %44, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 %45(%struct.TYPE_9__* %46, i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %40
  %51 = load i32, i32* @EVP_F_EVP_PKCS82PKEY, align 4
  %52 = load i32, i32* @EVP_R_PRIVATE_KEY_DECODE_ERROR, align 4
  %53 = call i32 @EVPerr(i32 %51, i32 %52)
  br label %61

54:                                               ; preds = %40
  br label %59

55:                                               ; preds = %33
  %56 = load i32, i32* @EVP_F_EVP_PKCS82PKEY, align 4
  %57 = load i32, i32* @EVP_R_METHOD_NOT_SUPPORTED, align 4
  %58 = call i32 @EVPerr(i32 %56, i32 %57)
  br label %61

59:                                               ; preds = %54
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %60, %struct.TYPE_9__** %2, align 8
  br label %64

61:                                               ; preds = %55, %50, %24
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %63 = call i32 @EVP_PKEY_free(%struct.TYPE_9__* %62)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %64

64:                                               ; preds = %61, %59, %14, %10
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  ret %struct.TYPE_9__* %65
}

declare dso_local i32 @PKCS8_pkey_get0(i32**, i32*, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_9__* @EVP_PKEY_new(...) #1

declare dso_local i32 @EVPerr(i32, i32) #1

declare dso_local i32 @EVP_PKEY_set_type(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @OBJ_obj2nid(i32*) #1

declare dso_local i32 @i2t_ASN1_OBJECT(i8*, i32, i32*) #1

declare dso_local i32 @ERR_add_error_data(i32, i8*, i8*) #1

declare dso_local i32 @EVP_PKEY_free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
