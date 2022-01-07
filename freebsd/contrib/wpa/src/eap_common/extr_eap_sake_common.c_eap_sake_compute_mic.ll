; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_sake_common.c_eap_sake_compute_mic.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_sake_common.c_eap_sake_compute_mic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EAP_SAKE_RAND_LEN = common dso_local global i32 0, align 4
@EAP_SAKE_MIC_LEN = common dso_local global i32 0, align 4
@EAP_SAKE_TEK_AUTH_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Peer MIC\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Server MIC\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_sake_compute_mic(i32* %0, i32* %1, i32* %2, i32* %3, i64 %4, i32* %5, i64 %6, i32 %7, i32* %8, i64 %9, i32* %10, i32* %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store i32* %0, i32** %14, align 8
  store i32* %1, i32** %15, align 8
  store i32* %2, i32** %16, align 8
  store i32* %3, i32** %17, align 8
  store i64 %4, i64* %18, align 8
  store i32* %5, i32** %19, align 8
  store i64 %6, i64* %20, align 8
  store i32 %7, i32* %21, align 4
  store i32* %8, i32** %22, align 8
  store i64 %9, i64* %23, align 8
  store i32* %10, i32** %24, align 8
  store i32* %11, i32** %25, align 8
  %33 = load i32, i32* @EAP_SAKE_RAND_LEN, align 4
  %34 = mul nsw i32 2, %33
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %26, align 8
  %37 = alloca i32, i64 %35, align 16
  store i64 %35, i64* %27, align 8
  %38 = load i64, i64* %18, align 8
  %39 = add i64 %38, 1
  %40 = load i64, i64* %20, align 8
  %41 = add i64 %39, %40
  %42 = add i64 %41, 1
  %43 = load i64, i64* %23, align 8
  %44 = add i64 %42, %43
  store i64 %44, i64* %30, align 8
  %45 = load i64, i64* %30, align 8
  %46 = call i32* @os_malloc(i64 %45)
  store i32* %46, i32** %28, align 8
  %47 = load i32*, i32** %28, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %12
  store i32 -1, i32* %13, align 4
  store i32 1, i32* %32, align 4
  br label %161

50:                                               ; preds = %12
  %51 = load i32*, i32** %28, align 8
  store i32* %51, i32** %29, align 8
  %52 = load i32, i32* %21, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %92

54:                                               ; preds = %50
  %55 = load i32*, i32** %19, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load i32*, i32** %29, align 8
  %59 = load i32*, i32** %19, align 8
  %60 = load i64, i64* %20, align 8
  %61 = call i32 @os_memcpy(i32* %58, i32* %59, i64 %60)
  %62 = load i64, i64* %20, align 8
  %63 = load i32*, i32** %29, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 %62
  store i32* %64, i32** %29, align 8
  br label %65

65:                                               ; preds = %57, %54
  %66 = load i32*, i32** %29, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %29, align 8
  store i32 0, i32* %66, align 4
  %68 = load i32*, i32** %17, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load i32*, i32** %29, align 8
  %72 = load i32*, i32** %17, align 8
  %73 = load i64, i64* %18, align 8
  %74 = call i32 @os_memcpy(i32* %71, i32* %72, i64 %73)
  %75 = load i64, i64* %18, align 8
  %76 = load i32*, i32** %29, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 %75
  store i32* %77, i32** %29, align 8
  br label %78

78:                                               ; preds = %70, %65
  %79 = load i32*, i32** %29, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %29, align 8
  store i32 0, i32* %79, align 4
  %81 = load i32*, i32** %15, align 8
  %82 = load i32, i32* @EAP_SAKE_RAND_LEN, align 4
  %83 = sext i32 %82 to i64
  %84 = call i32 @os_memcpy(i32* %37, i32* %81, i64 %83)
  %85 = load i32, i32* @EAP_SAKE_RAND_LEN, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %37, i64 %86
  %88 = load i32*, i32** %16, align 8
  %89 = load i32, i32* @EAP_SAKE_RAND_LEN, align 4
  %90 = sext i32 %89 to i64
  %91 = call i32 @os_memcpy(i32* %87, i32* %88, i64 %90)
  br label %130

92:                                               ; preds = %50
  %93 = load i32*, i32** %17, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %103

95:                                               ; preds = %92
  %96 = load i32*, i32** %29, align 8
  %97 = load i32*, i32** %17, align 8
  %98 = load i64, i64* %18, align 8
  %99 = call i32 @os_memcpy(i32* %96, i32* %97, i64 %98)
  %100 = load i64, i64* %18, align 8
  %101 = load i32*, i32** %29, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 %100
  store i32* %102, i32** %29, align 8
  br label %103

103:                                              ; preds = %95, %92
  %104 = load i32*, i32** %29, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** %29, align 8
  store i32 0, i32* %104, align 4
  %106 = load i32*, i32** %19, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %116

108:                                              ; preds = %103
  %109 = load i32*, i32** %29, align 8
  %110 = load i32*, i32** %19, align 8
  %111 = load i64, i64* %20, align 8
  %112 = call i32 @os_memcpy(i32* %109, i32* %110, i64 %111)
  %113 = load i64, i64* %20, align 8
  %114 = load i32*, i32** %29, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 %113
  store i32* %115, i32** %29, align 8
  br label %116

116:                                              ; preds = %108, %103
  %117 = load i32*, i32** %29, align 8
  %118 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %118, i32** %29, align 8
  store i32 0, i32* %117, align 4
  %119 = load i32*, i32** %16, align 8
  %120 = load i32, i32* @EAP_SAKE_RAND_LEN, align 4
  %121 = sext i32 %120 to i64
  %122 = call i32 @os_memcpy(i32* %37, i32* %119, i64 %121)
  %123 = load i32, i32* @EAP_SAKE_RAND_LEN, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %37, i64 %124
  %126 = load i32*, i32** %15, align 8
  %127 = load i32, i32* @EAP_SAKE_RAND_LEN, align 4
  %128 = sext i32 %127 to i64
  %129 = call i32 @os_memcpy(i32* %125, i32* %126, i64 %128)
  br label %130

130:                                              ; preds = %116, %78
  %131 = load i32*, i32** %29, align 8
  %132 = load i32*, i32** %22, align 8
  %133 = load i64, i64* %23, align 8
  %134 = call i32 @os_memcpy(i32* %131, i32* %132, i64 %133)
  %135 = load i32*, i32** %29, align 8
  %136 = load i32*, i32** %24, align 8
  %137 = load i32*, i32** %22, align 8
  %138 = ptrtoint i32* %136 to i64
  %139 = ptrtoint i32* %137 to i64
  %140 = sub i64 %138, %139
  %141 = sdiv exact i64 %140, 4
  %142 = getelementptr inbounds i32, i32* %135, i64 %141
  %143 = load i32, i32* @EAP_SAKE_MIC_LEN, align 4
  %144 = call i32 @os_memset(i32* %142, i32 0, i32 %143)
  %145 = load i32*, i32** %14, align 8
  %146 = load i32, i32* @EAP_SAKE_TEK_AUTH_LEN, align 4
  %147 = load i32, i32* %21, align 4
  %148 = icmp ne i32 %147, 0
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)
  %151 = load i32, i32* @EAP_SAKE_RAND_LEN, align 4
  %152 = mul nsw i32 2, %151
  %153 = load i32*, i32** %28, align 8
  %154 = load i64, i64* %30, align 8
  %155 = load i32*, i32** %25, align 8
  %156 = load i32, i32* @EAP_SAKE_MIC_LEN, align 4
  %157 = call i32 @eap_sake_kdf(i32* %145, i32 %146, i8* %150, i32* %37, i32 %152, i32* %153, i64 %154, i32* %155, i32 %156)
  store i32 %157, i32* %31, align 4
  %158 = load i32*, i32** %28, align 8
  %159 = call i32 @os_free(i32* %158)
  %160 = load i32, i32* %31, align 4
  store i32 %160, i32* %13, align 4
  store i32 1, i32* %32, align 4
  br label %161

161:                                              ; preds = %130, %49
  %162 = load i8*, i8** %26, align 8
  call void @llvm.stackrestore(i8* %162)
  %163 = load i32, i32* %13, align 4
  ret i32 %163
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @os_malloc(i64) #2

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #2

declare dso_local i32 @os_memset(i32*, i32, i32) #2

declare dso_local i32 @eap_sake_kdf(i32*, i32, i8*, i32*, i32, i32*, i64, i32*, i32) #2

declare dso_local i32 @os_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
