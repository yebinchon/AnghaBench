; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_setregdomain_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_setregdomain_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_regdomain_req = type { i32, i32, i32, i32, %struct.TYPE_6__, %struct.ieee80211_regdomain, %struct.TYPE_6__ }
%struct.ieee80211_regdomain = type { i64, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.ieee80211_devcaps_req = type { i32, i32, i32, i32, %struct.TYPE_6__, %struct.ieee80211_regdomain, %struct.TYPE_6__ }
%struct.regdata = type { i32 }
%struct.country = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.regdomain = type { i32, %struct.country* }

@NO_COUNTRY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"unknown ISO country code %d\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"country %s (%s) is not usable with regdomain %d\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"country %s (%s) is not usable with regdomain %s\00", align 1
@MAXCHAN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"no space for device capabilities\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"no space for regdomain request\00", align 1
@verbose = common dso_local global i64 0, align 8
@chaninfo = common dso_local global %struct.ieee80211_regdomain_req* null, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"no space for channel list\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"no channels calculated\00", align 1
@IEEE80211_IOC_REGDOMAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @setregdomain_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setregdomain_cb(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ieee80211_regdomain_req*, align 8
  %6 = alloca %struct.ieee80211_regdomain*, align 8
  %7 = alloca %struct.ieee80211_devcaps_req*, align 8
  %8 = alloca %struct.regdata*, align 8
  %9 = alloca %struct.country*, align 8
  %10 = alloca %struct.regdomain*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.ieee80211_regdomain*
  store %struct.ieee80211_regdomain* %12, %struct.ieee80211_regdomain** %6, align 8
  %13 = call %struct.regdata* (...) @getregdata()
  store %struct.regdata* %13, %struct.regdata** %8, align 8
  %14 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %6, align 8
  %15 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NO_COUNTRY, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %86

19:                                               ; preds = %2
  %20 = load %struct.regdata*, %struct.regdata** %8, align 8
  %21 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call %struct.country* @lib80211_country_findbycc(%struct.regdata* %20, i64 %23)
  store %struct.country* %24, %struct.country** %9, align 8
  %25 = load %struct.country*, %struct.country** %9, align 8
  %26 = icmp eq %struct.country* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %6, align 8
  %29 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %30)
  br label %32

32:                                               ; preds = %27, %19
  %33 = load %struct.country*, %struct.country** %9, align 8
  %34 = getelementptr inbounds %struct.country, %struct.country* %33, i32 0, i32 2
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %6, align 8
  %39 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %37, %40
  br i1 %41, label %42, label %85

42:                                               ; preds = %32
  %43 = load %struct.regdata*, %struct.regdata** %8, align 8
  %44 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %6, align 8
  %45 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call %struct.regdomain* @lib80211_regdomain_findbysku(%struct.regdata* %43, i32 %46)
  store %struct.regdomain* %47, %struct.regdomain** %10, align 8
  %48 = load %struct.regdomain*, %struct.regdomain** %10, align 8
  %49 = icmp eq %struct.regdomain* %48, null
  br i1 %49, label %50, label %61

50:                                               ; preds = %42
  %51 = load %struct.country*, %struct.country** %9, align 8
  %52 = getelementptr inbounds %struct.country, %struct.country* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.country*, %struct.country** %9, align 8
  %55 = getelementptr inbounds %struct.country, %struct.country* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %6, align 8
  %58 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %56, i32 %59)
  br label %84

61:                                               ; preds = %42
  %62 = load %struct.regdomain*, %struct.regdomain** %10, align 8
  %63 = getelementptr inbounds %struct.regdomain, %struct.regdomain* %62, i32 0, i32 1
  %64 = load %struct.country*, %struct.country** %63, align 8
  %65 = icmp ne %struct.country* %64, null
  br i1 %65, label %66, label %83

66:                                               ; preds = %61
  %67 = load %struct.regdomain*, %struct.regdomain** %10, align 8
  %68 = getelementptr inbounds %struct.regdomain, %struct.regdomain* %67, i32 0, i32 1
  %69 = load %struct.country*, %struct.country** %68, align 8
  %70 = load %struct.country*, %struct.country** %9, align 8
  %71 = icmp ne %struct.country* %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %66
  %73 = load %struct.country*, %struct.country** %9, align 8
  %74 = getelementptr inbounds %struct.country, %struct.country* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.country*, %struct.country** %9, align 8
  %77 = getelementptr inbounds %struct.country, %struct.country* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.regdomain*, %struct.regdomain** %10, align 8
  %80 = getelementptr inbounds %struct.regdomain, %struct.regdomain* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %75, i32 %78, i32 %81)
  br label %83

83:                                               ; preds = %72, %66, %61
  br label %84

84:                                               ; preds = %83, %50
  br label %85

85:                                               ; preds = %84, %32
  br label %86

