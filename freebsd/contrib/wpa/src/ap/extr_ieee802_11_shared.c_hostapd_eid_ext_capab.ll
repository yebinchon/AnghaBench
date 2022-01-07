; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_shared.c_hostapd_eid_ext_capab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_shared.c_hostapd_eid_ext_capab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_7__*, %struct.TYPE_8__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32, i32*, i32* }
%struct.TYPE_8__ = type { i32, i32, i32, i64, i64, i64, i64, %struct.TYPE_6__, i64, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@TDLS_PROHIBIT = common dso_local global i32 0, align 4
@TDLS_PROHIBIT_CHAN_SWITCH = common dso_local global i32 0, align 4
@WLAN_EID_EXT_CAPAB = common dso_local global i32 0, align 4
@WPA_PROTO_RSN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @hostapd_eid_ext_capab(%struct.hostapd_data* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  store i32* %9, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %11 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %10, i32 0, i32 1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @TDLS_PROHIBIT, align 4
  %16 = load i32, i32* @TDLS_PROHIBIT_CHAN_SWITCH, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %14, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 5, i32* %7, align 4
  br label %21

21:                                               ; preds = %20, %2
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 4
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %26 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %25, i32 0, i32 1
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 9
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 4, i32* %7, align 4
  br label %32

32:                                               ; preds = %31, %24, %21
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 3
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %37 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %36, i32 0, i32 1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 8
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 3, i32* %7, align 4
  br label %43

43:                                               ; preds = %42, %35, %32
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 1
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %48 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %47, i32 0, i32 2
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  store i32 1, i32* %7, align 4
  br label %54

54:                                               ; preds = %53, %46, %43
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 7
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %59 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %58, i32 0, i32 1
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 7
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  store i32 7, i32* %7, align 4
  br label %66

66:                                               ; preds = %65, %57, %54
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %67, 9
  br i1 %68, label %69, label %84

69:                                               ; preds = %66
  %70 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %71 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %70, i32 0, i32 1
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 6
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %69
  %77 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %78 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %77, i32 0, i32 1
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 5
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76, %69
  store i32 9, i32* %7, align 4
  br label %84

84:                                               ; preds = %83, %76, %66
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %87 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %85, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %84
  %93 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %94 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %93, i32 0, i32 0
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %92, %84
  %99 = load i32, i32* %7, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load i32*, i32** %5, align 8
  store i32* %102, i32** %3, align 8
  br label %189

103:                                              ; preds = %98
  %104 = load i32, i32* @WLAN_EID_EXT_CAPAB, align 4
  %105 = load i32*, i32** %6, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %6, align 8
  store i32 %104, i32* %105, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load i32*, i32** %6, align 8
  %109 = getelementptr inbounds i32, i32* %108, i32 1
  store i32* %109, i32** %6, align 8
  store i32 %107, i32* %108, align 4
  store i32 0, i32* %8, align 4
  br label %110

110:                                              ; preds = %153, %103
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %158

114:                                              ; preds = %110
  %115 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %116 = load i32*, i32** %6, align 8
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @hostapd_ext_capab_byte(%struct.hostapd_data* %115, i32* %116, i32 %117)
  %119 = load i32, i32* %8, align 4
  %120 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %121 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %120, i32 0, i32 0
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp slt i32 %119, %124
  br i1 %125, label %126, label %152

126:                                              ; preds = %114
  %127 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %128 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %127, i32 0, i32 0
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = xor i32 %135, -1
  %137 = load i32*, i32** %6, align 8
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, %136
  store i32 %139, i32* %137, align 4
  %140 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %141 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %140, i32 0, i32 0
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load i32*, i32** %6, align 8
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %148
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %126, %114
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %8, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %8, align 4
  %156 = load i32*, i32** %6, align 8
  %157 = getelementptr inbounds i32, i32* %156, i32 1
  store i32* %157, i32** %6, align 8
  br label %110

158:                                              ; preds = %110
  br label %159

159:                                              ; preds = %172, %158
  %160 = load i32, i32* %7, align 4
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %162, label %170

162:                                              ; preds = %159
  %163 = load i32*, i32** %5, align 8
  %164 = load i32, i32* %7, align 4
  %165 = add nsw i32 1, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %163, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = icmp eq i32 %168, 0
  br label %170

170:                                              ; preds = %162, %159
  %171 = phi i1 [ false, %159 ], [ %169, %162 ]
  br i1 %171, label %172, label %178

172:                                              ; preds = %170
  %173 = load i32, i32* %7, align 4
  %174 = add nsw i32 %173, -1
  store i32 %174, i32* %7, align 4
  %175 = load i32, i32* %7, align 4
  %176 = load i32*, i32** %5, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 1
  store i32 %175, i32* %177, align 4
  br label %159

178:                                              ; preds = %170
  %179 = load i32, i32* %7, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %178
  %182 = load i32*, i32** %5, align 8
  store i32* %182, i32** %3, align 8
  br label %189

183:                                              ; preds = %178
  %184 = load i32*, i32** %5, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 2
  %186 = load i32, i32* %7, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  store i32* %188, i32** %3, align 8
  br label %189

189:                                              ; preds = %183, %181, %101
  %190 = load i32*, i32** %3, align 8
  ret i32* %190
}

declare dso_local i32 @hostapd_ext_capab_byte(%struct.hostapd_data*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
