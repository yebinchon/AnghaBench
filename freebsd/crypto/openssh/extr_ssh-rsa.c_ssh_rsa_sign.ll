; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-rsa.c_ssh_rsa_sign.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-rsa.c_ssh_rsa_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32*, i32 }
%struct.sshbuf = type { i32 }

@SSH_DIGEST_MAX_LENGTH = common dso_local global i32 0, align 4
@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSH_DIGEST_SHA1 = common dso_local global i32 0, align 4
@KEY_RSA = common dso_local global i64 0, align 8
@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@SSH_RSA_MINIMUM_MODULUS_SIZE = common dso_local global i64 0, align 8
@SSH_ERR_KEY_LENGTH = common dso_local global i32 0, align 4
@SSHBUF_MAX_BIGNUM = common dso_local global i64 0, align 8
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@SSH_ERR_LIBCRYPTO_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssh_rsa_sign(%struct.sshkey* %0, i32** %1, i64* %2, i32* %3, i64 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sshkey*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.sshbuf*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  store %struct.sshkey* %0, %struct.sshkey** %8, align 8
  store i32** %1, i32*** %9, align 8
  store i64* %2, i64** %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  %27 = load i32, i32* @SSH_DIGEST_MAX_LENGTH, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %15, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %16, align 8
  store i32* null, i32** %17, align 8
  store i64 0, i64* %18, align 8
  %31 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %31, i32* %23, align 4
  store %struct.sshbuf* null, %struct.sshbuf** %24, align 8
  %32 = load i64*, i64** %10, align 8
  %33 = icmp ne i64* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %6
  %35 = load i64*, i64** %10, align 8
  store i64 0, i64* %35, align 8
  br label %36

36:                                               ; preds = %34, %6
  %37 = load i32**, i32*** %9, align 8
  %38 = icmp ne i32** %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32**, i32*** %9, align 8
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %39, %36
  %42 = load i8*, i8** %13, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = load i8*, i8** %13, align 8
  %46 = call i64 @strlen(i8* %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44, %41
  %49 = load i32, i32* @SSH_DIGEST_SHA1, align 4
  store i32 %49, i32* %22, align 4
  br label %53

50:                                               ; preds = %44
  %51 = load i8*, i8** %13, align 8
  %52 = call i32 @rsa_hash_id_from_keyname(i8* %51)
  store i32 %52, i32* %22, align 4
  br label %53

53:                                               ; preds = %50, %48
  %54 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %55 = icmp eq %struct.sshkey* %54, null
  br i1 %55, label %71, label %56

56:                                               ; preds = %53
  %57 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %58 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %71, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %22, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %71, label %64

64:                                               ; preds = %61
  %65 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %66 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @sshkey_type_plain(i32 %67)
  %69 = load i64, i64* @KEY_RSA, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %64, %61, %56, %53
  %72 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %72, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %210

73:                                               ; preds = %64
  %74 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %75 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @RSA_get0_key(i32* %76, i32** %14, i32* null, i32* null)
  %78 = load i32*, i32** %14, align 8
  %79 = call i64 @BN_num_bits(i32* %78)
  %80 = load i64, i64* @SSH_RSA_MINIMUM_MODULUS_SIZE, align 8
  %81 = icmp slt i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %73
  %83 = load i32, i32* @SSH_ERR_KEY_LENGTH, align 4
  store i32 %83, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %210

84:                                               ; preds = %73
  %85 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %86 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = call i64 @RSA_size(i32* %87)
  store i64 %88, i64* %18, align 8
  %89 = load i64, i64* %18, align 8
  %90 = icmp ule i64 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %84
  %92 = load i64, i64* %18, align 8
  %93 = load i64, i64* @SSHBUF_MAX_BIGNUM, align 8
  %94 = icmp ugt i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %91, %84
  %96 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %96, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %210

97:                                               ; preds = %91
  %98 = load i32, i32* %22, align 4
  %99 = call i32 @rsa_hash_alg_nid(i32 %98)
  store i32 %99, i32* %21, align 4
  %100 = load i32, i32* %22, align 4
  %101 = call i64 @ssh_digest_bytes(i32 %100)
  store i64 %101, i64* %19, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %104, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %210

105:                                              ; preds = %97
  %106 = load i32, i32* %22, align 4
  %107 = load i32*, i32** %11, align 8
  %108 = load i64, i64* %12, align 8
  %109 = mul nuw i64 4, %28
  %110 = trunc i64 %109 to i32
  %111 = call i32 @ssh_digest_memory(i32 %106, i32* %107, i64 %108, i32* %30, i32 %110)
  store i32 %111, i32* %23, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  br label %200

114:                                              ; preds = %105
  %115 = load i64, i64* %18, align 8
  %116 = call i32* @malloc(i64 %115)
  store i32* %116, i32** %17, align 8
  %117 = icmp eq i32* %116, null
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %119, i32* %23, align 4
  br label %200

120:                                              ; preds = %114
  %121 = load i32, i32* %21, align 4
  %122 = load i64, i64* %19, align 8
  %123 = load i32*, i32** %17, align 8
  %124 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %125 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @RSA_sign(i32 %121, i32* %30, i64 %122, i32* %123, i64* %20, i32* %126)
  %128 = icmp ne i32 %127, 1
  br i1 %128, label %129, label %131

129:                                              ; preds = %120
  %130 = load i32, i32* @SSH_ERR_LIBCRYPTO_ERROR, align 4
  store i32 %130, i32* %23, align 4
  br label %200

131:                                              ; preds = %120
  %132 = load i64, i64* %20, align 8
  %133 = load i64, i64* %18, align 8
  %134 = icmp ult i64 %132, %133
  br i1 %134, label %135, label %149

135:                                              ; preds = %131
  %136 = load i64, i64* %18, align 8
  %137 = load i64, i64* %20, align 8
  %138 = sub i64 %136, %137
  store i64 %138, i64* %26, align 8
  %139 = load i32*, i32** %17, align 8
  %140 = load i64, i64* %26, align 8
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  %142 = load i32*, i32** %17, align 8
  %143 = load i64, i64* %20, align 8
  %144 = call i32 @memmove(i32* %141, i32* %142, i64 %143)
  %145 = load i32*, i32** %17, align 8
  %146 = load i64, i64* %26, align 8
  %147 = trunc i64 %146 to i32
  %148 = call i32 @explicit_bzero(i32* %145, i32 %147)
  br label %156

149:                                              ; preds = %131
  %150 = load i64, i64* %20, align 8
  %151 = load i64, i64* %18, align 8
  %152 = icmp ugt i64 %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %149
  %154 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %154, i32* %23, align 4
  br label %200

155:                                              ; preds = %149
  br label %156

156:                                              ; preds = %155, %135
  %157 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %157, %struct.sshbuf** %24, align 8
  %158 = icmp eq %struct.sshbuf* %157, null
  br i1 %158, label %159, label %161

159:                                              ; preds = %156
  %160 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %160, i32* %23, align 4
  br label %200

161:                                              ; preds = %156
  %162 = load %struct.sshbuf*, %struct.sshbuf** %24, align 8
  %163 = load i32, i32* %22, align 4
  %164 = call i32 @rsa_hash_alg_ident(i32 %163)
  %165 = call i32 @sshbuf_put_cstring(%struct.sshbuf* %162, i32 %164)
  store i32 %165, i32* %23, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %173, label %167

167:                                              ; preds = %161
  %168 = load %struct.sshbuf*, %struct.sshbuf** %24, align 8
  %169 = load i32*, i32** %17, align 8
  %170 = load i64, i64* %18, align 8
  %171 = call i32 @sshbuf_put_string(%struct.sshbuf* %168, i32* %169, i64 %170)
  store i32 %171, i32* %23, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %167, %161
  br label %200

174:                                              ; preds = %167
  %175 = load %struct.sshbuf*, %struct.sshbuf** %24, align 8
  %176 = call i64 @sshbuf_len(%struct.sshbuf* %175)
  store i64 %176, i64* %20, align 8
  %177 = load i32**, i32*** %9, align 8
  %178 = icmp ne i32** %177, null
  br i1 %178, label %179, label %193

179:                                              ; preds = %174
  %180 = load i64, i64* %20, align 8
  %181 = call i32* @malloc(i64 %180)
  %182 = load i32**, i32*** %9, align 8
  store i32* %181, i32** %182, align 8
  %183 = icmp eq i32* %181, null
  br i1 %183, label %184, label %186

184:                                              ; preds = %179
  %185 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %185, i32* %23, align 4
  br label %200

186:                                              ; preds = %179
  %187 = load i32**, i32*** %9, align 8
  %188 = load i32*, i32** %187, align 8
  %189 = load %struct.sshbuf*, %struct.sshbuf** %24, align 8
  %190 = call i32 @sshbuf_ptr(%struct.sshbuf* %189)
  %191 = load i64, i64* %20, align 8
  %192 = call i32 @memcpy(i32* %188, i32 %190, i64 %191)
  br label %193

193:                                              ; preds = %186, %174
  %194 = load i64*, i64** %10, align 8
  %195 = icmp ne i64* %194, null
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  %197 = load i64, i64* %20, align 8
  %198 = load i64*, i64** %10, align 8
  store i64 %197, i64* %198, align 8
  br label %199

199:                                              ; preds = %196, %193
  store i32 0, i32* %23, align 4
  br label %200

200:                                              ; preds = %199, %184, %173, %159, %153, %129, %118, %113
  %201 = mul nuw i64 4, %28
  %202 = trunc i64 %201 to i32
  %203 = call i32 @explicit_bzero(i32* %30, i32 %202)
  %204 = load i32*, i32** %17, align 8
  %205 = load i64, i64* %18, align 8
  %206 = call i32 @freezero(i32* %204, i64 %205)
  %207 = load %struct.sshbuf*, %struct.sshbuf** %24, align 8
  %208 = call i32 @sshbuf_free(%struct.sshbuf* %207)
  %209 = load i32, i32* %23, align 4
  store i32 %209, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %210

210:                                              ; preds = %200, %103, %95, %82, %71
  %211 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %211)
  %212 = load i32, i32* %7, align 4
  ret i32 %212
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @rsa_hash_id_from_keyname(i8*) #2

declare dso_local i64 @sshkey_type_plain(i32) #2

declare dso_local i32 @RSA_get0_key(i32*, i32**, i32*, i32*) #2

declare dso_local i64 @BN_num_bits(i32*) #2

declare dso_local i64 @RSA_size(i32*) #2

declare dso_local i32 @rsa_hash_alg_nid(i32) #2

declare dso_local i64 @ssh_digest_bytes(i32) #2

declare dso_local i32 @ssh_digest_memory(i32, i32*, i64, i32*, i32) #2

declare dso_local i32* @malloc(i64) #2

declare dso_local i32 @RSA_sign(i32, i32*, i64, i32*, i64*, i32*) #2

declare dso_local i32 @memmove(i32*, i32*, i64) #2

declare dso_local i32 @explicit_bzero(i32*, i32) #2

declare dso_local %struct.sshbuf* @sshbuf_new(...) #2

declare dso_local i32 @sshbuf_put_cstring(%struct.sshbuf*, i32) #2

declare dso_local i32 @rsa_hash_alg_ident(i32) #2

declare dso_local i32 @sshbuf_put_string(%struct.sshbuf*, i32*, i64) #2

declare dso_local i64 @sshbuf_len(%struct.sshbuf*) #2

declare dso_local i32 @memcpy(i32*, i32, i64) #2

declare dso_local i32 @sshbuf_ptr(%struct.sshbuf*) #2

declare dso_local i32 @freezero(i32*, i64) #2

declare dso_local i32 @sshbuf_free(%struct.sshbuf*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
