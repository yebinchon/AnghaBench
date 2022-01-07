; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_pwd.c_eap_pwd_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_pwd.c_eap_pwd_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_pwd_data = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, %struct.eap_pwd_data*, %struct.eap_pwd_data*, %struct.eap_pwd_data*, %struct.eap_pwd_data*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, i8*)* @eap_pwd_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_pwd_reset(%struct.eap_sm* %0, i8* %1) #0 {
  %3 = alloca %struct.eap_sm*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.eap_pwd_data*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.eap_pwd_data*
  store %struct.eap_pwd_data* %7, %struct.eap_pwd_data** %5, align 8
  %8 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %9 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %8, i32 0, i32 16
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @crypto_bignum_deinit(i32 %10, i32 1)
  %12 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %13 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %12, i32 0, i32 15
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @crypto_bignum_deinit(i32 %14, i32 1)
  %16 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %17 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %16, i32 0, i32 14
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @crypto_bignum_deinit(i32 %18, i32 1)
  %20 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %21 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %20, i32 0, i32 13
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @crypto_bignum_deinit(i32 %22, i32 1)
  %24 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %25 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %24, i32 0, i32 12
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @crypto_ec_point_deinit(i32 %26, i32 1)
  %28 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %29 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %28, i32 0, i32 11
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @crypto_ec_point_deinit(i32 %30, i32 1)
  %32 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %33 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %32, i32 0, i32 10
  %34 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %33, align 8
  %35 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %36 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @bin_clear_free(%struct.eap_pwd_data* %34, i32 %37)
  %39 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %40 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %39, i32 0, i32 9
  %41 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %40, align 8
  %42 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %43 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @bin_clear_free(%struct.eap_pwd_data* %41, i32 %44)
  %46 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %47 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %46, i32 0, i32 8
  %48 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %47, align 8
  %49 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %50 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @bin_clear_free(%struct.eap_pwd_data* %48, i32 %51)
  %53 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %54 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %53, i32 0, i32 7
  %55 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %54, align 8
  %56 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %57 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @bin_clear_free(%struct.eap_pwd_data* %55, i32 %58)
  %60 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %61 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %60, i32 0, i32 6
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = icmp ne %struct.TYPE_2__* %62, null
  br i1 %63, label %64, label %81

64:                                               ; preds = %2
  %65 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %66 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %65, i32 0, i32 6
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @crypto_ec_deinit(i32 %69)
  %71 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %72 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %71, i32 0, i32 6
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @crypto_ec_point_deinit(i32 %75, i32 1)
  %77 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %78 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %77, i32 0, i32 6
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = call i32 @os_free(%struct.TYPE_2__* %79)
  br label %81

81:                                               ; preds = %64, %2
  %82 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %83 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @wpabuf_free(i32 %84)
  %86 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %87 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @wpabuf_free(i32 %88)
  %90 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %91 = call i32 @bin_clear_free(%struct.eap_pwd_data* %90, i32 88)
  ret void
}

declare dso_local i32 @crypto_bignum_deinit(i32, i32) #1

declare dso_local i32 @crypto_ec_point_deinit(i32, i32) #1

declare dso_local i32 @bin_clear_free(%struct.eap_pwd_data*, i32) #1

declare dso_local i32 @crypto_ec_deinit(i32) #1

declare dso_local i32 @os_free(%struct.TYPE_2__*) #1

declare dso_local i32 @wpabuf_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
