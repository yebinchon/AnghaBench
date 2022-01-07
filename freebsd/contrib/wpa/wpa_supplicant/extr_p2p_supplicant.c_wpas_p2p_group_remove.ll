; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_group_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_group_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, i8*, %struct.wpa_supplicant*, %struct.TYPE_2__*, %struct.wpa_global* }
%struct.TYPE_2__ = type { i64 }
%struct.wpa_global = type { %struct.wpa_supplicant* }

@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@NOT_P2P_GROUP_INTERFACE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_p2p_group_remove(%struct.wpa_supplicant* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wpa_global*, align 8
  %7 = alloca %struct.wpa_supplicant*, align 8
  %8 = alloca %struct.wpa_supplicant*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %10 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %9, i32 0, i32 4
  %11 = load %struct.wpa_global*, %struct.wpa_global** %10, align 8
  store %struct.wpa_global* %11, %struct.wpa_global** %6, align 8
  %12 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  store %struct.wpa_supplicant* %12, %struct.wpa_supplicant** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @os_strcmp(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %51

16:                                               ; preds = %2
  %17 = load %struct.wpa_global*, %struct.wpa_global** %6, align 8
  %18 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %17, i32 0, i32 0
  %19 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %18, align 8
  store %struct.wpa_supplicant* %19, %struct.wpa_supplicant** %4, align 8
  br label %20

20:                                               ; preds = %49, %16
  %21 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %22 = icmp ne %struct.wpa_supplicant* %21, null
  br i1 %22, label %23, label %50

23:                                               ; preds = %20
  %24 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  store %struct.wpa_supplicant* %24, %struct.wpa_supplicant** %8, align 8
  %25 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %26 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %25, i32 0, i32 2
  %27 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %26, align 8
  store %struct.wpa_supplicant* %27, %struct.wpa_supplicant** %4, align 8
  %28 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %29 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NOT_P2P_GROUP_INTERFACE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %45, label %33

33:                                               ; preds = %23
  %34 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %35 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %34, i32 0, i32 3
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = icmp ne %struct.TYPE_2__* %36, null
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %40 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %39, i32 0, i32 3
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38, %23
  %46 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %47 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %48 = call i32 @wpas_p2p_disconnect_safely(%struct.wpa_supplicant* %46, %struct.wpa_supplicant* %47)
  br label %49

49:                                               ; preds = %45, %38, %33
  br label %20

50:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %75

51:                                               ; preds = %2
  %52 = load %struct.wpa_global*, %struct.wpa_global** %6, align 8
  %53 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %52, i32 0, i32 0
  %54 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %53, align 8
  store %struct.wpa_supplicant* %54, %struct.wpa_supplicant** %4, align 8
  br label %55

55:                                               ; preds = %67, %51
  %56 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %57 = icmp ne %struct.wpa_supplicant* %56, null
  br i1 %57, label %58, label %71

58:                                               ; preds = %55
  %59 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %60 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = call i64 @os_strcmp(i8* %61, i8* %62)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %71

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %69 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %68, i32 0, i32 2
  %70 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %69, align 8
  store %struct.wpa_supplicant* %70, %struct.wpa_supplicant** %4, align 8
  br label %55

71:                                               ; preds = %65, %55
  %72 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %73 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %74 = call i32 @wpas_p2p_disconnect_safely(%struct.wpa_supplicant* %72, %struct.wpa_supplicant* %73)
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %71, %50
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i64 @os_strcmp(i8*, i8*) #1

declare dso_local i32 @wpas_p2p_disconnect_safely(%struct.wpa_supplicant*, %struct.wpa_supplicant*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
