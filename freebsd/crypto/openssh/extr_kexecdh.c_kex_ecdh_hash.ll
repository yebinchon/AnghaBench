; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kexecdh.c_kex_ecdh_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kexecdh.c_kex_ecdh_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }

@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@SSH2_MSG_KEXINIT = common dso_local global i32 0, align 4
@SSH_ERR_LIBCRYPTO_ERROR = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kex_ecdh_hash(i32 %0, i32* %1, i8* %2, i8* %3, i32* %4, i64 %5, i32* %6, i64 %7, i32* %8, i64 %9, i32* %10, i32* %11, i32* %12, i32* %13, i64* %14) #0 {
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i64*, align 8
  %32 = alloca %struct.sshbuf*, align 8
  %33 = alloca i32, align 4
  store i32 %0, i32* %17, align 4
  store i32* %1, i32** %18, align 8
  store i8* %2, i8** %19, align 8
  store i8* %3, i8** %20, align 8
  store i32* %4, i32** %21, align 8
  store i64 %5, i64* %22, align 8
  store i32* %6, i32** %23, align 8
  store i64 %7, i64* %24, align 8
  store i32* %8, i32** %25, align 8
  store i64 %9, i64* %26, align 8
  store i32* %10, i32** %27, align 8
  store i32* %11, i32** %28, align 8
  store i32* %12, i32** %29, align 8
  store i32* %13, i32** %30, align 8
  store i64* %14, i64** %31, align 8
  %34 = load i64*, i64** %31, align 8
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %17, align 4
  %37 = call i64 @ssh_digest_bytes(i32 %36)
  %38 = icmp ult i64 %35, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %15
  %40 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %40, i32* %16, align 4
  br label %135

41:                                               ; preds = %15
  %42 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %42, %struct.sshbuf** %32, align 8
  %43 = icmp eq %struct.sshbuf* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %45, i32* %16, align 4
  br label %135

46:                                               ; preds = %41
  %47 = load %struct.sshbuf*, %struct.sshbuf** %32, align 8
  %48 = load i8*, i8** %19, align 8
  %49 = call i32 @sshbuf_put_cstring(%struct.sshbuf* %47, i8* %48)
  store i32 %49, i32* %33, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %113, label %51

51:                                               ; preds = %46
  %52 = load %struct.sshbuf*, %struct.sshbuf** %32, align 8
  %53 = load i8*, i8** %20, align 8
  %54 = call i32 @sshbuf_put_cstring(%struct.sshbuf* %52, i8* %53)
  store i32 %54, i32* %33, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %113, label %56

56:                                               ; preds = %51
  %57 = load %struct.sshbuf*, %struct.sshbuf** %32, align 8
  %58 = load i64, i64* %22, align 8
  %59 = add i64 %58, 1
  %60 = call i32 @sshbuf_put_u32(%struct.sshbuf* %57, i64 %59)
  store i32 %60, i32* %33, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %113, label %62

62:                                               ; preds = %56
  %63 = load %struct.sshbuf*, %struct.sshbuf** %32, align 8
  %64 = load i32, i32* @SSH2_MSG_KEXINIT, align 4
  %65 = call i32 @sshbuf_put_u8(%struct.sshbuf* %63, i32 %64)
  store i32 %65, i32* %33, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %113, label %67

67:                                               ; preds = %62
  %68 = load %struct.sshbuf*, %struct.sshbuf** %32, align 8
  %69 = load i32*, i32** %21, align 8
  %70 = load i64, i64* %22, align 8
  %71 = call i32 @sshbuf_put(%struct.sshbuf* %68, i32* %69, i64 %70)
  store i32 %71, i32* %33, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %113, label %73

73:                                               ; preds = %67
  %74 = load %struct.sshbuf*, %struct.sshbuf** %32, align 8
  %75 = load i64, i64* %24, align 8
  %76 = add i64 %75, 1
  %77 = call i32 @sshbuf_put_u32(%struct.sshbuf* %74, i64 %76)
  store i32 %77, i32* %33, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %113, label %79

79:                                               ; preds = %73
  %80 = load %struct.sshbuf*, %struct.sshbuf** %32, align 8
  %81 = load i32, i32* @SSH2_MSG_KEXINIT, align 4
  %82 = call i32 @sshbuf_put_u8(%struct.sshbuf* %80, i32 %81)
  store i32 %82, i32* %33, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %113, label %84

