; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/record/extr_rec_layer_s3.c_ssl3_write_pending.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/record/extr_rec_layer_s3.c_ssl3_write_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i32, i32* }
%struct.TYPE_6__ = type { i64, i8*, i32, i32, i64, i32* }

@SSL_MODE_ACCEPT_MOVING_WRITE_BUFFER = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_SSL3_WRITE_PENDING = common dso_local global i32 0, align 4
@SSL_R_BAD_WRITE_RETRY = common dso_local global i32 0, align 4
@SSL_WRITING = common dso_local global i32 0, align 4
@SSL_R_BIO_NOT_SET = common dso_local global i32 0, align 4
@SSL_NOTHING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl3_write_pending(%struct.TYPE_7__* %0, i32 %1, i8* %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 5
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %47, label %26

26:                                               ; preds = %5
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @SSL_MODE_ACCEPT_MOVING_WRITE_BUFFER, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %26
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = icmp ne i8* %37, %38
  br i1 %39, label %47, label %40

40:                                               ; preds = %33, %26
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %40, %33, %5
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %50 = load i32, i32* @SSL_F_SSL3_WRITE_PENDING, align 4
  %51 = load i32, i32* @SSL_R_BAD_WRITE_RETRY, align 4
  %52 = call i32 @SSLfatal(%struct.TYPE_7__* %48, i32 %49, i32 %50, i32 %51)
  store i32 -1, i32* %6, align 4
  br label %177

53:                                               ; preds = %40
  br label %54

54:                                               ; preds = %166, %141, %69, %53
  %55 = load i32*, i32** %13, align 8
  %56 = load i64, i64* %14, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = call i64 @SSL3_BUFFER_get_left(i32* %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %54
  %61 = load i64, i64* %14, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = icmp ult i64 %61, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %60
  %70 = load i64, i64* %14, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %14, align 8
  br label %54

72:                                               ; preds = %60, %54
  %73 = call i32 (...) @clear_sys_error()
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %107

78:                                               ; preds = %72
  %79 = load i32, i32* @SSL_WRITING, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = load i32*, i32** %13, align 8
  %86 = load i64, i64* %14, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = call i32* @SSL3_BUFFER_get_buf(i32* %87)
  %89 = load i32*, i32** %13, align 8
  %90 = load i64, i64* %14, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = call i64 @SSL3_BUFFER_get_offset(i32* %91)
  %93 = getelementptr inbounds i32, i32* %88, i64 %92
  %94 = bitcast i32* %93 to i8*
  %95 = load i32*, i32** %13, align 8
  %96 = load i64, i64* %14, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = call i64 @SSL3_BUFFER_get_left(i32* %97)
  %99 = trunc i64 %98 to i32
  %100 = call i32 @BIO_write(i32* %84, i8* %94, i32 %99)
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp sge i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %78
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  store i64 %105, i64* %15, align 8
  br label %106

106:                                              ; preds = %103, %78
  br label %113

107:                                              ; preds = %72
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %109 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %110 = load i32, i32* @SSL_F_SSL3_WRITE_PENDING, align 4
  %111 = load i32, i32* @SSL_R_BIO_NOT_SET, align 4
  %112 = call i32 @SSLfatal(%struct.TYPE_7__* %108, i32 %109, i32 %110, i32 %111)
  store i32 -1, i32* %12, align 4
  br label %113

113:                                              ; preds = %107, %106
  %114 = load i32, i32* %12, align 4
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %151

116:                                              ; preds = %113
  %117 = load i64, i64* %15, align 8
  %118 = load i32*, i32** %13, align 8
  %119 = load i64, i64* %14, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  %121 = call i64 @SSL3_BUFFER_get_left(i32* %120)
  %122 = icmp eq i64 %117, %121
  br i1 %122, label %123, label %151

123:                                              ; preds = %116
  %124 = load i32*, i32** %13, align 8
  %125 = load i64, i64* %14, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  %127 = call i32 @SSL3_BUFFER_set_left(i32* %126, i32 0)
  %128 = load i32*, i32** %13, align 8
  %129 = load i64, i64* %14, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  %131 = load i64, i64* %15, align 8
  %132 = call i32 @SSL3_BUFFER_add_offset(i32* %130, i64 %131)
  %133 = load i64, i64* %14, align 8
  %134 = add i64 %133, 1
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = sext i32 %138 to i64
  %140 = icmp ult i64 %134, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %123
  br label %54

142:                                              ; preds = %123
  %143 = load i32, i32* @SSL_NOTHING, align 4
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 8
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 4
  %149 = load i64, i64* %148, align 8
  %150 = load i64*, i64** %11, align 8
  store i64 %149, i64* %150, align 8
  store i32 1, i32* %6, align 4
  br label %177

151:                                              ; preds = %116, %113
  %152 = load i32, i32* %12, align 4
  %153 = icmp sle i32 %152, 0
  br i1 %153, label %154, label %165

154:                                              ; preds = %151
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %156 = call i64 @SSL_IS_DTLS(%struct.TYPE_7__* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %154
  %159 = load i32*, i32** %13, align 8
  %160 = load i64, i64* %14, align 8
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  %162 = call i32 @SSL3_BUFFER_set_left(i32* %161, i32 0)
  br label %163

163:                                              ; preds = %158, %154
  %164 = load i32, i32* %12, align 4
  store i32 %164, i32* %6, align 4
  br label %177

165:                                              ; preds = %151
  br label %166

166:                                              ; preds = %165
  %167 = load i32*, i32** %13, align 8
  %168 = load i64, i64* %14, align 8
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  %170 = load i64, i64* %15, align 8
  %171 = call i32 @SSL3_BUFFER_add_offset(i32* %169, i64 %170)
  %172 = load i32*, i32** %13, align 8
  %173 = load i64, i64* %14, align 8
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  %175 = load i64, i64* %15, align 8
  %176 = call i32 @SSL3_BUFFER_sub_left(i32* %174, i64 %175)
  br label %54

177:                                              ; preds = %163, %142, %47
  %178 = load i32, i32* %6, align 4
  ret i32 %178
}

declare dso_local i32 @SSLfatal(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i64 @SSL3_BUFFER_get_left(i32*) #1

declare dso_local i32 @clear_sys_error(...) #1

declare dso_local i32 @BIO_write(i32*, i8*, i32) #1

declare dso_local i32* @SSL3_BUFFER_get_buf(i32*) #1

declare dso_local i64 @SSL3_BUFFER_get_offset(i32*) #1

declare dso_local i32 @SSL3_BUFFER_set_left(i32*, i32) #1

declare dso_local i32 @SSL3_BUFFER_add_offset(i32*, i64) #1

declare dso_local i64 @SSL_IS_DTLS(%struct.TYPE_7__*) #1

declare dso_local i32 @SSL3_BUFFER_sub_left(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
