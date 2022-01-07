; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_roaming_prio.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_roaming_prio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.wpa_cred = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.wpa_bss = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"Interworking: No ANQP domain name info -> use default roaming partner priority 128\00", align 1
@.str.1 = private unnamed_addr constant [95 x i8] c"Interworking: Determined to be home SP -> use maximum preference 0 as roaming partner priority\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"Interworking: Roaming partner preference match - priority %u\00", align 1
@.str.3 = private unnamed_addr constant [93 x i8] c"Interworking: No roaming partner preference match - use default roaming partner priority 128\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, %struct.wpa_cred*, %struct.wpa_bss*)* @roaming_prio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @roaming_prio(%struct.wpa_supplicant* %0, %struct.wpa_cred* %1, %struct.wpa_bss* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca %struct.wpa_cred*, align 8
  %7 = alloca %struct.wpa_bss*, align 8
  %8 = alloca i64, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %5, align 8
  store %struct.wpa_cred* %1, %struct.wpa_cred** %6, align 8
  store %struct.wpa_bss* %2, %struct.wpa_bss** %7, align 8
  %9 = load %struct.wpa_bss*, %struct.wpa_bss** %7, align 8
  %10 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = icmp eq %struct.TYPE_3__* %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %3
  %14 = load %struct.wpa_bss*, %struct.wpa_bss** %7, align 8
  %15 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %13, %3
  %21 = load i32, i32* @MSG_DEBUG, align 4
  %22 = call i32 (i32, i8*, ...) @wpa_printf(i32 %21, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0))
  store i32 128, i32* %4, align 4
  br label %81

23:                                               ; preds = %13
  %24 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %25 = load %struct.wpa_cred*, %struct.wpa_cred** %6, align 8
  %26 = load %struct.wpa_bss*, %struct.wpa_bss** %7, align 8
  %27 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i64 @interworking_home_sp_cred(%struct.wpa_supplicant* %24, %struct.wpa_cred* %25, i32* %30)
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load i32, i32* @MSG_DEBUG, align 4
  %35 = call i32 (i32, i8*, ...) @wpa_printf(i32 %34, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %81

36:                                               ; preds = %23
  store i64 0, i64* %8, align 8
  br label %37

37:                                               ; preds = %75, %36
  %38 = load i64, i64* %8, align 8
  %39 = load %struct.wpa_cred*, %struct.wpa_cred** %6, align 8
  %40 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ult i64 %38, %41
  br i1 %42, label %43, label %78

43:                                               ; preds = %37
  %44 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %45 = load %struct.wpa_cred*, %struct.wpa_cred** %6, align 8
  %46 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %48
  %50 = load %struct.wpa_bss*, %struct.wpa_bss** %7, align 8
  %51 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i64 @roaming_partner_match(%struct.wpa_supplicant* %44, %struct.TYPE_4__* %49, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %43
  %58 = load i32, i32* @MSG_DEBUG, align 4
  %59 = load %struct.wpa_cred*, %struct.wpa_cred** %6, align 8
  %60 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i64, i64* %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i32, i8*, ...) @wpa_printf(i32 %58, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load %struct.wpa_cred*, %struct.wpa_cred** %6, align 8
  %68 = getelementptr inbounds %struct.wpa_cred, %struct.wpa_cred* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i64, i64* %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %4, align 4
  br label %81

74:                                               ; preds = %43
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %8, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %8, align 8
  br label %37

78:                                               ; preds = %37
  %79 = load i32, i32* @MSG_DEBUG, align 4
  %80 = call i32 (i32, i8*, ...) @wpa_printf(i32 %79, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.3, i64 0, i64 0))
  store i32 128, i32* %4, align 4
  br label %81

81:                                               ; preds = %78, %57, %33, %20
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @interworking_home_sp_cred(%struct.wpa_supplicant*, %struct.wpa_cred*, i32*) #1

declare dso_local i64 @roaming_partner_match(%struct.wpa_supplicant*, %struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
