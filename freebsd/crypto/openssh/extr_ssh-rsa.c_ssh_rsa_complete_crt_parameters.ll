; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-rsa.c_ssh_rsa_complete_crt_parameters.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-rsa.c_ssh_rsa_complete_crt_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32*, i32 }

@KEY_RSA = common dso_local global i64 0, align 8
@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@BN_FLG_CONSTTIME = common dso_local global i32 0, align 4
@SSH_ERR_LIBCRYPTO_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssh_rsa_complete_crt_parameters(%struct.sshkey* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sshkey*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.sshkey* %0, %struct.sshkey** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  %16 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %17 = icmp eq %struct.sshkey* %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %2
  %19 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %20 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %18
  %24 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %25 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @sshkey_type_plain(i32 %26)
  %28 = load i64, i64* @KEY_RSA, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %23, %18, %2
  %31 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %31, i32* %3, align 4
  br label %126

32:                                               ; preds = %23
  %33 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %34 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @RSA_get0_key(i32* %35, i32* null, i32* null, i32** %8)
  %37 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %38 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @RSA_get0_factors(i32* %39, i32** %6, i32** %7)
  %41 = call i32* (...) @BN_CTX_new()
  store i32* %41, i32** %14, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %44, i32* %3, align 4
  br label %126

45:                                               ; preds = %32
  %46 = call i32* (...) @BN_new()
  store i32* %46, i32** %9, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %45
  %49 = call i32* (...) @BN_new()
  store i32* %49, i32** %11, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = call i32* (...) @BN_new()
  store i32* %52, i32** %12, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %51, %48, %45
  %55 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %55, i32* %3, align 4
  br label %126

56:                                               ; preds = %51
  %57 = load i32*, i32** %8, align 8
  %58 = call i32* @BN_dup(i32* %57)
  store i32* %58, i32** %10, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i32*, i32** %5, align 8
  %62 = call i32* @BN_dup(i32* %61)
  store i32* %62, i32** %13, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %60, %56
  %65 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %65, i32* %15, align 4
  br label %112

66:                                               ; preds = %60
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* @BN_FLG_CONSTTIME, align 4
  %69 = call i32 @BN_set_flags(i32* %67, i32 %68)
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* @BN_FLG_CONSTTIME, align 4
  %72 = call i32 @BN_set_flags(i32* %70, i32 %71)
  %73 = load i32*, i32** %9, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 (...) @BN_value_one()
  %76 = call i64 @BN_sub(i32* %73, i32* %74, i32 %75)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %98, label %78

78:                                               ; preds = %66
  %79 = load i32*, i32** %11, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = load i32*, i32** %14, align 8
  %83 = call i64 @BN_mod(i32* %79, i32* %80, i32* %81, i32* %82)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %98, label %85

85:                                               ; preds = %78
  %86 = load i32*, i32** %9, align 8
  %87 = load i32*, i32** %6, align 8
  %88 = call i32 (...) @BN_value_one()
  %89 = call i64 @BN_sub(i32* %86, i32* %87, i32 %88)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %85
  %92 = load i32*, i32** %12, align 8
  %93 = load i32*, i32** %10, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = load i32*, i32** %14, align 8
  %96 = call i64 @BN_mod(i32* %92, i32* %93, i32* %94, i32* %95)
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %91, %85, %78, %66
  %99 = load i32, i32* @SSH_ERR_LIBCRYPTO_ERROR, align 4
  store i32 %99, i32* %15, align 4
  br label %112

100:                                              ; preds = %91
  %101 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %102 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32*, i32** %12, align 8
  %105 = load i32*, i32** %11, align 8
  %106 = load i32*, i32** %13, align 8
  %107 = call i32 @RSA_set0_crt_params(i32* %103, i32* %104, i32* %105, i32* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %100
  %110 = load i32, i32* @SSH_ERR_LIBCRYPTO_ERROR, align 4
  store i32 %110, i32* %15, align 4
  br label %112

111:                                              ; preds = %100
  store i32* null, i32** %13, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32 0, i32* %15, align 4
  br label %112

112:                                              ; preds = %111, %109, %98, %64
  %113 = load i32*, i32** %9, align 8
  %114 = call i32 @BN_clear_free(i32* %113)
  %115 = load i32*, i32** %10, align 8
  %116 = call i32 @BN_clear_free(i32* %115)
  %117 = load i32*, i32** %12, align 8
  %118 = call i32 @BN_clear_free(i32* %117)
  %119 = load i32*, i32** %11, align 8
  %120 = call i32 @BN_clear_free(i32* %119)
  %121 = load i32*, i32** %13, align 8
  %122 = call i32 @BN_clear_free(i32* %121)
  %123 = load i32*, i32** %14, align 8
  %124 = call i32 @BN_CTX_free(i32* %123)
  %125 = load i32, i32* %15, align 4
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %112, %54, %43, %30
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i64 @sshkey_type_plain(i32) #1

declare dso_local i32 @RSA_get0_key(i32*, i32*, i32*, i32**) #1

declare dso_local i32 @RSA_get0_factors(i32*, i32**, i32**) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32* @BN_dup(i32*) #1

declare dso_local i32 @BN_set_flags(i32*, i32) #1

declare dso_local i64 @BN_sub(i32*, i32*, i32) #1

declare dso_local i32 @BN_value_one(...) #1

declare dso_local i64 @BN_mod(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @RSA_set0_crt_params(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_clear_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
