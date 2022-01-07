; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_sm_parse_own_wpa_ie.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_sm_parse_own_wpa_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.wpa_ie_data = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"WPA: No WPA/RSN IE available from association info\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_sm_parse_own_wpa_ie(%struct.wpa_sm* %0, %struct.wpa_ie_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_sm*, align 8
  %5 = alloca %struct.wpa_ie_data*, align 8
  store %struct.wpa_sm* %0, %struct.wpa_sm** %4, align 8
  store %struct.wpa_ie_data* %1, %struct.wpa_ie_data** %5, align 8
  %6 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %7 = icmp eq %struct.wpa_sm* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %34

9:                                                ; preds = %2
  %10 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %11 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %9
  %15 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %16 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MSG_DEBUG, align 4
  %21 = call i32 @wpa_dbg(i32 %19, i32 %20, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %34

22:                                               ; preds = %9
  %23 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %24 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %27 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.wpa_ie_data*, %struct.wpa_ie_data** %5, align 8
  %30 = call i64 @wpa_parse_wpa_ie(i32* %25, i32 %28, %struct.wpa_ie_data* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  store i32 -2, i32* %3, align 4
  br label %34

33:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %32, %14, %8
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @wpa_dbg(i32, i32, i8*) #1

declare dso_local i64 @wpa_parse_wpa_ie(i32*, i32, %struct.wpa_ie_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
