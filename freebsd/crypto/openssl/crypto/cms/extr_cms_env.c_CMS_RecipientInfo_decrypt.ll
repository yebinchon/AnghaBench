; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/cms/extr_cms_env.c_CMS_RecipientInfo_decrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/cms/extr_cms_env.c_CMS_RecipientInfo_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@CMS_F_CMS_RECIPIENTINFO_DECRYPT = common dso_local global i32 0, align 4
@CMS_R_UNSUPPORTED_RECIPIENTINFO_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CMS_RecipientInfo_decrypt(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %21 [
    i32 128, label %9
    i32 130, label %13
    i32 129, label %17
  ]

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = call i32 @cms_RecipientInfo_ktri_decrypt(i32* %10, %struct.TYPE_6__* %11)
  store i32 %12, i32* %3, align 4
  br label %25

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = call i32 @cms_RecipientInfo_kekri_decrypt(i32* %14, %struct.TYPE_6__* %15)
  store i32 %16, i32* %3, align 4
  br label %25

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = call i32 @cms_RecipientInfo_pwri_crypt(i32* %18, %struct.TYPE_6__* %19, i32 0)
  store i32 %20, i32* %3, align 4
  br label %25

21:                                               ; preds = %2
  %22 = load i32, i32* @CMS_F_CMS_RECIPIENTINFO_DECRYPT, align 4
  %23 = load i32, i32* @CMS_R_UNSUPPORTED_RECIPIENTINFO_TYPE, align 4
  %24 = call i32 @CMSerr(i32 %22, i32 %23)
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %21, %17, %13, %9
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @cms_RecipientInfo_ktri_decrypt(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @cms_RecipientInfo_kekri_decrypt(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @cms_RecipientInfo_pwri_crypt(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @CMSerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
