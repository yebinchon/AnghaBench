; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-bfd.c_auth_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-bfd.c_auth_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.bfd_auth_header_t = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"\0A\09Authentication: %s (%u), length: %u\00", align 1
@bfd_v1_authentication_values = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"\0A\09  Auth Key ID: %d\00", align 1
@AUTH_PASSWORD_FIELD_MIN_LEN = common dso_local global i32 0, align 4
@AUTH_PASSWORD_FIELD_MAX_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"[invalid length %d]\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c", Password: \00", align 1
@AUTH_MD5_FIELD_LEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c", Sequence Number: 0x%08x\00", align 1
@AUTH_MD5_HASH_LEN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"\0A\09  Digest: \00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@AUTH_SHA1_FIELD_LEN = common dso_local global i32 0, align 4
@AUTH_SHA1_HASH_LEN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"\0A\09  Hash: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*)* @auth_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auth_print(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.bfd_auth_header_t*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 4
  store i32* %9, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = bitcast i32* %10 to %struct.bfd_auth_header_t*
  store %struct.bfd_auth_header_t* %11, %struct.bfd_auth_header_t** %6, align 8
  %12 = load %struct.bfd_auth_header_t*, %struct.bfd_auth_header_t** %6, align 8
  %13 = bitcast %struct.bfd_auth_header_t* %12 to i64*
  %14 = load i64, i64* %13, align 4
  %15 = call i32 @ND_TCHECK(i64 %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = load i32, i32* @bfd_v1_authentication_values, align 4
  %18 = load %struct.bfd_auth_header_t*, %struct.bfd_auth_header_t** %6, align 8
  %19 = getelementptr inbounds %struct.bfd_auth_header_t, %struct.bfd_auth_header_t* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @tok2str(i32 %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load %struct.bfd_auth_header_t*, %struct.bfd_auth_header_t** %6, align 8
  %23 = getelementptr inbounds %struct.bfd_auth_header_t, %struct.bfd_auth_header_t* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.bfd_auth_header_t*, %struct.bfd_auth_header_t** %6, align 8
  %26 = getelementptr inbounds %struct.bfd_auth_header_t, %struct.bfd_auth_header_t* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to %struct.TYPE_5__*
  %30 = call i32 @ND_PRINT(%struct.TYPE_5__* %29)
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  store i32* %32, i32** %5, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to %struct.TYPE_5__*
  %38 = call i32 @ND_PRINT(%struct.TYPE_5__* %37)
  %39 = load %struct.bfd_auth_header_t*, %struct.bfd_auth_header_t** %6, align 8
  %40 = getelementptr inbounds %struct.bfd_auth_header_t, %struct.bfd_auth_header_t* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %184 [
    i32 129, label %42
    i32 132, label %80
    i32 131, label %80
    i32 128, label %132
    i32 130, label %132
  ]

42:                                               ; preds = %2
  %43 = load %struct.bfd_auth_header_t*, %struct.bfd_auth_header_t** %6, align 8
  %44 = getelementptr inbounds %struct.bfd_auth_header_t, %struct.bfd_auth_header_t* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @AUTH_PASSWORD_FIELD_MIN_LEN, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load %struct.bfd_auth_header_t*, %struct.bfd_auth_header_t** %6, align 8
  %50 = getelementptr inbounds %struct.bfd_auth_header_t, %struct.bfd_auth_header_t* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @AUTH_PASSWORD_FIELD_MAX_LEN, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %48, %42
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = load %struct.bfd_auth_header_t*, %struct.bfd_auth_header_t** %6, align 8
  %57 = getelementptr inbounds %struct.bfd_auth_header_t, %struct.bfd_auth_header_t* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to %struct.TYPE_5__*
  %61 = call i32 @ND_PRINT(%struct.TYPE_5__* %60)
  br label %184

62:                                               ; preds = %48
  %63 = load i32*, i32** %5, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %5, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %66 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([13 x i8]* @.str.4 to %struct.TYPE_5__*))
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = load %struct.bfd_auth_header_t*, %struct.bfd_auth_header_t** %6, align 8
  %70 = getelementptr inbounds %struct.bfd_auth_header_t, %struct.bfd_auth_header_t* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %71, 3
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @fn_printn(%struct.TYPE_5__* %67, i32* %68, i32 %72, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %62
  br label %185

79:                                               ; preds = %62
  br label %184

80:                                               ; preds = %2, %2
  %81 = load %struct.bfd_auth_header_t*, %struct.bfd_auth_header_t** %6, align 8
  %82 = getelementptr inbounds %struct.bfd_auth_header_t, %struct.bfd_auth_header_t* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @AUTH_MD5_FIELD_LEN, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %80
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %88 = load %struct.bfd_auth_header_t*, %struct.bfd_auth_header_t** %6, align 8
  %89 = getelementptr inbounds %struct.bfd_auth_header_t, %struct.bfd_auth_header_t* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = inttoptr i64 %91 to %struct.TYPE_5__*
  %93 = call i32 @ND_PRINT(%struct.TYPE_5__* %92)
  br label %184

94:                                               ; preds = %80
  %95 = load i32*, i32** %5, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  store i32* %96, i32** %5, align 8
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ND_TCHECK2(i32 %98, i32 4)
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %101 = load i32*, i32** %5, align 8
  %102 = call i32 @EXTRACT_32BITS(i32* %101)
  %103 = sext i32 %102 to i64
  %104 = inttoptr i64 %103 to %struct.TYPE_5__*
  %105 = call i32 @ND_PRINT(%struct.TYPE_5__* %104)
  %106 = load i32*, i32** %5, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 4
  store i32* %107, i32** %5, align 8
  %108 = load i32*, i32** %5, align 8
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @AUTH_MD5_HASH_LEN, align 4
  %111 = call i32 @ND_TCHECK2(i32 %109, i32 %110)
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %113 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([13 x i8]* @.str.6 to %struct.TYPE_5__*))
  store i32 0, i32* %7, align 4
  br label %114

114:                                              ; preds = %128, %94
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @AUTH_MD5_HASH_LEN, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %131

118:                                              ; preds = %114
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %120 = load i32*, i32** %5, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = inttoptr i64 %125 to %struct.TYPE_5__*
  %127 = call i32 @ND_PRINT(%struct.TYPE_5__* %126)
  br label %128

128:                                              ; preds = %118
  %129 = load i32, i32* %7, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %7, align 4
  br label %114

131:                                              ; preds = %114
  br label %184

132:                                              ; preds = %2, %2
  %133 = load %struct.bfd_auth_header_t*, %struct.bfd_auth_header_t** %6, align 8
  %134 = getelementptr inbounds %struct.bfd_auth_header_t, %struct.bfd_auth_header_t* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @AUTH_SHA1_FIELD_LEN, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %146

138:                                              ; preds = %132
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %140 = load %struct.bfd_auth_header_t*, %struct.bfd_auth_header_t** %6, align 8
  %141 = getelementptr inbounds %struct.bfd_auth_header_t, %struct.bfd_auth_header_t* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = inttoptr i64 %143 to %struct.TYPE_5__*
  %145 = call i32 @ND_PRINT(%struct.TYPE_5__* %144)
  br label %184

146:                                              ; preds = %132
  %147 = load i32*, i32** %5, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 2
  store i32* %148, i32** %5, align 8
  %149 = load i32*, i32** %5, align 8
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @ND_TCHECK2(i32 %150, i32 4)
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %153 = load i32*, i32** %5, align 8
  %154 = call i32 @EXTRACT_32BITS(i32* %153)
  %155 = sext i32 %154 to i64
  %156 = inttoptr i64 %155 to %struct.TYPE_5__*
  %157 = call i32 @ND_PRINT(%struct.TYPE_5__* %156)
  %158 = load i32*, i32** %5, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 4
  store i32* %159, i32** %5, align 8
  %160 = load i32*, i32** %5, align 8
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @AUTH_SHA1_HASH_LEN, align 4
  %163 = call i32 @ND_TCHECK2(i32 %161, i32 %162)
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %165 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([11 x i8]* @.str.8 to %struct.TYPE_5__*))
  store i32 0, i32* %7, align 4
  br label %166

166:                                              ; preds = %180, %146
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* @AUTH_SHA1_HASH_LEN, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %183

170:                                              ; preds = %166
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %172 = load i32*, i32** %5, align 8
  %173 = load i32, i32* %7, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = sext i32 %176 to i64
  %178 = inttoptr i64 %177 to %struct.TYPE_5__*
  %179 = call i32 @ND_PRINT(%struct.TYPE_5__* %178)
  br label %180

180:                                              ; preds = %170
  %181 = load i32, i32* %7, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %7, align 4
  br label %166

183:                                              ; preds = %166
  br label %184

184:                                              ; preds = %2, %183, %138, %131, %86, %79, %54
  store i32 0, i32* %3, align 4
  br label %186

185:                                              ; preds = %78
  store i32 1, i32* %3, align 4
  br label %186

186:                                              ; preds = %185, %184
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local i32 @ND_TCHECK(i64) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_5__*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @fn_printn(%struct.TYPE_5__*, i32*, i32, i32) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
