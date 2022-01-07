; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec2_smpl.c_ec_GF2m_simple_ladder_pre.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec2_smpl.c_ec_GF2m_simple_ladder_pre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__*, i32, i32 }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_17__*, i32, i32, i32, i32*)*, i32 (%struct.TYPE_17__*, i32, i32, i32*)*, i32 (%struct.TYPE_17__*, i32, i32, i32*)* }
%struct.TYPE_16__ = type { i64, i32, i32, i32 }

@BN_RAND_TOP_ANY = common dso_local global i32 0, align 4
@BN_RAND_BOTTOM_ANY = common dso_local global i32 0, align 4
@EC_F_EC_GF2M_SIMPLE_LADDER_PRE = common dso_local global i32 0, align 4
@ERR_R_BN_LIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__*, i32*)* @ec_GF2m_simple_ladder_pre to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ec_GF2m_simple_ladder_pre(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, %struct.TYPE_16__* %2, %struct.TYPE_16__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %9, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %221

17:                                               ; preds = %5
  br label %18

18:                                               ; preds = %36, %17
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @BN_num_bits(i32 %24)
  %26 = sub nsw i64 %25, 1
  %27 = load i32, i32* @BN_RAND_TOP_ANY, align 4
  %28 = load i32, i32* @BN_RAND_BOTTOM_ANY, align 4
  %29 = call i32 @BN_priv_rand(i32 %21, i64 %26, i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %18
  %32 = load i32, i32* @EC_F_EC_GF2M_SIMPLE_LADDER_PRE, align 4
  %33 = load i32, i32* @ERR_R_BN_LIB, align 4
  %34 = call i32 @ECerr(i32 %32, i32 %33)
  store i32 0, i32* %6, align 4
  br label %221

35:                                               ; preds = %18
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @BN_is_zero(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %18, label %42

42:                                               ; preds = %36
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 2
  %47 = load i32 (%struct.TYPE_17__*, i32, i32, i32*)*, i32 (%struct.TYPE_17__*, i32, i32, i32*)** %46, align 8
  %48 = icmp ne i32 (%struct.TYPE_17__*, i32, i32, i32*)* %47, null
  br i1 %48, label %49, label %65

49:                                               ; preds = %42
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 2
  %54 = load i32 (%struct.TYPE_17__*, i32, i32, i32*)*, i32 (%struct.TYPE_17__*, i32, i32, i32*)** %53, align 8
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = call i32 %54(%struct.TYPE_17__* %55, i32 %58, i32 %61, i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %84

65:                                               ; preds = %49, %42
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load i32 (%struct.TYPE_17__*, i32, i32, i32, i32*)*, i32 (%struct.TYPE_17__*, i32, i32, i32, i32*)** %69, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load i32*, i32** %11, align 8
  %82 = call i32 %70(%struct.TYPE_17__* %71, i32 %74, i32 %77, i32 %80, i32* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %65, %49
  store i32 0, i32* %6, align 4
  br label %221

85:                                               ; preds = %65
  br label %86

86:                                               ; preds = %104, %85
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @BN_num_bits(i32 %92)
  %94 = sub nsw i64 %93, 1
  %95 = load i32, i32* @BN_RAND_TOP_ANY, align 4
  %96 = load i32, i32* @BN_RAND_BOTTOM_ANY, align 4
  %97 = call i32 @BN_priv_rand(i32 %89, i64 %94, i32 %95, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %86
  %100 = load i32, i32* @EC_F_EC_GF2M_SIMPLE_LADDER_PRE, align 4
  %101 = load i32, i32* @ERR_R_BN_LIB, align 4
  %102 = call i32 @ECerr(i32 %100, i32 %101)
  store i32 0, i32* %6, align 4
  br label %221

103:                                              ; preds = %86
  br label %104

104:                                              ; preds = %103
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @BN_is_zero(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %86, label %110

110:                                              ; preds = %104
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 2
  %115 = load i32 (%struct.TYPE_17__*, i32, i32, i32*)*, i32 (%struct.TYPE_17__*, i32, i32, i32*)** %114, align 8
  %116 = icmp ne i32 (%struct.TYPE_17__*, i32, i32, i32*)* %115, null
  br i1 %116, label %117, label %133

117:                                              ; preds = %110
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 2
  %122 = load i32 (%struct.TYPE_17__*, i32, i32, i32*)*, i32 (%struct.TYPE_17__*, i32, i32, i32*)** %121, align 8
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load i32*, i32** %11, align 8
  %131 = call i32 %122(%struct.TYPE_17__* %123, i32 %126, i32 %129, i32* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %215

133:                                              ; preds = %117, %110
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 1
  %138 = load i32 (%struct.TYPE_17__*, i32, i32, i32*)*, i32 (%struct.TYPE_17__*, i32, i32, i32*)** %137, align 8
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = load i32*, i32** %11, align 8
  %147 = call i32 %138(%struct.TYPE_17__* %139, i32 %142, i32 %145, i32* %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %215

149:                                              ; preds = %133
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 1
  %154 = load i32 (%struct.TYPE_17__*, i32, i32, i32*)*, i32 (%struct.TYPE_17__*, i32, i32, i32*)** %153, align 8
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = load i32*, i32** %11, align 8
  %163 = call i32 %154(%struct.TYPE_17__* %155, i32 %158, i32 %161, i32* %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %215

165:                                              ; preds = %149
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @BN_GF2m_add(i32 %168, i32 %171, i32 %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %215

177:                                              ; preds = %165
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 0
  %182 = load i32 (%struct.TYPE_17__*, i32, i32, i32, i32*)*, i32 (%struct.TYPE_17__*, i32, i32, i32, i32*)** %181, align 8
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = load i32*, i32** %11, align 8
  %194 = call i32 %182(%struct.TYPE_17__* %183, i32 %186, i32 %189, i32 %192, i32* %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %215

196:                                              ; preds = %177
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 0
  %201 = load i32 (%struct.TYPE_17__*, i32, i32, i32, i32*)*, i32 (%struct.TYPE_17__*, i32, i32, i32, i32*)** %200, align 8
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = load i32*, i32** %11, align 8
  %213 = call i32 %201(%struct.TYPE_17__* %202, i32 %205, i32 %208, i32 %211, i32* %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %216, label %215

215:                                              ; preds = %196, %177, %165, %149, %133, %117
  store i32 0, i32* %6, align 4
  br label %221

216:                                              ; preds = %196
  %217 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 0
  store i64 0, i64* %218, align 8
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 0
  store i64 0, i64* %220, align 8
  store i32 1, i32* %6, align 4
  br label %221

221:                                              ; preds = %216, %215, %99, %84, %31, %16
  %222 = load i32, i32* %6, align 4
  ret i32 %222
}

declare dso_local i32 @BN_priv_rand(i32, i64, i32, i32) #1

declare dso_local i64 @BN_num_bits(i32) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i64 @BN_is_zero(i32) #1

declare dso_local i32 @BN_GF2m_add(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
