; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_ciph.c_SSL_COMP_add_compression_method.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_ciph.c_SSL_COMP_add_compression_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }

@NID_undef = common dso_local global i64 0, align 8
@SSL_F_SSL_COMP_ADD_COMPRESSION_METHOD = common dso_local global i32 0, align 4
@SSL_R_COMPRESSION_ID_NOT_WITHIN_PRIVATE_RANGE = common dso_local global i32 0, align 4
@CRYPTO_MEM_CHECK_DISABLE = common dso_local global i32 0, align 4
@CRYPTO_MEM_CHECK_ENABLE = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ssl_comp_methods = common dso_local global i32* null, align 8
@SSL_R_DUPLICATE_COMPRESSION_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SSL_COMP_add_compression_method(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load i32*, i32** %5, align 8
  %11 = call i64 @COMP_get_type(i32* %10)
  %12 = load i64, i64* @NID_undef, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %2
  store i32 1, i32* %3, align 4
  br label %79

15:                                               ; preds = %9
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 193
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = icmp sgt i32 %19, 255
  br i1 %20, label %21, label %25

21:                                               ; preds = %18, %15
  %22 = load i32, i32* @SSL_F_SSL_COMP_ADD_COMPRESSION_METHOD, align 4
  %23 = load i32, i32* @SSL_R_COMPRESSION_ID_NOT_WITHIN_PRIVATE_RANGE, align 4
  %24 = call i32 @SSLerr(i32 %22, i32 %23)
  store i32 1, i32* %3, align 4
  br label %79

25:                                               ; preds = %18
  %26 = load i32, i32* @CRYPTO_MEM_CHECK_DISABLE, align 4
  %27 = call i32 @CRYPTO_mem_ctrl(i32 %26)
  %28 = call %struct.TYPE_6__* @OPENSSL_malloc(i32 16)
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %6, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = icmp eq %struct.TYPE_6__* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load i32, i32* @CRYPTO_MEM_CHECK_ENABLE, align 4
  %33 = call i32 @CRYPTO_mem_ctrl(i32 %32)
  %34 = load i32, i32* @SSL_F_SSL_COMP_ADD_COMPRESSION_METHOD, align 4
  %35 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %36 = call i32 @SSLerr(i32 %34, i32 %35)
  store i32 1, i32* %3, align 4
  br label %79

37:                                               ; preds = %25
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  store i32* %41, i32** %43, align 8
  %44 = call i32 (...) @load_builtin_compressions()
  %45 = load i32*, i32** @ssl_comp_methods, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %60

47:                                               ; preds = %37
  %48 = load i32*, i32** @ssl_comp_methods, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %50 = call i64 @sk_SSL_COMP_find(i32* %48, %struct.TYPE_6__* %49)
  %51 = icmp sge i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %54 = call i32 @OPENSSL_free(%struct.TYPE_6__* %53)
  %55 = load i32, i32* @CRYPTO_MEM_CHECK_ENABLE, align 4
  %56 = call i32 @CRYPTO_mem_ctrl(i32 %55)
  %57 = load i32, i32* @SSL_F_SSL_COMP_ADD_COMPRESSION_METHOD, align 4
  %58 = load i32, i32* @SSL_R_DUPLICATE_COMPRESSION_ID, align 4
  %59 = call i32 @SSLerr(i32 %57, i32 %58)
  store i32 1, i32* %3, align 4
  br label %79

60:                                               ; preds = %47, %37
  %61 = load i32*, i32** @ssl_comp_methods, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %60
  %64 = load i32*, i32** @ssl_comp_methods, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %66 = call i32 @sk_SSL_COMP_push(i32* %64, %struct.TYPE_6__* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %63, %60
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %70 = call i32 @OPENSSL_free(%struct.TYPE_6__* %69)
  %71 = load i32, i32* @CRYPTO_MEM_CHECK_ENABLE, align 4
  %72 = call i32 @CRYPTO_mem_ctrl(i32 %71)
  %73 = load i32, i32* @SSL_F_SSL_COMP_ADD_COMPRESSION_METHOD, align 4
  %74 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %75 = call i32 @SSLerr(i32 %73, i32 %74)
  store i32 1, i32* %3, align 4
  br label %79

76:                                               ; preds = %63
  %77 = load i32, i32* @CRYPTO_MEM_CHECK_ENABLE, align 4
  %78 = call i32 @CRYPTO_mem_ctrl(i32 %77)
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %76, %68, %52, %31, %21, %14
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i64 @COMP_get_type(i32*) #1

declare dso_local i32 @SSLerr(i32, i32) #1

declare dso_local i32 @CRYPTO_mem_ctrl(i32) #1

declare dso_local %struct.TYPE_6__* @OPENSSL_malloc(i32) #1

declare dso_local i32 @load_builtin_compressions(...) #1

declare dso_local i64 @sk_SSL_COMP_find(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_6__*) #1

declare dso_local i32 @sk_SSL_COMP_push(i32*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
