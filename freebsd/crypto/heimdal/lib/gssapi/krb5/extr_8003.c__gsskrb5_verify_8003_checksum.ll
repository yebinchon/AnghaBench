; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_8003.c__gsskrb5_verify_8003_checksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_8003.c__gsskrb5_verify_8003_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i8* }
%struct.TYPE_7__ = type { i8, i32* }

@_gsskrb5_verify_8003_checksum.zeros = internal global [16 x i8] zeroinitializer, align 16
@CKSUMTYPE_GSSAPI = common dso_local global i64 0, align 8
@GSS_S_BAD_BINDINGS = common dso_local global i32 0, align 4
@GSS_C_NO_CHANNEL_BINDINGS = common dso_local global i64 0, align 8
@GSS_C_DELEG_FLAG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GSS_S_FAILURE = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_gsskrb5_verify_8003_checksum(i32* %0, i64 %1, %struct.TYPE_8__* %2, i32* %3, %struct.TYPE_7__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca [16 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %11, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CKSUMTYPE_GSSAPI, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %5
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %25, 24
  br i1 %26, label %27, label %30

27:                                               ; preds = %21, %5
  %28 = load i32*, i32** %7, align 8
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* @GSS_S_BAD_BINDINGS, align 4
  store i32 %29, i32* %6, align 4
  br label %175

30:                                               ; preds = %21
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %13, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = call i32 @_gsskrb5_decode_om_uint32(i8* %35, i32* %14)
  %37 = load i32, i32* %14, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp ne i64 %38, 16
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = load i32*, i32** %7, align 8
  store i32 0, i32* %41, align 4
  %42 = load i32, i32* @GSS_S_BAD_BINDINGS, align 4
  store i32 %42, i32* %6, align 4
  br label %175

43:                                               ; preds = %30
  %44 = load i8*, i8** %13, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 4
  store i8* %45, i8** %13, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* @GSS_C_NO_CHANNEL_BINDINGS, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %70

49:                                               ; preds = %43
  %50 = load i8*, i8** %13, align 8
  %51 = call i64 @memcmp(i8* %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @_gsskrb5_verify_8003_checksum.zeros, i64 0, i64 0), i32 16)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %70

53:                                               ; preds = %49
  %54 = load i64, i64* %8, align 8
  %55 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %56 = call i64 @hash_input_chan_bindings(i64 %54, i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32*, i32** %7, align 8
  store i32 0, i32* %59, align 4
  %60 = load i32, i32* @GSS_S_BAD_BINDINGS, align 4
  store i32 %60, i32* %6, align 4
  br label %175

61:                                               ; preds = %53
  %62 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %63 = load i8*, i8** %13, align 8
  %64 = call i64 @ct_memcmp(i8* %62, i8* %63, i32 16)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32*, i32** %7, align 8
  store i32 0, i32* %67, align 4
  %68 = load i32, i32* @GSS_S_BAD_BINDINGS, align 4
  store i32 %68, i32* %6, align 4
  br label %175

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69, %49, %43
  %71 = load i8*, i8** %13, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 16
  store i8* %72, i8** %13, align 8
  %73 = load i8*, i8** %13, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = call i32 @_gsskrb5_decode_om_uint32(i8* %73, i32* %74)
  %76 = load i8*, i8** %13, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 4
  store i8* %77, i8** %13, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp sgt i32 %81, 24
  br i1 %82, label %83, label %173

83:                                               ; preds = %70
  %84 = load i32*, i32** %10, align 8
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @GSS_C_DELEG_FLAG, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %173

89:                                               ; preds = %83
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %93, 28
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load i32*, i32** %7, align 8
  store i32 0, i32* %96, align 4
  %97 = load i32, i32* @GSS_S_BAD_BINDINGS, align 4
  store i32 %97, i32* %6, align 4
  br label %175

98:                                               ; preds = %89
  %99 = load i8*, i8** %13, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 0
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = shl i32 %102, 0
  %104 = load i8*, i8** %13, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 1
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = shl i32 %107, 8
  %109 = or i32 %103, %108
  store i32 %109, i32* %15, align 4
  %110 = load i8*, i8** %13, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 2
  store i8* %111, i8** %13, align 8
  %112 = load i32, i32* %15, align 4
  %113 = icmp ne i32 %112, 1
  br i1 %113, label %114, label %117

114:                                              ; preds = %98
  %115 = load i32*, i32** %7, align 8
  store i32 0, i32* %115, align 4
  %116 = load i32, i32* @GSS_S_BAD_BINDINGS, align 4
  store i32 %116, i32* %6, align 4
  br label %175

117:                                              ; preds = %98
  %118 = load i8*, i8** %13, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 0
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = shl i32 %121, 0
  %123 = load i8*, i8** %13, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 1
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = shl i32 %126, 8
  %128 = or i32 %122, %127
  %129 = trunc i32 %128 to i8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  store i8 %129, i8* %131, align 8
  %132 = load i8*, i8** %13, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 2
  store i8* %133, i8** %13, align 8
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i8, i8* %139, align 8
  %141 = zext i8 %140 to i32
  %142 = add nsw i32 28, %141
  %143 = icmp slt i32 %137, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %117
  %145 = load i32*, i32** %7, align 8
  store i32 0, i32* %145, align 4
  %146 = load i32, i32* @GSS_S_BAD_BINDINGS, align 4
  store i32 %146, i32* %6, align 4
  br label %175

147:                                              ; preds = %117
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i8, i8* %149, align 8
  %151 = zext i8 %150 to i32
  %152 = call i32* @malloc(i32 %151)
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 1
  store i32* %152, i32** %154, align 8
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = icmp eq i32* %157, null
  br i1 %158, label %159, label %163

159:                                              ; preds = %147
  %160 = load i32, i32* @ENOMEM, align 4
  %161 = load i32*, i32** %7, align 8
  store i32 %160, i32* %161, align 4
  %162 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %162, i32* %6, align 4
  br label %175

163:                                              ; preds = %147
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = load i8*, i8** %13, align 8
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  %170 = load i8, i8* %169, align 8
  %171 = zext i8 %170 to i32
  %172 = call i32 @memcpy(i32* %166, i8* %167, i32 %171)
  br label %173

173:                                              ; preds = %163, %83, %70
  %174 = load i32, i32* @GSS_S_COMPLETE, align 4
  store i32 %174, i32* %6, align 4
  br label %175

175:                                              ; preds = %173, %159, %144, %114, %95, %66, %58, %40, %27
  %176 = load i32, i32* %6, align 4
  ret i32 %176
}

declare dso_local i32 @_gsskrb5_decode_om_uint32(i8*, i32*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i64 @hash_input_chan_bindings(i64, i8*) #1

declare dso_local i64 @ct_memcmp(i8*, i8*, i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
