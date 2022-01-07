; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pem/extr_pem_lib.c_PEM_get_EVP_CIPHER_INFO.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pem/extr_pem_lib.c_PEM_get_EVP_CIPHER_INFO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@PEM_get_EVP_CIPHER_INFO.ProcType = internal constant [11 x i8] c"Proc-Type:\00", align 1
@PEM_get_EVP_CIPHER_INFO.ENCRYPTED = internal constant [10 x i8] c"ENCRYPTED\00", align 1
@PEM_get_EVP_CIPHER_INFO.DEKInfo = internal constant [10 x i8] c"DEK-Info:\00", align 1
@PEM_F_PEM_GET_EVP_CIPHER_INFO = common dso_local global i32 0, align 4
@PEM_R_NOT_PROC_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" \09\0D\0A\00", align 1
@PEM_R_NOT_ENCRYPTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c" \09\0D\00", align 1
@PEM_R_SHORT_HEADER = common dso_local global i32 0, align 4
@PEM_R_NOT_DEK_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c" \09,\00", align 1
@PEM_R_UNSUPPORTED_ENCRYPTION = common dso_local global i32 0, align 4
@PEM_R_MISSING_DEK_IV = common dso_local global i32 0, align 4
@PEM_R_UNEXPECTED_DEK_IV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PEM_get_EVP_CIPHER_INFO(i8* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32* null, i32** %6, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  store i32* null, i32** %11, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @memset(i32 %14, i32 0, i32 4)
  %16 = load i8*, i8** %4, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load i8*, i8** %4, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 10
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %18, %2
  store i32 1, i32* %3, align 4
  br label %168

29:                                               ; preds = %23
  %30 = load i8*, i8** %4, align 8
  %31 = call i64 @strncmp(i8* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @PEM_get_EVP_CIPHER_INFO.ProcType, i64 0, i64 0), i32 10)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* @PEM_F_PEM_GET_EVP_CIPHER_INFO, align 4
  %35 = load i32, i32* @PEM_R_NOT_PROC_TYPE, align 4
  %36 = call i32 @PEMerr(i32 %34, i32 %35)
  store i32 0, i32* %3, align 4
  br label %168

