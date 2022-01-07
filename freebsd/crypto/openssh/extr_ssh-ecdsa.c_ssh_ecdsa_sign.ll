; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-ecdsa.c_ssh_ecdsa_sign.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-ecdsa.c_ssh_ecdsa_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32*, i32, i32 }
%struct.sshbuf = type { i32 }

@SSH_DIGEST_MAX_LENGTH = common dso_local global i32 0, align 4
@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@KEY_ECDSA = common dso_local global i64 0, align 8
@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@SSH_ERR_LIBCRYPTO_ERROR = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssh_ecdsa_sign(%struct.sshkey* %0, i32** %1, i64* %2, i32* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sshkey*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.sshbuf*, align 8
  %23 = alloca %struct.sshbuf*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.sshkey* %0, %struct.sshkey** %8, align 8
  store i32** %1, i32*** %9, align 8
  store i64* %2, i64** %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* null, i32** %14, align 8
  %26 = load i32, i32* @SSH_DIGEST_MAX_LENGTH, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %18, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %19, align 8
  store %struct.sshbuf* null, %struct.sshbuf** %22, align 8
  store %struct.sshbuf* null, %struct.sshbuf** %23, align 8
  %30 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %30, i32* %24, align 4
  %31 = load i64*, i64** %10, align 8
  %32 = icmp ne i64* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %6
  %34 = load i64*, i64** %10, align 8
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %33, %6
  %36 = load i32**, i32*** %9, align 8
  %37 = icmp ne i32** %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32**, i32*** %9, align 8
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %38, %35
  %41 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %42 = icmp eq %struct.sshkey* %41, null
  br i1 %42, label %55, label %43

43:                                               ; preds = %40
  %44 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %45 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %43
  %49 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %50 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @sshkey_type_plain(i32 %51)
  %53 = load i64, i64* @KEY_ECDSA, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %48, %43, %40
  %56 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %56, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %157

57:                                               ; preds = %48
  %58 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %59 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @sshkey_ec_nid_to_hash_alg(i32 %60)
  store i32 %61, i32* %17, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %67, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* %17, align 4
  %65 = call i64 @ssh_digest_bytes(i32 %64)
  store i64 %65, i64* %21, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %63, %57
  %68 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %68, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %157

69:                                               ; preds = %63
  %70 = load i32, i32* %17, align 4
  %71 = load i32*, i32** %11, align 8
  %72 = load i64, i64* %12, align 8
  %73 = mul nuw i64 4, %27
  %74 = trunc i64 %73 to i32
  %75 = call i32 @ssh_digest_memory(i32 %70, i32* %71, i64 %72, i32* %29, i32 %74)
  store i32 %75, i32* %24, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  br label %146

78:                                               ; preds = %69
  %79 = load i64, i64* %21, align 8
  %80 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %81 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = call i32* @ECDSA_do_sign(i32* %29, i64 %79, i32* %82)
  store i32* %83, i32** %14, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* @SSH_ERR_LIBCRYPTO_ERROR, align 4
  store i32 %86, i32* %24, align 4
  br label %146

87:                                               ; preds = %78
  %88 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %88, %struct.sshbuf** %23, align 8
  %89 = icmp eq %struct.sshbuf* %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %91, %struct.sshbuf** %22, align 8
  %92 = icmp eq %struct.sshbuf* %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %90, %87
  %94 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %94, i32* %24, align 4
  br label %146

95:                                               ; preds = %90
  %96 = load i32*, i32** %14, align 8
  %97 = call i32 @ECDSA_SIG_get0(i32* %96, i32** %15, i32** %16)
  %98 = load %struct.sshbuf*, %struct.sshbuf** %23, align 8
  %99 = load i32*, i32** %15, align 8
  %100 = call i32 @sshbuf_put_bignum2(%struct.sshbuf* %98, i32* %99)
  store i32 %100, i32* %24, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %95
  %103 = load %struct.sshbuf*, %struct.sshbuf** %23, align 8
  %104 = load i32*, i32** %16, align 8
  %105 = call i32 @sshbuf_put_bignum2(%struct.sshbuf* %103, i32* %104)
  store i32 %105, i32* %24, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102, %95
  br label %146

108:                                              ; preds = %102
  %109 = load %struct.sshbuf*, %struct.sshbuf** %22, align 8
  %110 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %111 = call i32 @sshkey_ssh_name_plain(%struct.sshkey* %110)
  %112 = call i32 @sshbuf_put_cstring(%struct.sshbuf* %109, i32 %111)
  store i32 %112, i32* %24, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %108
  %115 = load %struct.sshbuf*, %struct.sshbuf** %22, align 8
  %116 = load %struct.sshbuf*, %struct.sshbuf** %23, align 8
  %117 = call i32 @sshbuf_put_stringb(%struct.sshbuf* %115, %struct.sshbuf* %116)
  store i32 %117, i32* %24, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114, %108
  br label %146

120:                                              ; preds = %114
  %121 = load %struct.sshbuf*, %struct.sshbuf** %22, align 8
  %122 = call i64 @sshbuf_len(%struct.sshbuf* %121)
  store i64 %122, i64* %20, align 8
  %123 = load i32**, i32*** %9, align 8
  %124 = icmp ne i32** %123, null
  br i1 %124, label %125, label %139

125:                                              ; preds = %120
  %126 = load i64, i64* %20, align 8
  %127 = call i32* @malloc(i64 %126)
  %128 = load i32**, i32*** %9, align 8
  store i32* %127, i32** %128, align 8
  %129 = icmp eq i32* %127, null
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %131, i32* %24, align 4
  br label %146

132:                                              ; preds = %125
  %133 = load i32**, i32*** %9, align 8
  %134 = load i32*, i32** %133, align 8
  %135 = load %struct.sshbuf*, %struct.sshbuf** %22, align 8
  %136 = call i32 @sshbuf_ptr(%struct.sshbuf* %135)
  %137 = load i64, i64* %20, align 8
  %138 = call i32 @memcpy(i32* %134, i32 %136, i64 %137)
  br label %139

139:                                              ; preds = %132, %120
  %140 = load i64*, i64** %10, align 8
  %141 = icmp ne i64* %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load i64, i64* %20, align 8
  %144 = load i64*, i64** %10, align 8
  store i64 %143, i64* %144, align 8
  br label %145

145:                                              ; preds = %142, %139
  store i32 0, i32* %24, align 4
  br label %146

146:                                              ; preds = %145, %130, %119, %107, %93, %85, %77
  %147 = mul nuw i64 4, %27
  %148 = trunc i64 %147 to i32
  %149 = call i32 @explicit_bzero(i32* %29, i32 %148)
  %150 = load %struct.sshbuf*, %struct.sshbuf** %22, align 8
  %151 = call i32 @sshbuf_free(%struct.sshbuf* %150)
  %152 = load %struct.sshbuf*, %struct.sshbuf** %23, align 8
  %153 = call i32 @sshbuf_free(%struct.sshbuf* %152)
  %154 = load i32*, i32** %14, align 8
  %155 = call i32 @ECDSA_SIG_free(i32* %154)
  %156 = load i32, i32* %24, align 4
  store i32 %156, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %157

157:                                              ; preds = %146, %67, %55
  %158 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %158)
  %159 = load i32, i32* %7, align 4
  ret i32 %159
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @sshkey_type_plain(i32) #2

