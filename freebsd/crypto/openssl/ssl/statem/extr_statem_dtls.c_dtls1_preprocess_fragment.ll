; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_dtls.c_dtls1_preprocess_fragment.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_dtls.c_dtls1_preprocess_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.TYPE_10__*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i64, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32 }
%struct.hm_header_st = type { i64, i64, i64, i32, i32 }

@SSL_AD_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@SSL_F_DTLS1_PREPROCESS_FRAGMENT = common dso_local global i32 0, align 4
@SSL_R_EXCESSIVE_MESSAGE_SIZE = common dso_local global i32 0, align 4
@DTLS1_HM_HEADER_LENGTH = common dso_local global i64 0, align 8
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_BUF_LIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.hm_header_st*)* @dtls1_preprocess_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtls1_preprocess_fragment(%struct.TYPE_13__* %0, %struct.hm_header_st* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.hm_header_st*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.hm_header_st* %1, %struct.hm_header_st** %5, align 8
  %9 = load %struct.hm_header_st*, %struct.hm_header_st** %5, align 8
  %10 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %8, align 8
  %12 = load %struct.hm_header_st*, %struct.hm_header_st** %5, align 8
  %13 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  %15 = load %struct.hm_header_st*, %struct.hm_header_st** %5, align 8
  %16 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = add i64 %18, %19
  %21 = load i64, i64* %8, align 8
  %22 = icmp ugt i64 %20, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %2
  %24 = load i64, i64* %8, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %26 = call i64 @dtls1_max_handshake_message_len(%struct.TYPE_13__* %25)
  %27 = icmp ugt i64 %24, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %23, %2
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %30 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %31 = load i32, i32* @SSL_F_DTLS1_PREPROCESS_FRAGMENT, align 4
  %32 = load i32, i32* @SSL_R_EXCESSIVE_MESSAGE_SIZE, align 4
  %33 = call i32 @SSLfatal(%struct.TYPE_13__* %29, i32 %30, i32 %31, i32 %32)
  store i32 0, i32* %3, align 4
  br label %111

34:                                               ; preds = %23
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %94

42:                                               ; preds = %34
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* @DTLS1_HM_HEADER_LENGTH, align 8
  %48 = add i64 %46, %47
  %49 = call i32 @BUF_MEM_grow_clean(i32 %45, i64 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %42
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %53 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %54 = load i32, i32* @SSL_F_DTLS1_PREPROCESS_FRAGMENT, align 4
  %55 = load i32, i32* @ERR_R_BUF_LIB, align 4
  %56 = call i32 @SSLfatal(%struct.TYPE_13__* %52, i32 %53, i32 %54, i32 %55)
  store i32 0, i32* %3, align 4
  br label %111

57:                                               ; preds = %42
  %58 = load i64, i64* %8, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  store i64 %58, i64* %63, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  store i64 %64, i64* %69, align 8
  %70 = load %struct.hm_header_st*, %struct.hm_header_st** %5, align 8
  %71 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  store i32 %72, i32* %77, align 8
  %78 = load %struct.hm_header_st*, %struct.hm_header_st** %5, align 8
  %79 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 3
  store i32 %80, i32* %85, align 4
  %86 = load %struct.hm_header_st*, %struct.hm_header_st** %5, align 8
  %87 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 2
  store i32 %88, i32* %93, align 8
  br label %110

94:                                               ; preds = %34
  %95 = load i64, i64* %8, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %95, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %94
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %105 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %106 = load i32, i32* @SSL_F_DTLS1_PREPROCESS_FRAGMENT, align 4
  %107 = load i32, i32* @SSL_R_EXCESSIVE_MESSAGE_SIZE, align 4
  %108 = call i32 @SSLfatal(%struct.TYPE_13__* %104, i32 %105, i32 %106, i32 %107)
  store i32 0, i32* %3, align 4
  br label %111

109:                                              ; preds = %94
  br label %110

110:                                              ; preds = %109, %57
  store i32 1, i32* %3, align 4
  br label %111

111:                                              ; preds = %110, %103, %51, %28
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i64 @dtls1_max_handshake_message_len(%struct.TYPE_13__*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @BUF_MEM_grow_clean(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
