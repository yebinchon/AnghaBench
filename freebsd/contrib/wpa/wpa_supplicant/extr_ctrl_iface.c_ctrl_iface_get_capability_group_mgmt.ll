; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_ctrl_iface_get_capability_group_mgmt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_ctrl_iface_get_capability_group_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.wpa_driver_capa = type { i32 }

@ciphers_group_mgmt = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.wpa_driver_capa*, i8*, i64)* @ctrl_iface_get_capability_group_mgmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_iface_get_capability_group_mgmt(i32 %0, i8* %1, %struct.wpa_driver_capa* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.wpa_driver_capa*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store %struct.wpa_driver_capa* %2, %struct.wpa_driver_capa** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load i8*, i8** %10, align 8
  store i8* %16, i8** %13, align 8
  %17 = load i8*, i8** %13, align 8
  %18 = load i64, i64* %11, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  store i8* %19, i8** %14, align 8
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %93

23:                                               ; preds = %5
  store i32 0, i32* %15, align 4
  br label %24

24:                                               ; preds = %83, %23
  %25 = load i32, i32* %15, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ciphers_group_mgmt, align 8
  %27 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %26)
  %28 = icmp ult i32 %25, %27
  br i1 %28, label %29, label %86

29:                                               ; preds = %24
  %30 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %9, align 8
  %31 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ciphers_group_mgmt, align 8
  %34 = load i32, i32* %15, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %32, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %82

41:                                               ; preds = %29
  %42 = load i8*, i8** %13, align 8
  %43 = load i8*, i8** %14, align 8
  %44 = load i8*, i8** %13, align 8
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = trunc i64 %47 to i32
  %49 = load i8*, i8** %13, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = icmp eq i8* %49, %50
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ciphers_group_mgmt, align 8
  %55 = load i32, i32* %15, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @os_snprintf(i8* %42, i32 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %53, i32 %59)
  store i32 %60, i32* %12, align 4
  %61 = load i8*, i8** %14, align 8
  %62 = load i8*, i8** %13, align 8
  %63 = ptrtoint i8* %61 to i64
  %64 = ptrtoint i8* %62 to i64
  %65 = sub i64 %63, %64
  %66 = trunc i64 %65 to i32
  %67 = load i32, i32* %12, align 4
  %68 = call i64 @os_snprintf_error(i32 %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %41
  %71 = load i8*, i8** %13, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = ptrtoint i8* %71 to i64
  %74 = ptrtoint i8* %72 to i64
  %75 = sub i64 %73, %74
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %6, align 4
  br label %93

77:                                               ; preds = %41
  %78 = load i32, i32* %12, align 4
  %79 = load i8*, i8** %13, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  store i8* %81, i8** %13, align 8
  br label %82

82:                                               ; preds = %77, %29
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %15, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %15, align 4
  br label %24

86:                                               ; preds = %24
  %87 = load i8*, i8** %13, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = ptrtoint i8* %87 to i64
  %90 = ptrtoint i8* %88 to i64
  %91 = sub i64 %89, %90
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %86, %70, %22
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i64 @os_snprintf_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
