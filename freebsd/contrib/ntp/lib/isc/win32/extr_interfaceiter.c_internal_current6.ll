; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_interfaceiter.c_internal_current6.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_interfaceiter.c_internal_current6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_19__, %struct.TYPE_14__*, i32, i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_17__, i32, %struct.TYPE_20__, i8* }
%struct.TYPE_17__ = type { i8*, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_19__* }
%struct.TYPE_20__ = type { %struct.TYPE_13__, i8* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.sockaddr_in6 = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i8* null, align 8
@TRUE = common dso_local global i64 0, align 8
@INTERFACE_F_UP = common dso_local global i32 0, align 4
@INTERFACE_F_MULTICAST = common dso_local global i32 0, align 4
@INTERFACE_F_LOOPBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"v6loop %d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"IPv6 %d\00", align 1
@ISC_R_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*)* @internal_current6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @internal_current6(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.sockaddr_in6*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %7 = load i64, i64* @FALSE, align 8
  store i64 %7, i64* %3, align 8
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %9 = call i32 @VALID_IFITER(%struct.TYPE_18__* %8)
  %10 = call i32 @REQUIRE(i32 %9)
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp uge i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @REQUIRE(i32 %15)
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %20 = icmp ne %struct.TYPE_14__* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @REQUIRE(i32 %21)
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 1
  %25 = call i32 @memset(%struct.TYPE_19__* %24, i32 0, i32 56)
  %26 = load i8*, i8** @AF_INET6, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 4
  store i8* %26, i8** %29, align 8
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp uge i32 %32, %37
  br i1 %38, label %39, label %86

39:                                               ; preds = %1
  %40 = load i64, i64* @FALSE, align 8
  store i64 %40, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %70, %39
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %42, %47
  br i1 %48, label %49, label %73

49:                                               ; preds = %41
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %60, %struct.sockaddr_in6** %4, align 8
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 4
  %63 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %64 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %63, i32 0, i32 0
  %65 = call i32 @memcmp(i32* %62, i32* %64, i32 4)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %49
  %68 = load i64, i64* @TRUE, align 8
  store i64 %68, i64* %5, align 8
  br label %73

69:                                               ; preds = %49
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %41

73:                                               ; preds = %67, %41
  %74 = load i64, i64* %5, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sub nsw i32 %81, 1
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %76, %73
  br label %86

86:                                               ; preds = %85, %1
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ult i32 %89, %94
  br i1 %95, label %96, label %114

96:                                               ; preds = %86
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 3
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %103, align 8
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = inttoptr i64 %111 to i32*
  %113 = call i32 @isc_netaddr_fromsockaddr(%struct.TYPE_20__* %99, i32* %112)
  br label %128

114:                                              ; preds = %86
  %115 = load i8*, i8** @AF_INET6, align 8
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 1
  store i8* %115, i8** %119, align 8
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 4
  %127 = call i32 @memcpy(i32* %124, i32* %126, i32 4)
  br label %128

128:                                              ; preds = %114, %96
  %129 = load i32, i32* @INTERFACE_F_UP, align 4
  %130 = load i32, i32* @INTERFACE_F_MULTICAST, align 4
  %131 = or i32 %129, %130
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 0
  store i32 %131, i32* %134, align 8
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 4
  %142 = call i32 @memcmp(i32* %139, i32* %141, i32 4)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %128
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 3
  %152 = call i32 @memcmp(i32* %149, i32* %151, i32 4)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %177, label %154

154:                                              ; preds = %144, %128
  %155 = load i32, i32* @INTERFACE_F_LOOPBACK, align 4
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %159, %155
  store i32 %160, i32* %158, align 8
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 2
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = sub i32 %169, %172
  %174 = zext i32 %173 to i64
  %175 = call i32 @snprintf(i32 %164, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %174)
  %176 = load i64, i64* @TRUE, align 8
  store i64 %176, i64* %3, align 8
  br label %177

177:                                              ; preds = %154, %144
  %178 = load i64, i64* %3, align 8
  %179 = load i64, i64* @FALSE, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %197

181:                                              ; preds = %177
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 2
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = sub i32 %190, %193
  %195 = zext i32 %194 to i64
  %196 = call i32 @snprintf(i32 %185, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %195)
  br label %197

197:                                              ; preds = %181, %177
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %203, align 8
  %205 = call i32 @memset(%struct.TYPE_19__* %204, i32 255, i32 8)
  %206 = load i8*, i8** @AF_INET6, align 8
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 0
  store i8* %206, i8** %210, align 8
  %211 = load i32, i32* @ISC_R_SUCCESS, align 4
  ret i32 %211
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @VALID_IFITER(%struct.TYPE_18__*) #1

declare dso_local i32 @memset(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @isc_netaddr_fromsockaddr(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
