; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hlr_auc_gw.c_get_milenage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_hlr_auc_gw.c_get_milenage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.milenage_parameters = type { %struct.milenage_parameters*, i32 }

@milenage_db = common dso_local global %struct.milenage_parameters* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.milenage_parameters* (i8*)* @get_milenage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.milenage_parameters* @get_milenage(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.milenage_parameters*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load %struct.milenage_parameters*, %struct.milenage_parameters** @milenage_db, align 8
  store %struct.milenage_parameters* %4, %struct.milenage_parameters** %3, align 8
  br label %5

5:                                                ; preds = %16, %1
  %6 = load %struct.milenage_parameters*, %struct.milenage_parameters** %3, align 8
  %7 = icmp ne %struct.milenage_parameters* %6, null
  br i1 %7, label %8, label %20

8:                                                ; preds = %5
  %9 = load %struct.milenage_parameters*, %struct.milenage_parameters** %3, align 8
  %10 = getelementptr inbounds %struct.milenage_parameters, %struct.milenage_parameters* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = call i64 @strcmp(i32 %11, i8* %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  br label %20

16:                                               ; preds = %8
  %17 = load %struct.milenage_parameters*, %struct.milenage_parameters** %3, align 8
  %18 = getelementptr inbounds %struct.milenage_parameters, %struct.milenage_parameters* %17, i32 0, i32 0
  %19 = load %struct.milenage_parameters*, %struct.milenage_parameters** %18, align 8
  store %struct.milenage_parameters* %19, %struct.milenage_parameters** %3, align 8
  br label %5

20:                                               ; preds = %15, %5
  %21 = load %struct.milenage_parameters*, %struct.milenage_parameters** %3, align 8
  ret %struct.milenage_parameters* %21
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
