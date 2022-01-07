; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/ccp/extr_ccp.c_ccp_gcm_soft.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/ccp/extr_ccp.c_ccp_gcm_soft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_session = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cryptop = type { i64, i32, i32 }
%struct.cryptodesc = type { i32, i32, i64, i64, i32 }
%struct.aes_gmac_ctx = type { i32 }

@GMAC_BLOCK_LEN = common dso_local global i32 0, align 4
@GMAC_DIGEST_LEN = common dso_local global i32 0, align 4
@AES_BLOCK_LEN = common dso_local global i32 0, align 4
@CRD_F_ENCRYPT = common dso_local global i32 0, align 4
@CRD_F_IV_EXPLICIT = common dso_local global i32 0, align 4
@CRD_F_IV_PRESENT = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccp_session*, %struct.cryptop*, %struct.cryptodesc*, %struct.cryptodesc*)* @ccp_gcm_soft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccp_gcm_soft(%struct.ccp_session* %0, %struct.cryptop* %1, %struct.cryptodesc* %2, %struct.cryptodesc* %3) #0 {
  %5 = alloca %struct.ccp_session*, align 8
  %6 = alloca %struct.cryptop*, align 8
  %7 = alloca %struct.cryptodesc*, align 8
  %8 = alloca %struct.cryptodesc*, align 8
  %9 = alloca %struct.aes_gmac_ctx, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store %struct.ccp_session* %0, %struct.ccp_session** %5, align 8
  store %struct.cryptop* %1, %struct.cryptop** %6, align 8
  store %struct.cryptodesc* %2, %struct.cryptodesc** %7, align 8
  store %struct.cryptodesc* %3, %struct.cryptodesc** %8, align 8
  %18 = load i32, i32* @GMAC_BLOCK_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %22 = load i32, i32* @GMAC_DIGEST_LEN, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %12, align 8
  %25 = load i32, i32* @AES_BLOCK_LEN, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %13, align 8
  %28 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %29 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %67

34:                                               ; preds = %4
  %35 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %36 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @CRD_F_IV_EXPLICIT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %43 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @memcpy(i8* %27, i32 %44, i32 12)
  br label %48

46:                                               ; preds = %34
  %47 = call i32 @arc4rand(i8* %27, i32 12, i32 0)
  br label %48

48:                                               ; preds = %46, %41
  %49 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %50 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @CRD_F_IV_PRESENT, align 4
  %53 = and i32 %51, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %48
  %56 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %57 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %60 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %63 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @crypto_copyback(i32 %58, i32 %61, i64 %64, i32 12, i8* %27)
  br label %66

66:                                               ; preds = %55, %48
  br label %91

67:                                               ; preds = %4
  %68 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %69 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @CRD_F_IV_EXPLICIT, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %76 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @memcpy(i8* %27, i32 %77, i32 12)
  br label %90

79:                                               ; preds = %67
  %80 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %81 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %84 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %87 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @crypto_copydata(i32 %82, i32 %85, i64 %88, i32 12, i8* %27)
  br label %90

90:                                               ; preds = %79, %74
  br label %91

91:                                               ; preds = %90, %66
  %92 = call i32 @htobe32(i32 1)
  %93 = getelementptr inbounds i8, i8* %27, i64 12
  %94 = bitcast i8* %93 to i32*
  store i32 %92, i32* %94, align 4
  %95 = call i32 @AES_GMAC_Init(%struct.aes_gmac_ctx* %9)
  %96 = load %struct.ccp_session*, %struct.ccp_session** %5, align 8
  %97 = getelementptr inbounds %struct.ccp_session, %struct.ccp_session* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.ccp_session*, %struct.ccp_session** %5, align 8
  %101 = getelementptr inbounds %struct.ccp_session, %struct.ccp_session* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @AES_GMAC_Setkey(%struct.aes_gmac_ctx* %9, i32 %99, i32 %103)
  %105 = trunc i64 %26 to i32
  %106 = call i32 @AES_GMAC_Reinit(%struct.aes_gmac_ctx* %9, i8* %27, i32 %105)
  store i32 0, i32* %14, align 4
  br label %107

107:                                              ; preds = %145, %91
  %108 = load i32, i32* %14, align 4
  %109 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %110 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %150

