; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_drv_ops.c_hostapd_build_ap_extra_ies.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_drv_ops.c_hostapd_build_ap_extra_ies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_4__*, i64, %struct.wpabuf*, %struct.wpabuf*, %struct.wpabuf*, %struct.wpabuf*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, %struct.wpabuf*, %struct.wpabuf*, i64, i64 }
%struct.wpabuf = type { i32 }
%struct.TYPE_3__ = type { %struct.wpabuf* }

@P2P_MANAGE = common dso_local global i32 0, align 4
@P2P_SC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostapd_build_ap_extra_ies(%struct.hostapd_data* %0, %struct.wpabuf** %1, %struct.wpabuf** %2, %struct.wpabuf** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hostapd_data*, align 8
  %7 = alloca %struct.wpabuf**, align 8
  %8 = alloca %struct.wpabuf**, align 8
  %9 = alloca %struct.wpabuf**, align 8
  %10 = alloca %struct.wpabuf*, align 8
  %11 = alloca %struct.wpabuf*, align 8
  %12 = alloca %struct.wpabuf*, align 8
  %13 = alloca [200 x i32], align 16
  %14 = alloca i32*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %6, align 8
  store %struct.wpabuf** %1, %struct.wpabuf*** %7, align 8
  store %struct.wpabuf** %2, %struct.wpabuf*** %8, align 8
  store %struct.wpabuf** %3, %struct.wpabuf*** %9, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %10, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %11, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %12, align 8
  %15 = load %struct.wpabuf**, %struct.wpabuf*** %9, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %15, align 8
  %16 = load %struct.wpabuf**, %struct.wpabuf*** %8, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %16, align 8
  %17 = load %struct.wpabuf**, %struct.wpabuf*** %7, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %17, align 8
  %18 = getelementptr inbounds [200 x i32], [200 x i32]* %13, i64 0, i64 0
  store i32* %18, i32** %14, align 8
  %19 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %20 = load i32*, i32** %14, align 8
  %21 = call i32* @hostapd_eid_time_adv(%struct.hostapd_data* %19, i32* %20)
  store i32* %21, i32** %14, align 8
  %22 = getelementptr inbounds [200 x i32], [200 x i32]* %13, i64 0, i64 0
  %23 = load i32*, i32** %14, align 8
  %24 = getelementptr inbounds [200 x i32], [200 x i32]* %13, i64 0, i64 0
  %25 = ptrtoint i32* %23 to i64
  %26 = ptrtoint i32* %24 to i64
  %27 = sub i64 %25, %26
  %28 = sdiv exact i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = call i64 @add_buf_data(%struct.wpabuf** %10, i32* %22, i32 %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  br label %134

33:                                               ; preds = %4
  %34 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %35 = load i32*, i32** %14, align 8
  %36 = call i32* @hostapd_eid_time_zone(%struct.hostapd_data* %34, i32* %35)
  store i32* %36, i32** %14, align 8
  %37 = getelementptr inbounds [200 x i32], [200 x i32]* %13, i64 0, i64 0
  %38 = load i32*, i32** %14, align 8
  %39 = getelementptr inbounds [200 x i32], [200 x i32]* %13, i64 0, i64 0
  %40 = ptrtoint i32* %38 to i64
  %41 = ptrtoint i32* %39 to i64
  %42 = sub i64 %40, %41
  %43 = sdiv exact i64 %42, 4
  %44 = trunc i64 %43 to i32
  %45 = call i64 @add_buf_data(%struct.wpabuf** %11, i32* %37, i32 %44)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %33
  br label %134

48:                                               ; preds = %33
  %49 = getelementptr inbounds [200 x i32], [200 x i32]* %13, i64 0, i64 0
  store i32* %49, i32** %14, align 8
  %50 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = call i32* @hostapd_eid_ext_capab(%struct.hostapd_data* %50, i32* %51)
  store i32* %52, i32** %14, align 8
  %53 = getelementptr inbounds [200 x i32], [200 x i32]* %13, i64 0, i64 0
  %54 = load i32*, i32** %14, align 8
  %55 = getelementptr inbounds [200 x i32], [200 x i32]* %13, i64 0, i64 0
  %56 = ptrtoint i32* %54 to i64
  %57 = ptrtoint i32* %55 to i64
  %58 = sub i64 %56, %57
  %59 = sdiv exact i64 %58, 4
  %60 = trunc i64 %59 to i32
  %61 = call i64 @add_buf_data(%struct.wpabuf** %12, i32* %53, i32 %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %48
  br label %134

64:                                               ; preds = %48
  %65 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %66 = load i32*, i32** %14, align 8
  %67 = call i32* @hostapd_eid_interworking(%struct.hostapd_data* %65, i32* %66)
  store i32* %67, i32** %14, align 8
  %68 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %69 = load i32*, i32** %14, align 8
  %70 = call i32* @hostapd_eid_adv_proto(%struct.hostapd_data* %68, i32* %69)
  store i32* %70, i32** %14, align 8
  %71 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %72 = load i32*, i32** %14, align 8
  %73 = call i32* @hostapd_eid_roaming_consortium(%struct.hostapd_data* %71, i32* %72)
  store i32* %73, i32** %14, align 8
  %74 = getelementptr inbounds [200 x i32], [200 x i32]* %13, i64 0, i64 0
  %75 = load i32*, i32** %14, align 8
  %76 = getelementptr inbounds [200 x i32], [200 x i32]* %13, i64 0, i64 0
  %77 = ptrtoint i32* %75 to i64
  %78 = ptrtoint i32* %76 to i64
  %79 = sub i64 %77, %78
  %80 = sdiv exact i64 %79, 4
  %81 = trunc i64 %80 to i32
  %82 = call i64 @add_buf_data(%struct.wpabuf** %10, i32* %74, i32 %81)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %95, label %84

84:                                               ; preds = %64
  %85 = getelementptr inbounds [200 x i32], [200 x i32]* %13, i64 0, i64 0
  %86 = load i32*, i32** %14, align 8
  %87 = getelementptr inbounds [200 x i32], [200 x i32]* %13, i64 0, i64 0
  %88 = ptrtoint i32* %86 to i64
  %89 = ptrtoint i32* %87 to i64
  %90 = sub i64 %88, %89
  %91 = sdiv exact i64 %90, 4
  %92 = trunc i64 %91 to i32
  %93 = call i64 @add_buf_data(%struct.wpabuf** %11, i32* %85, i32 %92)
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %84, %64
  br label %134

96:                                               ; preds = %84
  %97 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %98 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %97, i32 0, i32 5
  %99 = load %struct.wpabuf*, %struct.wpabuf** %98, align 8
  %100 = call i64 @add_buf(%struct.wpabuf** %10, %struct.wpabuf* %99)
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %96
  %103 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %104 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %103, i32 0, i32 4
  %105 = load %struct.wpabuf*, %struct.wpabuf** %104, align 8
  %106 = call i64 @add_buf(%struct.wpabuf** %11, %struct.wpabuf* %105)
  %107 = icmp slt i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %102, %96
  br label %134

109:                                              ; preds = %102
  %110 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %111 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %110, i32 0, i32 0
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 2
  %114 = load %struct.wpabuf*, %struct.wpabuf** %113, align 8
  %115 = call i64 @add_buf(%struct.wpabuf** %10, %struct.wpabuf* %114)
  %116 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %117 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %116, i32 0, i32 0
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 2
  %120 = load %struct.wpabuf*, %struct.wpabuf** %119, align 8
  %121 = call i64 @add_buf(%struct.wpabuf** %11, %struct.wpabuf* %120)
  %122 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %123 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %122, i32 0, i32 0
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load %struct.wpabuf*, %struct.wpabuf** %125, align 8
  %127 = call i64 @add_buf(%struct.wpabuf** %12, %struct.wpabuf* %126)
  %128 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %129 = load %struct.wpabuf**, %struct.wpabuf*** %7, align 8
  store %struct.wpabuf* %128, %struct.wpabuf** %129, align 8
  %130 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %131 = load %struct.wpabuf**, %struct.wpabuf*** %8, align 8
  store %struct.wpabuf* %130, %struct.wpabuf** %131, align 8
  %132 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %133 = load %struct.wpabuf**, %struct.wpabuf*** %9, align 8
  store %struct.wpabuf* %132, %struct.wpabuf** %133, align 8
  store i32 0, i32* %5, align 4
  br label %141

134:                                              ; preds = %108, %95, %63, %47, %32
  %135 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %136 = call i32 @wpabuf_free(%struct.wpabuf* %135)
  %137 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %138 = call i32 @wpabuf_free(%struct.wpabuf* %137)
  %139 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %140 = call i32 @wpabuf_free(%struct.wpabuf* %139)
  store i32 -1, i32* %5, align 4
  br label %141

141:                                              ; preds = %134, %109
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local i32* @hostapd_eid_time_adv(%struct.hostapd_data*, i32*) #1

declare dso_local i64 @add_buf_data(%struct.wpabuf**, i32*, i32) #1

declare dso_local i32* @hostapd_eid_time_zone(%struct.hostapd_data*, i32*) #1

declare dso_local i32* @hostapd_eid_ext_capab(%struct.hostapd_data*, i32*) #1

declare dso_local i32* @hostapd_eid_interworking(%struct.hostapd_data*, i32*) #1

declare dso_local i32* @hostapd_eid_adv_proto(%struct.hostapd_data*, i32*) #1

declare dso_local i32* @hostapd_eid_roaming_consortium(%struct.hostapd_data*, i32*) #1

declare dso_local i64 @add_buf(%struct.wpabuf**, %struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
