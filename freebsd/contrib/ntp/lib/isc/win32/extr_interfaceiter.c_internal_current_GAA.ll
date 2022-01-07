; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_interfaceiter.c_internal_current_GAA.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_interfaceiter.c_internal_current_GAA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_14__, %struct.TYPE_12__*, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i8*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i64, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_13__ = type { i64, i64, i32, i32, i32 }

@IpDadStatePreferred = common dso_local global i64 0, align 8
@ISC_R_IGNORE = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@IfOperStatusUp = common dso_local global i64 0, align 8
@INTERFACE_F_UP = common dso_local global i32 0, align 4
@IF_TYPE_PPP = common dso_local global i64 0, align 8
@INTERFACE_F_POINTTOPOINT = common dso_local global i32 0, align 4
@IF_TYPE_SOFTWARE_LOOPBACK = common dso_local global i64 0, align 8
@INTERFACE_F_LOOPBACK = common dso_local global i32 0, align 4
@IP_ADAPTER_NO_MULTICAST = common dso_local global i32 0, align 4
@INTERFACE_F_MULTICAST = common dso_local global i32 0, align 4
@IpSuffixOriginRandom = common dso_local global i64 0, align 8
@INTERFACE_F_PRIVACY = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@INTERFACE_F_BROADCAST = common dso_local global i32 0, align 4
@ISC_R_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @internal_current_GAA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @internal_current_GAA(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i8, align 1
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %10 = icmp ne %struct.TYPE_13__* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @REQUIRE(i32 %11)
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %16 = icmp ne %struct.TYPE_12__* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @REQUIRE(i32 %17)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %4, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %5, align 8
  %25 = load i64, i64* @IpDadStatePreferred, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* @ISC_R_IGNORE, align 4
  store i32 %31, i32* %2, align 4
  br label %193

32:                                               ; preds = %1
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = call i32 @memset(%struct.TYPE_14__* %34, i32 0, i32 32)
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 5
  store i32 %41, i32* %44, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = bitcast %struct.TYPE_9__* %51 to i32*
  %53 = call i32 @isc_netaddr_fromsockaddr(i32* %47, i32* %52)
  %54 = load i32, i32* @AF_INET6, align 4
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %54, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %32
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 6
  store i32 %63, i32* %66, align 4
  br label %67

67:                                               ; preds = %60, %32
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  store i8 0, i8* %72, align 1
  %73 = load i32, i32* @CP_ACP, align 4
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @WideCharToMultiByte(i32 %73, i32 0, i32 %76, i32 -1, i8* %80, i32 8, i32* null, i32* null)
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 7
  store i8 0, i8* %86, align 1
  %87 = load i64, i64* @IfOperStatusUp, align 8
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %87, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %67
  %93 = load i32, i32* @INTERFACE_F_UP, align 4
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %93
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %92, %67
  %100 = load i64, i64* @IF_TYPE_PPP, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %100, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %99
  %106 = load i32, i32* @INTERFACE_F_POINTTOPOINT, align 4
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %106
  store i32 %111, i32* %109, align 8
  br label %126

112:                                              ; preds = %99
  %113 = load i64, i64* @IF_TYPE_SOFTWARE_LOOPBACK, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %113, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %112
  %119 = load i32, i32* @INTERFACE_F_LOOPBACK, align 4
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %119
  store i32 %124, i32* %122, align 8
  br label %125

125:                                              ; preds = %118, %112
  br label %126

126:                                              ; preds = %125, %105
  %127 = load i32, i32* @IP_ADAPTER_NO_MULTICAST, align 4
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = and i32 %127, %130
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %126
  %134 = load i32, i32* @INTERFACE_F_MULTICAST, align 4
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %138, %134
  store i32 %139, i32* %137, align 8
  br label %140

140:                                              ; preds = %133, %126
  %141 = load i64, i64* @IpSuffixOriginRandom, align 8
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp eq i64 %141, %144
  br i1 %145, label %146, label %153

146:                                              ; preds = %140
  %147 = load i32, i32* @INTERFACE_F_PRIVACY, align 4
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = or i32 %151, %147
  store i32 %152, i32* %150, align 8
  br label %153

153:                                              ; preds = %146, %140
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %155 = call zeroext i8 @GAA_find_prefix(%struct.TYPE_11__* %154)
  store i8 %155, i8* %6, align 1
  %156 = load i32, i32* @AF_INET, align 4
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 8
  %161 = icmp eq i32 %156, %160
  br i1 %161, label %162, label %191

162:                                              ; preds = %153
  %163 = load i8, i8* %6, align 1
  %164 = zext i8 %163 to i32
  %165 = icmp slt i32 %164, 32
  br i1 %165, label %166, label %191

166:                                              ; preds = %162
  %167 = load i32, i32* @INTERFACE_F_LOOPBACK, align 4
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = and i32 %167, %171
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %191

174:                                              ; preds = %166
  %175 = load i32, i32* @INTERFACE_F_BROADCAST, align 4
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = or i32 %179, %175
  store i32 %180, i32* %178, align 8
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 4
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 3
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 2
  %190 = call i32 @get_broadcastaddr(i32* %183, i32* %186, i32* %189)
  br label %191

191:                                              ; preds = %174, %166, %162, %153
  %192 = load i32, i32* @ISC_R_SUCCESS, align 4
  store i32 %192, i32* %2, align 4
  br label %193

193:                                              ; preds = %191, %30
  %194 = load i32, i32* %2, align 4
  ret i32 %194
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @isc_netaddr_fromsockaddr(i32*, i32*) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32, i32, i8*, i32, i32*, i32*) #1

declare dso_local zeroext i8 @GAA_find_prefix(%struct.TYPE_11__*) #1

declare dso_local i32 @get_broadcastaddr(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
