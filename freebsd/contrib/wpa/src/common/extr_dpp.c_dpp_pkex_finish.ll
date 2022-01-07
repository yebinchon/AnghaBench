; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_pkex_finish.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_pkex_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_bootstrap_info = type { i32, i32*, i32, i32*, i32, i32, i32, i32 }
%struct.dpp_global = type { i32 }
%struct.dpp_pkex = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DPP_BOOTSTRAP_PKEX = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dpp_bootstrap_info* @dpp_pkex_finish(%struct.dpp_global* %0, %struct.dpp_pkex* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.dpp_bootstrap_info*, align 8
  %6 = alloca %struct.dpp_global*, align 8
  %7 = alloca %struct.dpp_pkex*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dpp_bootstrap_info*, align 8
  store %struct.dpp_global* %0, %struct.dpp_global** %6, align 8
  store %struct.dpp_pkex* %1, %struct.dpp_pkex** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = call %struct.dpp_bootstrap_info* @os_zalloc(i32 48)
  store %struct.dpp_bootstrap_info* %11, %struct.dpp_bootstrap_info** %10, align 8
  %12 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %10, align 8
  %13 = icmp ne %struct.dpp_bootstrap_info* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  store %struct.dpp_bootstrap_info* null, %struct.dpp_bootstrap_info** %5, align 8
  br label %65

15:                                               ; preds = %4
  %16 = load %struct.dpp_global*, %struct.dpp_global** %6, align 8
  %17 = call i32 @dpp_next_id(%struct.dpp_global* %16)
  %18 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %10, align 8
  %19 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %18, i32 0, i32 7
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @DPP_BOOTSTRAP_PKEX, align 4
  %21 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %10, align 8
  %22 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %21, i32 0, i32 6
  store i32 %20, i32* %22, align 8
  %23 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %10, align 8
  %24 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* @ETH_ALEN, align 4
  %28 = call i32 @os_memcpy(i32 %25, i32* %26, i32 %27)
  %29 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %10, align 8
  %30 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %10, align 8
  %33 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 %31, i32* %35, align 4
  %36 = load %struct.dpp_pkex*, %struct.dpp_pkex** %7, align 8
  %37 = getelementptr inbounds %struct.dpp_pkex, %struct.dpp_pkex* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %10, align 8
  %42 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  %43 = load %struct.dpp_pkex*, %struct.dpp_pkex** %7, align 8
  %44 = getelementptr inbounds %struct.dpp_pkex, %struct.dpp_pkex* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %10, align 8
  %47 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %46, i32 0, i32 3
  store i32* %45, i32** %47, align 8
  %48 = load %struct.dpp_pkex*, %struct.dpp_pkex** %7, align 8
  %49 = getelementptr inbounds %struct.dpp_pkex, %struct.dpp_pkex* %48, i32 0, i32 0
  store i32* null, i32** %49, align 8
  %50 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %10, align 8
  %51 = call i64 @dpp_bootstrap_key_hash(%struct.dpp_bootstrap_info* %50)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %15
  %54 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %10, align 8
  %55 = call i32 @dpp_bootstrap_info_free(%struct.dpp_bootstrap_info* %54)
  store %struct.dpp_bootstrap_info* null, %struct.dpp_bootstrap_info** %5, align 8
  br label %65

56:                                               ; preds = %15
  %57 = load %struct.dpp_pkex*, %struct.dpp_pkex** %7, align 8
  %58 = call i32 @dpp_pkex_free(%struct.dpp_pkex* %57)
  %59 = load %struct.dpp_global*, %struct.dpp_global** %6, align 8
  %60 = getelementptr inbounds %struct.dpp_global, %struct.dpp_global* %59, i32 0, i32 0
  %61 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %10, align 8
  %62 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %61, i32 0, i32 2
  %63 = call i32 @dl_list_add(i32* %60, i32* %62)
  %64 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %10, align 8
  store %struct.dpp_bootstrap_info* %64, %struct.dpp_bootstrap_info** %5, align 8
  br label %65

65:                                               ; preds = %56, %53, %14
  %66 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %5, align 8
  ret %struct.dpp_bootstrap_info* %66
}

declare dso_local %struct.dpp_bootstrap_info* @os_zalloc(i32) #1

declare dso_local i32 @dpp_next_id(%struct.dpp_global*) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

declare dso_local i64 @dpp_bootstrap_key_hash(%struct.dpp_bootstrap_info*) #1

declare dso_local i32 @dpp_bootstrap_info_free(%struct.dpp_bootstrap_info*) #1

declare dso_local i32 @dpp_pkex_free(%struct.dpp_pkex*) #1

declare dso_local i32 @dl_list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
