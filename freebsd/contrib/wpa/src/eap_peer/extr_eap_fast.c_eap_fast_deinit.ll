; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_fast_data = type { i32, i32, %struct.eap_fast_data*, i32, i32, %struct.eap_fast_pac*, i32, %struct.eap_fast_data*, %struct.eap_fast_data*, i64, %struct.TYPE_2__* }
%struct.eap_fast_pac = type { %struct.eap_fast_pac* }
%struct.TYPE_2__ = type { i32 (%struct.eap_sm*, i64)* }

@EAP_FAST_KEY_LEN = common dso_local global i32 0, align 4
@EAP_EMSK_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, i8*)* @eap_fast_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_fast_deinit(%struct.eap_sm* %0, i8* %1) #0 {
  %3 = alloca %struct.eap_sm*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.eap_fast_data*, align 8
  %6 = alloca %struct.eap_fast_pac*, align 8
  %7 = alloca %struct.eap_fast_pac*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.eap_fast_data*
  store %struct.eap_fast_data* %9, %struct.eap_fast_data** %5, align 8
  %10 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %11 = icmp eq %struct.eap_fast_data* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %85

13:                                               ; preds = %2
  %14 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %15 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %14, i32 0, i32 9
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %13
  %19 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %20 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %19, i32 0, i32 10
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %25 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %24, i32 0, i32 10
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.eap_sm*, i64)*, i32 (%struct.eap_sm*, i64)** %27, align 8
  %29 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %30 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %31 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %30, i32 0, i32 9
  %32 = load i64, i64* %31, align 8
  %33 = call i32 %28(%struct.eap_sm* %29, i64 %32)
  br label %34

34:                                               ; preds = %23, %18, %13
  %35 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %36 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %35, i32 0, i32 8
  %37 = load %struct.eap_fast_data*, %struct.eap_fast_data** %36, align 8
  %38 = call i32 @os_free(%struct.eap_fast_data* %37)
  %39 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %40 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %39, i32 0, i32 7
  %41 = load %struct.eap_fast_data*, %struct.eap_fast_data** %40, align 8
  %42 = call i32 @os_free(%struct.eap_fast_data* %41)
  %43 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %44 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %45 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %44, i32 0, i32 6
  %46 = call i32 @eap_peer_tls_ssl_deinit(%struct.eap_sm* %43, i32* %45)
  %47 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %48 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %47, i32 0, i32 5
  %49 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %48, align 8
  store %struct.eap_fast_pac* %49, %struct.eap_fast_pac** %6, align 8
  store %struct.eap_fast_pac* null, %struct.eap_fast_pac** %7, align 8
  br label %50

50:                                               ; preds = %53, %34
  %51 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %6, align 8
  %52 = icmp ne %struct.eap_fast_pac* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %6, align 8
  store %struct.eap_fast_pac* %54, %struct.eap_fast_pac** %7, align 8
  %55 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %6, align 8
  %56 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %55, i32 0, i32 0
  %57 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %56, align 8
  store %struct.eap_fast_pac* %57, %struct.eap_fast_pac** %6, align 8
  %58 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %7, align 8
  %59 = call i32 @eap_fast_free_pac(%struct.eap_fast_pac* %58)
  br label %50

60:                                               ; preds = %50
  %61 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %62 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @EAP_FAST_KEY_LEN, align 4
  %65 = call i32 @os_memset(i32 %63, i32 0, i32 %64)
  %66 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %67 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @EAP_EMSK_LEN, align 4
  %70 = call i32 @os_memset(i32 %68, i32 0, i32 %69)
  %71 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %72 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %71, i32 0, i32 2
  %73 = load %struct.eap_fast_data*, %struct.eap_fast_data** %72, align 8
  %74 = call i32 @os_free(%struct.eap_fast_data* %73)
  %75 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %76 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @wpabuf_clear_free(i32 %77)
  %79 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %80 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @wpabuf_clear_free(i32 %81)
  %83 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %84 = call i32 @os_free(%struct.eap_fast_data* %83)
  br label %85

85:                                               ; preds = %60, %12
  ret void
}

declare dso_local i32 @os_free(%struct.eap_fast_data*) #1

declare dso_local i32 @eap_peer_tls_ssl_deinit(%struct.eap_sm*, i32*) #1

declare dso_local i32 @eap_fast_free_pac(%struct.eap_fast_pac*) #1

declare dso_local i32 @os_memset(i32, i32, i32) #1

declare dso_local i32 @wpabuf_clear_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