declare dso_local i32 @sshkey_ec_nid_to_hash_alg(i32) #2

declare dso_local i64 @ssh_digest_bytes(i32) #2

declare dso_local i32 @ssh_digest_memory(i32, i32*, i64, i32*, i32) #2

declare dso_local i32* @ECDSA_do_sign(i32*, i64, i32*) #2

declare dso_local %struct.sshbuf* @sshbuf_new(...) #2

declare dso_local i32 @ECDSA_SIG_get0(i32*, i32**, i32**) #2

declare dso_local i32 @sshbuf_put_bignum2(%struct.sshbuf*, i32*) #2

declare dso_local i32 @sshbuf_put_cstring(%struct.sshbuf*, i32) #2

declare dso_local i32 @sshkey_ssh_name_plain(%struct.sshkey*) #2

declare dso_local i32 @sshbuf_put_stringb(%struct.sshbuf*, %struct.sshbuf*) #2

declare dso_local i64 @sshbuf_len(%struct.sshbuf*) #2

declare dso_local i32* @malloc(i64) #2

declare dso_local i32 @memcpy(i32*, i32, i64) #2

declare dso_local i32 @sshbuf_ptr(%struct.sshbuf*) #2

declare dso_local i32 @explicit_bzero(i32*, i32) #2

declare dso_local i32 @sshbuf_free(%struct.sshbuf*) #2

declare dso_local i32 @ECDSA_SIG_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
