; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_s3_lib.c_ssl_generate_param_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_s3_lib.c_ssl_generate_param_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@TLS_CURVE_TYPE = common dso_local global i32 0, align 4
@TLS_CURVE_CUSTOM = common dso_local global i32 0, align 4
@EVP_PKEY_EC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ssl_generate_param_group(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.TYPE_3__* @tls1_group_id_lookup(i32 %7)
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %6, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %10 = icmp eq %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %63

12:                                               ; preds = %1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @TLS_CURVE_TYPE, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @TLS_CURVE_CUSTOM, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %12
  %21 = call i32* (...) @EVP_PKEY_new()
  store i32* %21, i32** %5, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = load i32*, i32** %5, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @EVP_PKEY_set_type(i32* %25, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32*, i32** %5, align 8
  store i32* %32, i32** %2, align 8
  br label %67

33:                                               ; preds = %24, %20
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @EVP_PKEY_free(i32* %34)
  store i32* null, i32** %2, align 8
  br label %67

36:                                               ; preds = %12
  %37 = load i32, i32* @EVP_PKEY_EC, align 4
  %38 = call i32* @EVP_PKEY_CTX_new_id(i32 %37, i32* null)
  store i32* %38, i32** %4, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %63

42:                                               ; preds = %36
  %43 = load i32*, i32** %4, align 8
  %44 = call i64 @EVP_PKEY_paramgen_init(i32* %43)
  %45 = icmp sle i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %63

47:                                               ; preds = %42
  %48 = load i32*, i32** %4, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @EVP_PKEY_CTX_set_ec_paramgen_curve_nid(i32* %48, i32 %51)
  %53 = icmp sle i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %63

55:                                               ; preds = %47
  %56 = load i32*, i32** %4, align 8
  %57 = call i64 @EVP_PKEY_paramgen(i32* %56, i32** %5)
  %58 = icmp sle i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @EVP_PKEY_free(i32* %60)
  store i32* null, i32** %5, align 8
  br label %62

62:                                               ; preds = %59, %55
  br label %63

63:                                               ; preds = %62, %54, %46, %41, %11
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @EVP_PKEY_CTX_free(i32* %64)
  %66 = load i32*, i32** %5, align 8
  store i32* %66, i32** %2, align 8
  br label %67

67:                                               ; preds = %63, %33, %31
  %68 = load i32*, i32** %2, align 8
  ret i32* %68
}

declare dso_local %struct.TYPE_3__* @tls1_group_id_lookup(i32) #1

declare dso_local i32* @EVP_PKEY_new(...) #1

declare dso_local i64 @EVP_PKEY_set_type(i32*, i32) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

declare dso_local i32* @EVP_PKEY_CTX_new_id(i32, i32*) #1

declare dso_local i64 @EVP_PKEY_paramgen_init(i32*) #1

declare dso_local i64 @EVP_PKEY_CTX_set_ec_paramgen_curve_nid(i32*, i32) #1

declare dso_local i64 @EVP_PKEY_paramgen(i32*, i32**) #1

declare dso_local i32 @EVP_PKEY_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
