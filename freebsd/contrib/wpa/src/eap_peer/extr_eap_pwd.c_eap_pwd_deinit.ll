; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_pwd.c_eap_pwd_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_pwd.c_eap_pwd_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_pwd_data = type { i32, i32, i32, %struct.TYPE_3__, i32, i32, %struct.TYPE_4__*, %struct.eap_pwd_data*, %struct.eap_pwd_data*, %struct.eap_pwd_data*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, i8*)* @eap_pwd_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_pwd_deinit(%struct.eap_sm* %0, i8* %1) #0 {
  %3 = alloca %struct.eap_sm*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.eap_pwd_data*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.eap_pwd_data*
  store %struct.eap_pwd_data* %7, %struct.eap_pwd_data** %5, align 8
  %8 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %9 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %8, i32 0, i32 15
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @crypto_bignum_deinit(i32 %10, i32 1)
  %12 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %13 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %12, i32 0, i32 14
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @crypto_bignum_deinit(i32 %14, i32 1)
  %16 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %17 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %16, i32 0, i32 13
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @crypto_bignum_deinit(i32 %18, i32 1)
  %20 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %21 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %20, i32 0, i32 12
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @crypto_bignum_deinit(i32 %22, i32 1)
  %24 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %25 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %24, i32 0, i32 11
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @crypto_ec_point_deinit(i32 %26, i32 1)
  %28 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %29 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %28, i32 0, i32 10
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @crypto_ec_point_deinit(i32 %30, i32 1)
  %32 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %33 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %32, i32 0, i32 9
  %34 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %33, align 8
  %35 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %36 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @bin_clear_free(%struct.eap_pwd_data* %34, i32 %37)
  %39 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %40 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %39, i32 0, i32 8
  %41 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %40, align 8
  %42 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %43 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @bin_clear_free(%struct.eap_pwd_data* %41, i32 %44)
  %46 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %47 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %46, i32 0, i32 7
  %48 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %47, align 8
  %49 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %50 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @bin_clear_free(%struct.eap_pwd_data* %48, i32 %51)
  %53 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %54 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %53, i32 0, i32 6
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = icmp ne %struct.TYPE_4__* %55, null
  br i1 %56, label %57, label %74

57:                                               ; preds = %2
  %58 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %59 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %58, i32 0, i32 6
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @crypto_ec_deinit(i32 %62)
  %64 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %65 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %64, i32 0, i32 6
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @crypto_ec_point_deinit(i32 %68, i32 1)
  %70 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %71 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %70, i32 0, i32 6
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = call i32 @os_free(%struct.TYPE_4__* %72)
  br label %74

74:                                               ; preds = %57, %2
  %75 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %76 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @wpabuf_free(i32 %77)
  %79 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %80 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @wpabuf_free(i32 %81)
  %83 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %84 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = call i32 @os_free(%struct.TYPE_4__* %86)
  %88 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %89 = call i32 @bin_clear_free(%struct.eap_pwd_data* %88, i32 88)
  ret void
}

declare dso_local i32 @crypto_bignum_deinit(i32, i32) #1

declare dso_local i32 @crypto_ec_point_deinit(i32, i32) #1

declare dso_local i32 @bin_clear_free(%struct.eap_pwd_data*, i32) #1

declare dso_local i32 @crypto_ec_deinit(i32) #1

declare dso_local i32 @os_free(%struct.TYPE_4__*) #1

declare dso_local i32 @wpabuf_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
