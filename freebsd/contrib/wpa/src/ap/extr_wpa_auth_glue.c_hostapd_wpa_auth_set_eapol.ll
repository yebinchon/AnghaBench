; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth_glue.c_hostapd_wpa_auth_set_eapol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth_glue.c_hostapd_wpa_auth_set_eapol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }
%struct.sta_info = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i8*, %struct.TYPE_4__*, i8*, i32 }
%struct.TYPE_4__ = type { i8* }

@Auto = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32, i32)* @hostapd_wpa_auth_set_eapol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostapd_wpa_auth_set_eapol(i8* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hostapd_data*, align 8
  %10 = alloca %struct.sta_info*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.hostapd_data*
  store %struct.hostapd_data* %12, %struct.hostapd_data** %9, align 8
  %13 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call %struct.sta_info* @ap_get_sta(%struct.hostapd_data* %13, i32* %14)
  store %struct.sta_info* %15, %struct.sta_info** %10, align 8
  %16 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %17 = icmp eq %struct.sta_info* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %122

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %122 [
    i32 129, label %21
    i32 128, label %27
    i32 135, label %33
    i32 130, label %38
    i32 131, label %50
    i32 133, label %69
    i32 132, label %90
    i32 134, label %109
  ]

21:                                               ; preds = %19
  %22 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %23 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @ieee802_1x_notify_port_enabled(%struct.TYPE_5__* %24, i32 %25)
  br label %122

27:                                               ; preds = %19
  %28 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %29 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @ieee802_1x_notify_port_valid(%struct.TYPE_5__* %30, i32 %31)
  br label %122

33:                                               ; preds = %19
  %34 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  %35 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @ieee802_1x_set_sta_authorized(%struct.hostapd_data* %34, %struct.sta_info* %35, i32 %36)
  br label %122

38:                                               ; preds = %19
  %39 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %40 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = icmp ne %struct.TYPE_5__* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i32, i32* @Auto, align 4
  %45 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %46 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 4
  store i32 %44, i32* %48, align 8
  br label %49

49:                                               ; preds = %43, %38
  br label %122

50:                                               ; preds = %19
  %51 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %52 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = icmp ne %struct.TYPE_5__* %53, null
  br i1 %54, label %55, label %68

55:                                               ; preds = %50
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i8*, i8** @TRUE, align 8
  br label %62

60:                                               ; preds = %55
  %61 = load i8*, i8** @FALSE, align 8
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i8* [ %59, %58 ], [ %61, %60 ]
  %64 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %65 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 3
  store i8* %63, i8** %67, align 8
  br label %68

68:                                               ; preds = %62, %50
  br label %122

69:                                               ; preds = %19
  %70 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %71 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = icmp ne %struct.TYPE_5__* %72, null
  br i1 %73, label %74, label %89

74:                                               ; preds = %69
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i8*, i8** @TRUE, align 8
  br label %81

79:                                               ; preds = %74
  %80 = load i8*, i8** @FALSE, align 8
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i8* [ %78, %77 ], [ %80, %79 ]
  %83 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %84 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %83, i32 0, i32 0
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i8* %82, i8** %88, align 8
  br label %89

89:                                               ; preds = %81, %69
  br label %122

90:                                               ; preds = %19
  %91 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %92 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %91, i32 0, i32 0
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = icmp ne %struct.TYPE_5__* %93, null
  br i1 %94, label %95, label %108

95:                                               ; preds = %90
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = load i8*, i8** @TRUE, align 8
  br label %102

100:                                              ; preds = %95
  %101 = load i8*, i8** @FALSE, align 8
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i8* [ %99, %98 ], [ %101, %100 ]
  %104 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %105 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %104, i32 0, i32 0
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  store i8* %103, i8** %107, align 8
  br label %108

108:                                              ; preds = %102, %90
  br label %122

109:                                              ; preds = %19
  %110 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %111 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %110, i32 0, i32 0
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = icmp ne %struct.TYPE_5__* %112, null
  br i1 %113, label %114, label %121

114:                                              ; preds = %109
  %115 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %116 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %115, i32 0, i32 0
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 8
  br label %121

121:                                              ; preds = %114, %109
  br label %122

122:                                              ; preds = %18, %19, %121, %108, %89, %68, %49, %33, %27, %21
  ret void
}

declare dso_local %struct.sta_info* @ap_get_sta(%struct.hostapd_data*, i32*) #1

declare dso_local i32 @ieee802_1x_notify_port_enabled(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @ieee802_1x_notify_port_valid(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @ieee802_1x_set_sta_authorized(%struct.hostapd_data*, %struct.sta_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
