; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface_unix.c_wpa_supplicant_ctrl_iface_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface_unix.c_wpa_supplicant_ctrl_iface_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [5 x i8] c"DIR=\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c" GROUP=\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.wpa_supplicant*)* @wpa_supplicant_ctrl_iface_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @wpa_supplicant_ctrl_iface_path(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store i8* null, i8** %7, align 8
  %10 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %11 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %81

17:                                               ; preds = %1
  %18 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %19 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i8* @os_strdup(i32* %22)
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  store i8* null, i8** %2, align 8
  br label %81

27:                                               ; preds = %17
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @os_strncmp(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 4
  store i8* %33, i8** %7, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i8* @os_strstr(i8* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i8* %35, i8** %9, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i8*, i8** %9, align 8
  store i8 0, i8* %39, align 1
  br label %40

40:                                               ; preds = %38, %31
  br label %43

41:                                               ; preds = %27
  %42 = load i8*, i8** %6, align 8
  store i8* %42, i8** %7, align 8
  br label %43

43:                                               ; preds = %41, %40
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @os_strlen(i8* %44)
  %46 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %47 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @os_strlen(i8* %48)
  %50 = add nsw i32 %45, %49
  %51 = add nsw i32 %50, 2
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %5, align 8
  %53 = load i64, i64* %5, align 8
  %54 = call i8* @os_malloc(i64 %53)
  store i8* %54, i8** %4, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %43
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @os_free(i8* %58)
  store i8* null, i8** %2, align 8
  br label %81

60:                                               ; preds = %43
  %61 = load i8*, i8** %4, align 8
  %62 = load i64, i64* %5, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %65 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @os_snprintf(i8* %61, i64 %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %63, i8* %66)
  store i32 %67, i32* %8, align 4
  %68 = load i64, i64* %5, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i64 @os_snprintf_error(i64 %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %60
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @os_free(i8* %73)
  %75 = load i8*, i8** %4, align 8
  %76 = call i32 @os_free(i8* %75)
  store i8* null, i8** %2, align 8
  br label %81

77:                                               ; preds = %60
  %78 = load i8*, i8** %6, align 8
  %79 = call i32 @os_free(i8* %78)
  %80 = load i8*, i8** %4, align 8
  store i8* %80, i8** %2, align 8
  br label %81

81:                                               ; preds = %77, %72, %57, %26, %16
  %82 = load i8*, i8** %2, align 8
  ret i8* %82
}

declare dso_local i8* @os_strdup(i32*) #1

declare dso_local i64 @os_strncmp(i8*, i8*, i32) #1

declare dso_local i8* @os_strstr(i8*, i8*) #1

declare dso_local i32 @os_strlen(i8*) #1

declare dso_local i8* @os_malloc(i64) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @os_snprintf(i8*, i64, i8*, i8*, i8*) #1

declare dso_local i64 @os_snprintf_error(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
