; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_ctrl_iface_get_capability_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_ctrl_iface_get_capability_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.wpa_driver_capa = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"CCMP TKIP WEP104 WEP40\00", align 1
@ciphers = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.wpa_driver_capa*, i8*, i64)* @ctrl_iface_get_capability_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_iface_get_capability_group(i32 %0, i8* %1, %struct.wpa_driver_capa* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.wpa_driver_capa*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store %struct.wpa_driver_capa* %2, %struct.wpa_driver_capa** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load i8*, i8** %10, align 8
  store i8* %17, i8** %13, align 8
  %18 = load i8*, i8** %13, align 8
  %19 = load i64, i64* %11, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  store i8* %20, i8** %14, align 8
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %5
  %24 = load i8*, i8** %8, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %108

27:                                               ; preds = %23
  %28 = load i8*, i8** %10, align 8
  %29 = load i64, i64* %11, align 8
  %30 = call i64 @os_strlcpy(i8* %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %29)
  store i64 %30, i64* %15, align 8
  %31 = load i64, i64* %15, align 8
  %32 = load i64, i64* %11, align 8
  %33 = icmp uge i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 -1, i32* %6, align 4
  br label %108

35:                                               ; preds = %27
  %36 = load i64, i64* %15, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %6, align 4
  br label %108

38:                                               ; preds = %5
  store i32 0, i32* %16, align 4
  br label %39

39:                                               ; preds = %98, %38
  %40 = load i32, i32* %16, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ciphers, align 8
  %42 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %41)
  %43 = icmp ult i32 %40, %42
  br i1 %43, label %44, label %101

44:                                               ; preds = %39
  %45 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %9, align 8
  %46 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ciphers, align 8
  %49 = load i32, i32* %16, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %47, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %97

56:                                               ; preds = %44
  %57 = load i8*, i8** %13, align 8
  %58 = load i8*, i8** %14, align 8
  %59 = load i8*, i8** %13, align 8
  %60 = ptrtoint i8* %58 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = trunc i64 %62 to i32
  %64 = load i8*, i8** %13, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = icmp eq i8* %64, %65
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ciphers, align 8
  %70 = load i32, i32* %16, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @os_snprintf(i8* %57, i32 %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %68, i32 %74)
  store i32 %75, i32* %12, align 4
  %76 = load i8*, i8** %14, align 8
  %77 = load i8*, i8** %13, align 8
  %78 = ptrtoint i8* %76 to i64
  %79 = ptrtoint i8* %77 to i64
  %80 = sub i64 %78, %79
  %81 = trunc i64 %80 to i32
  %82 = load i32, i32* %12, align 4
  %83 = call i64 @os_snprintf_error(i32 %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %56
  %86 = load i8*, i8** %13, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = ptrtoint i8* %86 to i64
  %89 = ptrtoint i8* %87 to i64
  %90 = sub i64 %88, %89
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %6, align 4
  br label %108

92:                                               ; preds = %56
  %93 = load i32, i32* %12, align 4
  %94 = load i8*, i8** %13, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  store i8* %96, i8** %13, align 8
  br label %97

97:                                               ; preds = %92, %44
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %16, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %16, align 4
  br label %39

101:                                              ; preds = %39
  %102 = load i8*, i8** %13, align 8
  %103 = load i8*, i8** %10, align 8
  %104 = ptrtoint i8* %102 to i64
  %105 = ptrtoint i8* %103 to i64
  %106 = sub i64 %104, %105
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %101, %85, %35, %34, %26
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local i64 @os_strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i64 @os_snprintf_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
