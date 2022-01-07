; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-dss.c_ssh_dss_sign.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-dss.c_ssh_dss_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32*, i32 }
%struct.sshbuf = type { i32 }

@SSH_DIGEST_MAX_LENGTH = common dso_local global i32 0, align 4
@SIGBLOB_LEN = common dso_local global i32 0, align 4
@SSH_DIGEST_SHA1 = common dso_local global i32 0, align 4
@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@KEY_DSA = common dso_local global i64 0, align 8
@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSH_ERR_LIBCRYPTO_ERROR = common dso_local global i32 0, align 4
@INTBLOB_LEN = common dso_local global i64 0, align 8
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ssh-dss\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssh_dss_sign(%struct.sshkey* %0, i32** %1, i64* %2, i32* %3, i64 %4, i32 %5) #0 {
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
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.sshbuf*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.sshkey* %0, %struct.sshkey** %8, align 8
  store i32** %1, i32*** %9, align 8
  store i64* %2, i64** %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* null, i32** %14, align 8
  %27 = load i32, i32* @SSH_DIGEST_MAX_LENGTH, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %17, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %18, align 8
  %31 = load i32, i32* @SIGBLOB_LEN, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %19, align 8
  %34 = load i32, i32* @SSH_DIGEST_SHA1, align 4
  %35 = call i64 @ssh_digest_bytes(i32 %34)
  store i64 %35, i64* %23, align 8
  store %struct.sshbuf* null, %struct.sshbuf** %24, align 8
  %36 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %36, i32* %25, align 4
  %37 = load i64*, i64** %10, align 8
  %38 = icmp ne i64* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %6
  %40 = load i64*, i64** %10, align 8
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %39, %6
  %42 = load i32**, i32*** %9, align 8
  %43 = icmp ne i32** %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32**, i32*** %9, align 8
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %44, %41
  %47 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %48 = icmp eq %struct.sshkey* %47, null
  br i1 %48, label %61, label %49

49:                                               ; preds = %46
  %50 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %51 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %61, label %54

54:                                               ; preds = %49
  %55 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %56 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @sshkey_type_plain(i32 %57)
  %59 = load i64, i64* @KEY_DSA, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %54, %49, %46
  %62 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %62, i32* %7, align 4
  store i32 1, i32* %26, align 4
  br label %173

63:                                               ; preds = %54
  %64 = load i64, i64* %23, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %67, i32* %7, align 4
  store i32 1, i32* %26, align 4
  br label %173

68:                                               ; preds = %63
  %69 = load i32, i32* @SSH_DIGEST_SHA1, align 4
  %70 = load i32*, i32** %11, align 8
  %71 = load i64, i64* %12, align 8
  %72 = mul nuw i64 4, %28
  %73 = trunc i64 %72 to i32
  %74 = call i32 @ssh_digest_memory(i32 %69, i32* %70, i64 %71, i32* %30, i32 %73)
  store i32 %74, i32* %25, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %164

77:                                               ; preds = %68
  %78 = load i64, i64* %23, align 8
  %79 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %80 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = call i32* @DSA_do_sign(i32* %30, i64 %78, i32* %81)
  store i32* %82, i32** %14, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = load i32, i32* @SSH_ERR_LIBCRYPTO_ERROR, align 4
  store i32 %85, i32* %25, align 4
  br label %164

86:                                               ; preds = %77
  %87 = load i32*, i32** %14, align 8
  %88 = call i32 @DSA_SIG_get0(i32* %87, i32** %15, i32** %16)
  %89 = load i32*, i32** %15, align 8
  %90 = call i64 @BN_num_bytes(i32* %89)
  store i64 %90, i64* %20, align 8
  %91 = load i32*, i32** %16, align 8
  %92 = call i64 @BN_num_bytes(i32* %91)
  store i64 %92, i64* %21, align 8
  %93 = load i64, i64* %20, align 8
  %94 = load i64, i64* @INTBLOB_LEN, align 8
  %95 = icmp ugt i64 %93, %94
  br i1 %95, label %100, label %96

96:                                               ; preds = %86
  %97 = load i64, i64* %21, align 8
  %98 = load i64, i64* @INTBLOB_LEN, align 8
  %99 = icmp ugt i64 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %96, %86
  %101 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %101, i32* %25, align 4
  br label %164

102:                                              ; preds = %96
  %103 = load i32, i32* @SIGBLOB_LEN, align 4
  %104 = call i32 @explicit_bzero(i32* %33, i32 %103)
  %105 = load i32*, i32** %15, align 8
  %106 = load i32, i32* @SIGBLOB_LEN, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %33, i64 %107
  %109 = load i64, i64* @INTBLOB_LEN, align 8
  %110 = sub i64 0, %109
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i64, i64* %20, align 8
  %113 = sub i64 0, %112
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = call i32 @BN_bn2bin(i32* %105, i32* %114)
  %116 = load i32*, i32** %16, align 8
  %117 = load i32, i32* @SIGBLOB_LEN, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %33, i64 %118
  %120 = load i64, i64* %21, align 8
  %121 = sub i64 0, %120
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = call i32 @BN_bn2bin(i32* %116, i32* %122)
  %124 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %124, %struct.sshbuf** %24, align 8
  %125 = icmp eq %struct.sshbuf* %124, null
  br i1 %125, label %126, label %128