84:                                               ; preds = %79
  %85 = load %struct.sshbuf*, %struct.sshbuf** %32, align 8
  %86 = load i32*, i32** %23, align 8
  %87 = load i64, i64* %24, align 8
  %88 = call i32 @sshbuf_put(%struct.sshbuf* %85, i32* %86, i64 %87)
  store i32 %88, i32* %33, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %113, label %90

90:                                               ; preds = %84
  %91 = load %struct.sshbuf*, %struct.sshbuf** %32, align 8
  %92 = load i32*, i32** %25, align 8
  %93 = load i64, i64* %26, align 8
  %94 = call i32 @sshbuf_put_string(%struct.sshbuf* %91, i32* %92, i64 %93)
  store i32 %94, i32* %33, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %113, label %96

96:                                               ; preds = %90
  %97 = load %struct.sshbuf*, %struct.sshbuf** %32, align 8
  %98 = load i32*, i32** %27, align 8
  %99 = load i32*, i32** %18, align 8
  %100 = call i32 @sshbuf_put_ec(%struct.sshbuf* %97, i32* %98, i32* %99)
  store i32 %100, i32* %33, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %113, label %102

102:                                              ; preds = %96
  %103 = load %struct.sshbuf*, %struct.sshbuf** %32, align 8
  %104 = load i32*, i32** %28, align 8
  %105 = load i32*, i32** %18, align 8
  %106 = call i32 @sshbuf_put_ec(%struct.sshbuf* %103, i32* %104, i32* %105)
  store i32 %106, i32* %33, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %102
  %109 = load %struct.sshbuf*, %struct.sshbuf** %32, align 8
  %110 = load i32*, i32** %29, align 8
  %111 = call i32 @sshbuf_put_bignum2(%struct.sshbuf* %109, i32* %110)
  store i32 %111, i32* %33, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108, %102, %96, %90, %84, %79, %73, %67, %62, %56, %51, %46
  %114 = load %struct.sshbuf*, %struct.sshbuf** %32, align 8
  %115 = call i32 @sshbuf_free(%struct.sshbuf* %114)
  %116 = load i32, i32* %33, align 4
  store i32 %116, i32* %16, align 4
  br label %135

117:                                              ; preds = %108
  %118 = load i32, i32* %17, align 4
  %119 = load %struct.sshbuf*, %struct.sshbuf** %32, align 8
  %120 = load i32*, i32** %30, align 8
  %121 = load i64*, i64** %31, align 8
  %122 = load i64, i64* %121, align 8
  %123 = call i64 @ssh_digest_buffer(i32 %118, %struct.sshbuf* %119, i32* %120, i64 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %117
  %126 = load %struct.sshbuf*, %struct.sshbuf** %32, align 8
  %127 = call i32 @sshbuf_free(%struct.sshbuf* %126)
  %128 = load i32, i32* @SSH_ERR_LIBCRYPTO_ERROR, align 4
  store i32 %128, i32* %16, align 4
  br label %135

129:                                              ; preds = %117
  %130 = load %struct.sshbuf*, %struct.sshbuf** %32, align 8
  %131 = call i32 @sshbuf_free(%struct.sshbuf* %130)
  %132 = load i32, i32* %17, align 4
  %133 = call i64 @ssh_digest_bytes(i32 %132)
  %134 = load i64*, i64** %31, align 8
  store i64 %133, i64* %134, align 8
  store i32 0, i32* %16, align 4
  br label %135

135:                                              ; preds = %129, %125, %113, %44, %39
  %136 = load i32, i32* %16, align 4
  ret i32 %136
}

declare dso_local i64 @ssh_digest_bytes(i32) #1

declare dso_local %struct.sshbuf* @sshbuf_new(...) #1

declare dso_local i32 @sshbuf_put_cstring(%struct.sshbuf*, i8*) #1

declare dso_local i32 @sshbuf_put_u32(%struct.sshbuf*, i64) #1

declare dso_local i32 @sshbuf_put_u8(%struct.sshbuf*, i32) #1

declare dso_local i32 @sshbuf_put(%struct.sshbuf*, i32*, i64) #1

declare dso_local i32 @sshbuf_put_string(%struct.sshbuf*, i32*, i64) #1

declare dso_local i32 @sshbuf_put_ec(%struct.sshbuf*, i32*, i32*) #1

declare dso_local i32 @sshbuf_put_bignum2(%struct.sshbuf*, i32*) #1

declare dso_local i32 @sshbuf_free(%struct.sshbuf*) #1

declare dso_local i64 @ssh_digest_buffer(i32, %struct.sshbuf*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