86:                                               ; preds = %85, %2
  %87 = load i64, i64* @MAXCHAN, align 8
  %88 = call i32 @IEEE80211_DEVCAPS_SIZE(i64 %87)
  %89 = call %struct.ieee80211_regdomain_req* @malloc(i32 %88)
  %90 = bitcast %struct.ieee80211_regdomain_req* %89 to %struct.ieee80211_devcaps_req*
  store %struct.ieee80211_devcaps_req* %90, %struct.ieee80211_devcaps_req** %7, align 8
  %91 = load %struct.ieee80211_devcaps_req*, %struct.ieee80211_devcaps_req** %7, align 8
  %92 = icmp eq %struct.ieee80211_devcaps_req* %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %86
  %96 = load i64, i64* @MAXCHAN, align 8
  %97 = load %struct.ieee80211_devcaps_req*, %struct.ieee80211_devcaps_req** %7, align 8
  %98 = getelementptr inbounds %struct.ieee80211_devcaps_req, %struct.ieee80211_devcaps_req* %97, i32 0, i32 6
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  store i64 %96, i64* %99, align 8
  %100 = load i32, i32* %3, align 4
  %101 = load %struct.ieee80211_devcaps_req*, %struct.ieee80211_devcaps_req** %7, align 8
  %102 = bitcast %struct.ieee80211_devcaps_req* %101 to %struct.ieee80211_regdomain_req*
  %103 = call i32 @getdevcaps(i32 %100, %struct.ieee80211_regdomain_req* %102)
  %104 = load %struct.ieee80211_devcaps_req*, %struct.ieee80211_devcaps_req** %7, align 8
  %105 = getelementptr inbounds %struct.ieee80211_devcaps_req, %struct.ieee80211_devcaps_req* %104, i32 0, i32 6
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @IEEE80211_REGDOMAIN_SIZE(i64 %107)
  %109 = call %struct.ieee80211_regdomain_req* @malloc(i32 %108)
  store %struct.ieee80211_regdomain_req* %109, %struct.ieee80211_regdomain_req** %5, align 8
  %110 = load %struct.ieee80211_regdomain_req*, %struct.ieee80211_regdomain_req** %5, align 8
  %111 = icmp eq %struct.ieee80211_regdomain_req* %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %95
  %113 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %95
  %115 = load %struct.ieee80211_regdomain_req*, %struct.ieee80211_regdomain_req** %5, align 8
  %116 = getelementptr inbounds %struct.ieee80211_regdomain_req, %struct.ieee80211_regdomain_req* %115, i32 0, i32 5
  %117 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %6, align 8
  %118 = bitcast %struct.ieee80211_regdomain* %116 to i8*
  %119 = bitcast %struct.ieee80211_regdomain* %117 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %118, i8* align 8 %119, i64 16, i1 false)
  %120 = load %struct.ieee80211_regdomain_req*, %struct.ieee80211_regdomain_req** %5, align 8
  %121 = load %struct.ieee80211_devcaps_req*, %struct.ieee80211_devcaps_req** %7, align 8
  %122 = bitcast %struct.ieee80211_devcaps_req* %121 to %struct.ieee80211_regdomain_req*
  %123 = call i32 @regdomain_makechannels(%struct.ieee80211_regdomain_req* %120, %struct.ieee80211_regdomain_req* %122)
  %124 = load i64, i64* @verbose, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %157

126:                                              ; preds = %114
  %127 = call i32 @LINE_INIT(i8 signext 58)
  %128 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %6, align 8
  %129 = call i32 @print_regdomain(%struct.ieee80211_regdomain* %128, i32 1)
  %130 = call i32 (...) @LINE_BREAK()
  %131 = load %struct.ieee80211_regdomain_req*, %struct.ieee80211_regdomain_req** @chaninfo, align 8
  %132 = icmp ne %struct.ieee80211_regdomain_req* %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %126
  %134 = load %struct.ieee80211_regdomain_req*, %struct.ieee80211_regdomain_req** @chaninfo, align 8
  %135 = call i32 @free(%struct.ieee80211_regdomain_req* %134)
  br label %136

136:                                              ; preds = %133, %126
  %137 = load %struct.ieee80211_regdomain_req*, %struct.ieee80211_regdomain_req** %5, align 8
  %138 = getelementptr inbounds %struct.ieee80211_regdomain_req, %struct.ieee80211_regdomain_req* %137, i32 0, i32 4
  %139 = call i32 @IEEE80211_CHANINFO_SPACE(%struct.TYPE_6__* %138)
  %140 = call %struct.ieee80211_regdomain_req* @malloc(i32 %139)
  store %struct.ieee80211_regdomain_req* %140, %struct.ieee80211_regdomain_req** @chaninfo, align 8
  %141 = load %struct.ieee80211_regdomain_req*, %struct.ieee80211_regdomain_req** @chaninfo, align 8
  %142 = icmp eq %struct.ieee80211_regdomain_req* %141, null
  br i1 %142, label %143, label %145