113:                                              ; preds = %107
  %114 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %115 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %14, align 4
  %118 = sub nsw i32 %116, %117
  %119 = trunc i64 %19 to i32
  %120 = call i32 @imin(i32 %118, i32 %119)
  store i32 %120, i32* %15, align 4
  %121 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %122 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %125 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %128 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = load i32, i32* %14, align 4
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %129, %131
  %133 = load i32, i32* %15, align 4
  %134 = call i32 @crypto_copydata(i32 %123, i32 %126, i64 %132, i32 %133, i8* %21)
  %135 = load i32, i32* %15, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %21, i64 %136
  %138 = load i32, i32* %15, align 4
  %139 = sext i32 %138 to i64
  %140 = sub i64 %19, %139
  %141 = trunc i64 %140 to i32
  %142 = call i32 @bzero(i8* %137, i32 %141)
  %143 = trunc i64 %19 to i32
  %144 = call i32 @AES_GMAC_Update(%struct.aes_gmac_ctx* %9, i8* %21, i32 %143)
  br label %145

145:                                              ; preds = %113
  %146 = load i32, i32* %14, align 4
  %147 = sext i32 %146 to i64
  %148 = add i64 %147, %19
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %14, align 4
  br label %107

150:                                              ; preds = %107
  %151 = trunc i64 %19 to i32
  %152 = call i32 @bzero(i8* %21, i32 %151)
  %153 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %154 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = mul nsw i32 %155, 8
  %157 = call i32 @htobe32(i32 %156)
  %158 = bitcast i8* %21 to i32*
  %159 = getelementptr inbounds i32, i32* %158, i64 1
  store i32 %157, i32* %159, align 4
  %160 = trunc i64 %19 to i32
  %161 = call i32 @AES_GMAC_Update(%struct.aes_gmac_ctx* %9, i8* %21, i32 %160)
  %162 = call i32 @AES_GMAC_Final(i8* %24, %struct.aes_gmac_ctx* %9)
  %163 = load %struct.cryptodesc*, %struct.cryptodesc** %8, align 8
  %164 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @CRD_F_ENCRYPT, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %183

169:                                              ; preds = %150
  %170 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %171 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %174 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %177 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = trunc i64 %23 to i32
  %180 = call i32 @crypto_copyback(i32 %172, i32 %175, i64 %178, i32 %179, i8* %24)
  %181 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %182 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %181, i32 0, i32 0
  store i64 0, i64* %182, align 8
  br label %211

183:                                              ; preds = %150
  %184 = load i32, i32* @GMAC_DIGEST_LEN, align 4
  %185 = zext i32 %184 to i64
  %186 = call i8* @llvm.stacksave()
  store i8* %186, i8** %16, align 8
  %187 = alloca i8, i64 %185, align 16
  store i64 %185, i64* %17, align 8
  %188 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %189 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %192 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %195 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = trunc i64 %185 to i32
  %198 = call i32 @crypto_copydata(i32 %190, i32 %193, i64 %196, i32 %197, i8* %187)
  %199 = trunc i64 %23 to i32
  %200 = call i64 @timingsafe_bcmp(i8* %24, i8* %187, i32 %199)
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %183
  %203 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %204 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %203, i32 0, i32 0
  store i64 0, i64* %204, align 8
  br label %209

205:                                              ; preds = %183
  %206 = load i64, i64* @EBADMSG, align 8
  %207 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %208 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %207, i32 0, i32 0
  store i64 %206, i64* %208, align 8
  br label %209

209:                                              ; preds = %205, %202
  %210 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %210)
  br label %211

211:                                              ; preds = %209, %169
  %212 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %213 = call i32 @crypto_done(%struct.cryptop* %212)
  %214 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %214)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i8*, i32, i32) #2

declare dso_local i32 @arc4rand(i8*, i32, i32) #2

declare dso_local i32 @crypto_copyback(i32, i32, i64, i32, i8*) #2

declare dso_local i32 @crypto_copydata(i32, i32, i64, i32, i8*) #2

declare dso_local i32 @htobe32(i32) #2

declare dso_local i32 @AES_GMAC_Init(%struct.aes_gmac_ctx*) #2

declare dso_local i32 @AES_GMAC_Setkey(%struct.aes_gmac_ctx*, i32, i32) #2

declare dso_local i32 @AES_GMAC_Reinit(%struct.aes_gmac_ctx*, i8*, i32) #2

declare dso_local i32 @imin(i32, i32) #2

declare dso_local i32 @bzero(i8*, i32) #2

declare dso_local i32 @AES_GMAC_Update(%struct.aes_gmac_ctx*, i8*, i32) #2

declare dso_local i32 @AES_GMAC_Final(i8*, %struct.aes_gmac_ctx*) #2

declare dso_local i64 @timingsafe_bcmp(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @crypto_done(%struct.cryptop*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
