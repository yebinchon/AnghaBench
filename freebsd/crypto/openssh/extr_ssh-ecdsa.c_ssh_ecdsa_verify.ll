; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-ecdsa.c_ssh_ecdsa_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-ecdsa.c_ssh_ecdsa_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32*, i32, i32 }
%struct.sshbuf = type { i32 }

@SSH_DIGEST_MAX_LENGTH = common dso_local global i32 0, align 4
@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@KEY_ECDSA = common dso_local global i64 0, align 8
@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@SSH_ERR_INVALID_FORMAT = common dso_local global i32 0, align 4
@SSH_ERR_KEY_TYPE_MISMATCH = common dso_local global i32 0, align 4
@SSH_ERR_UNEXPECTED_TRAILING_DATA = common dso_local global i32 0, align 4
@SSH_ERR_LIBCRYPTO_ERROR = common dso_local global i32 0, align 4
@SSH_ERR_SIGNATURE_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssh_ecdsa_verify(%struct.sshkey* %0, i32* %1, i64 %2, i32* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sshkey*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
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
  %21 = alloca i32, align 4
  %22 = alloca %struct.sshbuf*, align 8
  %23 = alloca %struct.sshbuf*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  store %struct.sshkey* %0, %struct.sshkey** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  %26 = load i32, i32* @SSH_DIGEST_MAX_LENGTH, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %18, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %19, align 8
  %30 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %30, i32* %21, align 4
  store %struct.sshbuf* null, %struct.sshbuf** %22, align 8
  store %struct.sshbuf* null, %struct.sshbuf** %23, align 8
  store i8* null, i8** %24, align 8
  %31 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %32 = icmp eq %struct.sshkey* %31, null
  br i1 %32, label %51, label %33

33:                                               ; preds = %6
  %34 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %35 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %51, label %38

38:                                               ; preds = %33
  %39 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %40 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @sshkey_type_plain(i32 %41)
  %43 = load i64, i64* @KEY_ECDSA, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %38
  %46 = load i32*, i32** %9, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i64, i64* %10, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48, %45, %38, %33, %6
  %52 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %52, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %172

53:                                               ; preds = %48
  %54 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %55 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @sshkey_ec_nid_to_hash_alg(i32 %56)
  store i32 %57, i32* %17, align 4
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %63, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %17, align 4
  %61 = call i64 @ssh_digest_bytes(i32 %60)
  store i64 %61, i64* %20, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59, %53
  %64 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %64, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %172

65:                                               ; preds = %59
  %66 = load i32*, i32** %9, align 8
  %67 = load i64, i64* %10, align 8
  %68 = call %struct.sshbuf* @sshbuf_from(i32* %66, i64 %67)
  store %struct.sshbuf* %68, %struct.sshbuf** %22, align 8
  %69 = icmp eq %struct.sshbuf* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %71, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %172

72:                                               ; preds = %65
  %73 = load %struct.sshbuf*, %struct.sshbuf** %22, align 8
  %74 = call i64 @sshbuf_get_cstring(%struct.sshbuf* %73, i8** %24, i32* null)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load %struct.sshbuf*, %struct.sshbuf** %22, align 8
  %78 = call i64 @sshbuf_froms(%struct.sshbuf* %77, %struct.sshbuf** %23)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76, %72
  %81 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %81, i32* %21, align 4
  br label %155

82:                                               ; preds = %76
  %83 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %84 = call i32 @sshkey_ssh_name_plain(%struct.sshkey* %83)
  %85 = load i8*, i8** %24, align 8
  %86 = call i64 @strcmp(i32 %84, i8* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32, i32* @SSH_ERR_KEY_TYPE_MISMATCH, align 4
  store i32 %89, i32* %21, align 4
  br label %155

90:                                               ; preds = %82
  %91 = load %struct.sshbuf*, %struct.sshbuf** %22, align 8
  %92 = call i64 @sshbuf_len(%struct.sshbuf* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i32, i32* @SSH_ERR_UNEXPECTED_TRAILING_DATA, align 4
  store i32 %95, i32* %21, align 4
  br label %155

96:                                               ; preds = %90
  %97 = call i32* (...) @ECDSA_SIG_new()
  store i32* %97, i32** %14, align 8
  %98 = icmp eq i32* %97, null
  br i1 %98, label %105, label %99

99:                                               ; preds = %96
  %100 = call i32* (...) @BN_new()
  store i32* %100, i32** %15, align 8
  %101 = icmp eq i32* %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = call i32* (...) @BN_new()
  store i32* %103, i32** %16, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %102, %99, %96
  %106 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %106, i32* %21, align 4
  br label %155

107:                                              ; preds = %102
  %108 = load %struct.sshbuf*, %struct.sshbuf** %23, align 8
  %109 = load i32*, i32** %15, align 8
  %110 = call i64 @sshbuf_get_bignum2(%struct.sshbuf* %108, i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %107
  %113 = load %struct.sshbuf*, %struct.sshbuf** %23, align 8
  %114 = load i32*, i32** %16, align 8
  %115 = call i64 @sshbuf_get_bignum2(%struct.sshbuf* %113, i32* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %112, %107
  %118 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %118, i32* %21, align 4
  br label %155

119:                                              ; preds = %112
  %120 = load i32*, i32** %14, align 8
  %121 = load i32*, i32** %15, align 8
  %122 = load i32*, i32** %16, align 8
  %123 = call i32 @ECDSA_SIG_set0(i32* %120, i32* %121, i32* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %119
  %126 = load i32, i32* @SSH_ERR_LIBCRYPTO_ERROR, align 4
  store i32 %126, i32* %21, align 4
  br label %155

127:                                              ; preds = %119
  store i32* null, i32** %16, align 8
  store i32* null, i32** %15, align 8
  %128 = load %struct.sshbuf*, %struct.sshbuf** %23, align 8
  %129 = call i64 @sshbuf_len(%struct.sshbuf* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = load i32, i32* @SSH_ERR_UNEXPECTED_TRAILING_DATA, align 4
  store i32 %132, i32* %21, align 4
  br label %155

133:                                              ; preds = %127
  %134 = load i32, i32* %17, align 4
  %135 = load i32*, i32** %11, align 8
  %136 = load i64, i64* %12, align 8
  %137 = mul nuw i64 4, %27
  %138 = trunc i64 %137 to i32
  %139 = call i32 @ssh_digest_memory(i32 %134, i32* %135, i64 %136, i32* %29, i32 %138)
  store i32 %139, i32* %21, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %133
  br label %155

142:                                              ; preds = %133
  %143 = load i64, i64* %20, align 8
  %144 = load i32*, i32** %14, align 8
  %145 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %146 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 @ECDSA_do_verify(i32* %29, i64 %143, i32* %144, i32* %147)
  switch i32 %148, label %152 [
    i32 1, label %149
    i32 0, label %150
  ]

149:                                              ; preds = %142
  store i32 0, i32* %21, align 4
  br label %154

150:                                              ; preds = %142
  %151 = load i32, i32* @SSH_ERR_SIGNATURE_INVALID, align 4
  store i32 %151, i32* %21, align 4
  br label %155

152:                                              ; preds = %142
  %153 = load i32, i32* @SSH_ERR_LIBCRYPTO_ERROR, align 4
  store i32 %153, i32* %21, align 4
  br label %155

154:                                              ; preds = %149
  br label %155

155:                                              ; preds = %154, %152, %150, %141, %131, %125, %117, %105, %94, %88, %80
  %156 = mul nuw i64 4, %27
  %157 = trunc i64 %156 to i32
  %158 = call i32 @explicit_bzero(i32* %29, i32 %157)
  %159 = load %struct.sshbuf*, %struct.sshbuf** %23, align 8
  %160 = call i32 @sshbuf_free(%struct.sshbuf* %159)
  %161 = load %struct.sshbuf*, %struct.sshbuf** %22, align 8
  %162 = call i32 @sshbuf_free(%struct.sshbuf* %161)
  %163 = load i32*, i32** %14, align 8
  %164 = call i32 @ECDSA_SIG_free(i32* %163)
  %165 = load i32*, i32** %15, align 8
  %166 = call i32 @BN_clear_free(i32* %165)
  %167 = load i32*, i32** %16, align 8
  %168 = call i32 @BN_clear_free(i32* %167)
  %169 = load i8*, i8** %24, align 8
  %170 = call i32 @free(i8* %169)
  %171 = load i32, i32* %21, align 4
  store i32 %171, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %172

172:                                              ; preds = %155, %70, %63, %51
  %173 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %173)
  %174 = load i32, i32* %7, align 4
  ret i32 %174
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @sshkey_type_plain(i32) #2

declare dso_local i32 @sshkey_ec_nid_to_hash_alg(i32) #2

declare dso_local i64 @ssh_digest_bytes(i32) #2

declare dso_local %struct.sshbuf* @sshbuf_from(i32*, i64) #2

declare dso_local i64 @sshbuf_get_cstring(%struct.sshbuf*, i8**, i32*) #2

declare dso_local i64 @sshbuf_froms(%struct.sshbuf*, %struct.sshbuf**) #2

declare dso_local i64 @strcmp(i32, i8*) #2

declare dso_local i32 @sshkey_ssh_name_plain(%struct.sshkey*) #2

declare dso_local i64 @sshbuf_len(%struct.sshbuf*) #2

declare dso_local i32* @ECDSA_SIG_new(...) #2

declare dso_local i32* @BN_new(...) #2

declare dso_local i64 @sshbuf_get_bignum2(%struct.sshbuf*, i32*) #2

declare dso_local i32 @ECDSA_SIG_set0(i32*, i32*, i32*) #2

declare dso_local i32 @ssh_digest_memory(i32, i32*, i64, i32*, i32) #2

declare dso_local i32 @ECDSA_do_verify(i32*, i64, i32*, i32*) #2

declare dso_local i32 @explicit_bzero(i32*, i32) #2

declare dso_local i32 @sshbuf_free(%struct.sshbuf*) #2

declare dso_local i32 @ECDSA_SIG_free(i32*) #2

declare dso_local i32 @BN_clear_free(i32*) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
