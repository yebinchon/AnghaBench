; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-dss.c_ssh_dss_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-dss.c_ssh_dss_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32*, i32 }
%struct.sshbuf = type { i32 }

@SSH_DIGEST_MAX_LENGTH = common dso_local global i32 0, align 4
@SSH_DIGEST_SHA1 = common dso_local global i32 0, align 4
@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@KEY_DSA = common dso_local global i64 0, align 8
@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@SSH_ERR_INVALID_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ssh-dss\00", align 1
@SSH_ERR_KEY_TYPE_MISMATCH = common dso_local global i32 0, align 4
@SSH_ERR_UNEXPECTED_TRAILING_DATA = common dso_local global i32 0, align 4
@SIGBLOB_LEN = common dso_local global i64 0, align 8
@INTBLOB_LEN = common dso_local global i32 0, align 4
@SSH_ERR_LIBCRYPTO_ERROR = common dso_local global i32 0, align 4
@SSH_ERR_SIGNATURE_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssh_dss_verify(%struct.sshkey* %0, i8* %1, i64 %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sshkey*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.sshbuf*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  store %struct.sshkey* %0, %struct.sshkey** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  %26 = load i32, i32* @SSH_DIGEST_MAX_LENGTH, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %17, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %18, align 8
  store i8* null, i8** %19, align 8
  %30 = load i32, i32* @SSH_DIGEST_SHA1, align 4
  %31 = call i64 @ssh_digest_bytes(i32 %30)
  store i64 %31, i64* %21, align 8
  %32 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %32, i32* %22, align 4
  store %struct.sshbuf* null, %struct.sshbuf** %23, align 8
  store i8* null, i8** %24, align 8
  %33 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %34 = icmp eq %struct.sshkey* %33, null
  br i1 %34, label %53, label %35

35:                                               ; preds = %6
  %36 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %37 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %53, label %40

40:                                               ; preds = %35
  %41 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %42 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @sshkey_type_plain(i32 %43)
  %45 = load i64, i64* @KEY_DSA, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %40
  %48 = load i8*, i8** %9, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i64, i64* %10, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50, %47, %40, %35, %6
  %54 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %54, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %174

55:                                               ; preds = %50
  %56 = load i64, i64* %21, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %59, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %174

60:                                               ; preds = %55
  %61 = load i8*, i8** %9, align 8
  %62 = load i64, i64* %10, align 8
  %63 = call %struct.sshbuf* @sshbuf_from(i8* %61, i64 %62)
  store %struct.sshbuf* %63, %struct.sshbuf** %23, align 8
  %64 = icmp eq %struct.sshbuf* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %66, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %174

67:                                               ; preds = %60
  %68 = load %struct.sshbuf*, %struct.sshbuf** %23, align 8
  %69 = call i64 @sshbuf_get_cstring(%struct.sshbuf* %68, i8** %24, i32* null)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load %struct.sshbuf*, %struct.sshbuf** %23, align 8
  %73 = call i64 @sshbuf_get_string(%struct.sshbuf* %72, i8** %19, i64* %20)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71, %67
  %76 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %76, i32* %22, align 4
  br label %152

77:                                               ; preds = %71
  %78 = load i8*, i8** %24, align 8
  %79 = call i64 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i32, i32* @SSH_ERR_KEY_TYPE_MISMATCH, align 4
  store i32 %82, i32* %22, align 4
  br label %152

83:                                               ; preds = %77
  %84 = load %struct.sshbuf*, %struct.sshbuf** %23, align 8
  %85 = call i64 @sshbuf_len(%struct.sshbuf* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32, i32* @SSH_ERR_UNEXPECTED_TRAILING_DATA, align 4
  store i32 %88, i32* %22, align 4
  br label %152

89:                                               ; preds = %83
  %90 = load i64, i64* %20, align 8
  %91 = load i64, i64* @SIGBLOB_LEN, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %94, i32* %22, align 4
  br label %152

95:                                               ; preds = %89
  %96 = call i32* (...) @DSA_SIG_new()
  store i32* %96, i32** %14, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %104, label %98

98:                                               ; preds = %95
  %99 = call i32* (...) @BN_new()
  store i32* %99, i32** %15, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = call i32* (...) @BN_new()
  store i32* %102, i32** %16, align 8
  %103 = icmp eq i32* %102, null
  br i1 %103, label %104, label %106

104:                                              ; preds = %101, %98, %95
  %105 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %105, i32* %22, align 4
  br label %152

106:                                              ; preds = %101
  %107 = load i8*, i8** %19, align 8
  %108 = load i32, i32* @INTBLOB_LEN, align 4
  %109 = load i32*, i32** %15, align 8
  %110 = call i32* @BN_bin2bn(i8* %107, i32 %108, i32* %109)
  %111 = icmp eq i32* %110, null
  br i1 %111, label %121, label %112

112:                                              ; preds = %106
  %113 = load i8*, i8** %19, align 8
  %114 = load i32, i32* @INTBLOB_LEN, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = load i32, i32* @INTBLOB_LEN, align 4
  %118 = load i32*, i32** %16, align 8
  %119 = call i32* @BN_bin2bn(i8* %116, i32 %117, i32* %118)
  %120 = icmp eq i32* %119, null
  br i1 %120, label %121, label %123

121:                                              ; preds = %112, %106
  %122 = load i32, i32* @SSH_ERR_LIBCRYPTO_ERROR, align 4
  store i32 %122, i32* %22, align 4
  br label %152

123:                                              ; preds = %112
  %124 = load i32*, i32** %14, align 8
  %125 = load i32*, i32** %15, align 8
  %126 = load i32*, i32** %16, align 8
  %127 = call i32 @DSA_SIG_set0(i32* %124, i32* %125, i32* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %123
  %130 = load i32, i32* @SSH_ERR_LIBCRYPTO_ERROR, align 4
  store i32 %130, i32* %22, align 4
  br label %152

131:                                              ; preds = %123
  store i32* null, i32** %16, align 8
  store i32* null, i32** %15, align 8
  %132 = load i32, i32* @SSH_DIGEST_SHA1, align 4
  %133 = load i8*, i8** %11, align 8
  %134 = load i64, i64* %12, align 8
  %135 = trunc i64 %27 to i32
  %136 = call i32 @ssh_digest_memory(i32 %132, i8* %133, i64 %134, i8* %29, i32 %135)
  store i32 %136, i32* %22, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %131
  br label %152

139:                                              ; preds = %131
  %140 = load i64, i64* %21, align 8
  %141 = load i32*, i32** %14, align 8
  %142 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %143 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = call i32 @DSA_do_verify(i8* %29, i64 %140, i32* %141, i32* %144)
  switch i32 %145, label %149 [
    i32 1, label %146
    i32 0, label %147
  ]

146:                                              ; preds = %139
  store i32 0, i32* %22, align 4
  br label %151

147:                                              ; preds = %139
  %148 = load i32, i32* @SSH_ERR_SIGNATURE_INVALID, align 4
  store i32 %148, i32* %22, align 4
  br label %152

149:                                              ; preds = %139
  %150 = load i32, i32* @SSH_ERR_LIBCRYPTO_ERROR, align 4
  store i32 %150, i32* %22, align 4
  br label %152

151:                                              ; preds = %146
  br label %152

152:                                              ; preds = %151, %149, %147, %138, %129, %121, %104, %93, %87, %81, %75
  %153 = call i32 @explicit_bzero(i8* %29, i64 %27)
  %154 = load i32*, i32** %14, align 8
  %155 = call i32 @DSA_SIG_free(i32* %154)
  %156 = load i32*, i32** %15, align 8
  %157 = call i32 @BN_clear_free(i32* %156)
  %158 = load i32*, i32** %16, align 8
  %159 = call i32 @BN_clear_free(i32* %158)
  %160 = load %struct.sshbuf*, %struct.sshbuf** %23, align 8
  %161 = call i32 @sshbuf_free(%struct.sshbuf* %160)
  %162 = load i8*, i8** %24, align 8
  %163 = call i32 @free(i8* %162)
  %164 = load i8*, i8** %19, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %166, label %172

166:                                              ; preds = %152
  %167 = load i8*, i8** %19, align 8
  %168 = load i64, i64* %20, align 8
  %169 = call i32 @explicit_bzero(i8* %167, i64 %168)
  %170 = load i8*, i8** %19, align 8
  %171 = call i32 @free(i8* %170)
  br label %172

172:                                              ; preds = %166, %152
  %173 = load i32, i32* %22, align 4
  store i32 %173, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %174

174:                                              ; preds = %172, %65, %58, %53
  %175 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %175)
  %176 = load i32, i32* %7, align 4
  ret i32 %176
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ssh_digest_bytes(i32) #2

declare dso_local i64 @sshkey_type_plain(i32) #2

declare dso_local %struct.sshbuf* @sshbuf_from(i8*, i64) #2

declare dso_local i64 @sshbuf_get_cstring(%struct.sshbuf*, i8**, i32*) #2

declare dso_local i64 @sshbuf_get_string(%struct.sshbuf*, i8**, i64*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i64 @sshbuf_len(%struct.sshbuf*) #2

declare dso_local i32* @DSA_SIG_new(...) #2

declare dso_local i32* @BN_new(...) #2

declare dso_local i32* @BN_bin2bn(i8*, i32, i32*) #2

declare dso_local i32 @DSA_SIG_set0(i32*, i32*, i32*) #2

declare dso_local i32 @ssh_digest_memory(i32, i8*, i64, i8*, i32) #2

declare dso_local i32 @DSA_do_verify(i8*, i64, i32*, i32*) #2

declare dso_local i32 @explicit_bzero(i8*, i64) #2

declare dso_local i32 @DSA_SIG_free(i32*) #2

declare dso_local i32 @BN_clear_free(i32*) #2

declare dso_local i32 @sshbuf_free(%struct.sshbuf*) #2

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
