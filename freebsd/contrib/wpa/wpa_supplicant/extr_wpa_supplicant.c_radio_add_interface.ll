; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_radio_add_interface.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_radio_add_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_radio = type { i32, i32, i32 }
%struct.wpa_supplicant = type { i32, i32, %struct.wpa_supplicant*, %struct.wpa_radio*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wpa_supplicant* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Add interface %s to existing radio %s\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Add interface %s to a new radio %s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpa_radio* (%struct.wpa_supplicant*, i8*)* @radio_add_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpa_radio* @radio_add_interface(%struct.wpa_supplicant* %0, i8* %1) #0 {
  %3 = alloca %struct.wpa_radio*, align 8
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wpa_supplicant*, align 8
  %7 = alloca %struct.wpa_radio*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %9 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %8, i32 0, i32 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %11, align 8
  store %struct.wpa_supplicant* %12, %struct.wpa_supplicant** %6, align 8
  br label %13

13:                                               ; preds = %47, %2
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %18 = icmp ne %struct.wpa_supplicant* %17, null
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi i1 [ false, %13 ], [ %18, %16 ]
  br i1 %20, label %21, label %51

21:                                               ; preds = %19
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %23 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %22, i32 0, i32 3
  %24 = load %struct.wpa_radio*, %struct.wpa_radio** %23, align 8
  store %struct.wpa_radio* %24, %struct.wpa_radio** %7, align 8
  %25 = load %struct.wpa_radio*, %struct.wpa_radio** %7, align 8
  %26 = icmp ne %struct.wpa_radio* %25, null
  br i1 %26, label %27, label %47

27:                                               ; preds = %21
  %28 = load i8*, i8** %5, align 8
  %29 = load %struct.wpa_radio*, %struct.wpa_radio** %7, align 8
  %30 = getelementptr inbounds %struct.wpa_radio, %struct.wpa_radio* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @os_strcmp(i8* %28, i32 %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %27
  %35 = load i32, i32* @MSG_DEBUG, align 4
  %36 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %37 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @wpa_printf(i32 %35, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %38, i8* %39)
  %41 = load %struct.wpa_radio*, %struct.wpa_radio** %7, align 8
  %42 = getelementptr inbounds %struct.wpa_radio, %struct.wpa_radio* %41, i32 0, i32 0
  %43 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %44 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %43, i32 0, i32 0
  %45 = call i32 @dl_list_add(i32* %42, i32* %44)
  %46 = load %struct.wpa_radio*, %struct.wpa_radio** %7, align 8
  store %struct.wpa_radio* %46, %struct.wpa_radio** %3, align 8
  br label %90

47:                                               ; preds = %27, %21
  %48 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %49 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %48, i32 0, i32 2
  %50 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %49, align 8
  store %struct.wpa_supplicant* %50, %struct.wpa_supplicant** %6, align 8
  br label %13

51:                                               ; preds = %19
  %52 = load i32, i32* @MSG_DEBUG, align 4
  %53 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %54 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %5, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i8*, i8** %5, align 8
  br label %61

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %60, %58
  %62 = phi i8* [ %59, %58 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %60 ]
  %63 = call i32 @wpa_printf(i32 %52, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %55, i8* %62)
  %64 = call %struct.wpa_radio* @os_zalloc(i32 12)
  store %struct.wpa_radio* %64, %struct.wpa_radio** %7, align 8
  %65 = load %struct.wpa_radio*, %struct.wpa_radio** %7, align 8
  %66 = icmp eq %struct.wpa_radio* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  store %struct.wpa_radio* null, %struct.wpa_radio** %3, align 8
  br label %90

68:                                               ; preds = %61
  %69 = load i8*, i8** %5, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load %struct.wpa_radio*, %struct.wpa_radio** %7, align 8
  %73 = getelementptr inbounds %struct.wpa_radio, %struct.wpa_radio* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i8*, i8** %5, align 8
  %76 = call i32 @os_strlcpy(i32 %74, i8* %75, i32 4)
  br label %77

77:                                               ; preds = %71, %68
  %78 = load %struct.wpa_radio*, %struct.wpa_radio** %7, align 8
  %79 = getelementptr inbounds %struct.wpa_radio, %struct.wpa_radio* %78, i32 0, i32 0
  %80 = call i32 @dl_list_init(i32* %79)
  %81 = load %struct.wpa_radio*, %struct.wpa_radio** %7, align 8
  %82 = getelementptr inbounds %struct.wpa_radio, %struct.wpa_radio* %81, i32 0, i32 1
  %83 = call i32 @dl_list_init(i32* %82)
  %84 = load %struct.wpa_radio*, %struct.wpa_radio** %7, align 8
  %85 = getelementptr inbounds %struct.wpa_radio, %struct.wpa_radio* %84, i32 0, i32 0
  %86 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %87 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %86, i32 0, i32 0
  %88 = call i32 @dl_list_add(i32* %85, i32* %87)
  %89 = load %struct.wpa_radio*, %struct.wpa_radio** %7, align 8
  store %struct.wpa_radio* %89, %struct.wpa_radio** %3, align 8
  br label %90

90:                                               ; preds = %77, %67, %34
  %91 = load %struct.wpa_radio*, %struct.wpa_radio** %3, align 8
  ret %struct.wpa_radio* %91
}

declare dso_local i64 @os_strcmp(i8*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, i8*) #1

declare dso_local i32 @dl_list_add(i32*, i32*) #1

declare dso_local %struct.wpa_radio* @os_zalloc(i32) #1

declare dso_local i32 @os_strlcpy(i32, i8*, i32) #1

declare dso_local i32 @dl_list_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
