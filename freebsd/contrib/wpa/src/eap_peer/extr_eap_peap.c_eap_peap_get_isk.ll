; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_peap.c_eap_peap_get_isk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_peap.c_eap_peap_get_isk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_peap_data = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* (%struct.eap_sm*, i32*, i64*)*, i32 (%struct.eap_sm*, i32*)* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"EAP-PEAP: Could not get key material from Phase 2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_peap_data*, i32*, i64)* @eap_peap_get_isk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_peap_get_isk(%struct.eap_sm* %0, %struct.eap_peap_data* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca %struct.eap_peap_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store %struct.eap_peap_data* %1, %struct.eap_peap_data** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = load i64, i64* %9, align 8
  %14 = call i32 @os_memset(i32* %12, i32 0, i64 %13)
  %15 = load %struct.eap_peap_data*, %struct.eap_peap_data** %7, align 8
  %16 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp eq %struct.TYPE_2__* %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %4
  %20 = load %struct.eap_peap_data*, %struct.eap_peap_data** %7, align 8
  %21 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %38, label %24

24:                                               ; preds = %19
  %25 = load %struct.eap_peap_data*, %struct.eap_peap_data** %7, align 8
  %26 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32 (%struct.eap_sm*, i32*)*, i32 (%struct.eap_sm*, i32*)** %28, align 8
  %30 = icmp eq i32 (%struct.eap_sm*, i32*)* %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %24
  %32 = load %struct.eap_peap_data*, %struct.eap_peap_data** %7, align 8
  %33 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32* (%struct.eap_sm*, i32*, i64*)*, i32* (%struct.eap_sm*, i32*, i64*)** %35, align 8
  %37 = icmp eq i32* (%struct.eap_sm*, i32*, i64*)* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %31, %24, %19, %4
  store i32 0, i32* %5, align 4
  br label %79

39:                                               ; preds = %31
  %40 = load %struct.eap_peap_data*, %struct.eap_peap_data** %7, align 8
  %41 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32 (%struct.eap_sm*, i32*)*, i32 (%struct.eap_sm*, i32*)** %43, align 8
  %45 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %46 = load %struct.eap_peap_data*, %struct.eap_peap_data** %7, align 8
  %47 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 %44(%struct.eap_sm* %45, i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %39
  %52 = load %struct.eap_peap_data*, %struct.eap_peap_data** %7, align 8
  %53 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32* (%struct.eap_sm*, i32*, i64*)*, i32* (%struct.eap_sm*, i32*, i64*)** %55, align 8
  %57 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %58 = load %struct.eap_peap_data*, %struct.eap_peap_data** %7, align 8
  %59 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i32* %56(%struct.eap_sm* %57, i32* %60, i64* %11)
  store i32* %61, i32** %10, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %51, %39
  %64 = load i32, i32* @MSG_DEBUG, align 4
  %65 = call i32 @wpa_printf(i32 %64, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %79

66:                                               ; preds = %51
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* %9, align 8
  %69 = icmp ugt i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i64, i64* %9, align 8
  store i64 %71, i64* %11, align 8
  br label %72

72:                                               ; preds = %70, %66
  %73 = load i32*, i32** %8, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = load i64, i64* %11, align 8
  %76 = call i32 @os_memcpy(i32* %73, i32* %74, i64 %75)
  %77 = load i32*, i32** %10, align 8
  %78 = call i32 @os_free(i32* %77)
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %72, %63, %38
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @os_memset(i32*, i32, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
