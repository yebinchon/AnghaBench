; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_auth_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_auth_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_authentication = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpp_auth_deinit(%struct.dpp_authentication* %0) #0 {
  %2 = alloca %struct.dpp_authentication*, align 8
  store %struct.dpp_authentication* %0, %struct.dpp_authentication** %2, align 8
  %3 = load %struct.dpp_authentication*, %struct.dpp_authentication** %2, align 8
  %4 = icmp ne %struct.dpp_authentication* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %53

6:                                                ; preds = %1
  %7 = load %struct.dpp_authentication*, %struct.dpp_authentication** %2, align 8
  %8 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %7, i32 0, i32 13
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @dpp_configuration_free(i32 %9)
  %11 = load %struct.dpp_authentication*, %struct.dpp_authentication** %2, align 8
  %12 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %11, i32 0, i32 12
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dpp_configuration_free(i32 %13)
  %15 = load %struct.dpp_authentication*, %struct.dpp_authentication** %2, align 8
  %16 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %15, i32 0, i32 11
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @EVP_PKEY_free(i32 %17)
  %19 = load %struct.dpp_authentication*, %struct.dpp_authentication** %2, align 8
  %20 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %19, i32 0, i32 10
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @EVP_PKEY_free(i32 %21)
  %23 = load %struct.dpp_authentication*, %struct.dpp_authentication** %2, align 8
  %24 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %23, i32 0, i32 9
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @wpabuf_free(i32 %25)
  %27 = load %struct.dpp_authentication*, %struct.dpp_authentication** %2, align 8
  %28 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @wpabuf_free(i32 %29)
  %31 = load %struct.dpp_authentication*, %struct.dpp_authentication** %2, align 8
  %32 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @wpabuf_free(i32 %33)
  %35 = load %struct.dpp_authentication*, %struct.dpp_authentication** %2, align 8
  %36 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @os_free(i32 %37)
  %39 = load %struct.dpp_authentication*, %struct.dpp_authentication** %2, align 8
  %40 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @wpabuf_free(i32 %41)
  %43 = load %struct.dpp_authentication*, %struct.dpp_authentication** %2, align 8
  %44 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @wpabuf_free(i32 %45)
  %47 = load %struct.dpp_authentication*, %struct.dpp_authentication** %2, align 8
  %48 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dpp_bootstrap_info_free(i32 %49)
  %51 = load %struct.dpp_authentication*, %struct.dpp_authentication** %2, align 8
  %52 = call i32 @bin_clear_free(%struct.dpp_authentication* %51, i32 56)
  br label %53

53:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @dpp_configuration_free(i32) #1

declare dso_local i32 @EVP_PKEY_free(i32) #1

declare dso_local i32 @wpabuf_free(i32) #1

declare dso_local i32 @os_free(i32) #1

declare dso_local i32 @dpp_bootstrap_info_free(i32) #1

declare dso_local i32 @bin_clear_free(%struct.dpp_authentication*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
