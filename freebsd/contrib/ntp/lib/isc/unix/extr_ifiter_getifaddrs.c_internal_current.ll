; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_ifiter_getifaddrs.c_internal_current.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_ifiter_getifaddrs.c_internal_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__, %struct.ifaddrs* }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_10__*, i32, i32, i32, i32, i32 }
%struct.ifaddrs = type { i32, i32*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@ISC_R_IGNORE = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@ISC_TRUE = common dso_local global i32 0, align 4
@seenv6 = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@INTERFACE_F_UP = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@INTERFACE_F_POINTTOPOINT = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@INTERFACE_F_LOOPBACK = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@INTERFACE_F_BROADCAST = common dso_local global i32 0, align 4
@ISC_R_SUCCESS = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@IFF_RUNNING = common dso_local global i32 0, align 4
@INTERFACE_F_MULTICAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @internal_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @internal_current(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.ifaddrs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = call i32 @VALID_IFITER(%struct.TYPE_9__* %7)
  %9 = call i32 @REQUIRE(i32 %8)
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = load %struct.ifaddrs*, %struct.ifaddrs** %11, align 8
  store %struct.ifaddrs* %12, %struct.ifaddrs** %4, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load %struct.ifaddrs*, %struct.ifaddrs** %14, align 8
  %16 = icmp eq %struct.ifaddrs* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = call i32 @linux_if_inet6_current(%struct.TYPE_9__* %18)
  store i32 %19, i32* %2, align 4
  br label %227

20:                                               ; preds = %1
  %21 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %22 = icmp ne %struct.ifaddrs* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @INSIST(i32 %23)
  %25 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %26 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @INSIST(i32 %29)
  %31 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %32 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %31, i32 0, i32 5
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = icmp eq %struct.TYPE_11__* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %20
  %36 = load i32, i32* @ISC_R_IGNORE, align 4
  store i32 %36, i32* %2, align 4
  br label %227

37:                                               ; preds = %20
  %38 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %39 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %38, i32 0, i32 5
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @AF_INET, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %37
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @AF_INET6, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @ISC_R_IGNORE, align 4
  store i32 %51, i32* %2, align 4
  br label %227

52:                                               ; preds = %46, %37
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @AF_INET6, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @ISC_TRUE, align 4
  store i32 %57, i32* @seenv6, align 4
  br label %58

58:                                               ; preds = %56, %52
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = call i32 @memset(%struct.TYPE_10__* %60, i32 0, i32 40)
  %62 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %63 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @strlen(i32* %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = zext i32 %66 to i64
  %68 = icmp ugt i64 %67, 7
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  store i32 7, i32* %6, align 4
  br label %70

70:                                               ; preds = %69, %58
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = call i32 @memset(%struct.TYPE_10__* %74, i32 0, i32 8)
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %81 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @memcpy(%struct.TYPE_10__* %79, i32* %82, i32 %83)
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  store i32 0, i32* %87, align 8
  %88 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %89 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @IFF_UP, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %70
  %95 = load i32, i32* @INTERFACE_F_UP, align 4
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %95
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %94, %70
  %102 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %103 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @IFF_POINTOPOINT, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %101
  %109 = load i32, i32* @INTERFACE_F_POINTTOPOINT, align 4
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %109
  store i32 %114, i32* %112, align 8
  br label %115

115:                                              ; preds = %108, %101
  %116 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %117 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @IFF_LOOPBACK, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %115
  %123 = load i32, i32* @INTERFACE_F_LOOPBACK, align 4
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %123
  store i32 %128, i32* %126, align 8
  br label %129

129:                                              ; preds = %122, %115
  %130 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %131 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @IFF_BROADCAST, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %129
  %137 = load i32, i32* @INTERFACE_F_BROADCAST, align 4
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = or i32 %141, %137
  store i32 %142, i32* %140, align 8
  br label %143

143:                                              ; preds = %136, %129
  %144 = load i32, i32* %5, align 4
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 1
  store i32 %144, i32* %147, align 4
  %148 = load i32, i32* %5, align 4
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 7
  %152 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %153 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %152, i32 0, i32 5
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %153, align 8
  %155 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %156 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = call i32 @get_addr(i32 %148, i32* %151, %struct.TYPE_11__* %154, i32* %157)
  %159 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %160 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %159, i32 0, i32 4
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %160, align 8
  %162 = icmp ne %struct.TYPE_11__* %161, null
  br i1 %162, label %163, label %175

163:                                              ; preds = %143
  %164 = load i32, i32* %5, align 4
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 6
  %168 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %169 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %168, i32 0, i32 4
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %169, align 8
  %171 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %172 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = call i32 @get_addr(i32 %164, i32* %167, %struct.TYPE_11__* %170, i32* %173)
  br label %175

175:                                              ; preds = %163, %143
  %176 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %177 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %176, i32 0, i32 3
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %177, align 8
  %179 = icmp ne %struct.TYPE_11__* %178, null
  br i1 %179, label %180, label %200

180:                                              ; preds = %175
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @INTERFACE_F_POINTTOPOINT, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %200

188:                                              ; preds = %180
  %189 = load i32, i32* %5, align 4
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 5
  %193 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %194 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %193, i32 0, i32 3
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %194, align 8
  %196 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %197 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %196, i32 0, i32 1
  %198 = load i32*, i32** %197, align 8
  %199 = call i32 @get_addr(i32 %189, i32* %192, %struct.TYPE_11__* %195, i32* %198)
  br label %200

200:                                              ; preds = %188, %180, %175
  %201 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %202 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %201, i32 0, i32 2
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %202, align 8
  %204 = icmp ne %struct.TYPE_11__* %203, null
  br i1 %204, label %205, label %225

205:                                              ; preds = %200
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @INTERFACE_F_BROADCAST, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %225

213:                                              ; preds = %205
  %214 = load i32, i32* %5, align 4
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 4
  %218 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %219 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %218, i32 0, i32 2
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %219, align 8
  %221 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %222 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %221, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  %224 = call i32 @get_addr(i32 %214, i32* %217, %struct.TYPE_11__* %220, i32* %223)
  br label %225

225:                                              ; preds = %213, %205, %200
  %226 = load i32, i32* @ISC_R_SUCCESS, align 4
  store i32 %226, i32* %2, align 4
  br label %227

227:                                              ; preds = %225, %50, %35, %17
  %228 = load i32, i32* %2, align 4
  ret i32 %228
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @VALID_IFITER(%struct.TYPE_9__*) #1

declare dso_local i32 @linux_if_inet6_current(%struct.TYPE_9__*) #1

declare dso_local i32 @INSIST(i32) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @get_addr(i32, i32*, %struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
