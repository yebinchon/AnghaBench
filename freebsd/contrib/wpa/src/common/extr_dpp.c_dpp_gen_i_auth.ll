; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_gen_i_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_gen_i_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_authentication = type { i32*, i32*, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__*, i32, i32, i64 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"DPP: I-auth hash components\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"DPP: hash component\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"DPP: I-auth\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpp_authentication*, i32*)* @dpp_gen_i_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpp_gen_i_auth(%struct.dpp_authentication* %0, i32* %1) #0 {
  %3 = alloca %struct.dpp_authentication*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca [7 x i32*], align 16
  %10 = alloca [7 x i64], align 16
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.dpp_authentication* %0, %struct.dpp_authentication** %3, align 8
  store i32* %1, i32** %4, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %7, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %8, align 8
  store i64 0, i64* %12, align 8
  store i32 1, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  %16 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %17 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %16, i32 0, i32 2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %13, align 8
  %21 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %22 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %21, i32 0, i32 7
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %59

25:                                               ; preds = %2
  %26 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %27 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.wpabuf* @dpp_get_pubkey_point(i32 %28, i32 0)
  store %struct.wpabuf* %29, %struct.wpabuf** %5, align 8
  %30 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %31 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.wpabuf* @dpp_get_pubkey_point(i32 %32, i32 0)
  store %struct.wpabuf* %33, %struct.wpabuf** %6, align 8
  %34 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %35 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %34, i32 0, i32 3
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = icmp ne %struct.TYPE_5__* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %25
  %39 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %40 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %39, i32 0, i32 3
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.wpabuf* @dpp_get_pubkey_point(i32 %43, i32 0)
  store %struct.wpabuf* %44, %struct.wpabuf** %7, align 8
  br label %46

45:                                               ; preds = %25
  store %struct.wpabuf* null, %struct.wpabuf** %7, align 8
  br label %46

46:                                               ; preds = %45, %38
  %47 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %48 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %47, i32 0, i32 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = icmp ne %struct.TYPE_4__* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %221

52:                                               ; preds = %46
  %53 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %54 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %53, i32 0, i32 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.wpabuf* @dpp_get_pubkey_point(i32 %57, i32 0)
  store %struct.wpabuf* %58, %struct.wpabuf** %8, align 8
  br label %93

59:                                               ; preds = %2
  %60 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %61 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = call %struct.wpabuf* @dpp_get_pubkey_point(i32 %62, i32 0)
  store %struct.wpabuf* %63, %struct.wpabuf** %5, align 8
  %64 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %65 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = call %struct.wpabuf* @dpp_get_pubkey_point(i32 %66, i32 0)
  store %struct.wpabuf* %67, %struct.wpabuf** %6, align 8
  %68 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %69 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %68, i32 0, i32 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = icmp ne %struct.TYPE_4__* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %59
  %73 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %74 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %73, i32 0, i32 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call %struct.wpabuf* @dpp_get_pubkey_point(i32 %77, i32 0)
  store %struct.wpabuf* %78, %struct.wpabuf** %7, align 8
  br label %80

79:                                               ; preds = %59
  store %struct.wpabuf* null, %struct.wpabuf** %7, align 8
  br label %80

80:                                               ; preds = %79, %72
  %81 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %82 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %81, i32 0, i32 3
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = icmp ne %struct.TYPE_5__* %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %80
  br label %221

86:                                               ; preds = %80
  %87 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %88 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %87, i32 0, i32 3
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call %struct.wpabuf* @dpp_get_pubkey_point(i32 %91, i32 0)
  store %struct.wpabuf* %92, %struct.wpabuf** %8, align 8
  br label %93

93:                                               ; preds = %86, %52
  %94 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %95 = icmp ne %struct.wpabuf* %94, null
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %98 = icmp ne %struct.wpabuf* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %101 = icmp ne %struct.wpabuf* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %99, %96, %93
  br label %221

103:                                              ; preds = %99
  %104 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %105 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i64, i64* %12, align 8
  %108 = getelementptr inbounds [7 x i32*], [7 x i32*]* %9, i64 0, i64 %107
  store i32* %106, i32** %108, align 8
  %109 = load i64, i64* %13, align 8
  %110 = load i64, i64* %12, align 8
  %111 = getelementptr inbounds [7 x i64], [7 x i64]* %10, i64 0, i64 %110
  store i64 %109, i64* %111, align 8
  %112 = load i64, i64* %12, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %12, align 8
  %114 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %115 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load i64, i64* %12, align 8
  %118 = getelementptr inbounds [7 x i32*], [7 x i32*]* %9, i64 0, i64 %117
  store i32* %116, i32** %118, align 8
  %119 = load i64, i64* %13, align 8
  %120 = load i64, i64* %12, align 8
  %121 = getelementptr inbounds [7 x i64], [7 x i64]* %10, i64 0, i64 %120
  store i64 %119, i64* %121, align 8
  %122 = load i64, i64* %12, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %12, align 8
  %124 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %125 = call i32* @wpabuf_head(%struct.wpabuf* %124)
  %126 = load i64, i64* %12, align 8
  %127 = getelementptr inbounds [7 x i32*], [7 x i32*]* %9, i64 0, i64 %126
  store i32* %125, i32** %127, align 8
  %128 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %129 = call i32 @wpabuf_len(%struct.wpabuf* %128)
  %130 = sdiv i32 %129, 2
  %131 = sext i32 %130 to i64
  %132 = load i64, i64* %12, align 8
  %133 = getelementptr inbounds [7 x i64], [7 x i64]* %10, i64 0, i64 %132
  store i64 %131, i64* %133, align 8
  %134 = load i64, i64* %12, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %12, align 8
  %136 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %137 = call i32* @wpabuf_head(%struct.wpabuf* %136)
  %138 = load i64, i64* %12, align 8
  %139 = getelementptr inbounds [7 x i32*], [7 x i32*]* %9, i64 0, i64 %138
  store i32* %137, i32** %139, align 8
  %140 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %141 = call i32 @wpabuf_len(%struct.wpabuf* %140)
  %142 = sdiv i32 %141, 2
  %143 = sext i32 %142 to i64
  %144 = load i64, i64* %12, align 8
  %145 = getelementptr inbounds [7 x i64], [7 x i64]* %10, i64 0, i64 %144
  store i64 %143, i64* %145, align 8
  %146 = load i64, i64* %12, align 8
  %147 = add i64 %146, 1
  store i64 %147, i64* %12, align 8
  %148 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %149 = call i32* @wpabuf_head(%struct.wpabuf* %148)
  %150 = load i64, i64* %12, align 8
  %151 = getelementptr inbounds [7 x i32*], [7 x i32*]* %9, i64 0, i64 %150
  store i32* %149, i32** %151, align 8
  %152 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %153 = call i32 @wpabuf_len(%struct.wpabuf* %152)
  %154 = sdiv i32 %153, 2
  %155 = sext i32 %154 to i64
  %156 = load i64, i64* %12, align 8
  %157 = getelementptr inbounds [7 x i64], [7 x i64]* %10, i64 0, i64 %156
  store i64 %155, i64* %157, align 8
  %158 = load i64, i64* %12, align 8
  %159 = add i64 %158, 1
  store i64 %159, i64* %12, align 8
  %160 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %161 = icmp ne %struct.wpabuf* %160, null
  br i1 %161, label %162, label %175

162:                                              ; preds = %103
  %163 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %164 = call i32* @wpabuf_head(%struct.wpabuf* %163)
  %165 = load i64, i64* %12, align 8
  %166 = getelementptr inbounds [7 x i32*], [7 x i32*]* %9, i64 0, i64 %165
  store i32* %164, i32** %166, align 8
  %167 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %168 = call i32 @wpabuf_len(%struct.wpabuf* %167)
  %169 = sdiv i32 %168, 2
  %170 = sext i32 %169 to i64
  %171 = load i64, i64* %12, align 8
  %172 = getelementptr inbounds [7 x i64], [7 x i64]* %10, i64 0, i64 %171
  store i64 %170, i64* %172, align 8
  %173 = load i64, i64* %12, align 8
  %174 = add i64 %173, 1
  store i64 %174, i64* %12, align 8
  br label %175

175:                                              ; preds = %162, %103
  %176 = load i64, i64* %12, align 8
  %177 = getelementptr inbounds [7 x i32*], [7 x i32*]* %9, i64 0, i64 %176
  store i32* %14, i32** %177, align 8
  %178 = load i64, i64* %12, align 8
  %179 = getelementptr inbounds [7 x i64], [7 x i64]* %10, i64 0, i64 %178
  store i64 1, i64* %179, align 8
  %180 = load i64, i64* %12, align 8
  %181 = add i64 %180, 1
  store i64 %181, i64* %12, align 8
  %182 = load i32, i32* @MSG_DEBUG, align 4
  %183 = call i32 @wpa_printf(i32 %182, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %11, align 8
  br label %184

184:                                              ; preds = %197, %175
  %185 = load i64, i64* %11, align 8
  %186 = load i64, i64* %12, align 8
  %187 = icmp ult i64 %185, %186
  br i1 %187, label %188, label %200

188:                                              ; preds = %184
  %189 = load i32, i32* @MSG_DEBUG, align 4
  %190 = load i64, i64* %11, align 8
  %191 = getelementptr inbounds [7 x i32*], [7 x i32*]* %9, i64 0, i64 %190
  %192 = load i32*, i32** %191, align 8
  %193 = load i64, i64* %11, align 8
  %194 = getelementptr inbounds [7 x i64], [7 x i64]* %10, i64 0, i64 %193
  %195 = load i64, i64* %194, align 8
  %196 = call i32 @wpa_hexdump(i32 %189, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32* %192, i64 %195)
  br label %197

197:                                              ; preds = %188
  %198 = load i64, i64* %11, align 8
  %199 = add i64 %198, 1
  store i64 %199, i64* %11, align 8
  br label %184

200:                                              ; preds = %184
  %201 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %202 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %201, i32 0, i32 2
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %202, align 8
  %204 = load i64, i64* %12, align 8
  %205 = getelementptr inbounds [7 x i32*], [7 x i32*]* %9, i64 0, i64 0
  %206 = getelementptr inbounds [7 x i64], [7 x i64]* %10, i64 0, i64 0
  %207 = load i32*, i32** %4, align 8
  %208 = call i32 @dpp_hash_vector(%struct.TYPE_6__* %203, i64 %204, i32** %205, i64* %206, i32* %207)
  store i32 %208, i32* %15, align 4
  %209 = load i32, i32* %15, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %220

211:                                              ; preds = %200
  %212 = load i32, i32* @MSG_DEBUG, align 4
  %213 = load i32*, i32** %4, align 8
  %214 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %215 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %214, i32 0, i32 2
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = call i32 @wpa_hexdump(i32 %212, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %213, i64 %218)
  br label %220

220:                                              ; preds = %211, %200
  br label %221

221:                                              ; preds = %220, %102, %85, %51
  %222 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %223 = call i32 @wpabuf_free(%struct.wpabuf* %222)
  %224 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %225 = call i32 @wpabuf_free(%struct.wpabuf* %224)
  %226 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %227 = call i32 @wpabuf_free(%struct.wpabuf* %226)
  %228 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %229 = call i32 @wpabuf_free(%struct.wpabuf* %228)
  %230 = load i32, i32* %15, align 4
  ret i32 %230
}

declare dso_local %struct.wpabuf* @dpp_get_pubkey_point(i32, i32) #1

declare dso_local i32* @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i32 @dpp_hash_vector(%struct.TYPE_6__*, i64, i32**, i64*, i32*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
