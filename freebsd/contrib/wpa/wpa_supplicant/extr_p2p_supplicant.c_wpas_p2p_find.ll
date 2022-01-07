; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32*, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"P2P: Reject p2p_find operation%s%s\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c" (P2P disabled)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [23 x i8] c" (p2p_in_provisioning)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_p2p_find(%struct.wpa_supplicant* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5, i32 %6, i32 %7, i8** %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.wpa_supplicant*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8**, align 8
  %21 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32* %4, i32** %16, align 8
  store i32* %5, i32** %17, align 8
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i8** %8, i8*** %20, align 8
  store i32 %9, i32* %21, align 4
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %12, align 8
  %23 = call i32 @wpas_p2p_clear_pending_action_tx(%struct.wpa_supplicant* %22)
  %24 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %12, align 8
  %25 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %12, align 8
  %27 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %10
  %33 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %12, align 8
  %34 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %32
  %40 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %12, align 8
  %41 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %72

44:                                               ; preds = %39, %32, %10
  %45 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %12, align 8
  %46 = load i32, i32* @MSG_DEBUG, align 4
  %47 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %12, align 8
  %48 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %44
  %54 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %12, align 8
  %55 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  %60 = xor i1 %59, true
  br label %61

61:                                               ; preds = %53, %44
  %62 = phi i1 [ true, %44 ], [ %60, %53 ]
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %65 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %12, align 8
  %66 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %71 = call i32 @wpa_dbg(%struct.wpa_supplicant* %45, i32 %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %64, i8* %70)
  store i32 -1, i32* %11, align 4
  br label %90

72:                                               ; preds = %39
  %73 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %12, align 8
  %74 = call i32 @wpa_supplicant_cancel_sched_scan(%struct.wpa_supplicant* %73)
  %75 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %12, align 8
  %76 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %15, align 4
  %83 = load i32*, i32** %16, align 8
  %84 = load i32*, i32** %17, align 8
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* %19, align 4
  %87 = load i8**, i8*** %20, align 8
  %88 = load i32, i32* %21, align 4
  %89 = call i32 @p2p_find(i32* %79, i32 %80, i32 %81, i32 %82, i32* %83, i32* %84, i32 %85, i32 %86, i8** %87, i32 %88)
  store i32 %89, i32* %11, align 4
  br label %90

90:                                               ; preds = %72, %61
  %91 = load i32, i32* %11, align 4
  ret i32 %91
}

declare dso_local i32 @wpas_p2p_clear_pending_action_tx(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpa_dbg(%struct.wpa_supplicant*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @wpa_supplicant_cancel_sched_scan(%struct.wpa_supplicant*) #1

declare dso_local i32 @p2p_find(i32*, i32, i32, i32, i32*, i32*, i32, i32, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
