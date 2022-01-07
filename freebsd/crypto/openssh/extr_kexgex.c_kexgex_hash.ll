; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kexgex.c_kexgex_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kexgex.c_kexgex_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }

@SSH_DIGEST_SHA1 = common dso_local global i32 0, align 4
@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@SSH2_MSG_KEXINIT = common dso_local global i32 0, align 4
@SSH_ERR_LIBCRYPTO_ERROR = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kexgex_hash(i32 %0, i8* %1, i8* %2, i32* %3, i64 %4, i32* %5, i64 %6, i32* %7, i64 %8, i32 %9, i32 %10, i32 %11, i32* %12, i32* %13, i32* %14, i32* %15, i32* %16, i32* %17, i64* %18) #0 {
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i32*, align 8
  %39 = alloca i64*, align 8
  %40 = alloca %struct.sshbuf*, align 8
  %41 = alloca i32, align 4
  store i32 %0, i32* %21, align 4
  store i8* %1, i8** %22, align 8
  store i8* %2, i8** %23, align 8
  store i32* %3, i32** %24, align 8
  store i64 %4, i64* %25, align 8
  store i32* %5, i32** %26, align 8
  store i64 %6, i64* %27, align 8
  store i32* %7, i32** %28, align 8
  store i64 %8, i64* %29, align 8
  store i32 %9, i32* %30, align 4
  store i32 %10, i32* %31, align 4
  store i32 %11, i32* %32, align 4
  store i32* %12, i32** %33, align 8
  store i32* %13, i32** %34, align 8
  store i32* %14, i32** %35, align 8
  store i32* %15, i32** %36, align 8
  store i32* %16, i32** %37, align 8
  store i32* %17, i32** %38, align 8
  store i64* %18, i64** %39, align 8
  %42 = load i64*, i64** %39, align 8
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* @SSH_DIGEST_SHA1, align 4
  %45 = call i64 @ssh_digest_bytes(i32 %44)
  %46 = icmp ult i64 %43, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %19
  %48 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %48, i32* %20, align 4
  br label %174

49:                                               ; preds = %19
  %50 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %50, %struct.sshbuf** %40, align 8
  %51 = icmp eq %struct.sshbuf* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %53, i32* %20, align 4
  br label %174

54:                                               ; preds = %49
  %55 = load %struct.sshbuf*, %struct.sshbuf** %40, align 8
  %56 = load i8*, i8** %22, align 8
  %57 = call i32 @sshbuf_put_cstring(%struct.sshbuf* %55, i8* %56)
  store i32 %57, i32* %41, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %152, label %59

59:                                               ; preds = %54
  %60 = load %struct.sshbuf*, %struct.sshbuf** %40, align 8
  %61 = load i8*, i8** %23, align 8
  %62 = call i32 @sshbuf_put_cstring(%struct.sshbuf* %60, i8* %61)
  store i32 %62, i32* %41, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %152, label %64

64:                                               ; preds = %59
  %65 = load %struct.sshbuf*, %struct.sshbuf** %40, align 8
  %66 = load i64, i64* %25, align 8
  %67 = add i64 %66, 1
  %68 = trunc i64 %67 to i32
  %69 = call i32 @sshbuf_put_u32(%struct.sshbuf* %65, i32 %68)
  store i32 %69, i32* %41, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %152, label %71

71:                                               ; preds = %64
  %72 = load %struct.sshbuf*, %struct.sshbuf** %40, align 8
  %73 = load i32, i32* @SSH2_MSG_KEXINIT, align 4
  %74 = call i32 @sshbuf_put_u8(%struct.sshbuf* %72, i32 %73)
  store i32 %74, i32* %41, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %152, label %76

76:                                               ; preds = %71
  %77 = load %struct.sshbuf*, %struct.sshbuf** %40, align 8
  %78 = load i32*, i32** %24, align 8
  %79 = load i64, i64* %25, align 8
  %80 = call i32 @sshbuf_put(%struct.sshbuf* %77, i32* %78, i64 %79)
  store i32 %80, i32* %41, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %152, label %82

82:                                               ; preds = %76
  %83 = load %struct.sshbuf*, %struct.sshbuf** %40, align 8
  %84 = load i64, i64* %27, align 8
  %85 = add i64 %84, 1
  %86 = trunc i64 %85 to i32
  %87 = call i32 @sshbuf_put_u32(%struct.sshbuf* %83, i32 %86)
  store i32 %87, i32* %41, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %152, label %89

89:                                               ; preds = %82
  %90 = load %struct.sshbuf*, %struct.sshbuf** %40, align 8
  %91 = load i32, i32* @SSH2_MSG_KEXINIT, align 4
  %92 = call i32 @sshbuf_put_u8(%struct.sshbuf* %90, i32 %91)
  store i32 %92, i32* %41, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %152, label %94

94:                                               ; preds = %89
  %95 = load %struct.sshbuf*, %struct.sshbuf** %40, align 8
  %96 = load i32*, i32** %26, align 8
  %97 = load i64, i64* %27, align 8
  %98 = call i32 @sshbuf_put(%struct.sshbuf* %95, i32* %96, i64 %97)
  store i32 %98, i32* %41, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %152, label %100

100:                                              ; preds = %94
  %101 = load %struct.sshbuf*, %struct.sshbuf** %40, align 8
  %102 = load i32*, i32** %28, align 8
  %103 = load i64, i64* %29, align 8
  %104 = call i32 @sshbuf_put_string(%struct.sshbuf* %101, i32* %102, i64 %103)
  store i32 %104, i32* %41, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %152, label %106

