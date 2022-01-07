; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_interfaceiter.c_internal_current.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_interfaceiter.c_internal_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i32, i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i64 0, align 8
@INTERFACE_F_UP = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i64 0, align 8
@INTERFACE_F_BROADCAST = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i64 0, align 8
@INTERFACE_F_MULTICAST = common dso_local global i32 0, align 4
@IFF_POINTTOPOINT = common dso_local global i64 0, align 8
@INTERFACE_F_POINTTOPOINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"PPP %d\00", align 1
@TRUE = common dso_local global i64 0, align 8
@IFF_LOOPBACK = common dso_local global i64 0, align 8
@INTERFACE_F_LOOPBACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"v4loop %d\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"IPv4 %d\00", align 1
@ISC_R_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @internal_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @internal_current(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %5 = load i64, i64* @FALSE, align 8
  store i64 %5, i64* %3, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %7 = call i32 @VALID_IFITER(%struct.TYPE_7__* %6)
  %8 = call i32 @REQUIRE(i32 %7)
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sge i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @REQUIRE(i32 %13)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = call i32 @memset(%struct.TYPE_8__* %16, i32 0, i32 28)
  %18 = load i32, i32* @AF_INET, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 6
  store i32 %18, i32* %21, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 3
  %28 = call i32 @isc_netaddr_fromsockaddr(i32* %24, i32* %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @IFF_UP, align 8
  %38 = and i64 %36, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %1
  %41 = load i32, i32* @INTERFACE_F_UP, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %41
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %40, %1
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* @IFF_BROADCAST, align 8
  %50 = and i64 %48, %49
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load i32, i32* @INTERFACE_F_BROADCAST, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %53
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %52, %47
  %60 = load i64, i64* %4, align 8
  %61 = load i64, i64* @IFF_MULTICAST, align 8
  %62 = and i64 %60, %61
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load i32, i32* @INTERFACE_F_MULTICAST, align 4
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %65
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %64, %59
  %72 = load i64, i64* %4, align 8
  %73 = load i64, i64* @IFF_POINTTOPOINT, align 8
  %74 = and i64 %72, %73
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %71
  %77 = load i32, i32* @INTERFACE_F_POINTTOPOINT, align 4
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %77
  store i32 %82, i32* %80, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @snprintf(i32 %86, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %89)
  %91 = load i64, i64* @TRUE, align 8
  store i64 %91, i64* %3, align 8
  br label %92

92:                                               ; preds = %76, %71
  %93 = load i64, i64* %4, align 8
  %94 = load i64, i64* @IFF_LOOPBACK, align 8
  %95 = and i64 %93, %94
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %113

97:                                               ; preds = %92
  %98 = load i32, i32* @INTERFACE_F_LOOPBACK, align 4
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %98
  store i32 %103, i32* %101, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @snprintf(i32 %107, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %110)
  %112 = load i64, i64* @TRUE, align 8
  store i64 %112, i64* %3, align 8
  br label %113

113:                                              ; preds = %97, %92
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @INTERFACE_F_POINTTOPOINT, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %113
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 5
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 2
  %128 = call i32 @isc_netaddr_fromsockaddr(i32* %124, i32* %127)
  br label %129

129:                                              ; preds = %121, %113
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = call i32 @isc_netaddr_fromsockaddr(i32* %132, i32* %135)
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @INTERFACE_F_BROADCAST, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %155

144:                                              ; preds = %129
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 4
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 3
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 2
  %154 = call i32 @get_broadcastaddr(i32* %147, i32* %150, i32* %153)
  br label %155

155:                                              ; preds = %144, %129
  %156 = load i64, i64* %3, align 8
  %157 = load i64, i64* @FALSE, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %168

159:                                              ; preds = %155
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @snprintf(i32 %163, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %166)
  br label %168

168:                                              ; preds = %159, %155
  %169 = load i32, i32* @ISC_R_SUCCESS, align 4
  ret i32 %169
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @VALID_IFITER(%struct.TYPE_7__*) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @isc_netaddr_fromsockaddr(i32*, i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i64) #1

declare dso_local i32 @get_broadcastaddr(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
