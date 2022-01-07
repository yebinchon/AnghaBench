; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_ds_sendv_udp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_ds_sendv_udp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsocket = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_10__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.iovec, i32 }
%struct.iovec = type { i64, %struct.ds_udp_header* }
%struct.ds_udp_header = type { i32, i64, %struct.TYPE_11__, i8*, i64, i32, i8* }
%struct.TYPE_11__ = type { %struct.iovec*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.msghdr = type { i32, %struct.iovec*, i32, %struct.TYPE_15__* }

@ENOTSUP = common dso_local global i32 0, align 4
@DS_UDP_TAG = common dso_local global i32 0, align 4
@DS_UDP_IPV4_HDR_LEN = common dso_local global i64 0, align 8
@DS_UDP_IPV6_HDR_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.rsocket*, %struct.iovec*, i32, i32, i32)* @ds_sendv_udp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ds_sendv_udp(%struct.rsocket* %0, %struct.iovec* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.rsocket*, align 8
  %8 = alloca %struct.iovec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ds_udp_header, align 8
  %13 = alloca %struct.msghdr, align 8
  %14 = alloca [8 x %struct.iovec], align 16
  %15 = alloca i64, align 8
  store %struct.rsocket* %0, %struct.rsocket** %7, align 8
  store %struct.iovec* %1, %struct.iovec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp sgt i32 %16, 8
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i32, i32* @ENOTSUP, align 4
  %20 = call i64 @ERR(i32 %19)
  store i64 %20, i64* %6, align 8
  br label %144

21:                                               ; preds = %5
  %22 = load i32, i32* @DS_UDP_TAG, align 4
  %23 = call i8* @htobe32(i32 %22)
  %24 = getelementptr inbounds %struct.ds_udp_header, %struct.ds_udp_header* %12, i32 0, i32 6
  store i8* %23, i8** %24, align 8
  %25 = load %struct.rsocket*, %struct.rsocket** %7, align 8
  %26 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %25, i32 0, i32 1
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.ds_udp_header, %struct.ds_udp_header* %12, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  %34 = load i32, i32* %11, align 4
  %35 = getelementptr inbounds %struct.ds_udp_header, %struct.ds_udp_header* %12, i32 0, i32 5
  store i32 %34, i32* %35, align 8
  %36 = getelementptr inbounds %struct.ds_udp_header, %struct.ds_udp_header* %12, i32 0, i32 4
  store i64 0, i64* %36, align 8
  %37 = load %struct.rsocket*, %struct.rsocket** %7, align 8
  %38 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %37, i32 0, i32 1
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 16777215
  %49 = call i8* @htobe32(i32 %48)
  %50 = getelementptr inbounds %struct.ds_udp_header, %struct.ds_udp_header* %12, i32 0, i32 3
  store i8* %49, i8** %50, align 8
  %51 = load %struct.rsocket*, %struct.rsocket** %7, align 8
  %52 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %51, i32 0, i32 1
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 4
  br i1 %59, label %60, label %74

60:                                               ; preds = %21
  %61 = load i64, i64* @DS_UDP_IPV4_HDR_LEN, align 8
  %62 = getelementptr inbounds %struct.ds_udp_header, %struct.ds_udp_header* %12, i32 0, i32 1
  store i64 %61, i64* %62, align 8
  %63 = load %struct.rsocket*, %struct.rsocket** %7, align 8
  %64 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %63, i32 0, i32 1
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = getelementptr inbounds %struct.ds_udp_header, %struct.ds_udp_header* %12, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  br label %89

74:                                               ; preds = %21
  %75 = load i64, i64* @DS_UDP_IPV6_HDR_LEN, align 8
  %76 = getelementptr inbounds %struct.ds_udp_header, %struct.ds_udp_header* %12, i32 0, i32 1
  store i64 %75, i64* %76, align 8
  %77 = getelementptr inbounds %struct.ds_udp_header, %struct.ds_udp_header* %12, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load %struct.iovec*, %struct.iovec** %78, align 8
  %80 = load %struct.rsocket*, %struct.rsocket** %7, align 8
  %81 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %80, i32 0, i32 1
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = call i32 @memcpy(%struct.iovec* %79, %struct.iovec* %87, i32 16)
  br label %89

89:                                               ; preds = %74, %60
  %90 = getelementptr inbounds [8 x %struct.iovec], [8 x %struct.iovec]* %14, i64 0, i64 0
  %91 = getelementptr inbounds %struct.iovec, %struct.iovec* %90, i32 0, i32 1
  store %struct.ds_udp_header* %12, %struct.ds_udp_header** %91, align 8
  %92 = getelementptr inbounds %struct.ds_udp_header, %struct.ds_udp_header* %12, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds [8 x %struct.iovec], [8 x %struct.iovec]* %14, i64 0, i64 0
  %95 = getelementptr inbounds %struct.iovec, %struct.iovec* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 16
  %96 = load %struct.iovec*, %struct.iovec** %8, align 8
  %97 = icmp ne %struct.iovec* %96, null
  br i1 %97, label %98, label %109

98:                                               ; preds = %89
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %98
  %102 = getelementptr inbounds [8 x %struct.iovec], [8 x %struct.iovec]* %14, i64 0, i64 1
  %103 = load %struct.iovec*, %struct.iovec** %8, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = mul i64 16, %105
  %107 = trunc i64 %106 to i32
  %108 = call i32 @memcpy(%struct.iovec* %102, %struct.iovec* %103, i32 %107)
  br label %109

109:                                              ; preds = %101, %98, %89
  %110 = call i32 @memset(%struct.msghdr* %13, i32 0, i32 32)
  %111 = load %struct.rsocket*, %struct.rsocket** %7, align 8
  %112 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %111, i32 0, i32 1
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 3
  store %struct.TYPE_15__* %114, %struct.TYPE_15__** %115, align 8
  %116 = load %struct.rsocket*, %struct.rsocket** %7, align 8
  %117 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %116, i32 0, i32 1
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = call i32 @ucma_addrlen(i32* %120)
  %122 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 2
  store i32 %121, i32* %122, align 8
  %123 = getelementptr inbounds [8 x %struct.iovec], [8 x %struct.iovec]* %14, i64 0, i64 0
  %124 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 1
  store %struct.iovec* %123, %struct.iovec** %124, align 8
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, 1
  %127 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 0
  store i32 %126, i32* %127, align 8
  %128 = load %struct.rsocket*, %struct.rsocket** %7, align 8
  %129 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %10, align 4
  %132 = call i64 @sendmsg(i32 %130, %struct.msghdr* %13, i32 %131)
  store i64 %132, i64* %15, align 8
  %133 = load i64, i64* %15, align 8
  %134 = icmp sgt i64 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %109
  %136 = load i64, i64* %15, align 8
  %137 = getelementptr inbounds %struct.ds_udp_header, %struct.ds_udp_header* %12, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = sub nsw i64 %136, %138
  br label %142

140:                                              ; preds = %109
  %141 = load i64, i64* %15, align 8
  br label %142

142:                                              ; preds = %140, %135
  %143 = phi i64 [ %139, %135 ], [ %141, %140 ]
  store i64 %143, i64* %6, align 8
  br label %144

144:                                              ; preds = %142, %18
  %145 = load i64, i64* %6, align 8
  ret i64 %145
}

declare dso_local i64 @ERR(i32) #1

declare dso_local i8* @htobe32(i32) #1

declare dso_local i32 @memcpy(%struct.iovec*, %struct.iovec*, i32) #1

declare dso_local i32 @memset(%struct.msghdr*, i32, i32) #1

declare dso_local i32 @ucma_addrlen(i32*) #1

declare dso_local i64 @sendmsg(i32, %struct.msghdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
