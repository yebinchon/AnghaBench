; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_gen_r_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_gen_r_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_authentication = type { %struct.TYPE_6__*, i32*, i32*, %struct.TYPE_5__*, %struct.TYPE_4__*, i32, i32, i64 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"DPP: R-auth hash components\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"DPP: hash component\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"DPP: R-auth\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpp_authentication*, i32*)* @dpp_gen_r_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpp_gen_r_auth(%struct.dpp_authentication* %0, i32* %1) #0 {
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
  store i64 0, i64* %12, align 8
  store i32 0, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  %16 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %17 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %13, align 8
  %21 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %22 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %21, i32 0, i32 7
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %53

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
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.wpabuf* @dpp_get_pubkey_point(i32 %51, i32 0)
  store %struct.wpabuf* %52, %struct.wpabuf** %8, align 8
  br label %81

53:                                               ; preds = %2
  %54 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %55 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.wpabuf* @dpp_get_pubkey_point(i32 %56, i32 0)
  store %struct.wpabuf* %57, %struct.wpabuf** %5, align 8
  %58 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %59 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = call %struct.wpabuf* @dpp_get_pubkey_point(i32 %60, i32 0)
  store %struct.wpabuf* %61, %struct.wpabuf** %6, align 8
  %62 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %63 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %62, i32 0, i32 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = icmp ne %struct.TYPE_4__* %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %53
  %67 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %68 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %67, i32 0, i32 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call %struct.wpabuf* @dpp_get_pubkey_point(i32 %71, i32 0)
  store %struct.wpabuf* %72, %struct.wpabuf** %7, align 8
  br label %74

73:                                               ; preds = %53
  store %struct.wpabuf* null, %struct.wpabuf** %7, align 8
  br label %74

74:                                               ; preds = %73, %66
  %75 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %76 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %75, i32 0, i32 3
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call %struct.wpabuf* @dpp_get_pubkey_point(i32 %79, i32 0)
  store %struct.wpabuf* %80, %struct.wpabuf** %8, align 8
  br label %81

81:                                               ; preds = %74, %46
  %82 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %83 = icmp ne %struct.wpabuf* %82, null
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %86 = icmp ne %struct.wpabuf* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %89 = icmp ne %struct.wpabuf* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %87, %84, %81
  br label %209

91:                                               ; preds = %87
  %92 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %93 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* %12, align 8
  %96 = getelementptr inbounds [7 x i32*], [7 x i32*]* %9, i64 0, i64 %95
  store i32* %94, i32** %96, align 8
  %97 = load i64, i64* %13, align 8
  %98 = load i64, i64* %12, align 8
  %99 = getelementptr inbounds [7 x i64], [7 x i64]* %10, i64 0, i64 %98
  store i64 %97, i64* %99, align 8
  %100 = load i64, i64* %12, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %12, align 8
  %102 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %103 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i64, i64* %12, align 8
  %106 = getelementptr inbounds [7 x i32*], [7 x i32*]* %9, i64 0, i64 %105
  store i32* %104, i32** %106, align 8
  %107 = load i64, i64* %13, align 8
  %108 = load i64, i64* %12, align 8
  %109 = getelementptr inbounds [7 x i64], [7 x i64]* %10, i64 0, i64 %108
  store i64 %107, i64* %109, align 8
  %110 = load i64, i64* %12, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %12, align 8
  %112 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %113 = call i32* @wpabuf_head(%struct.wpabuf* %112)
  %114 = load i64, i64* %12, align 8
  %115 = getelementptr inbounds [7 x i32*], [7 x i32*]* %9, i64 0, i64 %114
  store i32* %113, i32** %115, align 8
  %116 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %117 = call i32 @wpabuf_len(%struct.wpabuf* %116)
  %118 = sdiv i32 %117, 2
  %119 = sext i32 %118 to i64
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
  %136 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %137 = icmp ne %struct.wpabuf* %136, null
  br i1 %137, label %138, label %151

138:                                              ; preds = %91
  %139 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %140 = call i32* @wpabuf_head(%struct.wpabuf* %139)
  %141 = load i64, i64* %12, align 8
  %142 = getelementptr inbounds [7 x i32*], [7 x i32*]* %9, i64 0, i64 %141
  store i32* %140, i32** %142, align 8
  %143 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %144 = call i32 @wpabuf_len(%struct.wpabuf* %143)
  %145 = sdiv i32 %144, 2
  %146 = sext i32 %145 to i64
  %147 = load i64, i64* %12, align 8
  %148 = getelementptr inbounds [7 x i64], [7 x i64]* %10, i64 0, i64 %147
  store i64 %146, i64* %148, align 8
  %149 = load i64, i64* %12, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %12, align 8
  br label %151

151:                                              ; preds = %138, %91
  %152 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %153 = call i32* @wpabuf_head(%struct.wpabuf* %152)
  %154 = load i64, i64* %12, align 8
  %155 = getelementptr inbounds [7 x i32*], [7 x i32*]* %9, i64 0, i64 %154
  store i32* %153, i32** %155, align 8
  %156 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %157 = call i32 @wpabuf_len(%struct.wpabuf* %156)
  %158 = sdiv i32 %157, 2
  %159 = sext i32 %158 to i64
  %160 = load i64, i64* %12, align 8
  %161 = getelementptr inbounds [7 x i64], [7 x i64]* %10, i64 0, i64 %160
  store i64 %159, i64* %161, align 8
  %162 = load i64, i64* %12, align 8
  %163 = add i64 %162, 1
  store i64 %163, i64* %12, align 8
  %164 = load i64, i64* %12, align 8
  %165 = getelementptr inbounds [7 x i32*], [7 x i32*]* %9, i64 0, i64 %164
  store i32* %14, i32** %165, align 8
  %166 = load i64, i64* %12, align 8
  %167 = getelementptr inbounds [7 x i64], [7 x i64]* %10, i64 0, i64 %166
  store i64 1, i64* %167, align 8
  %168 = load i64, i64* %12, align 8
  %169 = add i64 %168, 1
  store i64 %169, i64* %12, align 8
  %170 = load i32, i32* @MSG_DEBUG, align 4
  %171 = call i32 @wpa_printf(i32 %170, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %11, align 8
  br label %172

172:                                              ; preds = %185, %151
  %173 = load i64, i64* %11, align 8
  %174 = load i64, i64* %12, align 8
  %175 = icmp ult i64 %173, %174
  br i1 %175, label %176, label %188

176:                                              ; preds = %172
  %177 = load i32, i32* @MSG_DEBUG, align 4
  %178 = load i64, i64* %11, align 8
  %179 = getelementptr inbounds [7 x i32*], [7 x i32*]* %9, i64 0, i64 %178
  %180 = load i32*, i32** %179, align 8
  %181 = load i64, i64* %11, align 8
  %182 = getelementptr inbounds [7 x i64], [7 x i64]* %10, i64 0, i64 %181
  %183 = load i64, i64* %182, align 8
  %184 = call i32 @wpa_hexdump(i32 %177, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32* %180, i64 %183)
  br label %185

185:                                              ; preds = %176
  %186 = load i64, i64* %11, align 8
  %187 = add i64 %186, 1
  store i64 %187, i64* %11, align 8
  br label %172

188:                                              ; preds = %172
  %189 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %190 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %189, i32 0, i32 0
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %190, align 8
  %192 = load i64, i64* %12, align 8
  %193 = getelementptr inbounds [7 x i32*], [7 x i32*]* %9, i64 0, i64 0
  %194 = getelementptr inbounds [7 x i64], [7 x i64]* %10, i64 0, i64 0
  %195 = load i32*, i32** %4, align 8
  %196 = call i32 @dpp_hash_vector(%struct.TYPE_6__* %191, i64 %192, i32** %193, i64* %194, i32* %195)
  store i32 %196, i32* %15, align 4
  %197 = load i32, i32* %15, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %208

199:                                              ; preds = %188
  %200 = load i32, i32* @MSG_DEBUG, align 4
  %201 = load i32*, i32** %4, align 8
  %202 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %203 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %202, i32 0, i32 0
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = call i32 @wpa_hexdump(i32 %200, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %201, i64 %206)
  br label %208

208:                                              ; preds = %199, %188
  br label %209

209:                                              ; preds = %208, %90
  %210 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %211 = call i32 @wpabuf_free(%struct.wpabuf* %210)
  %212 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %213 = call i32 @wpabuf_free(%struct.wpabuf* %212)
  %214 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %215 = call i32 @wpabuf_free(%struct.wpabuf* %214)
  %216 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %217 = call i32 @wpabuf_free(%struct.wpabuf* %216)
  %218 = load i32, i32* %15, align 4
  ret i32 %218
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