126:                                              ; preds = %102
  %127 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %127, i32* %25, align 4
  br label %164

128:                                              ; preds = %102
  %129 = load %struct.sshbuf*, %struct.sshbuf** %24, align 8
  %130 = call i32 @sshbuf_put_cstring(%struct.sshbuf* %129, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %130, i32* %25, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %137, label %132

132:                                              ; preds = %128
  %133 = load %struct.sshbuf*, %struct.sshbuf** %24, align 8
  %134 = load i32, i32* @SIGBLOB_LEN, align 4
  %135 = call i32 @sshbuf_put_string(%struct.sshbuf* %133, i32* %33, i32 %134)
  store i32 %135, i32* %25, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %132, %128
  br label %164

138:                                              ; preds = %132
  %139 = load %struct.sshbuf*, %struct.sshbuf** %24, align 8
  %140 = call i64 @sshbuf_len(%struct.sshbuf* %139)
  store i64 %140, i64* %22, align 8
  %141 = load i32**, i32*** %9, align 8
  %142 = icmp ne i32** %141, null
  br i1 %142, label %143, label %157

143:                                              ; preds = %138
  %144 = load i64, i64* %22, align 8
  %145 = call i32* @malloc(i64 %144)
  %146 = load i32**, i32*** %9, align 8
  store i32* %145, i32** %146, align 8
  %147 = icmp eq i32* %145, null
  br i1 %147, label %148, label %150

148:                                              ; preds = %143
  %149 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %149, i32* %25, align 4
  br label %164

150:                                              ; preds = %143
  %151 = load i32**, i32*** %9, align 8
  %152 = load i32*, i32** %151, align 8
  %153 = load %struct.sshbuf*, %struct.sshbuf** %24, align 8
  %154 = call i32 @sshbuf_ptr(%struct.sshbuf* %153)
  %155 = load i64, i64* %22, align 8
  %156 = call i32 @memcpy(i32* %152, i32 %154, i64 %155)
  br label %157

157:                                              ; preds = %150, %138
  %158 = load i64*, i64** %10, align 8
  %159 = icmp ne i64* %158, null
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load i64, i64* %22, align 8
  %162 = load i64*, i64** %10, align 8
  store i64 %161, i64* %162, align 8
  br label %163

163:                                              ; preds = %160, %157
  store i32 0, i32* %25, align 4
  br label %164

164:                                              ; preds = %163, %148, %137, %126, %100, %84, %76
  %165 = mul nuw i64 4, %28
  %166 = trunc i64 %165 to i32
  %167 = call i32 @explicit_bzero(i32* %30, i32 %166)
  %168 = load i32*, i32** %14, align 8
  %169 = call i32 @DSA_SIG_free(i32* %168)
  %170 = load %struct.sshbuf*, %struct.sshbuf** %24, align 8
  %171 = call i32 @sshbuf_free(%struct.sshbuf* %170)
  %172 = load i32, i32* %25, align 4
  store i32 %172, i32* %7, align 4
  store i32 1, i32* %26, align 4
  br label %173

173:                                              ; preds = %164, %66, %61
  %174 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %174)
  %175 = load i32, i32* %7, align 4
  ret i32 %175
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ssh_digest_bytes(i32) #2

declare dso_local i64 @sshkey_type_plain(i32) #2

declare dso_local i32 @ssh_digest_memory(i32, i32*, i64, i32*, i32) #2

declare dso_local i32* @DSA_do_sign(i32*, i64, i32*) #2

declare dso_local i32 @DSA_SIG_get0(i32*, i32**, i32**) #2

declare dso_local i64 @BN_num_bytes(i32*) #2

declare dso_local i32 @explicit_bzero(i32*, i32) #2

declare dso_local i32 @BN_bn2bin(i32*, i32*) #2

declare dso_local %struct.sshbuf* @sshbuf_new(...) #2

declare dso_local i32 @sshbuf_put_cstring(%struct.sshbuf*, i8*) #2

declare dso_local i32 @sshbuf_put_string(%struct.sshbuf*, i32*, i32) #2

declare dso_local i64 @sshbuf_len(%struct.sshbuf*) #2

declare dso_local i32* @malloc(i64) #2

declare dso_local i32 @memcpy(i32*, i32, i64) #2

declare dso_local i32 @sshbuf_ptr(%struct.sshbuf*) #2

declare dso_local i32 @DSA_SIG_free(i32*) #2

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
