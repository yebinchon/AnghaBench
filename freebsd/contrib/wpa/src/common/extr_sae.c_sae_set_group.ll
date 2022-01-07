; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_set_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_set_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sae_data = type { i32, %struct.sae_temporary_data* }
%struct.sae_temporary_data = type { i64, i64, i32*, i32*, %struct.TYPE_2__*, i32*, i32*, i64 }
%struct.TYPE_2__ = type { i64, i64, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"SAE: Reject unsuitable group %d\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"SAE: Selecting supported ECC group %d\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"SAE: Selecting supported FFC group %d\00", align 1
@SAE_MAX_PRIME_LEN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [50 x i8] c"SAE: Group %d not supported by the crypto library\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sae_set_group(%struct.sae_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sae_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sae_temporary_data*, align 8
  store %struct.sae_data* %0, %struct.sae_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @dragonfly_suitable_group(i32 %7, i32 0)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @MSG_DEBUG, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @wpa_printf(i32 %11, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i32 -1, i32* %3, align 4
  br label %158

14:                                               ; preds = %2
  %15 = load %struct.sae_data*, %struct.sae_data** %4, align 8
  %16 = call i32 @sae_clear_data(%struct.sae_data* %15)
  %17 = call %struct.sae_temporary_data* @os_zalloc(i32 64)
  %18 = load %struct.sae_data*, %struct.sae_data** %4, align 8
  %19 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %18, i32 0, i32 1
  store %struct.sae_temporary_data* %17, %struct.sae_temporary_data** %19, align 8
  store %struct.sae_temporary_data* %17, %struct.sae_temporary_data** %6, align 8
  %20 = load %struct.sae_temporary_data*, %struct.sae_temporary_data** %6, align 8
  %21 = icmp eq %struct.sae_temporary_data* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 -1, i32* %3, align 4
  br label %158

23:                                               ; preds = %14
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @crypto_ec_init(i32 %24)
  %26 = load %struct.sae_temporary_data*, %struct.sae_temporary_data** %6, align 8
  %27 = getelementptr inbounds %struct.sae_temporary_data, %struct.sae_temporary_data* %26, i32 0, i32 7
  store i64 %25, i64* %27, align 8
  %28 = load %struct.sae_temporary_data*, %struct.sae_temporary_data** %6, align 8
  %29 = getelementptr inbounds %struct.sae_temporary_data, %struct.sae_temporary_data* %28, i32 0, i32 7
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %63

32:                                               ; preds = %23
  %33 = load i32, i32* @MSG_DEBUG, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @wpa_printf(i32 %33, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.sae_data*, %struct.sae_data** %4, align 8
  %38 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.sae_temporary_data*, %struct.sae_temporary_data** %6, align 8
  %40 = getelementptr inbounds %struct.sae_temporary_data, %struct.sae_temporary_data* %39, i32 0, i32 7
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @crypto_ec_prime_len(i64 %41)
  %43 = load %struct.sae_temporary_data*, %struct.sae_temporary_data** %6, align 8
  %44 = getelementptr inbounds %struct.sae_temporary_data, %struct.sae_temporary_data* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.sae_temporary_data*, %struct.sae_temporary_data** %6, align 8
  %46 = getelementptr inbounds %struct.sae_temporary_data, %struct.sae_temporary_data* %45, i32 0, i32 7
  %47 = load i64, i64* %46, align 8
  %48 = call i32* @crypto_ec_get_prime(i64 %47)
  %49 = load %struct.sae_temporary_data*, %struct.sae_temporary_data** %6, align 8
  %50 = getelementptr inbounds %struct.sae_temporary_data, %struct.sae_temporary_data* %49, i32 0, i32 6
  store i32* %48, i32** %50, align 8
  %51 = load %struct.sae_temporary_data*, %struct.sae_temporary_data** %6, align 8
  %52 = getelementptr inbounds %struct.sae_temporary_data, %struct.sae_temporary_data* %51, i32 0, i32 7
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @crypto_ec_order_len(i64 %53)
  %55 = load %struct.sae_temporary_data*, %struct.sae_temporary_data** %6, align 8
  %56 = getelementptr inbounds %struct.sae_temporary_data, %struct.sae_temporary_data* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  %57 = load %struct.sae_temporary_data*, %struct.sae_temporary_data** %6, align 8
  %58 = getelementptr inbounds %struct.sae_temporary_data, %struct.sae_temporary_data* %57, i32 0, i32 7
  %59 = load i64, i64* %58, align 8
  %60 = call i32* @crypto_ec_get_order(i64 %59)
  %61 = load %struct.sae_temporary_data*, %struct.sae_temporary_data** %6, align 8
  %62 = getelementptr inbounds %struct.sae_temporary_data, %struct.sae_temporary_data* %61, i32 0, i32 3
  store i32* %60, i32** %62, align 8
  store i32 0, i32* %3, align 4
  br label %158

63:                                               ; preds = %23
  %64 = load i32, i32* %5, align 4
  %65 = call %struct.TYPE_2__* @dh_groups_get(i32 %64)
  %66 = load %struct.sae_temporary_data*, %struct.sae_temporary_data** %6, align 8
  %67 = getelementptr inbounds %struct.sae_temporary_data, %struct.sae_temporary_data* %66, i32 0, i32 4
  store %struct.TYPE_2__* %65, %struct.TYPE_2__** %67, align 8
  %68 = load %struct.sae_temporary_data*, %struct.sae_temporary_data** %6, align 8
  %69 = getelementptr inbounds %struct.sae_temporary_data, %struct.sae_temporary_data* %68, i32 0, i32 4
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = icmp ne %struct.TYPE_2__* %70, null
  br i1 %71, label %72, label %154

72:                                               ; preds = %63
  %73 = load i32, i32* @MSG_DEBUG, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @wpa_printf(i32 %73, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.sae_data*, %struct.sae_data** %4, align 8
  %78 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.sae_temporary_data*, %struct.sae_temporary_data** %6, align 8
  %80 = getelementptr inbounds %struct.sae_temporary_data, %struct.sae_temporary_data* %79, i32 0, i32 4
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.sae_temporary_data*, %struct.sae_temporary_data** %6, align 8
  %85 = getelementptr inbounds %struct.sae_temporary_data, %struct.sae_temporary_data* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load %struct.sae_temporary_data*, %struct.sae_temporary_data** %6, align 8
  %87 = getelementptr inbounds %struct.sae_temporary_data, %struct.sae_temporary_data* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @SAE_MAX_PRIME_LEN, align 8
  %90 = icmp sgt i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %72
  %92 = load %struct.sae_data*, %struct.sae_data** %4, align 8
  %93 = call i32 @sae_clear_data(%struct.sae_data* %92)
  store i32 -1, i32* %3, align 4
  br label %158

94:                                               ; preds = %72
  %95 = load %struct.sae_temporary_data*, %struct.sae_temporary_data** %6, align 8
  %96 = getelementptr inbounds %struct.sae_temporary_data, %struct.sae_temporary_data* %95, i32 0, i32 4
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.sae_temporary_data*, %struct.sae_temporary_data** %6, align 8
  %101 = getelementptr inbounds %struct.sae_temporary_data, %struct.sae_temporary_data* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i8* @crypto_bignum_init_set(i32 %99, i64 %102)
  %104 = bitcast i8* %103 to i32*
  %105 = load %struct.sae_temporary_data*, %struct.sae_temporary_data** %6, align 8
  %106 = getelementptr inbounds %struct.sae_temporary_data, %struct.sae_temporary_data* %105, i32 0, i32 5
  store i32* %104, i32** %106, align 8
  %107 = load %struct.sae_temporary_data*, %struct.sae_temporary_data** %6, align 8
  %108 = getelementptr inbounds %struct.sae_temporary_data, %struct.sae_temporary_data* %107, i32 0, i32 5
  %109 = load i32*, i32** %108, align 8
  %110 = icmp eq i32* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %94
  %112 = load %struct.sae_data*, %struct.sae_data** %4, align 8
  %113 = call i32 @sae_clear_data(%struct.sae_data* %112)
  store i32 -1, i32* %3, align 4
  br label %158

114:                                              ; preds = %94
  %115 = load %struct.sae_temporary_data*, %struct.sae_temporary_data** %6, align 8
  %116 = getelementptr inbounds %struct.sae_temporary_data, %struct.sae_temporary_data* %115, i32 0, i32 5
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.sae_temporary_data*, %struct.sae_temporary_data** %6, align 8
  %119 = getelementptr inbounds %struct.sae_temporary_data, %struct.sae_temporary_data* %118, i32 0, i32 6
  store i32* %117, i32** %119, align 8
  %120 = load %struct.sae_temporary_data*, %struct.sae_temporary_data** %6, align 8
  %121 = getelementptr inbounds %struct.sae_temporary_data, %struct.sae_temporary_data* %120, i32 0, i32 4
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.sae_temporary_data*, %struct.sae_temporary_data** %6, align 8
  %126 = getelementptr inbounds %struct.sae_temporary_data, %struct.sae_temporary_data* %125, i32 0, i32 1
  store i64 %124, i64* %126, align 8
  %127 = load %struct.sae_temporary_data*, %struct.sae_temporary_data** %6, align 8
  %128 = getelementptr inbounds %struct.sae_temporary_data, %struct.sae_temporary_data* %127, i32 0, i32 4
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.sae_temporary_data*, %struct.sae_temporary_data** %6, align 8
  %133 = getelementptr inbounds %struct.sae_temporary_data, %struct.sae_temporary_data* %132, i32 0, i32 4
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = call i8* @crypto_bignum_init_set(i32 %131, i64 %136)
  %138 = bitcast i8* %137 to i32*
  %139 = load %struct.sae_temporary_data*, %struct.sae_temporary_data** %6, align 8
  %140 = getelementptr inbounds %struct.sae_temporary_data, %struct.sae_temporary_data* %139, i32 0, i32 2
  store i32* %138, i32** %140, align 8
  %141 = load %struct.sae_temporary_data*, %struct.sae_temporary_data** %6, align 8
  %142 = getelementptr inbounds %struct.sae_temporary_data, %struct.sae_temporary_data* %141, i32 0, i32 2
  %143 = load i32*, i32** %142, align 8
  %144 = icmp eq i32* %143, null
  br i1 %144, label %145, label %148

145:                                              ; preds = %114
  %146 = load %struct.sae_data*, %struct.sae_data** %4, align 8
  %147 = call i32 @sae_clear_data(%struct.sae_data* %146)
  store i32 -1, i32* %3, align 4
  br label %158

148:                                              ; preds = %114
  %149 = load %struct.sae_temporary_data*, %struct.sae_temporary_data** %6, align 8
  %150 = getelementptr inbounds %struct.sae_temporary_data, %struct.sae_temporary_data* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = load %struct.sae_temporary_data*, %struct.sae_temporary_data** %6, align 8
  %153 = getelementptr inbounds %struct.sae_temporary_data, %struct.sae_temporary_data* %152, i32 0, i32 3
  store i32* %151, i32** %153, align 8
  store i32 0, i32* %3, align 4
  br label %158

154:                                              ; preds = %63
  %155 = load i32, i32* @MSG_DEBUG, align 4
  %156 = load i32, i32* %5, align 4
  %157 = call i32 @wpa_printf(i32 %155, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %156)
  store i32 -1, i32* %3, align 4
  br label %158

158:                                              ; preds = %154, %148, %145, %111, %91, %32, %22, %10
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32 @dragonfly_suitable_group(i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @sae_clear_data(%struct.sae_data*) #1

declare dso_local %struct.sae_temporary_data* @os_zalloc(i32) #1

declare dso_local i64 @crypto_ec_init(i32) #1

declare dso_local i64 @crypto_ec_prime_len(i64) #1

declare dso_local i32* @crypto_ec_get_prime(i64) #1

declare dso_local i64 @crypto_ec_order_len(i64) #1

declare dso_local i32* @crypto_ec_get_order(i64) #1

declare dso_local %struct.TYPE_2__* @dh_groups_get(i32) #1

declare dso_local i8* @crypto_bignum_init_set(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
