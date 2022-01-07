; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-rsa.c_ssh_rsa_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-rsa.c_ssh_rsa_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32*, i32 }
%struct.sshbuf = type { i32 }

@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSH_DIGEST_MAX_LENGTH = common dso_local global i32 0, align 4
@KEY_RSA = common dso_local global i64 0, align 8
@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@SSH_RSA_MINIMUM_MODULUS_SIZE = common dso_local global i64 0, align 8
@SSH_ERR_KEY_LENGTH = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@SSH_ERR_INVALID_FORMAT = common dso_local global i32 0, align 4
@SSH_ERR_KEY_TYPE_MISMATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"ssh-rsa-cert-v01@openssh.com\00", align 1
@SSH_ERR_SIGNATURE_INVALID = common dso_local global i32 0, align 4
@SSH_ERR_UNEXPECTED_TRAILING_DATA = common dso_local global i32 0, align 4
@SSH_ERR_KEY_BITS_MISMATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssh_rsa_verify(%struct.sshkey* %0, i32* %1, i64 %2, i32* %3, i64 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sshkey*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.sshbuf*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  store %struct.sshkey* %0, %struct.sshkey** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* null, i8** %15, align 8
  %29 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %29, i32* %18, align 4
  store i64 0, i64* %19, align 8
  store %struct.sshbuf* null, %struct.sshbuf** %23, align 8
  %30 = load i32, i32* @SSH_DIGEST_MAX_LENGTH, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %24, align 8
  %33 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %25, align 8
  store i32* null, i32** %27, align 8
  %34 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %35 = icmp eq %struct.sshkey* %34, null
  br i1 %35, label %54, label %36

36:                                               ; preds = %6
  %37 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %38 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %54, label %41

41:                                               ; preds = %36
  %42 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %43 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @sshkey_type_plain(i32 %44)
  %46 = load i64, i64* @KEY_RSA, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %41
  %49 = load i32*, i32** %9, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i64, i64* %10, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51, %48, %41, %36, %6
  %55 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %55, i32* %7, align 4
  store i32 1, i32* %28, align 4
  br label %193

56:                                               ; preds = %51
  %57 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %58 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @RSA_get0_key(i32* %59, i32** %14, i32* null, i32* null)
  %61 = load i32*, i32** %14, align 8
  %62 = call i64 @BN_num_bits(i32* %61)
  %63 = load i64, i64* @SSH_RSA_MINIMUM_MODULUS_SIZE, align 8
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load i32, i32* @SSH_ERR_KEY_LENGTH, align 4
  store i32 %66, i32* %7, align 4
  store i32 1, i32* %28, align 4
  br label %193

67:                                               ; preds = %56
  %68 = load i32*, i32** %9, align 8
  %69 = load i64, i64* %10, align 8
  %70 = call %struct.sshbuf* @sshbuf_from(i32* %68, i64 %69)
  store %struct.sshbuf* %70, %struct.sshbuf** %23, align 8
  %71 = icmp eq %struct.sshbuf* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %73, i32* %7, align 4
  store i32 1, i32* %28, align 4
  br label %193

74:                                               ; preds = %67
  %75 = load %struct.sshbuf*, %struct.sshbuf** %23, align 8
  %76 = call i64 @sshbuf_get_cstring(%struct.sshbuf* %75, i8** %15, i32* null)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %79, i32* %18, align 4
  br label %181

80:                                               ; preds = %74
  %81 = load i8*, i8** %15, align 8
  %82 = call i32 @rsa_hash_id_from_ident(i8* %81)
  store i32 %82, i32* %16, align 4
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i32, i32* @SSH_ERR_KEY_TYPE_MISMATCH, align 4
  store i32 %85, i32* %18, align 4
  br label %181

86:                                               ; preds = %80
  %87 = load i8*, i8** %13, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %106

89:                                               ; preds = %86
  %90 = load i8*, i8** %13, align 8
  %91 = call i64 @strcmp(i8* %90, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %89
  %94 = load i8*, i8** %13, align 8
  %95 = call i32 @rsa_hash_id_from_keyname(i8* %94)
  store i32 %95, i32* %17, align 4
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %98, i32* %18, align 4
  br label %181

99:                                               ; preds = %93
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* %17, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i32, i32* @SSH_ERR_SIGNATURE_INVALID, align 4
  store i32 %104, i32* %18, align 4
  br label %181

105:                                              ; preds = %99
  br label %106

106:                                              ; preds = %105, %89, %86
  %107 = load %struct.sshbuf*, %struct.sshbuf** %23, align 8
  %108 = call i64 @sshbuf_get_string(%struct.sshbuf* %107, i32** %27, i64* %19)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %111, i32* %18, align 4
  br label %181

112:                                              ; preds = %106
  %113 = load %struct.sshbuf*, %struct.sshbuf** %23, align 8
  %114 = call i64 @sshbuf_len(%struct.sshbuf* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = load i32, i32* @SSH_ERR_UNEXPECTED_TRAILING_DATA, align 4
  store i32 %117, i32* %18, align 4
  br label %181

118:                                              ; preds = %112
  %119 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %120 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = call i64 @RSA_size(i32* %121)
  store i64 %122, i64* %21, align 8
  %123 = load i64, i64* %19, align 8
  %124 = load i64, i64* %21, align 8
  %125 = icmp ugt i64 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %118
  %127 = load i32, i32* @SSH_ERR_KEY_BITS_MISMATCH, align 4
  store i32 %127, i32* %18, align 4
  br label %181

128:                                              ; preds = %118
  %129 = load i64, i64* %19, align 8
  %130 = load i64, i64* %21, align 8
  %131 = icmp ult i64 %129, %130
  br i1 %131, label %132, label %156

132:                                              ; preds = %128
  %133 = load i64, i64* %21, align 8
  %134 = load i64, i64* %19, align 8
  %135 = sub i64 %133, %134
  store i64 %135, i64* %20, align 8
  %136 = load i32*, i32** %27, align 8
  store i32* %136, i32** %26, align 8
  %137 = load i32*, i32** %27, align 8
  %138 = load i64, i64* %21, align 8
  %139 = call i32* @realloc(i32* %137, i64 %138)
  store i32* %139, i32** %27, align 8
  %140 = icmp eq i32* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %132
  %142 = load i32*, i32** %26, align 8
  store i32* %142, i32** %27, align 8
  %143 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %143, i32* %18, align 4
  br label %181

144:                                              ; preds = %132
  %145 = load i32*, i32** %27, align 8
  %146 = load i64, i64* %20, align 8
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  %148 = load i32*, i32** %27, align 8
  %149 = load i64, i64* %19, align 8
  %150 = call i32 @memmove(i32* %147, i32* %148, i64 %149)
  %151 = load i32*, i32** %27, align 8
  %152 = load i64, i64* %20, align 8
  %153 = trunc i64 %152 to i32
  %154 = call i32 @explicit_bzero(i32* %151, i32 %153)
  %155 = load i64, i64* %21, align 8
  store i64 %155, i64* %19, align 8
  br label %156

156:                                              ; preds = %144, %128
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %16, align 4
  %159 = call i64 @ssh_digest_bytes(i32 %158)
  store i64 %159, i64* %22, align 8
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %157
  %162 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %162, i32* %18, align 4
  br label %181

163:                                              ; preds = %157
  %164 = load i32, i32* %16, align 4
  %165 = load i32*, i32** %11, align 8
  %166 = load i64, i64* %12, align 8
  %167 = mul nuw i64 4, %31
  %168 = trunc i64 %167 to i32
  %169 = call i32 @ssh_digest_memory(i32 %164, i32* %165, i64 %166, i32* %33, i32 %168)
  store i32 %169, i32* %18, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %163
  br label %181

172:                                              ; preds = %163
  %173 = load i32, i32* %16, align 4
  %174 = load i64, i64* %22, align 8
  %175 = load i32*, i32** %27, align 8
  %176 = load i64, i64* %19, align 8
  %177 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %178 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = call i32 @openssh_RSA_verify(i32 %173, i32* %33, i64 %174, i32* %175, i64 %176, i32* %179)
  store i32 %180, i32* %18, align 4
  br label %181

181:                                              ; preds = %172, %171, %161, %141, %126, %116, %110, %103, %97, %84, %78
  %182 = load i32*, i32** %27, align 8
  %183 = load i64, i64* %19, align 8
  %184 = call i32 @freezero(i32* %182, i64 %183)
  %185 = load i8*, i8** %15, align 8
  %186 = call i32 @free(i8* %185)
  %187 = load %struct.sshbuf*, %struct.sshbuf** %23, align 8
  %188 = call i32 @sshbuf_free(%struct.sshbuf* %187)
  %189 = mul nuw i64 4, %31
  %190 = trunc i64 %189 to i32
  %191 = call i32 @explicit_bzero(i32* %33, i32 %190)
  %192 = load i32, i32* %18, align 4
  store i32 %192, i32* %7, align 4
  store i32 1, i32* %28, align 4
  br label %193

193:                                              ; preds = %181, %72, %65, %54
  %194 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %194)
  %195 = load i32, i32* %7, align 4
  ret i32 %195
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @sshkey_type_plain(i32) #2

declare dso_local i32 @RSA_get0_key(i32*, i32**, i32*, i32*) #2

declare dso_local i64 @BN_num_bits(i32*) #2

declare dso_local %struct.sshbuf* @sshbuf_from(i32*, i64) #2

declare dso_local i64 @sshbuf_get_cstring(%struct.sshbuf*, i8**, i32*) #2

declare dso_local i32 @rsa_hash_id_from_ident(i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @rsa_hash_id_from_keyname(i8*) #2

declare dso_local i64 @sshbuf_get_string(%struct.sshbuf*, i32**, i64*) #2

declare dso_local i64 @sshbuf_len(%struct.sshbuf*) #2

declare dso_local i64 @RSA_size(i32*) #2

declare dso_local i32* @realloc(i32*, i64) #2

declare dso_local i32 @memmove(i32*, i32*, i64) #2

declare dso_local i32 @explicit_bzero(i32*, i32) #2

declare dso_local i64 @ssh_digest_bytes(i32) #2

declare dso_local i32 @ssh_digest_memory(i32, i32*, i64, i32*, i32) #2

declare dso_local i32 @openssh_RSA_verify(i32, i32*, i64, i32*, i64, i32*) #2

declare dso_local i32 @freezero(i32*, i64) #2

declare dso_local i32 @free(i8*) #2

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
