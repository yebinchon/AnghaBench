; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kexc25519c.c_input_kex_c25519_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kexc25519c.c_input_kex_c25519_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32, %struct.kex* }
%struct.kex = type { i32 (%struct.sshkey*, %struct.ssh*)*, i64, i64, i64, i32*, i32*, i32, i32, %struct.sshbuf*, %struct.sshbuf*, i32, i32, i32 }
%struct.sshkey = type { i64, i64 }
%struct.sshbuf = type { i32 }

@SSH_DIGEST_MAX_LENGTH = common dso_local global i32 0, align 4
@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@KEY_ECDSA = common dso_local global i64 0, align 8
@SSH_ERR_KEY_TYPE_MISMATCH = common dso_local global i32 0, align 4
@SSH_ERR_SIGNATURE_INVALID = common dso_local global i32 0, align 4
@CURVE25519_SIZE = common dso_local global i64 0, align 8
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.ssh*)* @input_kex_c25519_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_kex_c25519_reply(i32 %0, i32 %1, %struct.ssh* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ssh*, align 8
  %7 = alloca %struct.kex*, align 8
  %8 = alloca %struct.sshkey*, align 8
  %9 = alloca %struct.sshbuf*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.ssh* %2, %struct.ssh** %6, align 8
  %20 = load %struct.ssh*, %struct.ssh** %6, align 8
  %21 = getelementptr inbounds %struct.ssh, %struct.ssh* %20, i32 0, i32 1
  %22 = load %struct.kex*, %struct.kex** %21, align 8
  store %struct.kex* %22, %struct.kex** %7, align 8
  store %struct.sshkey* null, %struct.sshkey** %8, align 8
  store %struct.sshbuf* null, %struct.sshbuf** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %23 = load i32, i32* @SSH_DIGEST_MAX_LENGTH, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %13, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %14, align 8
  %27 = load %struct.kex*, %struct.kex** %7, align 8
  %28 = getelementptr inbounds %struct.kex, %struct.kex* %27, i32 0, i32 0
  %29 = load i32 (%struct.sshkey*, %struct.ssh*)*, i32 (%struct.sshkey*, %struct.ssh*)** %28, align 8
  %30 = icmp eq i32 (%struct.sshkey*, %struct.ssh*)* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %32, i32* %19, align 4
  br label %203

33:                                               ; preds = %3
  %34 = load %struct.ssh*, %struct.ssh** %6, align 8
  %35 = call i32 @sshpkt_get_string(%struct.ssh* %34, i32** %11, i64* %17)
  store i32 %35, i32* %19, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = load i32*, i32** %11, align 8
  %39 = load i64, i64* %17, align 8
  %40 = call i32 @sshkey_from_blob(i32* %38, i64 %39, %struct.sshkey** %8)
  store i32 %40, i32* %19, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37, %33
  br label %203

43:                                               ; preds = %37
  %44 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %45 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.kex*, %struct.kex** %7, align 8
  %48 = getelementptr inbounds %struct.kex, %struct.kex* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %65, label %51

51:                                               ; preds = %43
  %52 = load %struct.kex*, %struct.kex** %7, align 8
  %53 = getelementptr inbounds %struct.kex, %struct.kex* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @KEY_ECDSA, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %51
  %58 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %59 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.kex*, %struct.kex** %7, align 8
  %62 = getelementptr inbounds %struct.kex, %struct.kex* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %60, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %57, %43
  %66 = load i32, i32* @SSH_ERR_KEY_TYPE_MISMATCH, align 4
  store i32 %66, i32* %19, align 4
  br label %203

67:                                               ; preds = %57, %51
  %68 = load %struct.kex*, %struct.kex** %7, align 8
  %69 = getelementptr inbounds %struct.kex, %struct.kex* %68, i32 0, i32 0
  %70 = load i32 (%struct.sshkey*, %struct.ssh*)*, i32 (%struct.sshkey*, %struct.ssh*)** %69, align 8
  %71 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %72 = load %struct.ssh*, %struct.ssh** %6, align 8
  %73 = call i32 %70(%struct.sshkey* %71, %struct.ssh* %72)
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load i32, i32* @SSH_ERR_SIGNATURE_INVALID, align 4
  store i32 %76, i32* %19, align 4
  br label %203

77:                                               ; preds = %67
  %78 = load %struct.ssh*, %struct.ssh** %6, align 8
  %79 = call i32 @sshpkt_get_string(%struct.ssh* %78, i32** %10, i64* %16)
  store i32 %79, i32* %19, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %77
  %82 = load %struct.ssh*, %struct.ssh** %6, align 8
  %83 = call i32 @sshpkt_get_string(%struct.ssh* %82, i32** %12, i64* %15)
  store i32 %83, i32* %19, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load %struct.ssh*, %struct.ssh** %6, align 8
  %87 = call i32 @sshpkt_get_end(%struct.ssh* %86)
  store i32 %87, i32* %19, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85, %81, %77
  br label %203

90:                                               ; preds = %85
  %91 = load i64, i64* %16, align 8
  %92 = load i64, i64* @CURVE25519_SIZE, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i32, i32* @SSH_ERR_SIGNATURE_INVALID, align 4
  store i32 %95, i32* %19, align 4
  br label %203

96:                                               ; preds = %90
  %97 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %97, %struct.sshbuf** %9, align 8
  %98 = icmp eq %struct.sshbuf* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %100, i32* %19, align 4
  br label %203

101:                                              ; preds = %96
  %102 = load %struct.kex*, %struct.kex** %7, align 8
  %103 = getelementptr inbounds %struct.kex, %struct.kex* %102, i32 0, i32 4
  %104 = load i32*, i32** %103, align 8
  %105 = load i32*, i32** %10, align 8
  %106 = load %struct.sshbuf*, %struct.sshbuf** %9, align 8
  %107 = call i32 @kexc25519_shared_key(i32* %104, i32* %105, %struct.sshbuf* %106)
  store i32 %107, i32* %19, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  br label %203

110:                                              ; preds = %101
  %111 = mul nuw i64 4, %24
  store i64 %111, i64* %18, align 8
  %112 = load %struct.kex*, %struct.kex** %7, align 8
  %113 = getelementptr inbounds %struct.kex, %struct.kex* %112, i32 0, i32 12
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.kex*, %struct.kex** %7, align 8
  %116 = getelementptr inbounds %struct.kex, %struct.kex* %115, i32 0, i32 11
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.kex*, %struct.kex** %7, align 8
  %119 = getelementptr inbounds %struct.kex, %struct.kex* %118, i32 0, i32 10
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.kex*, %struct.kex** %7, align 8
  %122 = getelementptr inbounds %struct.kex, %struct.kex* %121, i32 0, i32 9
  %123 = load %struct.sshbuf*, %struct.sshbuf** %122, align 8
  %124 = call i32 @sshbuf_ptr(%struct.sshbuf* %123)
  %125 = load %struct.kex*, %struct.kex** %7, align 8
  %126 = getelementptr inbounds %struct.kex, %struct.kex* %125, i32 0, i32 9
  %127 = load %struct.sshbuf*, %struct.sshbuf** %126, align 8
  %128 = call i32 @sshbuf_len(%struct.sshbuf* %127)
  %129 = load %struct.kex*, %struct.kex** %7, align 8
  %130 = getelementptr inbounds %struct.kex, %struct.kex* %129, i32 0, i32 8
  %131 = load %struct.sshbuf*, %struct.sshbuf** %130, align 8
  %132 = call i32 @sshbuf_ptr(%struct.sshbuf* %131)
  %133 = load %struct.kex*, %struct.kex** %7, align 8
  %134 = getelementptr inbounds %struct.kex, %struct.kex* %133, i32 0, i32 8
  %135 = load %struct.sshbuf*, %struct.sshbuf** %134, align 8
  %136 = call i32 @sshbuf_len(%struct.sshbuf* %135)
  %137 = load i32*, i32** %11, align 8
  %138 = load i64, i64* %17, align 8
  %139 = load %struct.kex*, %struct.kex** %7, align 8
  %140 = getelementptr inbounds %struct.kex, %struct.kex* %139, i32 0, i32 7
  %141 = load i32, i32* %140, align 4
  %142 = load i32*, i32** %10, align 8
  %143 = load %struct.sshbuf*, %struct.sshbuf** %9, align 8
  %144 = call i32 @sshbuf_ptr(%struct.sshbuf* %143)
  %145 = load %struct.sshbuf*, %struct.sshbuf** %9, align 8
  %146 = call i32 @sshbuf_len(%struct.sshbuf* %145)
  %147 = call i32 @kex_c25519_hash(i32 %114, i32 %117, i32 %120, i32 %124, i32 %128, i32 %132, i32 %136, i32* %137, i64 %138, i32 %141, i32* %142, i32 %144, i32 %146, i32* %26, i64* %18)
  store i32 %147, i32* %19, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %110
  br label %203

150:                                              ; preds = %110
  %151 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %152 = load i32*, i32** %12, align 8
  %153 = load i64, i64* %15, align 8
  %154 = load i64, i64* %18, align 8
  %155 = load %struct.kex*, %struct.kex** %7, align 8
  %156 = getelementptr inbounds %struct.kex, %struct.kex* %155, i32 0, i32 6
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.ssh*, %struct.ssh** %6, align 8
  %159 = getelementptr inbounds %struct.ssh, %struct.ssh* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @sshkey_verify(%struct.sshkey* %151, i32* %152, i64 %153, i32* %26, i64 %154, i32 %157, i32 %160)
  store i32 %161, i32* %19, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %150
  br label %203

164:                                              ; preds = %150
  %165 = load %struct.kex*, %struct.kex** %7, align 8
  %166 = getelementptr inbounds %struct.kex, %struct.kex* %165, i32 0, i32 5
  %167 = load i32*, i32** %166, align 8
  %168 = icmp eq i32* %167, null
  br i1 %168, label %169, label %193

169:                                              ; preds = %164
  %170 = load i64, i64* %18, align 8
  %171 = load %struct.kex*, %struct.kex** %7, align 8
  %172 = getelementptr inbounds %struct.kex, %struct.kex* %171, i32 0, i32 3
  store i64 %170, i64* %172, align 8
  %173 = load %struct.kex*, %struct.kex** %7, align 8
  %174 = getelementptr inbounds %struct.kex, %struct.kex* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = call i32* @malloc(i64 %175)
  %177 = load %struct.kex*, %struct.kex** %7, align 8
  %178 = getelementptr inbounds %struct.kex, %struct.kex* %177, i32 0, i32 5
  store i32* %176, i32** %178, align 8
  %179 = load %struct.kex*, %struct.kex** %7, align 8
  %180 = getelementptr inbounds %struct.kex, %struct.kex* %179, i32 0, i32 5
  %181 = load i32*, i32** %180, align 8
  %182 = icmp eq i32* %181, null
  br i1 %182, label %183, label %185

183:                                              ; preds = %169
  %184 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %184, i32* %19, align 4
  br label %203

185:                                              ; preds = %169
  %186 = load %struct.kex*, %struct.kex** %7, align 8
  %187 = getelementptr inbounds %struct.kex, %struct.kex* %186, i32 0, i32 5
  %188 = load i32*, i32** %187, align 8
  %189 = load %struct.kex*, %struct.kex** %7, align 8
  %190 = getelementptr inbounds %struct.kex, %struct.kex* %189, i32 0, i32 3
  %191 = load i64, i64* %190, align 8
  %192 = call i32 @memcpy(i32* %188, i32* %26, i64 %191)
  br label %193

193:                                              ; preds = %185, %164
  %194 = load %struct.ssh*, %struct.ssh** %6, align 8
  %195 = load i64, i64* %18, align 8
  %196 = load %struct.sshbuf*, %struct.sshbuf** %9, align 8
  %197 = call i32 @kex_derive_keys(%struct.ssh* %194, i32* %26, i64 %195, %struct.sshbuf* %196)
  store i32 %197, i32* %19, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %193
  %200 = load %struct.ssh*, %struct.ssh** %6, align 8
  %201 = call i32 @kex_send_newkeys(%struct.ssh* %200)
  store i32 %201, i32* %19, align 4
  br label %202

202:                                              ; preds = %199, %193
  br label %203

203:                                              ; preds = %202, %183, %163, %149, %109, %99, %94, %89, %75, %65, %42, %31
  %204 = mul nuw i64 4, %24
  %205 = trunc i64 %204 to i32
  %206 = call i32 @explicit_bzero(i32* %26, i32 %205)
  %207 = load %struct.kex*, %struct.kex** %7, align 8
  %208 = getelementptr inbounds %struct.kex, %struct.kex* %207, i32 0, i32 4
  %209 = load i32*, i32** %208, align 8
  %210 = call i32 @explicit_bzero(i32* %209, i32 8)
  %211 = load i32*, i32** %11, align 8
  %212 = call i32 @free(i32* %211)
  %213 = load i32*, i32** %10, align 8
  %214 = call i32 @free(i32* %213)
  %215 = load i32*, i32** %12, align 8
  %216 = call i32 @free(i32* %215)
  %217 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %218 = call i32 @sshkey_free(%struct.sshkey* %217)
  %219 = load %struct.sshbuf*, %struct.sshbuf** %9, align 8
  %220 = call i32 @sshbuf_free(%struct.sshbuf* %219)
  %221 = load i32, i32* %19, align 4
  %222 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %222)
  ret i32 %221
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sshpkt_get_string(%struct.ssh*, i32**, i64*) #2

