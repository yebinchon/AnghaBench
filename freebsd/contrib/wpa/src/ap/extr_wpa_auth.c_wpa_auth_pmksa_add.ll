; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_auth_pmksa_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_auth_pmksa_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_state_machine = type { i64, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.eapol_state_machine = type { i32 }

@WPA_VERSION_WPA2 = common dso_local global i64 0, align 8
@PMK_LEN_SUITE_B_192 = common dso_local global i32 0, align 4
@PMK_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"RSN: Cache PMK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_auth_pmksa_add(%struct.wpa_state_machine* %0, i32* %1, i32 %2, i32 %3, %struct.eapol_state_machine* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wpa_state_machine*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.eapol_state_machine*, align 8
  store %struct.wpa_state_machine* %0, %struct.wpa_state_machine** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.eapol_state_machine* %4, %struct.eapol_state_machine** %11, align 8
  %12 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %7, align 8
  %13 = icmp eq %struct.wpa_state_machine* %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %5
  %15 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %7, align 8
  %16 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @WPA_VERSION_WPA2, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %28, label %20

20:                                               ; preds = %14
  %21 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %7, align 8
  %22 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %21, i32 0, i32 3
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20, %14, %5
  store i32 -1, i32* %6, align 4
  br label %86

29:                                               ; preds = %20
  %30 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %7, align 8
  %31 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @wpa_key_mgmt_sha384(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @PMK_LEN_SUITE_B_192, align 4
  %38 = icmp ugt i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @PMK_LEN_SUITE_B_192, align 4
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %39, %35
  br label %49

42:                                               ; preds = %29
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @PMK_LEN, align 4
  %45 = icmp ugt i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @PMK_LEN, align 4
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %46, %42
  br label %49

49:                                               ; preds = %48, %41
  %50 = load i32, i32* @MSG_DEBUG, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @wpa_hexdump_key(i32 %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %51, i32 %52)
  %54 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %7, align 8
  %55 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %54, i32 0, i32 3
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %7, align 8
  %62 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %7, align 8
  %66 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %7, align 8
  %70 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %69, i32 0, i32 3
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %7, align 8
  %75 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %11, align 8
  %79 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %7, align 8
  %80 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @pmksa_cache_auth_add(i32 %58, i32* %59, i32 %60, i32* null, i32 %64, i32 %68, i32 %73, i32 %76, i32 %77, %struct.eapol_state_machine* %78, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %49
  store i32 0, i32* %6, align 4
  br label %86

85:                                               ; preds = %49
  store i32 -1, i32* %6, align 4
  br label %86

86:                                               ; preds = %85, %84, %28
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i64 @wpa_key_mgmt_sha384(i32) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #1

declare dso_local i64 @pmksa_cache_auth_add(i32, i32*, i32, i32*, i32, i32, i32, i32, i32, %struct.eapol_state_machine*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
