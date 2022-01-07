; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wmm_ac.c_wmm_ac_restore_tspecs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wmm_ac.c_wmm_ac_restore_tspecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i32*, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"WMM AC: Restore %u saved tspecs\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wmm_ac_restore_tspecs(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  %5 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %6 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %11 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9, %1
  store i32 0, i32* %2, align 4
  br label %43

15:                                               ; preds = %9
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %18 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @wpa_printf(i32 %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %39, %15
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %24 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %21
  %28 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %29 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %30 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %33 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = call i32 @wmm_ac_add_ts(%struct.wpa_supplicant* %28, i32 %31, i32* %37)
  br label %39

39:                                               ; preds = %27
  %40 = load i32, i32* %4, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %21

42:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %14
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @wmm_ac_add_ts(%struct.wpa_supplicant*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