declare dso_local i32 @sshkey_from_blob(i32*, i64, %struct.sshkey**) #2

declare dso_local i32 @sshpkt_get_end(%struct.ssh*) #2

declare dso_local %struct.sshbuf* @sshbuf_new(...) #2

declare dso_local i32 @kexc25519_shared_key(i32*, i32*, %struct.sshbuf*) #2

declare dso_local i32 @kex_c25519_hash(i32, i32, i32, i32, i32, i32, i32, i32*, i64, i32, i32*, i32, i32, i32*, i64*) #2

declare dso_local i32 @sshbuf_ptr(%struct.sshbuf*) #2

declare dso_local i32 @sshbuf_len(%struct.sshbuf*) #2

declare dso_local i32 @sshkey_verify(%struct.sshkey*, i32*, i64, i32*, i64, i32, i32) #2

declare dso_local i32* @malloc(i64) #2

declare dso_local i32 @memcpy(i32*, i32*, i64) #2

declare dso_local i32 @kex_derive_keys(%struct.ssh*, i32*, i64, %struct.sshbuf*) #2

declare dso_local i32 @kex_send_newkeys(%struct.ssh*) #2

declare dso_local i32 @explicit_bzero(i32*, i32) #2

declare dso_local i32 @free(i32*) #2

declare dso_local i32 @sshkey_free(%struct.sshkey*) #2

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