143:                                              ; preds = %136
  %144 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %145

145:                                              ; preds = %143, %136
  %146 = load %struct.ieee80211_regdomain_req*, %struct.ieee80211_regdomain_req** @chaninfo, align 8
  %147 = load %struct.ieee80211_regdomain_req*, %struct.ieee80211_regdomain_req** %5, align 8
  %148 = getelementptr inbounds %struct.ieee80211_regdomain_req, %struct.ieee80211_regdomain_req* %147, i32 0, i32 4
  %149 = load %struct.ieee80211_regdomain_req*, %struct.ieee80211_regdomain_req** %5, align 8
  %150 = getelementptr inbounds %struct.ieee80211_regdomain_req, %struct.ieee80211_regdomain_req* %149, i32 0, i32 4
  %151 = call i32 @IEEE80211_CHANINFO_SPACE(%struct.TYPE_6__* %150)
  %152 = call i32 @memcpy(%struct.ieee80211_regdomain_req* %146, %struct.TYPE_6__* %148, i32 %151)
  %153 = load i32, i32* %3, align 4
  %154 = load %struct.ieee80211_regdomain_req*, %struct.ieee80211_regdomain_req** %5, align 8
  %155 = getelementptr inbounds %struct.ieee80211_regdomain_req, %struct.ieee80211_regdomain_req* %154, i32 0, i32 4
  %156 = call i32 @print_channels(i32 %153, %struct.TYPE_6__* %155, i32 1, i32 1)
  br label %157

157:                                              ; preds = %145, %114
  %158 = load %struct.ieee80211_regdomain_req*, %struct.ieee80211_regdomain_req** %5, align 8
  %159 = getelementptr inbounds %struct.ieee80211_regdomain_req, %struct.ieee80211_regdomain_req* %158, i32 0, i32 4
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %157
  %164 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %165

165:                                              ; preds = %163, %157
  %166 = load i32, i32* %3, align 4
  %167 = load i32, i32* @IEEE80211_IOC_REGDOMAIN, align 4
  %168 = load %struct.ieee80211_regdomain_req*, %struct.ieee80211_regdomain_req** %5, align 8
  %169 = call i32 @IEEE80211_REGDOMAIN_SPACE(%struct.ieee80211_regdomain_req* %168)
  %170 = load %struct.ieee80211_regdomain_req*, %struct.ieee80211_regdomain_req** %5, align 8
  %171 = call i32 @set80211(i32 %166, i32 %167, i32 0, i32 %169, %struct.ieee80211_regdomain_req* %170)
  %172 = load %struct.ieee80211_regdomain_req*, %struct.ieee80211_regdomain_req** %5, align 8
  %173 = call i32 @free(%struct.ieee80211_regdomain_req* %172)
  %174 = load %struct.ieee80211_devcaps_req*, %struct.ieee80211_devcaps_req** %7, align 8
  %175 = bitcast %struct.ieee80211_devcaps_req* %174 to %struct.ieee80211_regdomain_req*
  %176 = call i32 @free(%struct.ieee80211_regdomain_req* %175)
  ret void
}

declare dso_local %struct.regdata* @getregdata(...) #1

declare dso_local %struct.country* @lib80211_country_findbycc(%struct.regdata*, i64) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local %struct.regdomain* @lib80211_regdomain_findbysku(%struct.regdata*, i32) #1

declare dso_local %struct.ieee80211_regdomain_req* @malloc(i32) #1

declare dso_local i32 @IEEE80211_DEVCAPS_SIZE(i64) #1

declare dso_local i32 @getdevcaps(i32, %struct.ieee80211_regdomain_req*) #1

declare dso_local i32 @IEEE80211_REGDOMAIN_SIZE(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @regdomain_makechannels(%struct.ieee80211_regdomain_req*, %struct.ieee80211_regdomain_req*) #1

declare dso_local i32 @LINE_INIT(i8 signext) #1

declare dso_local i32 @print_regdomain(%struct.ieee80211_regdomain*, i32) #1

declare dso_local i32 @LINE_BREAK(...) #1

declare dso_local i32 @free(%struct.ieee80211_regdomain_req*) #1

declare dso_local i32 @IEEE80211_CHANINFO_SPACE(%struct.TYPE_6__*) #1

declare dso_local i32 @memcpy(%struct.ieee80211_regdomain_req*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @print_channels(i32, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @set80211(i32, i32, i32, i32, %struct.ieee80211_regdomain_req*) #1

declare dso_local i32 @IEEE80211_REGDOMAIN_SPACE(%struct.ieee80211_regdomain_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