106:                                              ; preds = %100
  %107 = load i32, i32* %30, align 4
  %108 = icmp ne i32 %107, -1
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load %struct.sshbuf*, %struct.sshbuf** %40, align 8
  %111 = load i32, i32* %30, align 4
  %112 = call i32 @sshbuf_put_u32(%struct.sshbuf* %110, i32 %111)
  store i32 %112, i32* %41, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %152, label %114

114:                                              ; preds = %109, %106
  %115 = load %struct.sshbuf*, %struct.sshbuf** %40, align 8
  %116 = load i32, i32* %31, align 4
  %117 = call i32 @sshbuf_put_u32(%struct.sshbuf* %115, i32 %116)
  store i32 %117, i32* %41, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %152, label %119

119:                                              ; preds = %114
  %120 = load i32, i32* %32, align 4
  %121 = icmp ne i32 %120, -1
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = load %struct.sshbuf*, %struct.sshbuf** %40, align 8
  %124 = load i32, i32* %32, align 4
  %125 = call i32 @sshbuf_put_u32(%struct.sshbuf* %123, i32 %124)
  store i32 %125, i32* %41, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %152, label %127

127:                                              ; preds = %122, %119
  %128 = load %struct.sshbuf*, %struct.sshbuf** %40, align 8
  %129 = load i32*, i32** %33, align 8
  %130 = call i32 @sshbuf_put_bignum2(%struct.sshbuf* %128, i32* %129)
  store i32 %130, i32* %41, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %152, label %132

132:                                              ; preds = %127
  %133 = load %struct.sshbuf*, %struct.sshbuf** %40, align 8
  %134 = load i32*, i32** %34, align 8
  %135 = call i32 @sshbuf_put_bignum2(%struct.sshbuf* %133, i32* %134)
  store i32 %135, i32* %41, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %152, label %137

137:                                              ; preds = %132
  %138 = load %struct.sshbuf*, %struct.sshbuf** %40, align 8
  %139 = load i32*, i32** %35, align 8
  %140 = call i32 @sshbuf_put_bignum2(%struct.sshbuf* %138, i32* %139)
  store i32 %140, i32* %41, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %152, label %142

142:                                              ; preds = %137
  %143 = load %struct.sshbuf*, %struct.sshbuf** %40, align 8
  %144 = load i32*, i32** %36, align 8
  %145 = call i32 @sshbuf_put_bignum2(%struct.sshbuf* %143, i32* %144)
  store i32 %145, i32* %41, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %142
  %148 = load %struct.sshbuf*, %struct.sshbuf** %40, align 8
  %149 = load i32*, i32** %37, align 8
  %150 = call i32 @sshbuf_put_bignum2(%struct.sshbuf* %148, i32* %149)
  store i32 %150, i32* %41, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %147, %142, %137, %132, %127, %122, %114, %109, %100, %94, %89, %82, %76, %71, %64, %59, %54
  %153 = load %struct.sshbuf*, %struct.sshbuf** %40, align 8
  %154 = call i32 @sshbuf_free(%struct.sshbuf* %153)
  %155 = load i32, i32* %41, align 4
  store i32 %155, i32* %20, align 4
  br label %174

156:                                              ; preds = %147
  %157 = load i32, i32* %21, align 4
  %158 = load %struct.sshbuf*, %struct.sshbuf** %40, align 8
  %159 = load i32*, i32** %38, align 8
  %160 = load i64*, i64** %39, align 8
  %161 = load i64, i64* %160, align 8
  %162 = call i64 @ssh_digest_buffer(i32 %157, %struct.sshbuf* %158, i32* %159, i64 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %156
  %165 = load %struct.sshbuf*, %struct.sshbuf** %40, align 8
  %166 = call i32 @sshbuf_free(%struct.sshbuf* %165)
  %167 = load i32, i32* @SSH_ERR_LIBCRYPTO_ERROR, align 4
  store i32 %167, i32* %20, align 4
  br label %174

168:                                              ; preds = %156
  %169 = load %struct.sshbuf*, %struct.sshbuf** %40, align 8
  %170 = call i32 @sshbuf_free(%struct.sshbuf* %169)
  %171 = load i32, i32* %21, align 4
  %172 = call i64 @ssh_digest_bytes(i32 %171)
  %173 = load i64*, i64** %39, align 8
  store i64 %172, i64* %173, align 8
  store i32 0, i32* %20, align 4
  br label %174

174:                                              ; preds = %168, %164, %152, %52, %47
  %175 = load i32, i32* %20, align 4
  ret i32 %175
}

declare dso_local i64 @ssh_digest_bytes(i32) #1

declare dso_local %struct.sshbuf* @sshbuf_new(...) #1

declare dso_local i32 @sshbuf_put_cstring(%struct.sshbuf*, i8*) #1

declare dso_local i32 @sshbuf_put_u32(%struct.sshbuf*, i32) #1

declare dso_local i32 @sshbuf_put_u8(%struct.sshbuf*, i32) #1

declare dso_local i32 @sshbuf_put(%struct.sshbuf*, i32*, i64) #1

declare dso_local i32 @sshbuf_put_string(%struct.sshbuf*, i32*, i64) #1

declare dso_local i32 @sshbuf_put_bignum2(%struct.sshbuf*, i32*) #1

declare dso_local i32 @sshbuf_free(%struct.sshbuf*) #1

declare dso_local i64 @ssh_digest_buffer(i32, %struct.sshbuf*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
