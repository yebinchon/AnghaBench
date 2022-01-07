; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_cipher.c_cipher_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_cipher.c_cipher_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshcipher_ctx = type { i32, i32, i32*, i32, %struct.sshcipher*, i32 }
%struct.sshcipher = type { i32, i32, i32* (...)* }

@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@CFLAG_NONE = common dso_local global i32 0, align 4
@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@CFLAG_CHACHAPOLY = common dso_local global i32 0, align 4
@CFLAG_AESCTR = common dso_local global i32 0, align 4
@CIPHER_ENCRYPT = common dso_local global i32 0, align 4
@EVP_CTRL_GCM_SET_IV_FIXED = common dso_local global i32 0, align 4
@SSH_ERR_LIBCRYPTO_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cipher_init(%struct.sshcipher_ctx** %0, %struct.sshcipher* %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sshcipher_ctx**, align 8
  %10 = alloca %struct.sshcipher*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.sshcipher_ctx*, align 8
  %17 = alloca i32, align 4
  store %struct.sshcipher_ctx** %0, %struct.sshcipher_ctx*** %9, align 8
  store %struct.sshcipher* %1, %struct.sshcipher** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store %struct.sshcipher_ctx* null, %struct.sshcipher_ctx** %16, align 8
  %18 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %18, i32* %17, align 4
  %19 = load %struct.sshcipher_ctx**, %struct.sshcipher_ctx*** %9, align 8
  store %struct.sshcipher_ctx* null, %struct.sshcipher_ctx** %19, align 8
  %20 = call %struct.sshcipher_ctx* @calloc(i32 40, i32 1)
  store %struct.sshcipher_ctx* %20, %struct.sshcipher_ctx** %16, align 8
  %21 = icmp eq %struct.sshcipher_ctx* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %7
  %23 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %23, i32* %8, align 4
  br label %121

24:                                               ; preds = %7
  %25 = load %struct.sshcipher*, %struct.sshcipher** %10, align 8
  %26 = getelementptr inbounds %struct.sshcipher, %struct.sshcipher* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @CFLAG_NONE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = load %struct.sshcipher_ctx*, %struct.sshcipher_ctx** %16, align 8
  %33 = getelementptr inbounds %struct.sshcipher_ctx, %struct.sshcipher_ctx* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %15, align 4
  %35 = load %struct.sshcipher_ctx*, %struct.sshcipher_ctx** %16, align 8
  %36 = getelementptr inbounds %struct.sshcipher_ctx, %struct.sshcipher_ctx* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.sshcipher*, %struct.sshcipher** %10, align 8
  %39 = getelementptr inbounds %struct.sshcipher, %struct.sshcipher* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %50, label %42

42:                                               ; preds = %24
  %43 = load i32*, i32** %13, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i32, i32* %14, align 4
  %47 = load %struct.sshcipher*, %struct.sshcipher** %10, align 8
  %48 = call i32 @cipher_ivlen(%struct.sshcipher* %47)
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %45, %24
  %51 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %51, i32* %17, align 4
  br label %104

52:                                               ; preds = %45, %42
  %53 = load %struct.sshcipher*, %struct.sshcipher** %10, align 8
  %54 = load %struct.sshcipher_ctx*, %struct.sshcipher_ctx** %16, align 8
  %55 = getelementptr inbounds %struct.sshcipher_ctx, %struct.sshcipher_ctx* %54, i32 0, i32 4
  store %struct.sshcipher* %53, %struct.sshcipher** %55, align 8
  %56 = load %struct.sshcipher_ctx*, %struct.sshcipher_ctx** %16, align 8
  %57 = getelementptr inbounds %struct.sshcipher_ctx, %struct.sshcipher_ctx* %56, i32 0, i32 4
  %58 = load %struct.sshcipher*, %struct.sshcipher** %57, align 8
  %59 = getelementptr inbounds %struct.sshcipher, %struct.sshcipher* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @CFLAG_CHACHAPOLY, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %52
  %65 = load %struct.sshcipher_ctx*, %struct.sshcipher_ctx** %16, align 8
  %66 = getelementptr inbounds %struct.sshcipher_ctx, %struct.sshcipher_ctx* %65, i32 0, i32 5
  %67 = load i32*, i32** %11, align 8
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @chachapoly_init(i32* %66, i32* %67, i32 %68)
  store i32 %69, i32* %17, align 4
  br label %104

70:                                               ; preds = %52
  %71 = load %struct.sshcipher_ctx*, %struct.sshcipher_ctx** %16, align 8
  %72 = getelementptr inbounds %struct.sshcipher_ctx, %struct.sshcipher_ctx* %71, i32 0, i32 4
  %73 = load %struct.sshcipher*, %struct.sshcipher** %72, align 8
  %74 = getelementptr inbounds %struct.sshcipher, %struct.sshcipher* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @CFLAG_NONE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %70
  store i32 0, i32* %17, align 4
  br label %104

80:                                               ; preds = %70
  %81 = load %struct.sshcipher_ctx*, %struct.sshcipher_ctx** %16, align 8
  %82 = getelementptr inbounds %struct.sshcipher_ctx, %struct.sshcipher_ctx* %81, i32 0, i32 4
  %83 = load %struct.sshcipher*, %struct.sshcipher** %82, align 8
  %84 = getelementptr inbounds %struct.sshcipher, %struct.sshcipher* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @CFLAG_AESCTR, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %80
  %90 = load %struct.sshcipher_ctx*, %struct.sshcipher_ctx** %16, align 8
  %91 = getelementptr inbounds %struct.sshcipher_ctx, %struct.sshcipher_ctx* %90, i32 0, i32 3
  %92 = load i32*, i32** %11, align 8
  %93 = load i32, i32* %12, align 4
  %94 = mul nsw i32 8, %93
  %95 = load i32, i32* %14, align 4
  %96 = mul nsw i32 8, %95
  %97 = call i32 @aesctr_keysetup(i32* %91, i32* %92, i32 %94, i32 %96)
  %98 = load %struct.sshcipher_ctx*, %struct.sshcipher_ctx** %16, align 8
  %99 = getelementptr inbounds %struct.sshcipher_ctx, %struct.sshcipher_ctx* %98, i32 0, i32 3
  %100 = load i32*, i32** %13, align 8
  %101 = call i32 @aesctr_ivsetup(i32* %99, i32* %100)
  store i32 0, i32* %17, align 4
  br label %104

102:                                              ; preds = %80
  %103 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %103, i32* %17, align 4
  br label %104

104:                                              ; preds = %102, %89, %79, %64, %50
  %105 = load i32, i32* %17, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load %struct.sshcipher_ctx*, %struct.sshcipher_ctx** %16, align 8
  %109 = load %struct.sshcipher_ctx**, %struct.sshcipher_ctx*** %9, align 8
  store %struct.sshcipher_ctx* %108, %struct.sshcipher_ctx** %109, align 8
  br label %119

110:                                              ; preds = %104
  %111 = load %struct.sshcipher_ctx*, %struct.sshcipher_ctx** %16, align 8
  %112 = icmp ne %struct.sshcipher_ctx* %111, null
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  %114 = load %struct.sshcipher_ctx*, %struct.sshcipher_ctx** %16, align 8
  %115 = call i32 @explicit_bzero(%struct.sshcipher_ctx* %114, i32 40)
  %116 = load %struct.sshcipher_ctx*, %struct.sshcipher_ctx** %16, align 8
  %117 = call i32 @free(%struct.sshcipher_ctx* %116)
  br label %118

118:                                              ; preds = %113, %110
  br label %119

119:                                              ; preds = %118, %107
  %120 = load i32, i32* %17, align 4
  store i32 %120, i32* %8, align 4
  br label %121

121:                                              ; preds = %119, %22
  %122 = load i32, i32* %8, align 4
  ret i32 %122
}

declare dso_local %struct.sshcipher_ctx* @calloc(i32, i32) #1

declare dso_local i32 @cipher_ivlen(%struct.sshcipher*) #1

declare dso_local i32 @chachapoly_init(i32*, i32*, i32) #1

declare dso_local i32 @aesctr_keysetup(i32*, i32*, i32, i32) #1

declare dso_local i32 @aesctr_ivsetup(i32*, i32*) #1

declare dso_local i32 @explicit_bzero(%struct.sshcipher_ctx*, i32) #1

declare dso_local i32 @free(%struct.sshcipher_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
