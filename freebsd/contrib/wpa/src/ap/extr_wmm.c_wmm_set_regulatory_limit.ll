; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wmm.c_wmm_set_regulatory_limit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wmm.c_wmm_set_regulatory_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_wmm_ac_params = type { i32, i32, i8*, i8*, i8* }
%struct.hostapd_wmm_rule = type { i32, i32, i32, i32 }

@WMM_AC_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_wmm_ac_params*, %struct.hostapd_wmm_ac_params*, %struct.hostapd_wmm_rule*)* @wmm_set_regulatory_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wmm_set_regulatory_limit(%struct.hostapd_wmm_ac_params* %0, %struct.hostapd_wmm_ac_params* %1, %struct.hostapd_wmm_rule* %2) #0 {
  %4 = alloca %struct.hostapd_wmm_ac_params*, align 8
  %5 = alloca %struct.hostapd_wmm_ac_params*, align 8
  %6 = alloca %struct.hostapd_wmm_rule*, align 8
  %7 = alloca i32, align 4
  store %struct.hostapd_wmm_ac_params* %0, %struct.hostapd_wmm_ac_params** %4, align 8
  store %struct.hostapd_wmm_ac_params* %1, %struct.hostapd_wmm_ac_params** %5, align 8
  store %struct.hostapd_wmm_rule* %2, %struct.hostapd_wmm_rule** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %96, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @WMM_AC_NUM, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %99

12:                                               ; preds = %8
  %13 = load %struct.hostapd_wmm_ac_params*, %struct.hostapd_wmm_ac_params** %4, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.hostapd_wmm_ac_params, %struct.hostapd_wmm_ac_params* %13, i64 %15
  %17 = getelementptr inbounds %struct.hostapd_wmm_ac_params, %struct.hostapd_wmm_ac_params* %16, i32 0, i32 4
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.hostapd_wmm_rule*, %struct.hostapd_wmm_rule** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.hostapd_wmm_rule, %struct.hostapd_wmm_rule* %19, i64 %21
  %23 = getelementptr inbounds %struct.hostapd_wmm_rule, %struct.hostapd_wmm_rule* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @MAX(i8* %18, i32 %24)
  %26 = load %struct.hostapd_wmm_ac_params*, %struct.hostapd_wmm_ac_params** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.hostapd_wmm_ac_params, %struct.hostapd_wmm_ac_params* %26, i64 %28
  %30 = getelementptr inbounds %struct.hostapd_wmm_ac_params, %struct.hostapd_wmm_ac_params* %29, i32 0, i32 4
  store i8* %25, i8** %30, align 8
  %31 = load %struct.hostapd_wmm_ac_params*, %struct.hostapd_wmm_ac_params** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.hostapd_wmm_ac_params, %struct.hostapd_wmm_ac_params* %31, i64 %33
  %35 = getelementptr inbounds %struct.hostapd_wmm_ac_params, %struct.hostapd_wmm_ac_params* %34, i32 0, i32 3
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.hostapd_wmm_rule*, %struct.hostapd_wmm_rule** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.hostapd_wmm_rule, %struct.hostapd_wmm_rule* %37, i64 %39
  %41 = getelementptr inbounds %struct.hostapd_wmm_rule, %struct.hostapd_wmm_rule* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @MAX(i8* %36, i32 %42)
  %44 = load %struct.hostapd_wmm_ac_params*, %struct.hostapd_wmm_ac_params** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.hostapd_wmm_ac_params, %struct.hostapd_wmm_ac_params* %44, i64 %46
  %48 = getelementptr inbounds %struct.hostapd_wmm_ac_params, %struct.hostapd_wmm_ac_params* %47, i32 0, i32 3
  store i8* %43, i8** %48, align 8
  %49 = load %struct.hostapd_wmm_ac_params*, %struct.hostapd_wmm_ac_params** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.hostapd_wmm_ac_params, %struct.hostapd_wmm_ac_params* %49, i64 %51
  %53 = getelementptr inbounds %struct.hostapd_wmm_ac_params, %struct.hostapd_wmm_ac_params* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.hostapd_wmm_rule*, %struct.hostapd_wmm_rule** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.hostapd_wmm_rule, %struct.hostapd_wmm_rule* %55, i64 %57
  %59 = getelementptr inbounds %struct.hostapd_wmm_rule, %struct.hostapd_wmm_rule* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @MAX(i8* %54, i32 %60)
  %62 = load %struct.hostapd_wmm_ac_params*, %struct.hostapd_wmm_ac_params** %5, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.hostapd_wmm_ac_params, %struct.hostapd_wmm_ac_params* %62, i64 %64
  %66 = getelementptr inbounds %struct.hostapd_wmm_ac_params, %struct.hostapd_wmm_ac_params* %65, i32 0, i32 2
  store i8* %61, i8** %66, align 8
  %67 = load %struct.hostapd_wmm_ac_params*, %struct.hostapd_wmm_ac_params** %4, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.hostapd_wmm_ac_params, %struct.hostapd_wmm_ac_params* %67, i64 %69
  %71 = getelementptr inbounds %struct.hostapd_wmm_ac_params, %struct.hostapd_wmm_ac_params* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.hostapd_wmm_rule*, %struct.hostapd_wmm_rule** %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.hostapd_wmm_rule, %struct.hostapd_wmm_rule* %73, i64 %75
  %77 = getelementptr inbounds %struct.hostapd_wmm_rule, %struct.hostapd_wmm_rule* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @MIN(i32 %72, i32 %78)
  %80 = load %struct.hostapd_wmm_ac_params*, %struct.hostapd_wmm_ac_params** %5, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.hostapd_wmm_ac_params, %struct.hostapd_wmm_ac_params* %80, i64 %82
  %84 = getelementptr inbounds %struct.hostapd_wmm_ac_params, %struct.hostapd_wmm_ac_params* %83, i32 0, i32 1
  store i32 %79, i32* %84, align 4
  %85 = load %struct.hostapd_wmm_ac_params*, %struct.hostapd_wmm_ac_params** %4, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.hostapd_wmm_ac_params, %struct.hostapd_wmm_ac_params* %85, i64 %87
  %89 = getelementptr inbounds %struct.hostapd_wmm_ac_params, %struct.hostapd_wmm_ac_params* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.hostapd_wmm_ac_params*, %struct.hostapd_wmm_ac_params** %5, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.hostapd_wmm_ac_params, %struct.hostapd_wmm_ac_params* %91, i64 %93
  %95 = getelementptr inbounds %struct.hostapd_wmm_ac_params, %struct.hostapd_wmm_ac_params* %94, i32 0, i32 0
  store i32 %90, i32* %95, align 8
  br label %96

96:                                               ; preds = %12
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %7, align 4
  br label %8

99:                                               ; preds = %8
  ret void
}

declare dso_local i8* @MAX(i8*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
