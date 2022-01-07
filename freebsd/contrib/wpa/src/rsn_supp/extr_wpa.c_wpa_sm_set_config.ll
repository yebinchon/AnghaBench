; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_sm_set_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_sm_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i32, i64, i64, i64, i64, i32*, i64, i64, i64, i32*, i32, i32 }
%struct.rsn_supp_config = type { i64, i64, i64, i64, i64, i64, i32*, i64, i64, i64, i32* }

@FILS_CACHE_ID_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_sm_set_config(%struct.wpa_sm* %0, %struct.rsn_supp_config* %1) #0 {
  %3 = alloca %struct.wpa_sm*, align 8
  %4 = alloca %struct.rsn_supp_config*, align 8
  store %struct.wpa_sm* %0, %struct.wpa_sm** %3, align 8
  store %struct.rsn_supp_config* %1, %struct.rsn_supp_config** %4, align 8
  %5 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %6 = icmp ne %struct.wpa_sm* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %95

8:                                                ; preds = %2
  %9 = load %struct.rsn_supp_config*, %struct.rsn_supp_config** %4, align 8
  %10 = icmp ne %struct.rsn_supp_config* %9, null
  br i1 %10, label %11, label %76

11:                                               ; preds = %8
  %12 = load %struct.rsn_supp_config*, %struct.rsn_supp_config** %4, align 8
  %13 = getelementptr inbounds %struct.rsn_supp_config, %struct.rsn_supp_config* %12, i32 0, i32 10
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %16 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %15, i32 0, i32 9
  store i32* %14, i32** %16, align 8
  %17 = load %struct.rsn_supp_config*, %struct.rsn_supp_config** %4, align 8
  %18 = getelementptr inbounds %struct.rsn_supp_config, %struct.rsn_supp_config* %17, i32 0, i32 9
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %21 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %20, i32 0, i32 8
  store i64 %19, i64* %21, align 8
  %22 = load %struct.rsn_supp_config*, %struct.rsn_supp_config** %4, align 8
  %23 = getelementptr inbounds %struct.rsn_supp_config, %struct.rsn_supp_config* %22, i32 0, i32 8
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %26 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %25, i32 0, i32 7
  store i64 %24, i64* %26, align 8
  %27 = load %struct.rsn_supp_config*, %struct.rsn_supp_config** %4, align 8
  %28 = getelementptr inbounds %struct.rsn_supp_config, %struct.rsn_supp_config* %27, i32 0, i32 7
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %31 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %30, i32 0, i32 6
  store i64 %29, i64* %31, align 8
  %32 = load %struct.rsn_supp_config*, %struct.rsn_supp_config** %4, align 8
  %33 = getelementptr inbounds %struct.rsn_supp_config, %struct.rsn_supp_config* %32, i32 0, i32 6
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %36 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %35, i32 0, i32 5
  store i32* %34, i32** %36, align 8
  %37 = load %struct.rsn_supp_config*, %struct.rsn_supp_config** %4, align 8
  %38 = getelementptr inbounds %struct.rsn_supp_config, %struct.rsn_supp_config* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %11
  %42 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %43 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %42, i32 0, i32 11
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.rsn_supp_config*, %struct.rsn_supp_config** %4, align 8
  %46 = getelementptr inbounds %struct.rsn_supp_config, %struct.rsn_supp_config* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.rsn_supp_config*, %struct.rsn_supp_config** %4, align 8
  %49 = getelementptr inbounds %struct.rsn_supp_config, %struct.rsn_supp_config* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @os_memcpy(i32 %44, i64 %47, i64 %50)
  %52 = load %struct.rsn_supp_config*, %struct.rsn_supp_config** %4, align 8
  %53 = getelementptr inbounds %struct.rsn_supp_config, %struct.rsn_supp_config* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %56 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %55, i32 0, i32 4
  store i64 %54, i64* %56, align 8
  br label %60

57:                                               ; preds = %11
  %58 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %59 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %58, i32 0, i32 4
  store i64 0, i64* %59, align 8
  br label %60

60:                                               ; preds = %57, %41
  %61 = load %struct.rsn_supp_config*, %struct.rsn_supp_config** %4, align 8
  %62 = getelementptr inbounds %struct.rsn_supp_config, %struct.rsn_supp_config* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %65 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %64, i32 0, i32 3
  store i64 %63, i64* %65, align 8
  %66 = load %struct.rsn_supp_config*, %struct.rsn_supp_config** %4, align 8
  %67 = getelementptr inbounds %struct.rsn_supp_config, %struct.rsn_supp_config* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %70 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %69, i32 0, i32 2
  store i64 %68, i64* %70, align 8
  %71 = load %struct.rsn_supp_config*, %struct.rsn_supp_config** %4, align 8
  %72 = getelementptr inbounds %struct.rsn_supp_config, %struct.rsn_supp_config* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %75 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  br label %95

76:                                               ; preds = %8
  %77 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %78 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %77, i32 0, i32 9
  store i32* null, i32** %78, align 8
  %79 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %80 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %79, i32 0, i32 8
  store i64 0, i64* %80, align 8
  %81 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %82 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %81, i32 0, i32 7
  store i64 0, i64* %82, align 8
  %83 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %84 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %83, i32 0, i32 6
  store i64 0, i64* %84, align 8
  %85 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %86 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %85, i32 0, i32 5
  store i32* null, i32** %86, align 8
  %87 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %88 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %87, i32 0, i32 4
  store i64 0, i64* %88, align 8
  %89 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %90 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %89, i32 0, i32 3
  store i64 0, i64* %90, align 8
  %91 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %92 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %91, i32 0, i32 2
  store i64 0, i64* %92, align 8
  %93 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %94 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %93, i32 0, i32 1
  store i64 0, i64* %94, align 8
  br label %95

95:                                               ; preds = %7, %76, %60
  ret void
}

declare dso_local i32 @os_memcpy(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
