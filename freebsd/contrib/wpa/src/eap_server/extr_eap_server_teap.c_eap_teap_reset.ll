; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_teap.c_eap_teap_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_teap.c_eap_teap_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_teap_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.eap_sm*, i64)* }

@EAP_TEAP_SIMCK_LEN = common dso_local global i32 0, align 4
@EAP_TEAP_CMK_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, i8*)* @eap_teap_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_teap_reset(%struct.eap_sm* %0, i8* %1) #0 {
  %3 = alloca %struct.eap_sm*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.eap_teap_data*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.eap_teap_data*
  store %struct.eap_teap_data* %7, %struct.eap_teap_data** %5, align 8
  %8 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %9 = icmp ne %struct.eap_teap_data* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %87

11:                                               ; preds = %2
  %12 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %13 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %12, i32 0, i32 12
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %11
  %17 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %18 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %17, i32 0, i32 13
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = icmp ne %struct.TYPE_2__* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %16
  %22 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %23 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %22, i32 0, i32 13
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.eap_sm*, i64)*, i32 (%struct.eap_sm*, i64)** %25, align 8
  %27 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %28 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %29 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %28, i32 0, i32 12
  %30 = load i64, i64* %29, align 8
  %31 = call i32 %26(%struct.eap_sm* %27, i64 %30)
  br label %32

32:                                               ; preds = %21, %16, %11
  %33 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %34 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %35 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %34, i32 0, i32 11
  %36 = call i32 @eap_server_tls_ssl_deinit(%struct.eap_sm* %33, i32* %35)
  %37 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %38 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %37, i32 0, i32 10
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @os_free(i32 %39)
  %41 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %42 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %41, i32 0, i32 9
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @os_free(i32 %43)
  %45 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %46 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %45, i32 0, i32 8
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @wpabuf_free(i32 %47)
  %49 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %50 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %49, i32 0, i32 7
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @wpabuf_free(i32 %51)
  %53 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %54 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @wpabuf_free(i32 %55)
  %57 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %58 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @os_free(i32 %59)
  %61 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %62 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @EAP_TEAP_SIMCK_LEN, align 4
  %65 = call i32 @forced_memzero(i32 %63, i32 %64)
  %66 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %67 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @EAP_TEAP_SIMCK_LEN, align 4
  %70 = call i32 @forced_memzero(i32 %68, i32 %69)
  %71 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %72 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @EAP_TEAP_CMK_LEN, align 4
  %75 = call i32 @forced_memzero(i32 %73, i32 %74)
  %76 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %77 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @EAP_TEAP_CMK_LEN, align 4
  %80 = call i32 @forced_memzero(i32 %78, i32 %79)
  %81 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %82 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @forced_memzero(i32 %83, i32 4)
  %85 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %86 = call i32 @bin_clear_free(%struct.eap_teap_data* %85, i32 64)
  br label %87

87:                                               ; preds = %32, %10
  ret void
}

declare dso_local i32 @eap_server_tls_ssl_deinit(%struct.eap_sm*, i32*) #1

declare dso_local i32 @os_free(i32) #1

declare dso_local i32 @wpabuf_free(i32) #1

declare dso_local i32 @forced_memzero(i32, i32) #1

declare dso_local i32 @bin_clear_free(%struct.eap_teap_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
