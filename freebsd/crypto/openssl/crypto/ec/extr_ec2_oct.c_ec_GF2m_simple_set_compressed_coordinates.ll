; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec2_oct.c_ec_GF2m_simple_set_compressed_coordinates.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec2_oct.c_ec_GF2m_simple_set_compressed_coordinates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32, i32*, i32 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_9__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_9__*, i32*, i32, i32*, i32*)*, i32 (%struct.TYPE_9__*, i32*, i32*, i32*)* }

@ERR_LIB_BN = common dso_local global i64 0, align 8
@BN_R_NO_SOLUTION = common dso_local global i64 0, align 8
@EC_F_EC_GF2M_SIMPLE_SET_COMPRESSED_COORDINATES = common dso_local global i32 0, align 4
@EC_R_INVALID_COMPRESSED_POINT = common dso_local global i32 0, align 4
@ERR_R_BN_LIB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ec_GF2m_simple_set_compressed_coordinates(%struct.TYPE_9__* %0, i32* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32 0, i32* %17, align 4
  %20 = call i32 (...) @ERR_clear_error()
  %21 = load i32*, i32** %11, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %5
  %24 = call i32* (...) @BN_CTX_new()
  store i32* %24, i32** %12, align 8
  store i32* %24, i32** %11, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %196

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %28, %5
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 1, i32 0
  store i32 %33, i32* %10, align 4
  %34 = load i32*, i32** %11, align 8
  %35 = call i32 @BN_CTX_start(i32* %34)
  %36 = load i32*, i32** %11, align 8
  %37 = call i32* @BN_CTX_get(i32* %36)
  store i32* %37, i32** %13, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = call i32* @BN_CTX_get(i32* %38)
  store i32* %39, i32** %14, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = call i32* @BN_CTX_get(i32* %40)
  store i32* %41, i32** %15, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = call i32* @BN_CTX_get(i32* %42)
  store i32* %43, i32** %16, align 8
  %44 = load i32*, i32** %16, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %29
  br label %190

47:                                               ; preds = %29
  %48 = load i32*, i32** %14, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @BN_GF2m_mod_arr(i32* %48, i32* %49, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %47
  br label %190

56:                                               ; preds = %47
  %57 = load i32*, i32** %14, align 8
  %58 = call i64 @BN_is_zero(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %56
  %61 = load i32*, i32** %15, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = call i32 @BN_GF2m_mod_sqrt_arr(i32* %61, i32 %64, i32 %67, i32* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %60
  br label %190

72:                                               ; preds = %60
  br label %180

73:                                               ; preds = %56
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  %78 = load i32 (%struct.TYPE_9__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_9__*, i32*, i32*, i32*)** %77, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %80 = load i32*, i32** %13, align 8
  %81 = load i32*, i32** %14, align 8
  %82 = load i32*, i32** %11, align 8
  %83 = call i32 %78(%struct.TYPE_9__* %79, i32* %80, i32* %81, i32* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %73
  br label %190

86:                                               ; preds = %73
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i32 (%struct.TYPE_9__*, i32*, i32, i32*, i32*)*, i32 (%struct.TYPE_9__*, i32*, i32, i32*, i32*)** %90, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %93 = load i32*, i32** %13, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load i32*, i32** %13, align 8
  %98 = load i32*, i32** %11, align 8
  %99 = call i32 %91(%struct.TYPE_9__* %92, i32* %93, i32 %96, i32* %97, i32* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %86
  br label %190

102:                                              ; preds = %86
  %103 = load i32*, i32** %13, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load i32*, i32** %13, align 8
  %108 = call i32 @BN_GF2m_add(i32* %103, i32* %106, i32* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %102
  br label %190

111:                                              ; preds = %102
  %112 = load i32*, i32** %13, align 8
  %113 = load i32*, i32** %14, align 8
  %114 = load i32*, i32** %13, align 8
  %115 = call i32 @BN_GF2m_add(i32* %112, i32* %113, i32* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %111
  br label %190

118:                                              ; preds = %111
  %119 = load i32*, i32** %16, align 8
  %120 = load i32*, i32** %13, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i32*, i32** %11, align 8
  %125 = call i32 @BN_GF2m_mod_solve_quad_arr(i32* %119, i32* %120, i32 %123, i32* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %148, label %127

127:                                              ; preds = %118
  %128 = call i64 (...) @ERR_peek_last_error()
  store i64 %128, i64* %19, align 8
  %129 = load i64, i64* %19, align 8
  %130 = call i64 @ERR_GET_LIB(i64 %129)
  %131 = load i64, i64* @ERR_LIB_BN, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %143

133:                                              ; preds = %127
  %134 = load i64, i64* %19, align 8
  %135 = call i64 @ERR_GET_REASON(i64 %134)
  %136 = load i64, i64* @BN_R_NO_SOLUTION, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = call i32 (...) @ERR_clear_error()
  %140 = load i32, i32* @EC_F_EC_GF2M_SIMPLE_SET_COMPRESSED_COORDINATES, align 4
  %141 = load i32, i32* @EC_R_INVALID_COMPRESSED_POINT, align 4
  %142 = call i32 @ECerr(i32 %140, i32 %141)
  br label %147

143:                                              ; preds = %133, %127
  %144 = load i32, i32* @EC_F_EC_GF2M_SIMPLE_SET_COMPRESSED_COORDINATES, align 4
  %145 = load i32, i32* @ERR_R_BN_LIB, align 4
  %146 = call i32 @ECerr(i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %143, %138
  br label %190

148:                                              ; preds = %118
  %149 = load i32*, i32** %16, align 8
  %150 = call i64 @BN_is_odd(i32* %149)
  %151 = icmp ne i64 %150, 0
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i32 1, i32 0
  store i32 %153, i32* %18, align 4
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load i32 (%struct.TYPE_9__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_9__*, i32*, i32*, i32*, i32*)** %157, align 8
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %160 = load i32*, i32** %15, align 8
  %161 = load i32*, i32** %14, align 8
  %162 = load i32*, i32** %16, align 8
  %163 = load i32*, i32** %11, align 8
  %164 = call i32 %158(%struct.TYPE_9__* %159, i32* %160, i32* %161, i32* %162, i32* %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %148
  br label %190

167:                                              ; preds = %148
  %168 = load i32, i32* %18, align 4
  %169 = load i32, i32* %10, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %171, label %179

171:                                              ; preds = %167
  %172 = load i32*, i32** %15, align 8
  %173 = load i32*, i32** %15, align 8
  %174 = load i32*, i32** %14, align 8
  %175 = call i32 @BN_GF2m_add(i32* %172, i32* %173, i32* %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %171
  br label %190

178:                                              ; preds = %171
  br label %179

179:                                              ; preds = %178, %167
  br label %180

180:                                              ; preds = %179, %72
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %182 = load i32*, i32** %8, align 8
  %183 = load i32*, i32** %14, align 8
  %184 = load i32*, i32** %15, align 8
  %185 = load i32*, i32** %11, align 8
  %186 = call i32 @EC_POINT_set_affine_coordinates(%struct.TYPE_9__* %181, i32* %182, i32* %183, i32* %184, i32* %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %189, label %188

188:                                              ; preds = %180
  br label %190

189:                                              ; preds = %180
  store i32 1, i32* %17, align 4
  br label %190

190:                                              ; preds = %189, %188, %177, %166, %147, %117, %110, %101, %85, %71, %55, %46
  %191 = load i32*, i32** %11, align 8
  %192 = call i32 @BN_CTX_end(i32* %191)
  %193 = load i32*, i32** %12, align 8
  %194 = call i32 @BN_CTX_free(i32* %193)
  %195 = load i32, i32* %17, align 4
  store i32 %195, i32* %6, align 4
  br label %196

196:                                              ; preds = %190, %27
  %197 = load i32, i32* %6, align 4
  ret i32 %197
}

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @BN_GF2m_mod_arr(i32*, i32*, i32) #1

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i32 @BN_GF2m_mod_sqrt_arr(i32*, i32, i32, i32*) #1

declare dso_local i32 @BN_GF2m_add(i32*, i32*, i32*) #1

declare dso_local i32 @BN_GF2m_mod_solve_quad_arr(i32*, i32*, i32, i32*) #1

declare dso_local i64 @ERR_peek_last_error(...) #1

declare dso_local i64 @ERR_GET_LIB(i64) #1

declare dso_local i64 @ERR_GET_REASON(i64) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i64 @BN_is_odd(i32*) #1

declare dso_local i32 @EC_POINT_set_affine_coordinates(%struct.TYPE_9__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
