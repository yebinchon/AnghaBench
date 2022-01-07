; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_getchannelflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_getchannelflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32 }

@IEEE80211_CHAN_A = common dso_local global i32 0, align 4
@IEEE80211_CHAN_B = common dso_local global i32 0, align 4
@IEEE80211_CHAN_G = common dso_local global i32 0, align 4
@IEEE80211_CHAN_TURBO = common dso_local global i32 0, align 4
@IEEE80211_CHAN_STURBO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"%s: Invalid channel attribute %c\0A\00", align 1
@IEEE80211_CHAN_QUARTER = common dso_local global i32 0, align 4
@IEEE80211_CHAN_HALF = common dso_local global i32 0, align 4
@IEEE80211_CHAN_HT20 = common dso_local global i32 0, align 4
@IEEE80211_CHAN_VHT80 = common dso_local global i32 0, align 4
@IEEE80211_CHAN_VHT160 = common dso_local global i32 0, align 4
@IEEE80211_CHAN_HT40U = common dso_local global i32 0, align 4
@IEEE80211_CHAN_HT40D = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"%s: Invalid channel width\0A\00", align 1
@IEEE80211_CHAN_HT = common dso_local global i32 0, align 4
@IEEE80211_CHAN_VHT = common dso_local global i32 0, align 4
@IEEE80211_CHAN_VHT20 = common dso_local global i32 0, align 4
@IEEE80211_CHAN_VHT40U = common dso_local global i32 0, align 4
@IEEE80211_CHAN_VHT40D = common dso_local global i32 0, align 4
@_CHAN_HT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @getchannelflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getchannelflags(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_channel, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = call i8* @strchr(i8* %12, i8 signext 58)
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %83

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %5, align 8
  br label %19

19:                                               ; preds = %79, %16
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = call i64 @isalpha(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %82

25:                                               ; preds = %19
  %26 = load i8*, i8** %5, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @isupper(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @tolower(i32 %33) #3
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %32, %25
  %36 = load i32, i32* %8, align 4
  switch i32 %36, label %72 [
    i32 97, label %37
    i32 98, label %41
    i32 103, label %45
    i32 118, label %49
    i32 104, label %50
    i32 110, label %50
    i32 100, label %53
    i32 116, label %57
    i32 115, label %68
  ]

37:                                               ; preds = %35
  %38 = load i32, i32* @IEEE80211_CHAN_A, align 4
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %6, align 4
  br label %78

41:                                               ; preds = %35
  %42 = load i32, i32* @IEEE80211_CHAN_B, align 4
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  br label %78

45:                                               ; preds = %35
  %46 = load i32, i32* @IEEE80211_CHAN_G, align 4
  %47 = load i32, i32* %6, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %6, align 4
  br label %78

49:                                               ; preds = %35
  store i32 1, i32* %7, align 4
  br label %50

50:                                               ; preds = %35, %35, %49
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, -2147483648
  store i32 %52, i32* %6, align 4
  br label %78

53:                                               ; preds = %35
  %54 = load i32, i32* @IEEE80211_CHAN_TURBO, align 4
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %6, align 4
  br label %78

57:                                               ; preds = %35
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @IEEE80211_CHAN_STURBO, align 4
  %60 = or i32 %59, -2147483648
  %61 = and i32 %58, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load i32, i32* @IEEE80211_CHAN_TURBO, align 4
  %65 = load i32, i32* %6, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %63, %57
  br label %78

68:                                               ; preds = %35
  %69 = load i32, i32* @IEEE80211_CHAN_STURBO, align 4
  %70 = load i32, i32* %6, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %6, align 4
  br label %78

72:                                               ; preds = %35
  %73 = load i8*, i8** %3, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = call i32 (i32, i8*, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %73, i32 %76)
  br label %78

78:                                               ; preds = %72, %68, %67, %53, %50, %45, %41, %37
  br label %79

79:                                               ; preds = %78
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %5, align 8
  br label %19

82:                                               ; preds = %19
  br label %83

83:                                               ; preds = %82, %2
  %84 = load i8*, i8** %3, align 8
  %85 = call i8* @strchr(i8* %84, i8 signext 47)
  store i8* %85, i8** %5, align 8
  %86 = load i8*, i8** %5, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %150

88:                                               ; preds = %83
  %89 = load i8*, i8** %5, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  %91 = call i32 @strtoul(i8* %90, i8** %9, i32 10)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  switch i32 %92, label %146 [
    i32 5, label %93
    i32 10, label %97
    i32 20, label %101
    i32 40, label %105
    i32 80, label %105
    i32 160, label %105
  ]

93:                                               ; preds = %88
  %94 = load i32, i32* @IEEE80211_CHAN_QUARTER, align 4
  %95 = load i32, i32* %6, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %6, align 4
  br label %149

97:                                               ; preds = %88
  %98 = load i32, i32* @IEEE80211_CHAN_HALF, align 4
  %99 = load i32, i32* %6, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %6, align 4
  br label %149

101:                                              ; preds = %88
  %102 = load i32, i32* @IEEE80211_CHAN_HT20, align 4
  %103 = load i32, i32* %6, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %6, align 4
  br label %149

105:                                              ; preds = %88, %88, %88
  %106 = load i32, i32* %10, align 4
  %107 = icmp eq i32 %106, 80
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load i32, i32* @IEEE80211_CHAN_VHT80, align 4
  %110 = load i32, i32* %6, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %6, align 4
  br label %120

112:                                              ; preds = %105
  %113 = load i32, i32* %10, align 4
  %114 = icmp eq i32 %113, 160
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load i32, i32* @IEEE80211_CHAN_VHT160, align 4
  %117 = load i32, i32* %6, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %115, %112
  br label %120

120:                                              ; preds = %119, %108
  %121 = load i8*, i8** %9, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %132

123:                                              ; preds = %120
  %124 = load i8*, i8** %9, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 43
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = load i32, i32* @IEEE80211_CHAN_HT40U, align 4
  %130 = load i32, i32* %6, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %6, align 4
  br label %145

132:                                              ; preds = %123, %120
  %133 = load i8*, i8** %9, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %144

135:                                              ; preds = %132
  %136 = load i8*, i8** %9, align 8
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 45
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = load i32, i32* @IEEE80211_CHAN_HT40D, align 4
  %142 = load i32, i32* %6, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %6, align 4
  br label %144

144:                                              ; preds = %140, %135, %132
  br label %145

145:                                              ; preds = %144, %128
  br label %149

146:                                              ; preds = %88
  %147 = load i8*, i8** %3, align 8
  %148 = call i32 (i32, i8*, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %147)
  br label %149

149:                                              ; preds = %146, %145, %101, %97, %93
  br label %150

150:                                              ; preds = %149, %83
  %151 = load i32, i32* %6, align 4
  %152 = and i32 %151, -2147483648
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %150
  %155 = load i32, i32* @IEEE80211_CHAN_HT, align 4
  %156 = xor i32 %155, -1
  %157 = load i32, i32* %6, align 4
  %158 = and i32 %157, %156
  store i32 %158, i32* %6, align 4
  %159 = load i32, i32* @IEEE80211_CHAN_VHT, align 4
  %160 = xor i32 %159, -1
  %161 = load i32, i32* %6, align 4
  %162 = and i32 %161, %160
  store i32 %162, i32* %6, align 4
  br label %232

163:                                              ; preds = %150
  %164 = load i32, i32* %6, align 4
  %165 = and i32 %164, 2147483647
  store i32 %165, i32* %6, align 4
  %166 = load i32, i32* %6, align 4
  %167 = load i32, i32* @IEEE80211_CHAN_HT, align 4
  %168 = and i32 %166, %167
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %186

170:                                              ; preds = %163
  %171 = load i32, i32* %4, align 4
  %172 = icmp sgt i32 %171, 255
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = load i32, i32* %4, align 4
  %175 = call i32 @mapfreq(%struct.ieee80211_channel* %11, i32 %174, i32 0)
  br label %179

176:                                              ; preds = %170
  %177 = load i32, i32* %4, align 4
  %178 = call i32 @mapchan(%struct.ieee80211_channel* %11, i32 %177, i32 0)
  br label %179

179:                                              ; preds = %176, %173
  %180 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %11, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @IEEE80211_CHAN_HT, align 4
  %183 = and i32 %181, %182
  %184 = load i32, i32* %6, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %6, align 4
  br label %186

186:                                              ; preds = %179, %163
  %187 = load i32, i32* %7, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %231

189:                                              ; preds = %186
  %190 = load i32, i32* %6, align 4
  %191 = load i32, i32* @IEEE80211_CHAN_HT, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %231

194:                                              ; preds = %189
  %195 = load i32, i32* %6, align 4
  %196 = load i32, i32* @IEEE80211_CHAN_VHT80, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %194
  br label %230

200:                                              ; preds = %194
  %201 = load i32, i32* %6, align 4
  %202 = load i32, i32* @IEEE80211_CHAN_HT20, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %200
  %206 = load i32, i32* @IEEE80211_CHAN_VHT20, align 4
  %207 = load i32, i32* %6, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %6, align 4
  br label %229

209:                                              ; preds = %200
  %210 = load i32, i32* %6, align 4
  %211 = load i32, i32* @IEEE80211_CHAN_HT40U, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %209
  %215 = load i32, i32* @IEEE80211_CHAN_VHT40U, align 4
  %216 = load i32, i32* %6, align 4
  %217 = or i32 %216, %215
  store i32 %217, i32* %6, align 4
  br label %228

218:                                              ; preds = %209
  %219 = load i32, i32* %6, align 4
  %220 = load i32, i32* @IEEE80211_CHAN_HT40D, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %218
  %224 = load i32, i32* @IEEE80211_CHAN_VHT40D, align 4
  %225 = load i32, i32* %6, align 4
  %226 = or i32 %225, %224
  store i32 %226, i32* %6, align 4
  br label %227

227:                                              ; preds = %223, %218
  br label %228

228:                                              ; preds = %227, %214
  br label %229

229:                                              ; preds = %228, %205
  br label %230

230:                                              ; preds = %229, %199
  br label %231

231:                                              ; preds = %230, %189, %186
  br label %232

232:                                              ; preds = %231, %154
  %233 = load i32, i32* %6, align 4
  ret i32 %233
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @isalpha(i32) #1

declare dso_local i64 @isupper(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @tolower(i32) #2

declare dso_local i32 @errx(i32, i8*, i8*, ...) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @mapfreq(%struct.ieee80211_channel*, i32, i32) #1

declare dso_local i32 @mapchan(%struct.ieee80211_channel*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
