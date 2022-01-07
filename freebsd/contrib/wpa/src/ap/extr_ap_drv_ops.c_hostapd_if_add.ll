; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_drv_ops.c_hostapd_if_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_drv_ops.c_hostapd_if_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32, i8*, i32*, i8*, i8**, i8*, i32*, i8*, i32, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostapd_if_add(%struct.hostapd_data* %0, i32 %1, i8* %2, i32* %3, i8* %4, i8** %5, i8* %6, i32* %7, i8* %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.hostapd_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %12, align 8
  store i32 %1, i32* %13, align 4
  store i8* %2, i8** %14, align 8
  store i32* %3, i32** %15, align 8
  store i8* %4, i8** %16, align 8
  store i8** %5, i8*** %17, align 8
  store i8* %6, i8** %18, align 8
  store i32* %7, i32** %19, align 8
  store i8* %8, i8** %20, align 8
  store i32 %9, i32* %21, align 4
  %22 = load %struct.hostapd_data*, %struct.hostapd_data** %12, align 8
  %23 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp eq %struct.TYPE_2__* %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %10
  %27 = load %struct.hostapd_data*, %struct.hostapd_data** %12, align 8
  %28 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (i32, i32, i8*, i32*, i8*, i8**, i8*, i32*, i8*, i32, i32)*, i32 (i32, i32, i8*, i32*, i8*, i8**, i8*, i32*, i8*, i32, i32)** %30, align 8
  %32 = icmp eq i32 (i32, i32, i8*, i32*, i8*, i8**, i8*, i32*, i8*, i32, i32)* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %26, %10
  store i32 -1, i32* %11, align 4
  br label %53

34:                                               ; preds = %26
  %35 = load %struct.hostapd_data*, %struct.hostapd_data** %12, align 8
  %36 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (i32, i32, i8*, i32*, i8*, i8**, i8*, i32*, i8*, i32, i32)*, i32 (i32, i32, i8*, i32*, i8*, i8**, i8*, i32*, i8*, i32, i32)** %38, align 8
  %40 = load %struct.hostapd_data*, %struct.hostapd_data** %12, align 8
  %41 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %13, align 4
  %44 = load i8*, i8** %14, align 8
  %45 = load i32*, i32** %15, align 8
  %46 = load i8*, i8** %16, align 8
  %47 = load i8**, i8*** %17, align 8
  %48 = load i8*, i8** %18, align 8
  %49 = load i32*, i32** %19, align 8
  %50 = load i8*, i8** %20, align 8
  %51 = load i32, i32* %21, align 4
  %52 = call i32 %39(i32 %42, i32 %43, i8* %44, i32* %45, i8* %46, i8** %47, i8* %48, i32* %49, i8* %50, i32 %51, i32 1)
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %34, %33
  %54 = load i32, i32* %11, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
