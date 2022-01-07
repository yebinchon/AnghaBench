; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_priv.c_wpa_priv_cmd_set_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_priv.c_wpa_priv_cmd_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_priv_interface = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32*, i32, i32, i32, i32, i32*, i64, i32*, i64)* }
%struct.privsep_cmd_set_key = type { i64, i32*, i64, i32*, i32, i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Invalid set_key request\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"drv->set_key: res=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_priv_interface*, i8*, i64)* @wpa_priv_cmd_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_priv_cmd_set_key(%struct.wpa_priv_interface* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.wpa_priv_interface*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.privsep_cmd_set_key*, align 8
  %8 = alloca i32, align 4
  store %struct.wpa_priv_interface* %0, %struct.wpa_priv_interface** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %10 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %3
  %14 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %15 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (i32, i32*, i32, i32, i32, i32, i32*, i64, i32*, i64)*, i32 (i32, i32*, i32, i32, i32, i32, i32*, i64, i32*, i64)** %17, align 8
  %19 = icmp eq i32 (i32, i32*, i32, i32, i32, i32, i32*, i64, i32*, i64)* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %13, %3
  br label %85

21:                                               ; preds = %13
  %22 = load i64, i64* %6, align 8
  %23 = icmp ne i64 %22, 48
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* @MSG_DEBUG, align 4
  %26 = call i32 (i32, i8*, ...) @wpa_printf(i32 %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %85

27:                                               ; preds = %21
  %28 = load i8*, i8** %5, align 8
  %29 = bitcast i8* %28 to %struct.privsep_cmd_set_key*
  store %struct.privsep_cmd_set_key* %29, %struct.privsep_cmd_set_key** %7, align 8
  %30 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %31 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (i32, i32*, i32, i32, i32, i32, i32*, i64, i32*, i64)*, i32 (i32, i32*, i32, i32, i32, i32, i32*, i64, i32*, i64)** %33, align 8
  %35 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %36 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %4, align 8
  %39 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.privsep_cmd_set_key*, %struct.privsep_cmd_set_key** %7, align 8
  %42 = getelementptr inbounds %struct.privsep_cmd_set_key, %struct.privsep_cmd_set_key* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.privsep_cmd_set_key*, %struct.privsep_cmd_set_key** %7, align 8
  %45 = getelementptr inbounds %struct.privsep_cmd_set_key, %struct.privsep_cmd_set_key* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.privsep_cmd_set_key*, %struct.privsep_cmd_set_key** %7, align 8
  %48 = getelementptr inbounds %struct.privsep_cmd_set_key, %struct.privsep_cmd_set_key* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.privsep_cmd_set_key*, %struct.privsep_cmd_set_key** %7, align 8
  %51 = getelementptr inbounds %struct.privsep_cmd_set_key, %struct.privsep_cmd_set_key* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.privsep_cmd_set_key*, %struct.privsep_cmd_set_key** %7, align 8
  %54 = getelementptr inbounds %struct.privsep_cmd_set_key, %struct.privsep_cmd_set_key* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %27
  %58 = load %struct.privsep_cmd_set_key*, %struct.privsep_cmd_set_key** %7, align 8
  %59 = getelementptr inbounds %struct.privsep_cmd_set_key, %struct.privsep_cmd_set_key* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  br label %62

61:                                               ; preds = %27
  br label %62

62:                                               ; preds = %61, %57
  %63 = phi i32* [ %60, %57 ], [ null, %61 ]
  %64 = load %struct.privsep_cmd_set_key*, %struct.privsep_cmd_set_key** %7, align 8
  %65 = getelementptr inbounds %struct.privsep_cmd_set_key, %struct.privsep_cmd_set_key* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.privsep_cmd_set_key*, %struct.privsep_cmd_set_key** %7, align 8
  %68 = getelementptr inbounds %struct.privsep_cmd_set_key, %struct.privsep_cmd_set_key* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %62
  %72 = load %struct.privsep_cmd_set_key*, %struct.privsep_cmd_set_key** %7, align 8
  %73 = getelementptr inbounds %struct.privsep_cmd_set_key, %struct.privsep_cmd_set_key* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  br label %76

75:                                               ; preds = %62
  br label %76

76:                                               ; preds = %75, %71
  %77 = phi i32* [ %74, %71 ], [ null, %75 ]
  %78 = load %struct.privsep_cmd_set_key*, %struct.privsep_cmd_set_key** %7, align 8
  %79 = getelementptr inbounds %struct.privsep_cmd_set_key, %struct.privsep_cmd_set_key* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 %34(i32 %37, i32* %40, i32 %43, i32 %46, i32 %49, i32 %52, i32* %63, i64 %66, i32* %77, i64 %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* @MSG_DEBUG, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 (i32, i8*, ...) @wpa_printf(i32 %82, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %76, %24, %20
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
