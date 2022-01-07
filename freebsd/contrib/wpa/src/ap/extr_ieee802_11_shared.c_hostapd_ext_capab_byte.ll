; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_shared.c_hostapd_ext_capab_byte.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_shared.c_hostapd_ext_capab_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_8__*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_7__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@WPA_DRIVER_FLAGS_AP_CSA = common dso_local global i32 0, align 4
@TDLS_PROHIBIT = common dso_local global i32 0, align 4
@TDLS_PROHIBIT_CHAN_SWITCH = common dso_local global i32 0, align 4
@WPA_PROTO_RSN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_data*, i32*, i32)* @hostapd_ext_capab_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostapd_ext_capab_byte(%struct.hostapd_data* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32*, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %181 [
    i32 0, label %9
    i32 1, label %34
    i32 2, label %57
    i32 3, label %80
    i32 4, label %103
    i32 5, label %141
    i32 6, label %142
    i32 7, label %155
    i32 8, label %156
    i32 9, label %179
    i32 10, label %180
  ]

9:                                                ; preds = %3
  %10 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %11 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %10, i32 0, i32 2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %9
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, 1
  store i32 %19, i32* %17, align 4
  br label %20

20:                                               ; preds = %16, %9
  %21 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %22 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @WPA_DRIVER_FLAGS_AP_CSA, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, 4
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %29, %20
  br label %181

34:                                               ; preds = %3
  %35 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %36 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 14
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, 16
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %41, %34
  %46 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %47 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 13
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, 32
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %52, %45
  br label %181

57:                                               ; preds = %3
  %58 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %59 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 12
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, 2
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %64, %57
  %69 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %70 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %69, i32 0, i32 0
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 11
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, 8
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %75, %68
  br label %181

80:                                               ; preds = %3
  %81 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %82 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %81, i32 0, i32 0
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 2
  br i1 %86, label %87, label %91

87:                                               ; preds = %80
  %88 = load i32*, i32** %5, align 8
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, 8
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %87, %80
  %92 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %93 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %92, i32 0, i32 0
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 10
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %91
  %99 = load i32*, i32** %5, align 8
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, 128
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %98, %91
  br label %181

103:                                              ; preds = %3
  %104 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %105 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %104, i32 0, i32 0
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 9
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %103
  %111 = load i32*, i32** %5, align 8
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, 1
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %110, %103
  %115 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %116 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %115, i32 0, i32 0
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @TDLS_PROHIBIT, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %114
  %124 = load i32*, i32** %5, align 8
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, 64
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %123, %114
  %128 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %129 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %128, i32 0, i32 0
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @TDLS_PROHIBIT_CHAN_SWITCH, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %127
  %137 = load i32*, i32** %5, align 8
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, 128
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %136, %127
  br label %181

141:                                              ; preds = %3
  br label %181

142:                                              ; preds = %3
  %143 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %144 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %143, i32 0, i32 0
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 6
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %142
  %151 = load i32*, i32** %5, align 8
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, 1
  store i32 %153, i32* %151, align 4
  br label %154

154:                                              ; preds = %150, %142
  br label %181

155:                                              ; preds = %3
  br label %181

156:                                              ; preds = %3
  %157 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %158 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %157, i32 0, i32 0
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %156
  %164 = load i32*, i32** %5, align 8
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %165, 64
  store i32 %166, i32* %164, align 4
  br label %167

167:                                              ; preds = %163, %156
  %168 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %169 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %168, i32 0, i32 0
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %167
  %175 = load i32*, i32** %5, align 8
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %176, 128
  store i32 %177, i32* %175, align 4
  br label %178

178:                                              ; preds = %174, %167
  br label %181

179:                                              ; preds = %3
  br label %181

180:                                              ; preds = %3
  br label %181

181:                                              ; preds = %3, %180, %179, %178, %155, %154, %141, %140, %102, %79, %56, %33
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
