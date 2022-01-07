; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wnm_sta.c_wnm_parse_neighbor_report_elem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wnm_sta.c_wnm_parse_neighbor_report_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neighbor_report = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32, %struct.TYPE_2__*, i8*, i32, i8*, i8*, i32, i32, i8*, i8* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"WNM: Too short TSF\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"WNM: Too short condensed country string\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"WNM: Too short BSS transition candidate\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"WNM: Too short BSS termination duration\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"WNM: Too short neighbor bearing\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"WNM: Too short measurement pilot\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"WNM: Too short RRM enabled capabilities\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"WNM: Too short multiple BSSID\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.neighbor_report*, i32, i32, i32*)* @wnm_parse_neighbor_report_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wnm_parse_neighbor_report_elem(%struct.neighbor_report* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.neighbor_report*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.neighbor_report* %0, %struct.neighbor_report** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %200 [
    i32 128, label %10
    i32 132, label %28
    i32 133, label %42
    i32 134, label %56
    i32 135, label %74
    i32 131, label %98
    i32 129, label %142
    i32 130, label %156
  ]

10:                                               ; preds = %4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = call i32 @wpa_printf(i32 %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %200

16:                                               ; preds = %10
  %17 = load i32*, i32** %8, align 8
  %18 = call i8* @WPA_GET_LE16(i32* %17)
  %19 = load %struct.neighbor_report*, %struct.neighbor_report** %5, align 8
  %20 = getelementptr inbounds %struct.neighbor_report, %struct.neighbor_report* %19, i32 0, i32 17
  store i8* %18, i8** %20, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  %23 = call i8* @WPA_GET_LE16(i32* %22)
  %24 = load %struct.neighbor_report*, %struct.neighbor_report** %5, align 8
  %25 = getelementptr inbounds %struct.neighbor_report, %struct.neighbor_report* %24, i32 0, i32 16
  store i8* %23, i8** %25, align 8
  %26 = load %struct.neighbor_report*, %struct.neighbor_report** %5, align 8
  %27 = getelementptr inbounds %struct.neighbor_report, %struct.neighbor_report* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  br label %200

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 2
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* @MSG_DEBUG, align 4
  %33 = call i32 @wpa_printf(i32 %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %200

34:                                               ; preds = %28
  %35 = load %struct.neighbor_report*, %struct.neighbor_report** %5, align 8
  %36 = getelementptr inbounds %struct.neighbor_report, %struct.neighbor_report* %35, i32 0, i32 15
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @os_memcpy(i32 %37, i32* %38, i32 2)
  %40 = load %struct.neighbor_report*, %struct.neighbor_report** %5, align 8
  %41 = getelementptr inbounds %struct.neighbor_report, %struct.neighbor_report* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  br label %200

42:                                               ; preds = %4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 1
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* @MSG_DEBUG, align 4
  %47 = call i32 @wpa_printf(i32 %46, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %200

48:                                               ; preds = %42
  %49 = load i32*, i32** %8, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.neighbor_report*, %struct.neighbor_report** %5, align 8
  %53 = getelementptr inbounds %struct.neighbor_report, %struct.neighbor_report* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.neighbor_report*, %struct.neighbor_report** %5, align 8
  %55 = getelementptr inbounds %struct.neighbor_report, %struct.neighbor_report* %54, i32 0, i32 3
  store i32 1, i32* %55, align 4
  br label %200

56:                                               ; preds = %4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %57, 10
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* @MSG_DEBUG, align 4
  %61 = call i32 @wpa_printf(i32 %60, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %200

62:                                               ; preds = %56
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @WPA_GET_LE64(i32* %63)
  %65 = load %struct.neighbor_report*, %struct.neighbor_report** %5, align 8
  %66 = getelementptr inbounds %struct.neighbor_report, %struct.neighbor_report* %65, i32 0, i32 14
  store i32 %64, i32* %66, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 8
  %69 = call i8* @WPA_GET_LE16(i32* %68)
  %70 = load %struct.neighbor_report*, %struct.neighbor_report** %5, align 8
  %71 = getelementptr inbounds %struct.neighbor_report, %struct.neighbor_report* %70, i32 0, i32 13
  store i8* %69, i8** %71, align 8
  %72 = load %struct.neighbor_report*, %struct.neighbor_report** %5, align 8
  %73 = getelementptr inbounds %struct.neighbor_report, %struct.neighbor_report* %72, i32 0, i32 4
  store i32 1, i32* %73, align 8
  br label %200

74:                                               ; preds = %4
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %75, 8
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* @MSG_DEBUG, align 4
  %79 = call i32 @wpa_printf(i32 %78, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %200

80:                                               ; preds = %74
  %81 = load i32*, i32** %8, align 8
  %82 = call i8* @WPA_GET_LE16(i32* %81)
  %83 = load %struct.neighbor_report*, %struct.neighbor_report** %5, align 8
  %84 = getelementptr inbounds %struct.neighbor_report, %struct.neighbor_report* %83, i32 0, i32 12
  store i8* %82, i8** %84, align 8
  %85 = load i32*, i32** %8, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  %87 = call i32 @WPA_GET_LE32(i32* %86)
  %88 = load %struct.neighbor_report*, %struct.neighbor_report** %5, align 8
  %89 = getelementptr inbounds %struct.neighbor_report, %struct.neighbor_report* %88, i32 0, i32 11
  store i32 %87, i32* %89, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 2
  %92 = getelementptr inbounds i32, i32* %91, i64 4
  %93 = call i8* @WPA_GET_LE16(i32* %92)
  %94 = load %struct.neighbor_report*, %struct.neighbor_report** %5, align 8
  %95 = getelementptr inbounds %struct.neighbor_report, %struct.neighbor_report* %94, i32 0, i32 10
  store i8* %93, i8** %95, align 8
  %96 = load %struct.neighbor_report*, %struct.neighbor_report** %5, align 8
  %97 = getelementptr inbounds %struct.neighbor_report, %struct.neighbor_report* %96, i32 0, i32 5
  store i32 1, i32* %97, align 4
  br label %200

98:                                               ; preds = %4
  %99 = load i32, i32* %7, align 4
  %100 = icmp slt i32 %99, 1
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, i32* @MSG_DEBUG, align 4
  %103 = call i32 @wpa_printf(i32 %102, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %200

104:                                              ; preds = %98
  %105 = load %struct.neighbor_report*, %struct.neighbor_report** %5, align 8
  %106 = getelementptr inbounds %struct.neighbor_report, %struct.neighbor_report* %105, i32 0, i32 9
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = call i32 @os_free(%struct.TYPE_2__* %107)
  %109 = call i8* @os_zalloc(i32 4)
  %110 = bitcast i8* %109 to %struct.TYPE_2__*
  %111 = load %struct.neighbor_report*, %struct.neighbor_report** %5, align 8
  %112 = getelementptr inbounds %struct.neighbor_report, %struct.neighbor_report* %111, i32 0, i32 9
  store %struct.TYPE_2__* %110, %struct.TYPE_2__** %112, align 8
  %113 = load %struct.neighbor_report*, %struct.neighbor_report** %5, align 8
  %114 = getelementptr inbounds %struct.neighbor_report, %struct.neighbor_report* %113, i32 0, i32 9
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = icmp eq %struct.TYPE_2__* %115, null
  br i1 %116, label %117, label %118

117:                                              ; preds = %104
  br label %200

118:                                              ; preds = %104
  %119 = load i32*, i32** %8, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.neighbor_report*, %struct.neighbor_report** %5, align 8
  %123 = getelementptr inbounds %struct.neighbor_report, %struct.neighbor_report* %122, i32 0, i32 9
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  store i32 %121, i32* %125, align 4
  %126 = load i32, i32* %7, align 4
  %127 = sub nsw i32 %126, 1
  %128 = load %struct.neighbor_report*, %struct.neighbor_report** %5, align 8
  %129 = getelementptr inbounds %struct.neighbor_report, %struct.neighbor_report* %128, i32 0, i32 9
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 3
  store i32 %127, i32* %131, align 4
  %132 = load %struct.neighbor_report*, %struct.neighbor_report** %5, align 8
  %133 = getelementptr inbounds %struct.neighbor_report, %struct.neighbor_report* %132, i32 0, i32 9
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load i32*, i32** %8, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 1
  %139 = load i32, i32* %7, align 4
  %140 = sub nsw i32 %139, 1
  %141 = call i32 @os_memcpy(i32 %136, i32* %138, i32 %140)
  br label %200

142:                                              ; preds = %4
  %143 = load i32, i32* %7, align 4
  %144 = icmp slt i32 %143, 5
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load i32, i32* @MSG_DEBUG, align 4
  %147 = call i32 @wpa_printf(i32 %146, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  br label %200

148:                                              ; preds = %142
  %149 = load %struct.neighbor_report*, %struct.neighbor_report** %5, align 8
  %150 = getelementptr inbounds %struct.neighbor_report, %struct.neighbor_report* %149, i32 0, i32 8
  %151 = load i32, i32* %150, align 8
  %152 = load i32*, i32** %8, align 8
  %153 = call i32 @os_memcpy(i32 %151, i32* %152, i32 5)
  %154 = load %struct.neighbor_report*, %struct.neighbor_report** %5, align 8
  %155 = getelementptr inbounds %struct.neighbor_report, %struct.neighbor_report* %154, i32 0, i32 6
  store i32 1, i32* %155, align 8
  br label %200

156:                                              ; preds = %4
  %157 = load i32, i32* %7, align 4
  %158 = icmp slt i32 %157, 1
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load i32, i32* @MSG_DEBUG, align 4
  %161 = call i32 @wpa_printf(i32 %160, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  br label %200

162:                                              ; preds = %156
  %163 = load %struct.neighbor_report*, %struct.neighbor_report** %5, align 8
  %164 = getelementptr inbounds %struct.neighbor_report, %struct.neighbor_report* %163, i32 0, i32 7
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %164, align 8
  %166 = call i32 @os_free(%struct.TYPE_2__* %165)
  %167 = call i8* @os_zalloc(i32 4)
  %168 = bitcast i8* %167 to %struct.TYPE_2__*
  %169 = load %struct.neighbor_report*, %struct.neighbor_report** %5, align 8
  %170 = getelementptr inbounds %struct.neighbor_report, %struct.neighbor_report* %169, i32 0, i32 7
  store %struct.TYPE_2__* %168, %struct.TYPE_2__** %170, align 8
  %171 = load %struct.neighbor_report*, %struct.neighbor_report** %5, align 8
  %172 = getelementptr inbounds %struct.neighbor_report, %struct.neighbor_report* %171, i32 0, i32 7
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = icmp eq %struct.TYPE_2__* %173, null
  br i1 %174, label %175, label %176

175:                                              ; preds = %162
  br label %200

176:                                              ; preds = %162
  %177 = load i32*, i32** %8, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.neighbor_report*, %struct.neighbor_report** %5, align 8
  %181 = getelementptr inbounds %struct.neighbor_report, %struct.neighbor_report* %180, i32 0, i32 7
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 1
  store i32 %179, i32* %183, align 4
  %184 = load i32, i32* %7, align 4
  %185 = sub nsw i32 %184, 1
  %186 = load %struct.neighbor_report*, %struct.neighbor_report** %5, align 8
  %187 = getelementptr inbounds %struct.neighbor_report, %struct.neighbor_report* %186, i32 0, i32 7
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 3
  store i32 %185, i32* %189, align 4
  %190 = load %struct.neighbor_report*, %struct.neighbor_report** %5, align 8
  %191 = getelementptr inbounds %struct.neighbor_report, %struct.neighbor_report* %190, i32 0, i32 7
  %192 = load %struct.TYPE_2__*, %struct.TYPE_2__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = load i32*, i32** %8, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 1
  %197 = load i32, i32* %7, align 4
  %198 = sub nsw i32 %197, 1
  %199 = call i32 @os_memcpy(i32 %194, i32* %196, i32 %198)
  br label %200

200:                                              ; preds = %4, %176, %175, %159, %148, %145, %118, %117, %101, %80, %77, %62, %59, %48, %45, %34, %31, %16, %13
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i8* @WPA_GET_LE16(i32*) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

declare dso_local i32 @WPA_GET_LE64(i32*) #1

declare dso_local i32 @WPA_GET_LE32(i32*) #1

declare dso_local i32 @os_free(%struct.TYPE_2__*) #1

declare dso_local i8* @os_zalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
