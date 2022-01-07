; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_sm_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_sm_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i32, i32, i32, i32, i32, %struct.wpa_sm*, %struct.wpa_sm*, %struct.wpa_sm*, %struct.wpa_sm*, %struct.wpa_sm*, i32 }

@wpa_sm_start_preauth = common dso_local global i32 0, align 4
@wpa_sm_rekey_ptk = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_sm_deinit(%struct.wpa_sm* %0) #0 {
  %2 = alloca %struct.wpa_sm*, align 8
  store %struct.wpa_sm* %0, %struct.wpa_sm** %2, align 8
  %3 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %4 = icmp eq %struct.wpa_sm* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %37

6:                                                ; preds = %1
  %7 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %8 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %7, i32 0, i32 10
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @pmksa_cache_deinit(i32 %9)
  %11 = load i32, i32* @wpa_sm_start_preauth, align 4
  %12 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %13 = call i32 @eloop_cancel_timeout(i32 %11, %struct.wpa_sm* %12, i32* null)
  %14 = load i32, i32* @wpa_sm_rekey_ptk, align 4
  %15 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %16 = call i32 @eloop_cancel_timeout(i32 %14, %struct.wpa_sm* %15, i32* null)
  %17 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %18 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %17, i32 0, i32 9
  %19 = load %struct.wpa_sm*, %struct.wpa_sm** %18, align 8
  %20 = call i32 @os_free(%struct.wpa_sm* %19)
  %21 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %22 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %21, i32 0, i32 8
  %23 = load %struct.wpa_sm*, %struct.wpa_sm** %22, align 8
  %24 = call i32 @os_free(%struct.wpa_sm* %23)
  %25 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %26 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %25, i32 0, i32 7
  %27 = load %struct.wpa_sm*, %struct.wpa_sm** %26, align 8
  %28 = call i32 @os_free(%struct.wpa_sm* %27)
  %29 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %30 = call i32 @wpa_sm_drop_sa(%struct.wpa_sm* %29)
  %31 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %32 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %31, i32 0, i32 6
  %33 = load %struct.wpa_sm*, %struct.wpa_sm** %32, align 8
  %34 = call i32 @os_free(%struct.wpa_sm* %33)
  %35 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  %36 = call i32 @os_free(%struct.wpa_sm* %35)
  br label %37

37:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @pmksa_cache_deinit(i32) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.wpa_sm*, i32*) #1

declare dso_local i32 @os_free(%struct.wpa_sm*) #1

declare dso_local i32 @wpa_sm_drop_sa(%struct.wpa_sm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
