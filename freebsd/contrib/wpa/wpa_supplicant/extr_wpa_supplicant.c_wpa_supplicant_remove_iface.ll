; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpa_supplicant_remove_iface.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpa_supplicant_remove_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_global = type { %struct.wpa_supplicant*, %struct.wpa_supplicant*, %struct.wpa_supplicant* }
%struct.wpa_supplicant = type { i32, i32, %struct.wpa_supplicant*, %struct.wpa_supplicant* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Removing interface %s\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@WPA_IF_MESH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_supplicant_remove_iface(%struct.wpa_global* %0, %struct.wpa_supplicant* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_global*, align 8
  %6 = alloca %struct.wpa_supplicant*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpa_supplicant*, align 8
  store %struct.wpa_global* %0, %struct.wpa_global** %5, align 8
  store %struct.wpa_supplicant* %1, %struct.wpa_supplicant** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.wpa_global*, %struct.wpa_global** %5, align 8
  %10 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %9, i32 0, i32 2
  %11 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  store %struct.wpa_supplicant* %11, %struct.wpa_supplicant** %8, align 8
  %12 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %13 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %14 = icmp eq %struct.wpa_supplicant* %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %17 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %16, i32 0, i32 2
  %18 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %17, align 8
  %19 = load %struct.wpa_global*, %struct.wpa_global** %5, align 8
  %20 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %19, i32 0, i32 2
  store %struct.wpa_supplicant* %18, %struct.wpa_supplicant** %20, align 8
  br label %47

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %33, %21
  %23 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %24 = icmp ne %struct.wpa_supplicant* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %27 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %26, i32 0, i32 2
  %28 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %27, align 8
  %29 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %30 = icmp ne %struct.wpa_supplicant* %28, %29
  br label %31

31:                                               ; preds = %25, %22
  %32 = phi i1 [ false, %22 ], [ %30, %25 ]
  br i1 %32, label %33, label %37

33:                                               ; preds = %31
  %34 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %35 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %34, i32 0, i32 2
  %36 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %35, align 8
  store %struct.wpa_supplicant* %36, %struct.wpa_supplicant** %8, align 8
  br label %22

37:                                               ; preds = %31
  %38 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %39 = icmp eq %struct.wpa_supplicant* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 -1, i32* %4, align 4
  br label %75

41:                                               ; preds = %37
  %42 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %43 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %42, i32 0, i32 2
  %44 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %43, align 8
  %45 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %46 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %45, i32 0, i32 2
  store %struct.wpa_supplicant* %44, %struct.wpa_supplicant** %46, align 8
  br label %47

47:                                               ; preds = %41, %15
  %48 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %49 = load i32, i32* @MSG_DEBUG, align 4
  %50 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %51 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %48, i32 %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load %struct.wpa_global*, %struct.wpa_global** %5, align 8
  %55 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %54, i32 0, i32 1
  %56 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %55, align 8
  %57 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %58 = icmp eq %struct.wpa_supplicant* %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %47
  %60 = load %struct.wpa_global*, %struct.wpa_global** %5, align 8
  %61 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %60, i32 0, i32 1
  store %struct.wpa_supplicant* null, %struct.wpa_supplicant** %61, align 8
  br label %62

62:                                               ; preds = %59, %47
  %63 = load %struct.wpa_global*, %struct.wpa_global** %5, align 8
  %64 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %63, i32 0, i32 0
  %65 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %64, align 8
  %66 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %67 = icmp eq %struct.wpa_supplicant* %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load %struct.wpa_global*, %struct.wpa_global** %5, align 8
  %70 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %69, i32 0, i32 0
  store %struct.wpa_supplicant* null, %struct.wpa_supplicant** %70, align 8
  br label %71

71:                                               ; preds = %68, %62
  %72 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @wpa_supplicant_deinit_iface(%struct.wpa_supplicant* %72, i32 1, i32 %73)
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %71, %40
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @wpa_dbg(%struct.wpa_supplicant*, i32, i8*, ...) #1

declare dso_local i32 @wpa_supplicant_deinit_iface(%struct.wpa_supplicant*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
