; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_pd.c_p2ps_add_new_group_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_pd.c_p2ps_add_new_group_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { i32, i64, %struct.TYPE_4__*, i32*, i32*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (i32, i32*, i32*, i64*, i32*, i32*)*, i32*, i32 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.p2p_device = type { i32 }
%struct.wpabuf = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@SSID_MAX_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p2p_data*, %struct.p2p_device*, %struct.wpabuf*)* @p2ps_add_new_group_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p2ps_add_new_group_info(%struct.p2p_data* %0, %struct.p2p_device* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca %struct.p2p_data*, align 8
  %5 = alloca %struct.p2p_device*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.p2p_data* %0, %struct.p2p_data** %4, align 8
  store %struct.p2p_device* %1, %struct.p2p_device** %5, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %6, align 8
  %15 = load i32, i32* @ETH_ALEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i32, i32* @SSID_MAX_LEN, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %22 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %23 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32 (i32, i32*, i32*, i64*, i32*, i32*)*, i32 (i32, i32*, i32*, i64*, i32*, i32*)** %25, align 8
  %27 = icmp ne i32 (i32, i32*, i32*, i64*, i32*, i32*)* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %3
  store i32 1, i32* %14, align 4
  br label %132

29:                                               ; preds = %3
  %30 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %31 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32 (i32, i32*, i32*, i64*, i32*, i32*)*, i32 (i32, i32*, i32*, i64*, i32*, i32*)** %33, align 8
  %35 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %36 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %35, i32 0, i32 2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 %34(i32 %39, i32* %18, i32* %21, i64* %11, i32* %12, i32* %13)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %85

43:                                               ; preds = %29
  %44 = load i32, i32* %13, align 4
  %45 = icmp ugt i32 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %43
  %47 = load i32, i32* %13, align 4
  %48 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %49 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %48, i32 0, i32 5
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 8
  %52 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %53 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %52, i32 0, i32 5
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load %struct.p2p_device*, %struct.p2p_device** %5, align 8
  %57 = icmp ne %struct.p2p_device* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %46
  %59 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %60 = load %struct.p2p_device*, %struct.p2p_device** %5, align 8
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @p2p_prepare_channel(%struct.p2p_data* %59, %struct.p2p_device* %60, i32 %61, i32 0, i32 0)
  br label %63

63:                                               ; preds = %58, %46
  br label %64

64:                                               ; preds = %63, %43
  %65 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %66 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %67 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %66, i32 0, i32 2
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* %11, align 8
  %72 = call i32 @p2p_buf_add_group_id(%struct.wpabuf* %65, i32* %70, i32* %21, i64 %71)
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %64
  %76 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %77 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %78 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %77, i32 0, i32 3
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @p2p_buf_add_intended_addr(%struct.wpabuf* %76, i32* %79)
  br label %84

81:                                               ; preds = %64
  %82 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %83 = call i32 @p2p_buf_add_intended_addr(%struct.wpabuf* %82, i32* %18)
  br label %84

84:                                               ; preds = %81, %75
  br label %131

85:                                               ; preds = %29
  %86 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %87 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %100, label %90

90:                                               ; preds = %85
  %91 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %92 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %93 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %92, i32 0, i32 4
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %96 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %95, i32 0, i32 1
  %97 = call i32 @p2p_build_ssid(%struct.p2p_data* %91, i32* %94, i64* %96)
  %98 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %99 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  br label %100

100:                                              ; preds = %90, %85
  %101 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %102 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %103 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %102, i32 0, i32 2
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %108 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %107, i32 0, i32 4
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %111 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @p2p_buf_add_group_id(%struct.wpabuf* %101, i32* %106, i32* %109, i64 %112)
  %114 = load i32, i32* %12, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %100
  %117 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %118 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %119 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %118, i32 0, i32 3
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @p2p_buf_add_intended_addr(%struct.wpabuf* %117, i32* %120)
  br label %130

122:                                              ; preds = %100
  %123 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %124 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %125 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %124, i32 0, i32 2
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @p2p_buf_add_intended_addr(%struct.wpabuf* %123, i32* %128)
  br label %130

130:                                              ; preds = %122, %116
  br label %131

131:                                              ; preds = %130, %84
  store i32 0, i32* %14, align 4
  br label %132

132:                                              ; preds = %131, %28
  %133 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %133)
  %134 = load i32, i32* %14, align 4
  switch i32 %134, label %136 [
    i32 0, label %135
    i32 1, label %135
  ]

135:                                              ; preds = %132, %132
  ret void

136:                                              ; preds = %132
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @p2p_prepare_channel(%struct.p2p_data*, %struct.p2p_device*, i32, i32, i32) #2

declare dso_local i32 @p2p_buf_add_group_id(%struct.wpabuf*, i32*, i32*, i64) #2

declare dso_local i32 @p2p_buf_add_intended_addr(%struct.wpabuf*, i32*) #2

declare dso_local i32 @p2p_build_ssid(%struct.p2p_data*, i32*, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
