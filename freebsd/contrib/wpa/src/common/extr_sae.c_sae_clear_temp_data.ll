; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_clear_temp_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_clear_temp_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sae_data = type { %struct.sae_temporary_data* }
%struct.sae_temporary_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sae_clear_temp_data(%struct.sae_data* %0) #0 {
  %2 = alloca %struct.sae_data*, align 8
  %3 = alloca %struct.sae_temporary_data*, align 8
  store %struct.sae_data* %0, %struct.sae_data** %2, align 8
  %4 = load %struct.sae_data*, %struct.sae_data** %2, align 8
  %5 = icmp eq %struct.sae_data* %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load %struct.sae_data*, %struct.sae_data** %2, align 8
  %8 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %7, i32 0, i32 0
  %9 = load %struct.sae_temporary_data*, %struct.sae_temporary_data** %8, align 8
  %10 = icmp eq %struct.sae_temporary_data* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6, %1
  br label %72

12:                                               ; preds = %6
  %13 = load %struct.sae_data*, %struct.sae_data** %2, align 8
  %14 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %13, i32 0, i32 0
  %15 = load %struct.sae_temporary_data*, %struct.sae_temporary_data** %14, align 8
  store %struct.sae_temporary_data* %15, %struct.sae_temporary_data** %3, align 8
  %16 = load %struct.sae_temporary_data*, %struct.sae_temporary_data** %3, align 8
  %17 = getelementptr inbounds %struct.sae_temporary_data, %struct.sae_temporary_data* %16, i32 0, i32 12
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @crypto_ec_deinit(i32 %18)
  %20 = load %struct.sae_temporary_data*, %struct.sae_temporary_data** %3, align 8
  %21 = getelementptr inbounds %struct.sae_temporary_data, %struct.sae_temporary_data* %20, i32 0, i32 11
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @crypto_bignum_deinit(i32 %22, i32 0)
  %24 = load %struct.sae_temporary_data*, %struct.sae_temporary_data** %3, align 8
  %25 = getelementptr inbounds %struct.sae_temporary_data, %struct.sae_temporary_data* %24, i32 0, i32 10
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @crypto_bignum_deinit(i32 %26, i32 0)
  %28 = load %struct.sae_temporary_data*, %struct.sae_temporary_data** %3, align 8
  %29 = getelementptr inbounds %struct.sae_temporary_data, %struct.sae_temporary_data* %28, i32 0, i32 9
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @crypto_bignum_deinit(i32 %30, i32 1)
  %32 = load %struct.sae_temporary_data*, %struct.sae_temporary_data** %3, align 8
  %33 = getelementptr inbounds %struct.sae_temporary_data, %struct.sae_temporary_data* %32, i32 0, i32 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @crypto_bignum_deinit(i32 %34, i32 1)
  %36 = load %struct.sae_temporary_data*, %struct.sae_temporary_data** %3, align 8
  %37 = getelementptr inbounds %struct.sae_temporary_data, %struct.sae_temporary_data* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @crypto_bignum_deinit(i32 %38, i32 0)
  %40 = load %struct.sae_temporary_data*, %struct.sae_temporary_data** %3, align 8
  %41 = getelementptr inbounds %struct.sae_temporary_data, %struct.sae_temporary_data* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @crypto_bignum_deinit(i32 %42, i32 0)
  %44 = load %struct.sae_temporary_data*, %struct.sae_temporary_data** %3, align 8
  %45 = getelementptr inbounds %struct.sae_temporary_data, %struct.sae_temporary_data* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @crypto_bignum_deinit(i32 %46, i32 0)
  %48 = load %struct.sae_temporary_data*, %struct.sae_temporary_data** %3, align 8
  %49 = getelementptr inbounds %struct.sae_temporary_data, %struct.sae_temporary_data* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @crypto_ec_point_deinit(i32 %50, i32 1)
  %52 = load %struct.sae_temporary_data*, %struct.sae_temporary_data** %3, align 8
  %53 = getelementptr inbounds %struct.sae_temporary_data, %struct.sae_temporary_data* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @crypto_ec_point_deinit(i32 %54, i32 0)
  %56 = load %struct.sae_temporary_data*, %struct.sae_temporary_data** %3, align 8
  %57 = getelementptr inbounds %struct.sae_temporary_data, %struct.sae_temporary_data* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @crypto_ec_point_deinit(i32 %58, i32 0)
  %60 = load %struct.sae_temporary_data*, %struct.sae_temporary_data** %3, align 8
  %61 = getelementptr inbounds %struct.sae_temporary_data, %struct.sae_temporary_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @wpabuf_free(i32 %62)
  %64 = load %struct.sae_temporary_data*, %struct.sae_temporary_data** %3, align 8
  %65 = getelementptr inbounds %struct.sae_temporary_data, %struct.sae_temporary_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @os_free(i32 %66)
  %68 = load %struct.sae_temporary_data*, %struct.sae_temporary_data** %3, align 8
  %69 = call i32 @bin_clear_free(%struct.sae_temporary_data* %68, i32 52)
  %70 = load %struct.sae_data*, %struct.sae_data** %2, align 8
  %71 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %70, i32 0, i32 0
  store %struct.sae_temporary_data* null, %struct.sae_temporary_data** %71, align 8
  br label %72

72:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @crypto_ec_deinit(i32) #1

declare dso_local i32 @crypto_bignum_deinit(i32, i32) #1

declare dso_local i32 @crypto_ec_point_deinit(i32, i32) #1

declare dso_local i32 @wpabuf_free(i32) #1

declare dso_local i32 @os_free(i32) #1

declare dso_local i32 @bin_clear_free(%struct.sae_temporary_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
