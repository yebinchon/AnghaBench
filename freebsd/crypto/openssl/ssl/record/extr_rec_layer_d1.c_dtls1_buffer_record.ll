; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/record/extr_rec_layer_d1.c_dtls1_buffer_record.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/record/extr_rec_layer_d1.c_dtls1_buffer_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32, i64, i32* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_19__, i32, %struct.TYPE_19__, i64, i32* }
%struct.TYPE_19__ = type { %struct.TYPE_24__* }
%struct.TYPE_22__ = type { %struct.TYPE_24__* }

@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_DTLS1_BUFFER_RECORD = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@TLS_ST_SR_FINISHED = common dso_local global i64 0, align 8
@TLS_ST_CR_FINISHED = common dso_local global i64 0, align 8
@BIO_CTRL_DGRAM_SCTP_GET_RCVINFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtls1_buffer_record(%struct.TYPE_23__* %0, %struct.TYPE_21__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @pqueue_size(i32 %12)
  %14 = icmp sge i32 %13, 100
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %131

16:                                               ; preds = %3
  %17 = call %struct.TYPE_24__* @OPENSSL_malloc(i32 40)
  store %struct.TYPE_24__* %17, %struct.TYPE_24__** %8, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %20 = call %struct.TYPE_22__* @pitem_new(i8* %18, %struct.TYPE_24__* %19)
  store %struct.TYPE_22__* %20, %struct.TYPE_22__** %9, align 8
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %22 = icmp eq %struct.TYPE_24__* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %25 = icmp eq %struct.TYPE_22__* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %23, %16
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %28 = call i32 @OPENSSL_free(%struct.TYPE_24__* %27)
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %30 = call i32 @pitem_free(%struct.TYPE_22__* %29)
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %32 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %33 = load i32, i32* @SSL_F_DTLS1_BUFFER_RECORD, align 4
  %34 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %35 = call i32 @SSLfatal(%struct.TYPE_23__* %31, i32 %32, i32 %33, i32 %34)
  store i32 -1, i32* %4, align 4
  br label %131

36:                                               ; preds = %23
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 4
  store i32* %40, i32** %42, align 8
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 3
  store i64 %46, i64* %48, align 8
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 1
  %54 = call i32 @memcpy(%struct.TYPE_19__* %50, i32* %53, i32 4)
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = call i32 @memcpy(%struct.TYPE_19__* %56, i32* %59, i32 4)
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 0
  store %struct.TYPE_24__* %61, %struct.TYPE_24__** %63, align 8
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %65 = call i32 @SSL_get_rbio(%struct.TYPE_23__* %64)
  %66 = call i64 @BIO_dgram_is_sctp(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %36
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %70 = call i64 @SSL_get_state(%struct.TYPE_23__* %69)
  %71 = load i64, i64* @TLS_ST_SR_FINISHED, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %75 = call i64 @SSL_get_state(%struct.TYPE_23__* %74)
  %76 = load i64, i64* @TLS_ST_CR_FINISHED, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %73, %68
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %80 = call i32 @SSL_get_rbio(%struct.TYPE_23__* %79)
  %81 = load i32, i32* @BIO_CTRL_DGRAM_SCTP_GET_RCVINFO, align 4
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 1
  %84 = call i32 @BIO_ctrl(i32 %80, i32 %81, i32 4, i32* %83)
  br label %85

85:                                               ; preds = %78, %73, %36
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 3
  store i32* null, i32** %88, align 8
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 2
  store i64 0, i64* %91, align 8
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 1
  %95 = call i32 @memset(i32* %94, i32 0, i32 4)
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 0
  %99 = call i32 @memset(i32* %98, i32 0, i32 4)
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %101 = call i32 @ssl3_setup_buffers(%struct.TYPE_23__* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %113, label %103

103:                                              ; preds = %85
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %106, align 8
  %108 = call i32 @OPENSSL_free(%struct.TYPE_24__* %107)
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %110 = call i32 @OPENSSL_free(%struct.TYPE_24__* %109)
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %112 = call i32 @pitem_free(%struct.TYPE_22__* %111)
  store i32 -1, i32* %4, align 4
  br label %131

113:                                              ; preds = %85
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %118 = call i32* @pqueue_insert(i32 %116, %struct.TYPE_22__* %117)
  %119 = icmp eq i32* %118, null
  br i1 %119, label %120, label %130

120:                                              ; preds = %113
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %123, align 8
  %125 = call i32 @OPENSSL_free(%struct.TYPE_24__* %124)
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %127 = call i32 @OPENSSL_free(%struct.TYPE_24__* %126)
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %129 = call i32 @pitem_free(%struct.TYPE_22__* %128)
  br label %130

130:                                              ; preds = %120, %113
  store i32 1, i32* %4, align 4
  br label %131

131:                                              ; preds = %130, %103, %26, %15
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @pqueue_size(i32) #1

declare dso_local %struct.TYPE_24__* @OPENSSL_malloc(i32) #1

declare dso_local %struct.TYPE_22__* @pitem_new(i8*, %struct.TYPE_24__*) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_24__*) #1

declare dso_local i32 @pitem_free(%struct.TYPE_22__*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_23__*, i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_19__*, i32*, i32) #1

declare dso_local i64 @BIO_dgram_is_sctp(i32) #1

declare dso_local i32 @SSL_get_rbio(%struct.TYPE_23__*) #1

declare dso_local i64 @SSL_get_state(%struct.TYPE_23__*) #1

declare dso_local i32 @BIO_ctrl(i32, i32, i32, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ssl3_setup_buffers(%struct.TYPE_23__*) #1

declare dso_local i32* @pqueue_insert(i32, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
