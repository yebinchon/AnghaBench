; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kexc25519.c_kex_c25519_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kexc25519.c_kex_c25519_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }

@CURVE25519_SIZE = common dso_local global i64 0, align 8
@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@SSH2_MSG_KEXINIT = common dso_local global i32 0, align 4
@SSH_ERR_LIBCRYPTO_ERROR = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kex_c25519_hash(i32 %0, i8* %1, i8* %2, i32* %3, i64 %4, i32* %5, i64 %6, i32* %7, i64 %8, i32* %9, i32* %10, i32* %11, i64 %12, i32* %13, i64* %14) #0 {
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i64*, align 8
  %32 = alloca %struct.sshbuf*, align 8
  %33 = alloca i32, align 4
  store i32 %0, i32* %17, align 4
  store i8* %1, i8** %18, align 8
  store i8* %2, i8** %19, align 8
  store i32* %3, i32** %20, align 8
  store i64 %4, i64* %21, align 8
  store i32* %5, i32** %22, align 8
  store i64 %6, i64* %23, align 8
  store i32* %7, i32** %24, align 8
  store i64 %8, i64* %25, align 8
  store i32* %9, i32** %26, align 8
  store i32* %10, i32** %27, align 8
  store i32* %11, i32** %28, align 8
  store i64 %12, i64* %29, align 8
  store i32* %13, i32** %30, align 8
  store i64* %14, i64** %31, align 8
  %34 = load i64, i64* @CURVE25519_SIZE, align 8
  %35 = load i64, i64* @CURVE25519_SIZE, align 8
  %36 = load i64*, i64** %31, align 8
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %17, align 4
  %39 = call i64 @ssh_digest_bytes(i32 %38)
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %15
  %42 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %42, i32* %16, align 4
  br label %138

43:                                               ; preds = %15
  %44 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %44, %struct.sshbuf** %32, align 8
  %45 = icmp eq %struct.sshbuf* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %47, i32* %16, align 4
  br label %138

48:                                               ; preds = %43
  %49 = load %struct.sshbuf*, %struct.sshbuf** %32, align 8
  %50 = load i8*, i8** %18, align 8
  %51 = call i32 @sshbuf_put_cstring(%struct.sshbuf* %49, i8* %50)
  store i32 %51, i32* %33, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %116, label %53

53:                                               ; preds = %48
  %54 = load %struct.sshbuf*, %struct.sshbuf** %32, align 8
  %55 = load i8*, i8** %19, align 8
  %56 = call i32 @sshbuf_put_cstring(%struct.sshbuf* %54, i8* %55)
  store i32 %56, i32* %33, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %116, label %58

58:                                               ; preds = %53
  %59 = load %struct.sshbuf*, %struct.sshbuf** %32, align 8
  %60 = load i64, i64* %21, align 8
  %61 = add i64 %60, 1
  %62 = call i32 @sshbuf_put_u32(%struct.sshbuf* %59, i64 %61)
  store i32 %62, i32* %33, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %116, label %64

64:                                               ; preds = %58
  %65 = load %struct.sshbuf*, %struct.sshbuf** %32, align 8
  %66 = load i32, i32* @SSH2_MSG_KEXINIT, align 4
  %67 = call i32 @sshbuf_put_u8(%struct.sshbuf* %65, i32 %66)
  store i32 %67, i32* %33, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %116, label %69

69:                                               ; preds = %64
  %70 = load %struct.sshbuf*, %struct.sshbuf** %32, align 8
  %71 = load i32*, i32** %20, align 8
  %72 = load i64, i64* %21, align 8
  %73 = call i32 @sshbuf_put(%struct.sshbuf* %70, i32* %71, i64 %72)
  store i32 %73, i32* %33, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %116, label %75

75:                                               ; preds = %69
  %76 = load %struct.sshbuf*, %struct.sshbuf** %32, align 8
  %77 = load i64, i64* %23, align 8
  %78 = add i64 %77, 1
  %79 = call i32 @sshbuf_put_u32(%struct.sshbuf* %76, i64 %78)
  store i32 %79, i32* %33, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %116, label %81

81:                                               ; preds = %75
  %82 = load %struct.sshbuf*, %struct.sshbuf** %32, align 8
  %83 = load i32, i32* @SSH2_MSG_KEXINIT, align 4
  %84 = call i32 @sshbuf_put_u8(%struct.sshbuf* %82, i32 %83)
  store i32 %84, i32* %33, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %116, label %86

