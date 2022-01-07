; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_supp/extr_eapol_supp_sm.c_eapol_port_timers_tick.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_supp/extr_eapol_supp_sm.c_eapol_port_timers_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eapol_sm = type { i32, i32, i32, i32, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"EAPOL: authWhile --> 0\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"EAPOL: heldWhile --> 0\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"EAPOL: startWhen --> 0\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"EAPOL: idleWhile --> 0\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"EAPOL: disable timer tick\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @eapol_port_timers_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eapol_port_timers_tick(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.eapol_sm*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.eapol_sm*
  store %struct.eapol_sm* %7, %struct.eapol_sm** %5, align 8
  %8 = load %struct.eapol_sm*, %struct.eapol_sm** %5, align 8
  %9 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = load %struct.eapol_sm*, %struct.eapol_sm** %5, align 8
  %14 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %14, align 8
  %17 = load %struct.eapol_sm*, %struct.eapol_sm** %5, align 8
  %18 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = load i32, i32* @MSG_DEBUG, align 4
  %23 = call i32 @wpa_printf(i32 %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %12
  br label %25

25:                                               ; preds = %24, %2
  %26 = load %struct.eapol_sm*, %struct.eapol_sm** %5, align 8
  %27 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = load %struct.eapol_sm*, %struct.eapol_sm** %5, align 8
  %32 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %32, align 4
  %35 = load %struct.eapol_sm*, %struct.eapol_sm** %5, align 8
  %36 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i32, i32* @MSG_DEBUG, align 4
  %41 = call i32 @wpa_printf(i32 %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %30
  br label %43

43:                                               ; preds = %42, %25
  %44 = load %struct.eapol_sm*, %struct.eapol_sm** %5, align 8
  %45 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %43
  %49 = load %struct.eapol_sm*, %struct.eapol_sm** %5, align 8
  %50 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %50, align 8
  %53 = load %struct.eapol_sm*, %struct.eapol_sm** %5, align 8
  %54 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load i32, i32* @MSG_DEBUG, align 4
  %59 = call i32 @wpa_printf(i32 %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %48
  br label %61

61:                                               ; preds = %60, %43
  %62 = load %struct.eapol_sm*, %struct.eapol_sm** %5, align 8
  %63 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %61
  %67 = load %struct.eapol_sm*, %struct.eapol_sm** %5, align 8
  %68 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %68, align 4
  %71 = load %struct.eapol_sm*, %struct.eapol_sm** %5, align 8
  %72 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %66
  %76 = load i32, i32* @MSG_DEBUG, align 4
  %77 = call i32 @wpa_printf(i32 %76, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %66
  br label %79

79:                                               ; preds = %78, %61
  %80 = load %struct.eapol_sm*, %struct.eapol_sm** %5, align 8
  %81 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.eapol_sm*, %struct.eapol_sm** %5, align 8
  %84 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %82, %85
  %87 = load %struct.eapol_sm*, %struct.eapol_sm** %5, align 8
  %88 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %86, %89
  %91 = load %struct.eapol_sm*, %struct.eapol_sm** %5, align 8
  %92 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %90, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %79
  %97 = load i8*, i8** %3, align 8
  %98 = load %struct.eapol_sm*, %struct.eapol_sm** %5, align 8
  %99 = call i64 @eloop_register_timeout(i32 1, i32 0, void (i8*, i8*)* @eapol_port_timers_tick, i8* %97, %struct.eapol_sm* %98)
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load %struct.eapol_sm*, %struct.eapol_sm** %5, align 8
  %103 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %102, i32 0, i32 4
  store i64 0, i64* %103, align 8
  br label %104

104:                                              ; preds = %101, %96
  br label %110

105:                                              ; preds = %79
  %106 = load i32, i32* @MSG_DEBUG, align 4
  %107 = call i32 @wpa_printf(i32 %106, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %108 = load %struct.eapol_sm*, %struct.eapol_sm** %5, align 8
  %109 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %108, i32 0, i32 4
  store i64 0, i64* %109, align 8
  br label %110

110:                                              ; preds = %105, %104
  %111 = load %struct.eapol_sm*, %struct.eapol_sm** %5, align 8
  %112 = call i32 @eapol_sm_step(%struct.eapol_sm* %111)
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @eloop_register_timeout(i32, i32, void (i8*, i8*)*, i8*, %struct.eapol_sm*) #1

declare dso_local i32 @eapol_sm_step(%struct.eapol_sm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
