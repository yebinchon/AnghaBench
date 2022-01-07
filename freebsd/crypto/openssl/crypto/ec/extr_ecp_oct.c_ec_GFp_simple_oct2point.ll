; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_oct.c_ec_GFp_simple_oct2point.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_oct.c_ec_GFp_simple_oct2point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@EC_F_EC_GFP_SIMPLE_OCT2POINT = common dso_local global i32 0, align 4
@EC_R_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@POINT_CONVERSION_COMPRESSED = common dso_local global i32 0, align 4
@POINT_CONVERSION_UNCOMPRESSED = common dso_local global i32 0, align 4
@POINT_CONVERSION_HYBRID = common dso_local global i32 0, align 4
@EC_R_INVALID_ENCODING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ec_GFp_simple_oct2point(%struct.TYPE_6__* %0, i32* %1, i8* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* null, i32** %14, align 8
  store i32 0, i32* %19, align 4
  %20 = load i64, i64* %10, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %5
  %23 = load i32, i32* @EC_F_EC_GFP_SIMPLE_OCT2POINT, align 4
  %24 = load i32, i32* @EC_R_BUFFER_TOO_SMALL, align 4
  %25 = call i32 @ECerr(i32 %23, i32 %24)
  store i32 0, i32* %6, align 4
  br label %209

26:                                               ; preds = %5
  %27 = load i8*, i8** %9, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = and i32 %31, 1
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %12, align 4
  %34 = and i32 %33, -2
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %26
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @POINT_CONVERSION_COMPRESSED, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @POINT_CONVERSION_UNCOMPRESSED, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @POINT_CONVERSION_HYBRID, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, i32* @EC_F_EC_GFP_SIMPLE_OCT2POINT, align 4
  %51 = load i32, i32* @EC_R_INVALID_ENCODING, align 4
  %52 = call i32 @ECerr(i32 %50, i32 %51)
  store i32 0, i32* %6, align 4
  br label %209

53:                                               ; preds = %45, %41, %37, %26
  %54 = load i32, i32* %12, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @POINT_CONVERSION_UNCOMPRESSED, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %56, %53
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i32, i32* @EC_F_EC_GFP_SIMPLE_OCT2POINT, align 4
  %65 = load i32, i32* @EC_R_INVALID_ENCODING, align 4
  %66 = call i32 @ECerr(i32 %64, i32 %65)
  store i32 0, i32* %6, align 4
  br label %209

67:                                               ; preds = %60, %56
  %68 = load i32, i32* %12, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %67
  %71 = load i64, i64* %10, align 8
  %72 = icmp ne i64 %71, 1
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32, i32* @EC_F_EC_GFP_SIMPLE_OCT2POINT, align 4
  %75 = load i32, i32* @EC_R_INVALID_ENCODING, align 4
  %76 = call i32 @ECerr(i32 %74, i32 %75)
  store i32 0, i32* %6, align 4
  br label %209

77:                                               ; preds = %70
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = call i32 @EC_POINT_set_to_infinity(%struct.TYPE_6__* %78, i32* %79)
  store i32 %80, i32* %6, align 4
  br label %209

81:                                               ; preds = %67
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @BN_num_bytes(i32 %84)
  store i64 %85, i64* %17, align 8
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @POINT_CONVERSION_COMPRESSED, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = load i64, i64* %17, align 8
  %91 = add i64 1, %90
  br label %96

92:                                               ; preds = %81
  %93 = load i64, i64* %17, align 8
  %94 = mul i64 2, %93
  %95 = add i64 1, %94
  br label %96

96:                                               ; preds = %92, %89
  %97 = phi i64 [ %91, %89 ], [ %95, %92 ]
  store i64 %97, i64* %18, align 8
  %98 = load i64, i64* %10, align 8
  %99 = load i64, i64* %18, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load i32, i32* @EC_F_EC_GFP_SIMPLE_OCT2POINT, align 4
  %103 = load i32, i32* @EC_R_INVALID_ENCODING, align 4
  %104 = call i32 @ECerr(i32 %102, i32 %103)
  store i32 0, i32* %6, align 4
  br label %209

105:                                              ; preds = %96
  %106 = load i32*, i32** %11, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = call i32* (...) @BN_CTX_new()
  store i32* %109, i32** %14, align 8
  store i32* %109, i32** %11, align 8
  %110 = load i32*, i32** %11, align 8
  %111 = icmp eq i32* %110, null
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  store i32 0, i32* %6, align 4
  br label %209

113:                                              ; preds = %108
  br label %114

114:                                              ; preds = %113, %105
  %115 = load i32*, i32** %11, align 8
  %116 = call i32 @BN_CTX_start(i32* %115)
  %117 = load i32*, i32** %11, align 8
  %118 = call i32* @BN_CTX_get(i32* %117)
  store i32* %118, i32** %15, align 8
  %119 = load i32*, i32** %11, align 8
  %120 = call i32* @BN_CTX_get(i32* %119)
  store i32* %120, i32** %16, align 8
  %121 = load i32*, i32** %16, align 8
  %122 = icmp eq i32* %121, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %114
  br label %203

124:                                              ; preds = %114
  %125 = load i8*, i8** %9, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  %127 = load i64, i64* %17, align 8
  %128 = load i32*, i32** %15, align 8
  %129 = call i32 @BN_bin2bn(i8* %126, i64 %127, i32* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %124
  br label %203

132:                                              ; preds = %124
  %133 = load i32*, i32** %15, align 8
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i64 @BN_ucmp(i32* %133, i32 %136)
  %138 = icmp sge i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %132
  %140 = load i32, i32* @EC_F_EC_GFP_SIMPLE_OCT2POINT, align 4
  %141 = load i32, i32* @EC_R_INVALID_ENCODING, align 4
  %142 = call i32 @ECerr(i32 %140, i32 %141)
  br label %203

143:                                              ; preds = %132
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* @POINT_CONVERSION_COMPRESSED, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %157

147:                                              ; preds = %143
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %149 = load i32*, i32** %8, align 8
  %150 = load i32*, i32** %15, align 8
  %151 = load i32, i32* %13, align 4
  %152 = load i32*, i32** %11, align 8
  %153 = call i32 @EC_POINT_set_compressed_coordinates(%struct.TYPE_6__* %148, i32* %149, i32* %150, i32 %151, i32* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %147
  br label %203

156:                                              ; preds = %147
  br label %202

157:                                              ; preds = %143
  %158 = load i8*, i8** %9, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 1
  %160 = load i64, i64* %17, align 8
  %161 = getelementptr inbounds i8, i8* %159, i64 %160
  %162 = load i64, i64* %17, align 8
  %163 = load i32*, i32** %16, align 8
  %164 = call i32 @BN_bin2bn(i8* %161, i64 %162, i32* %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %157
  br label %203

167:                                              ; preds = %157
  %168 = load i32*, i32** %16, align 8
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i64 @BN_ucmp(i32* %168, i32 %171)
  %173 = icmp sge i64 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %167
  %175 = load i32, i32* @EC_F_EC_GFP_SIMPLE_OCT2POINT, align 4
  %176 = load i32, i32* @EC_R_INVALID_ENCODING, align 4
  %177 = call i32 @ECerr(i32 %175, i32 %176)
  br label %203

178:                                              ; preds = %167
  %179 = load i32, i32* %12, align 4
  %180 = load i32, i32* @POINT_CONVERSION_HYBRID, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %192

182:                                              ; preds = %178
  %183 = load i32, i32* %13, align 4
  %184 = load i32*, i32** %16, align 8
  %185 = call i32 @BN_is_odd(i32* %184)
  %186 = icmp ne i32 %183, %185
  br i1 %186, label %187, label %191

187:                                              ; preds = %182
  %188 = load i32, i32* @EC_F_EC_GFP_SIMPLE_OCT2POINT, align 4
  %189 = load i32, i32* @EC_R_INVALID_ENCODING, align 4
  %190 = call i32 @ECerr(i32 %188, i32 %189)
  br label %203

191:                                              ; preds = %182
  br label %192

192:                                              ; preds = %191, %178
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %194 = load i32*, i32** %8, align 8
  %195 = load i32*, i32** %15, align 8
  %196 = load i32*, i32** %16, align 8
  %197 = load i32*, i32** %11, align 8
  %198 = call i32 @EC_POINT_set_affine_coordinates(%struct.TYPE_6__* %193, i32* %194, i32* %195, i32* %196, i32* %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %201, label %200

200:                                              ; preds = %192
  br label %203

201:                                              ; preds = %192
  br label %202

202:                                              ; preds = %201, %156
  store i32 1, i32* %19, align 4
  br label %203

203:                                              ; preds = %202, %200, %187, %174, %166, %155, %139, %131, %123
  %204 = load i32*, i32** %11, align 8
  %205 = call i32 @BN_CTX_end(i32* %204)
  %206 = load i32*, i32** %14, align 8
  %207 = call i32 @BN_CTX_free(i32* %206)
  %208 = load i32, i32* %19, align 4
  store i32 %208, i32* %6, align 4
  br label %209

209:                                              ; preds = %203, %112, %101, %77, %73, %63, %49, %22
  %210 = load i32, i32* %6, align 4
  ret i32 %210
}

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32 @EC_POINT_set_to_infinity(%struct.TYPE_6__*, i32*) #1

declare dso_local i64 @BN_num_bytes(i32) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @BN_bin2bn(i8*, i64, i32*) #1

declare dso_local i64 @BN_ucmp(i32*, i32) #1

declare dso_local i32 @EC_POINT_set_compressed_coordinates(%struct.TYPE_6__*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @BN_is_odd(i32*) #1

declare dso_local i32 @EC_POINT_set_affine_coordinates(%struct.TYPE_6__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