86:                                               ; preds = %81
  %87 = load %struct.sshbuf*, %struct.sshbuf** %32, align 8
  %88 = load i32*, i32** %22, align 8
  %89 = load i64, i64* %23, align 8
  %90 = call i32 @sshbuf_put(%struct.sshbuf* %87, i32* %88, i64 %89)
  store i32 %90, i32* %33, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %116, label %92

92:                                               ; preds = %86
  %93 = load %struct.sshbuf*, %struct.sshbuf** %32, align 8
  %94 = load i32*, i32** %24, align 8
  %95 = load i64, i64* %25, align 8
  %96 = call i32 @sshbuf_put_string(%struct.sshbuf* %93, i32* %94, i64 %95)
  store i32 %96, i32* %33, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %116, label %98

98:                                               ; preds = %92
  %99 = load %struct.sshbuf*, %struct.sshbuf** %32, align 8
  %100 = load i32*, i32** %26, align 8
  %101 = load i64, i64* @CURVE25519_SIZE, align 8
  %102 = call i32 @sshbuf_put_string(%struct.sshbuf* %99, i32* %100, i64 %101)
  store i32 %102, i32* %33, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %116, label %104

104:                                              ; preds = %98
  %105 = load %struct.sshbuf*, %struct.sshbuf** %32, align 8
  %106 = load i32*, i32** %27, align 8
  %107 = load i64, i64* @CURVE25519_SIZE, align 8
  %108 = call i32 @sshbuf_put_string(%struct.sshbuf* %105, i32* %106, i64 %107)
  store i32 %108, i32* %33, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %104
  %111 = load %struct.sshbuf*, %struct.sshbuf** %32, align 8
  %112 = load i32*, i32** %28, align 8
  %113 = load i64, i64* %29, align 8
  %114 = call i32 @sshbuf_put(%struct.sshbuf* %111, i32* %112, i64 %113)
  store i32 %114, i32* %33, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %110, %104, %98, %92, %86, %81, %75, %69, %64, %58, %53, %48
  %117 = load %struct.sshbuf*, %struct.sshbuf** %32, align 8
  %118 = call i32 @sshbuf_free(%struct.sshbuf* %117)
  %119 = load i32, i32* %33, align 4
  store i32 %119, i32* %16, align 4
  br label %138

120:                                              ; preds = %110
  %121 = load i32, i32* %17, align 4
  %122 = load %struct.sshbuf*, %struct.sshbuf** %32, align 8
  %123 = load i32*, i32** %30, align 8
  %124 = load i64*, i64** %31, align 8
  %125 = load i64, i64* %124, align 8
  %126 = call i64 @ssh_digest_buffer(i32 %121, %struct.sshbuf* %122, i32* %123, i64 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %120
  %129 = load %struct.sshbuf*, %struct.sshbuf** %32, align 8
  %130 = call i32 @sshbuf_free(%struct.sshbuf* %129)
  %131 = load i32, i32* @SSH_ERR_LIBCRYPTO_ERROR, align 4
  store i32 %131, i32* %16, align 4
  br label %138

132:                                              ; preds = %120
  %133 = load %struct.sshbuf*, %struct.sshbuf** %32, align 8
  %134 = call i32 @sshbuf_free(%struct.sshbuf* %133)
  %135 = load i32, i32* %17, align 4
  %136 = call i64 @ssh_digest_bytes(i32 %135)
  %137 = load i64*, i64** %31, align 8
  store i64 %136, i64* %137, align 8
  store i32 0, i32* %16, align 4
  br label %138

138:                                              ; preds = %132, %128, %116, %46, %41
  %139 = load i32, i32* %16, align 4
  ret i32 %139
}

declare dso_local i64 @ssh_digest_bytes(i32) #1

declare dso_local %struct.sshbuf* @sshbuf_new(...) #1

declare dso_local i32 @sshbuf_put_cstring(%struct.sshbuf*, i8*) #1

declare dso_local i32 @sshbuf_put_u32(%struct.sshbuf*, i64) #1

declare dso_local i32 @sshbuf_put_u8(%struct.sshbuf*, i32) #1

declare dso_local i32 @sshbuf_put(%struct.sshbuf*, i32*, i64) #1

declare dso_local i32 @sshbuf_put_string(%struct.sshbuf*, i32*, i64) #1

declare dso_local i32 @sshbuf_free(%struct.sshbuf*) #1

declare dso_local i64 @ssh_digest_buffer(i32, %struct.sshbuf*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
