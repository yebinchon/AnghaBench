; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_drv_ops.c_hostapd_set_wds_sta.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_drv_ops.c_hostapd_set_wds_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (i32, i32*, i32, i32, i8*, i8*)* }
%struct.TYPE_3__ = type { i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostapd_set_wds_sta(%struct.hostapd_data* %0, i8* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hostapd_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* null, i8** %12, align 8
  %13 = load %struct.hostapd_data*, %struct.hostapd_data** %7, align 8
  %14 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp eq %struct.TYPE_4__* %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %5
  %18 = load %struct.hostapd_data*, %struct.hostapd_data** %7, align 8
  %19 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32 (i32, i32*, i32, i32, i8*, i8*)*, i32 (i32, i32*, i32, i32, i8*, i8*)** %21, align 8
  %23 = icmp eq i32 (i32, i32*, i32, i32, i8*, i8*)* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %17, %5
  store i32 -1, i32* %6, align 4
  br label %71

25:                                               ; preds = %17
  %26 = load %struct.hostapd_data*, %struct.hostapd_data** %7, align 8
  %27 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %26, i32 0, i32 2
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %25
  %35 = load %struct.hostapd_data*, %struct.hostapd_data** %7, align 8
  %36 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %35, i32 0, i32 2
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %12, align 8
  br label %56

40:                                               ; preds = %25
  %41 = load %struct.hostapd_data*, %struct.hostapd_data** %7, align 8
  %42 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %41, i32 0, i32 2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %40
  %50 = load %struct.hostapd_data*, %struct.hostapd_data** %7, align 8
  %51 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %50, i32 0, i32 2
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %12, align 8
  br label %55

55:                                               ; preds = %49, %40
  br label %56

56:                                               ; preds = %55, %34
  %57 = load %struct.hostapd_data*, %struct.hostapd_data** %7, align 8
  %58 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32 (i32, i32*, i32, i32, i8*, i8*)*, i32 (i32, i32*, i32, i32, i8*, i8*)** %60, align 8
  %62 = load %struct.hostapd_data*, %struct.hostapd_data** %7, align 8
  %63 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i8*, i8** %12, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = call i32 %61(i32 %64, i32* %65, i32 %66, i32 %67, i8* %68, i8* %69)
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %56, %24
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
