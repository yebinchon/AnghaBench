; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_uni.c_uni_get_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_uni.c_uni_get_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }
%struct.uni_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@UNIPROTO_GFP = common dso_local global i32 0, align 4
@UNIOPT_GIT_HARD = common dso_local global i32 0, align 4
@UNIOPT_BEARER_HARD = common dso_local global i32 0, align 4
@UNIOPT_CAUSE_HARD = common dso_local global i32 0, align 4
@UNIPROTO_SB_TB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uni_get_config(%struct.uni* %0, %struct.uni_config* %1) #0 {
  %3 = alloca %struct.uni*, align 8
  %4 = alloca %struct.uni_config*, align 8
  store %struct.uni* %0, %struct.uni** %3, align 8
  store %struct.uni_config* %1, %struct.uni_config** %4, align 8
  %5 = load %struct.uni*, %struct.uni** %3, align 8
  %6 = getelementptr inbounds %struct.uni, %struct.uni* %5, i32 0, i32 18
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.uni_config*, %struct.uni_config** %4, align 8
  %9 = getelementptr inbounds %struct.uni_config, %struct.uni_config* %8, i32 0, i32 18
  store i32 %7, i32* %9, align 4
  %10 = load %struct.uni_config*, %struct.uni_config** %4, align 8
  %11 = getelementptr inbounds %struct.uni_config, %struct.uni_config* %10, i32 0, i32 16
  store i32 0, i32* %11, align 4
  %12 = load %struct.uni*, %struct.uni** %3, align 8
  %13 = getelementptr inbounds %struct.uni, %struct.uni* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load i32, i32* @UNIPROTO_GFP, align 4
  %19 = load %struct.uni_config*, %struct.uni_config** %4, align 8
  %20 = getelementptr inbounds %struct.uni_config, %struct.uni_config* %19, i32 0, i32 16
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %17, %2
  %24 = load %struct.uni_config*, %struct.uni_config** %4, align 8
  %25 = getelementptr inbounds %struct.uni_config, %struct.uni_config* %24, i32 0, i32 17
  store i32 0, i32* %25, align 4
  %26 = load %struct.uni*, %struct.uni** %3, align 8
  %27 = getelementptr inbounds %struct.uni, %struct.uni* %26, i32 0, i32 17
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = load i32, i32* @UNIOPT_GIT_HARD, align 4
  %33 = load %struct.uni_config*, %struct.uni_config** %4, align 8
  %34 = getelementptr inbounds %struct.uni_config, %struct.uni_config* %33, i32 0, i32 17
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %31, %23
  %38 = load %struct.uni*, %struct.uni** %3, align 8
  %39 = getelementptr inbounds %struct.uni, %struct.uni* %38, i32 0, i32 17
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load i32, i32* @UNIOPT_BEARER_HARD, align 4
  %45 = load %struct.uni_config*, %struct.uni_config** %4, align 8
  %46 = getelementptr inbounds %struct.uni_config, %struct.uni_config* %45, i32 0, i32 17
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %43, %37
  %50 = load %struct.uni*, %struct.uni** %3, align 8
  %51 = getelementptr inbounds %struct.uni, %struct.uni* %50, i32 0, i32 17
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load i32, i32* @UNIOPT_CAUSE_HARD, align 4
  %57 = load %struct.uni_config*, %struct.uni_config** %4, align 8
  %58 = getelementptr inbounds %struct.uni_config, %struct.uni_config* %57, i32 0, i32 17
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %55, %49
  %62 = load %struct.uni*, %struct.uni** %3, align 8
  %63 = getelementptr inbounds %struct.uni, %struct.uni* %62, i32 0, i32 16
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i32, i32* @UNIPROTO_SB_TB, align 4
  %68 = load %struct.uni_config*, %struct.uni_config** %4, align 8
  %69 = getelementptr inbounds %struct.uni_config, %struct.uni_config* %68, i32 0, i32 16
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %66, %61
  %73 = load %struct.uni*, %struct.uni** %3, align 8
  %74 = getelementptr inbounds %struct.uni, %struct.uni* %73, i32 0, i32 15
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.uni_config*, %struct.uni_config** %4, align 8
  %77 = getelementptr inbounds %struct.uni_config, %struct.uni_config* %76, i32 0, i32 15
  store i32 %75, i32* %77, align 4
  %78 = load %struct.uni*, %struct.uni** %3, align 8
  %79 = getelementptr inbounds %struct.uni, %struct.uni* %78, i32 0, i32 14
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.uni_config*, %struct.uni_config** %4, align 8
  %82 = getelementptr inbounds %struct.uni_config, %struct.uni_config* %81, i32 0, i32 14
  store i32 %80, i32* %82, align 4
  %83 = load %struct.uni*, %struct.uni** %3, align 8
  %84 = getelementptr inbounds %struct.uni, %struct.uni* %83, i32 0, i32 13
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.uni_config*, %struct.uni_config** %4, align 8
  %87 = getelementptr inbounds %struct.uni_config, %struct.uni_config* %86, i32 0, i32 13
  store i32 %85, i32* %87, align 4
  %88 = load %struct.uni*, %struct.uni** %3, align 8
  %89 = getelementptr inbounds %struct.uni, %struct.uni* %88, i32 0, i32 12
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.uni_config*, %struct.uni_config** %4, align 8
  %92 = getelementptr inbounds %struct.uni_config, %struct.uni_config* %91, i32 0, i32 12
  store i32 %90, i32* %92, align 4
  %93 = load %struct.uni*, %struct.uni** %3, align 8
  %94 = getelementptr inbounds %struct.uni, %struct.uni* %93, i32 0, i32 11
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.uni_config*, %struct.uni_config** %4, align 8
  %97 = getelementptr inbounds %struct.uni_config, %struct.uni_config* %96, i32 0, i32 11
  store i32 %95, i32* %97, align 4
  %98 = load %struct.uni*, %struct.uni** %3, align 8
  %99 = getelementptr inbounds %struct.uni, %struct.uni* %98, i32 0, i32 10
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.uni_config*, %struct.uni_config** %4, align 8
  %102 = getelementptr inbounds %struct.uni_config, %struct.uni_config* %101, i32 0, i32 10
  store i32 %100, i32* %102, align 4
  %103 = load %struct.uni*, %struct.uni** %3, align 8
  %104 = getelementptr inbounds %struct.uni, %struct.uni* %103, i32 0, i32 9
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.uni_config*, %struct.uni_config** %4, align 8
  %107 = getelementptr inbounds %struct.uni_config, %struct.uni_config* %106, i32 0, i32 9
  store i32 %105, i32* %107, align 4
  %108 = load %struct.uni*, %struct.uni** %3, align 8
  %109 = getelementptr inbounds %struct.uni, %struct.uni* %108, i32 0, i32 8
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.uni_config*, %struct.uni_config** %4, align 8
  %112 = getelementptr inbounds %struct.uni_config, %struct.uni_config* %111, i32 0, i32 8
  store i32 %110, i32* %112, align 4
  %113 = load %struct.uni*, %struct.uni** %3, align 8
  %114 = getelementptr inbounds %struct.uni, %struct.uni* %113, i32 0, i32 7
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.uni_config*, %struct.uni_config** %4, align 8
  %117 = getelementptr inbounds %struct.uni_config, %struct.uni_config* %116, i32 0, i32 7
  store i32 %115, i32* %117, align 4
  %118 = load %struct.uni*, %struct.uni** %3, align 8
  %119 = getelementptr inbounds %struct.uni, %struct.uni* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.uni_config*, %struct.uni_config** %4, align 8
  %122 = getelementptr inbounds %struct.uni_config, %struct.uni_config* %121, i32 0, i32 6
  store i32 %120, i32* %122, align 4
  %123 = load %struct.uni*, %struct.uni** %3, align 8
  %124 = getelementptr inbounds %struct.uni, %struct.uni* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.uni_config*, %struct.uni_config** %4, align 8
  %127 = getelementptr inbounds %struct.uni_config, %struct.uni_config* %126, i32 0, i32 5
  store i32 %125, i32* %127, align 4
  %128 = load %struct.uni*, %struct.uni** %3, align 8
  %129 = getelementptr inbounds %struct.uni, %struct.uni* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.uni_config*, %struct.uni_config** %4, align 8
  %132 = getelementptr inbounds %struct.uni_config, %struct.uni_config* %131, i32 0, i32 4
  store i32 %130, i32* %132, align 4
  %133 = load %struct.uni*, %struct.uni** %3, align 8
  %134 = getelementptr inbounds %struct.uni, %struct.uni* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.uni_config*, %struct.uni_config** %4, align 8
  %137 = getelementptr inbounds %struct.uni_config, %struct.uni_config* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 4
  %138 = load %struct.uni*, %struct.uni** %3, align 8
  %139 = getelementptr inbounds %struct.uni, %struct.uni* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.uni_config*, %struct.uni_config** %4, align 8
  %142 = getelementptr inbounds %struct.uni_config, %struct.uni_config* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 4
  %143 = load %struct.uni*, %struct.uni** %3, align 8
  %144 = getelementptr inbounds %struct.uni, %struct.uni* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.uni_config*, %struct.uni_config** %4, align 8
  %147 = getelementptr inbounds %struct.uni_config, %struct.uni_config* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  %148 = load %struct.uni*, %struct.uni** %3, align 8
  %149 = getelementptr inbounds %struct.uni, %struct.uni* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.uni_config*, %struct.uni_config** %4, align 8
  %152 = getelementptr inbounds %struct.uni_config, %struct.uni_config* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
