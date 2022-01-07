; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_sm_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_sm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i32, i32, i32, i32, %struct.wpa_sm_ctx*, i32*, i32 }
%struct.wpa_sm_ctx = type { i32 }

@wpa_sm_pmksa_free_cb = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"RSN: PMKSA cache initialization failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpa_sm* @wpa_sm_init(%struct.wpa_sm_ctx* %0) #0 {
  %2 = alloca %struct.wpa_sm*, align 8
  %3 = alloca %struct.wpa_sm_ctx*, align 8
  %4 = alloca %struct.wpa_sm*, align 8
  store %struct.wpa_sm_ctx* %0, %struct.wpa_sm_ctx** %3, align 8
  %5 = call %struct.wpa_sm* @os_zalloc(i32 40)
  store %struct.wpa_sm* %5, %struct.wpa_sm** %4, align 8
  %6 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %7 = icmp eq %struct.wpa_sm* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.wpa_sm* null, %struct.wpa_sm** %2, align 8
  br label %46

9:                                                ; preds = %1
  %10 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %11 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %10, i32 0, i32 6
  %12 = call i32 @dl_list_init(i32* %11)
  %13 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %14 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.wpa_sm_ctx*, %struct.wpa_sm_ctx** %3, align 8
  %16 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %17 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %16, i32 0, i32 4
  store %struct.wpa_sm_ctx* %15, %struct.wpa_sm_ctx** %17, align 8
  %18 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %19 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %18, i32 0, i32 1
  store i32 43200, i32* %19, align 4
  %20 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %21 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %20, i32 0, i32 2
  store i32 70, i32* %21, align 8
  %22 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %23 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %22, i32 0, i32 3
  store i32 60, i32* %23, align 4
  %24 = load i32, i32* @wpa_sm_pmksa_free_cb, align 4
  %25 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %26 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %27 = call i32* @pmksa_cache_init(i32 %24, %struct.wpa_sm* %25, %struct.wpa_sm* %26)
  %28 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %29 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %28, i32 0, i32 5
  store i32* %27, i32** %29, align 8
  %30 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %31 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %30, i32 0, i32 5
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %9
  %35 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %36 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %35, i32 0, i32 4
  %37 = load %struct.wpa_sm_ctx*, %struct.wpa_sm_ctx** %36, align 8
  %38 = getelementptr inbounds %struct.wpa_sm_ctx, %struct.wpa_sm_ctx* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MSG_ERROR, align 4
  %41 = call i32 @wpa_msg(i32 %39, i32 %40, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %43 = call i32 @os_free(%struct.wpa_sm* %42)
  store %struct.wpa_sm* null, %struct.wpa_sm** %2, align 8
  br label %46

44:                                               ; preds = %9
  %45 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  store %struct.wpa_sm* %45, %struct.wpa_sm** %2, align 8
  br label %46

46:                                               ; preds = %44, %34, %8
  %47 = load %struct.wpa_sm*, %struct.wpa_sm** %2, align 8
  ret %struct.wpa_sm* %47
}

declare dso_local %struct.wpa_sm* @os_zalloc(i32) #1

declare dso_local i32 @dl_list_init(i32*) #1

declare dso_local i32* @pmksa_cache_init(i32, %struct.wpa_sm*, %struct.wpa_sm*) #1

declare dso_local i32 @wpa_msg(i32, i32, i8*) #1

declare dso_local i32 @os_free(%struct.wpa_sm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
