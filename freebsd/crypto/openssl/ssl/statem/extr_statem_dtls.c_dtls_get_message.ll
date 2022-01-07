; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_dtls.c_dtls_get_message.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_dtls.c_dtls_get_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, %struct.TYPE_15__*, i64, %struct.TYPE_14__*, i32, i32 (i32, i64, i32, i8*, i64, %struct.TYPE_16__*, i32)*, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32, %struct.hm_header_st }
%struct.hm_header_st = type { i64, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@DTLS1_HM_BAD_FRAGMENT = common dso_local global i32 0, align 4
@DTLS1_HM_FRAGMENT_RETRY = common dso_local global i32 0, align 4
@SSL3_MT_CHANGE_CIPHER_SPEC = common dso_local global i32 0, align 4
@SSL3_RT_CHANGE_CIPHER_SPEC = common dso_local global i32 0, align 4
@DTLS1_BAD_VER = common dso_local global i64 0, align 8
@DTLS1_HM_HEADER_LENGTH = common dso_local global i64 0, align 8
@SSL3_MT_FINISHED = common dso_local global i32 0, align 4
@SSL3_RT_HANDSHAKE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtls_get_message(%struct.TYPE_16__* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.hm_header_st*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  store %struct.hm_header_st* %16, %struct.hm_header_st** %8, align 8
  %17 = load %struct.hm_header_st*, %struct.hm_header_st** %8, align 8
  %18 = call i32 @memset(%struct.hm_header_st* %17, i32 0, i32 16)
  br label %19

19:                                               ; preds = %31, %3
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %21 = call i32 @dtls_get_reassembled_message(%struct.TYPE_16__* %20, i32* %12, i64* %11)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @DTLS1_HM_BAD_FRAGMENT, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @DTLS1_HM_FRAGMENT_RETRY, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %23
  br label %19

32:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %166

33:                                               ; preds = %19
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 7
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %6, align 8
  store i32 %39, i32* %40, align 4
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i8*
  store i8* %46, i8** %9, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64*, i64** %7, align 8
  store i64 %49, i64* %50, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SSL3_MT_CHANGE_CIPHER_SPEC, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %75

55:                                               ; preds = %33
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 6
  %58 = load i32 (i32, i64, i32, i8*, i64, %struct.TYPE_16__*, i32)*, i32 (i32, i64, i32, i8*, i64, %struct.TYPE_16__*, i32)** %57, align 8
  %59 = icmp ne i32 (i32, i64, i32, i8*, i64, %struct.TYPE_16__*, i32)* %58, null
  br i1 %59, label %60, label %74

60:                                               ; preds = %55
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 6
  %63 = load i32 (i32, i64, i32, i8*, i64, %struct.TYPE_16__*, i32)*, i32 (i32, i64, i32, i8*, i64, %struct.TYPE_16__*, i32)** %62, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* @SSL3_RT_CHANGE_CIPHER_SPEC, align 4
  %68 = load i8*, i8** %9, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = call i32 %63(i32 0, i64 %66, i32 %67, i8* %68, i64 1, %struct.TYPE_16__* %69, i32 %72)
  br label %74

74:                                               ; preds = %60, %55
  store i32 1, i32* %4, align 4
  br label %166

75:                                               ; preds = %33
  %76 = load %struct.hm_header_st*, %struct.hm_header_st** %8, align 8
  %77 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %10, align 8
  %79 = load %struct.hm_header_st*, %struct.hm_header_st** %8, align 8
  %80 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = trunc i32 %81 to i8
  %83 = load i8*, i8** %9, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %9, align 8
  store i8 %82, i8* %83, align 1
  %85 = load i64, i64* %10, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = call i32 @l2n3(i64 %85, i8* %86)
  %88 = load %struct.hm_header_st*, %struct.hm_header_st** %8, align 8
  %89 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i8*, i8** %9, align 8
  %92 = call i32 @s2n(i32 %90, i8* %91)
  %93 = load i8*, i8** %9, align 8
  %94 = call i32 @l2n3(i64 0, i8* %93)
  %95 = load i64, i64* %10, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = call i32 @l2n3(i64 %95, i8* %96)
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @DTLS1_BAD_VER, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %111

103:                                              ; preds = %75
  %104 = load i64, i64* @DTLS1_HM_HEADER_LENGTH, align 8
  %105 = load i8*, i8** %9, align 8
  %106 = sub i64 0, %104
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  store i8* %107, i8** %9, align 8
  %108 = load i64, i64* @DTLS1_HM_HEADER_LENGTH, align 8
  %109 = load i64, i64* %10, align 8
  %110 = add i64 %109, %108
  store i64 %110, i64* %10, align 8
  br label %111

111:                                              ; preds = %103, %75
  %112 = load i32*, i32** %6, align 8
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @SSL3_MT_FINISHED, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %118 = call i32 @ssl3_take_mac(%struct.TYPE_16__* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %116
  store i32 0, i32* %4, align 4
  br label %166

121:                                              ; preds = %116, %111
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %123 = load i8*, i8** %9, align 8
  %124 = load i64, i64* %10, align 8
  %125 = call i32 @ssl3_finish_mac(%struct.TYPE_16__* %122, i8* %123, i64 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %121
  store i32 0, i32* %4, align 4
  br label %166

128:                                              ; preds = %121
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 6
  %131 = load i32 (i32, i64, i32, i8*, i64, %struct.TYPE_16__*, i32)*, i32 (i32, i64, i32, i8*, i64, %struct.TYPE_16__*, i32)** %130, align 8
  %132 = icmp ne i32 (i32, i64, i32, i8*, i64, %struct.TYPE_16__*, i32)* %131, null
  br i1 %132, label %133, label %148

133:                                              ; preds = %128
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 6
  %136 = load i32 (i32, i64, i32, i8*, i64, %struct.TYPE_16__*, i32)*, i32 (i32, i64, i32, i8*, i64, %struct.TYPE_16__*, i32)** %135, align 8
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* @SSL3_RT_HANDSHAKE, align 4
  %141 = load i8*, i8** %9, align 8
  %142 = load i64, i64* %10, align 8
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 8
  %147 = call i32 %136(i32 0, i64 %139, i32 %140, i8* %141, i64 %142, %struct.TYPE_16__* %143, i32 %146)
  br label %148

148:                                              ; preds = %133, %128
  %149 = load %struct.hm_header_st*, %struct.hm_header_st** %8, align 8
  %150 = call i32 @memset(%struct.hm_header_st* %149, i32 0, i32 16)
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 4
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 8
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @DTLS1_HM_HEADER_LENGTH, align 8
  %163 = add nsw i64 %161, %162
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 3
  store i64 %163, i64* %165, align 8
  store i32 1, i32* %4, align 4
  br label %166

166:                                              ; preds = %148, %127, %120, %74, %32
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

declare dso_local i32 @memset(%struct.hm_header_st*, i32, i32) #1

declare dso_local i32 @dtls_get_reassembled_message(%struct.TYPE_16__*, i32*, i64*) #1

declare dso_local i32 @l2n3(i64, i8*) #1

declare dso_local i32 @s2n(i32, i8*) #1

declare dso_local i32 @ssl3_take_mac(%struct.TYPE_16__*) #1

declare dso_local i32 @ssl3_finish_mac(%struct.TYPE_16__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