37:                                               ; preds = %29
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 10
  store i8* %39, i8** %4, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = call i64 @strspn(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 %41
  store i8* %43, i8** %4, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %4, align 8
  %46 = load i8, i8* %44, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 52
  br i1 %48, label %55, label %49

49:                                               ; preds = %37
  %50 = load i8*, i8** %4, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %4, align 8
  %52 = load i8, i8* %50, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 44
  br i1 %54, label %55, label %56

55:                                               ; preds = %49, %37
  store i32 0, i32* %3, align 4
  br label %168

56:                                               ; preds = %49
  %57 = load i8*, i8** %4, align 8
  %58 = call i64 @strspn(i8* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %59 = load i8*, i8** %4, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 %58
  store i8* %60, i8** %4, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = call i64 @strncmp(i8* %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @PEM_get_EVP_CIPHER_INFO.ENCRYPTED, i64 0, i64 0), i32 9)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %56
  %65 = load i8*, i8** %4, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 10
  %67 = getelementptr inbounds i8, i8* %66, i64 -1
  %68 = call i64 @strspn(i8* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64, %56
  %71 = load i32, i32* @PEM_F_PEM_GET_EVP_CIPHER_INFO, align 4
  %72 = load i32, i32* @PEM_R_NOT_ENCRYPTED, align 4
  %73 = call i32 @PEMerr(i32 %71, i32 %72)
  store i32 0, i32* %3, align 4
  br label %168

74:                                               ; preds = %64
  %75 = load i8*, i8** %4, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 9
  store i8* %76, i8** %4, align 8
  %77 = load i8*, i8** %4, align 8
  %78 = call i64 @strspn(i8* %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %79 = load i8*, i8** %4, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 %78
  store i8* %80, i8** %4, align 8
  %81 = load i8*, i8** %4, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %4, align 8
  %83 = load i8, i8* %81, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 10
  br i1 %85, label %86, label %90

86:                                               ; preds = %74
  %87 = load i32, i32* @PEM_F_PEM_GET_EVP_CIPHER_INFO, align 4
  %88 = load i32, i32* @PEM_R_SHORT_HEADER, align 4
  %89 = call i32 @PEMerr(i32 %87, i32 %88)
  store i32 0, i32* %3, align 4
  br label %168

90:                                               ; preds = %74
  %91 = load i8*, i8** %4, align 8
  %92 = call i64 @strncmp(i8* %91, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @PEM_get_EVP_CIPHER_INFO.DEKInfo, i64 0, i64 0), i32 9)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load i32, i32* @PEM_F_PEM_GET_EVP_CIPHER_INFO, align 4
  %96 = load i32, i32* @PEM_R_NOT_DEK_INFO, align 4
  %97 = call i32 @PEMerr(i32 %95, i32 %96)
  store i32 0, i32* %3, align 4
  br label %168

98:                                               ; preds = %90
  %99 = load i8*, i8** %4, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 9
  store i8* %100, i8** %4, align 8
  %101 = load i8*, i8** %4, align 8
  %102 = call i64 @strspn(i8* %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %103 = load i8*, i8** %4, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 %102
  store i8* %104, i8** %4, align 8
  %105 = load i8*, i8** %4, align 8
  store i8* %105, i8** %8, align 8
  %106 = load i8*, i8** %4, align 8
  %107 = call i32 @strcspn(i8* %106, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %108 = load i8*, i8** %4, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i8, i8* %108, i64 %109
  store i8* %110, i8** %4, align 8
  %111 = load i8*, i8** %4, align 8
  %112 = load i8, i8* %111, align 1
  store i8 %112, i8* %9, align 1
  %113 = load i8*, i8** %4, align 8
  store i8 0, i8* %113, align 1
  %114 = load i8*, i8** %8, align 8
  %115 = call i32* @EVP_get_cipherbyname(i8* %114)
  store i32* %115, i32** %6, align 8
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  store i32* %115, i32** %117, align 8
  %118 = load i8, i8* %9, align 1
  %119 = load i8*, i8** %4, align 8
  store i8 %118, i8* %119, align 1
  %120 = load i8*, i8** %4, align 8
  %121 = call i64 @strspn(i8* %120, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %122 = load i8*, i8** %4, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 %121
  store i8* %123, i8** %4, align 8
  %124 = load i32*, i32** %6, align 8
  %125 = icmp eq i32* %124, null
  br i1 %125, label %126, label %130

126:                                              ; preds = %98
  %127 = load i32, i32* @PEM_F_PEM_GET_EVP_CIPHER_INFO, align 4
  %128 = load i32, i32* @PEM_R_UNSUPPORTED_ENCRYPTION, align 4
  %129 = call i32 @PEMerr(i32 %127, i32 %128)
  store i32 0, i32* %3, align 4
  br label %168

130:                                              ; preds = %98
  %131 = load i32*, i32** %6, align 8
  %132 = call i32 @EVP_CIPHER_iv_length(i32* %131)
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %145

135:                                              ; preds = %130
  %136 = load i8*, i8** %4, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %4, align 8
  %138 = load i8, i8* %136, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp ne i32 %139, 44
  br i1 %140, label %141, label %145

141:                                              ; preds = %135
  %142 = load i32, i32* @PEM_F_PEM_GET_EVP_CIPHER_INFO, align 4
  %143 = load i32, i32* @PEM_R_MISSING_DEK_IV, align 4
  %144 = call i32 @PEMerr(i32 %142, i32 %143)
  store i32 0, i32* %3, align 4
  br label %168

145:                                              ; preds = %135, %130
  %146 = load i32, i32* %7, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %145
  %149 = load i8*, i8** %4, align 8
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 %151, 44
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = load i32, i32* @PEM_F_PEM_GET_EVP_CIPHER_INFO, align 4
  %155 = load i32, i32* @PEM_R_UNEXPECTED_DEK_IV, align 4
  %156 = call i32 @PEMerr(i32 %154, i32 %155)
  store i32 0, i32* %3, align 4
  br label %168

157:                                              ; preds = %148, %145
  br label %158

158:                                              ; preds = %157
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32*, i32** %6, align 8
  %163 = call i32 @EVP_CIPHER_iv_length(i32* %162)
  %164 = call i32 @load_iv(i8** %4, i32 %161, i32 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %158
  store i32 0, i32* %3, align 4
  br label %168

167:                                              ; preds = %158
  store i32 1, i32* %3, align 4
  br label %168

168:                                              ; preds = %167, %166, %153, %141, %126, %94, %86, %70, %55, %33, %28
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @PEMerr(i32, i32) #1

declare dso_local i64 @strspn(i8*, i8*) #1

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i32* @EVP_get_cipherbyname(i8*) #1

declare dso_local i32 @EVP_CIPHER_iv_length(i32*) #1

declare dso_local i32 @load_iv(i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
