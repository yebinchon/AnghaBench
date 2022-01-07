; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_socket.c_build_msghdr_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_socket.c_build_msghdr_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, i64, i32 }
%struct.TYPE_14__ = type { i64, i32, i32, %struct.TYPE_13__, i32, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.msghdr = type { i32, i64, i64, i32*, i32*, i64, %struct.iovec*, i64, i32* }
%struct.iovec = type { i64, i8* }
%struct.TYPE_15__ = type { i64, i64 }

@link = common dso_local global i32 0, align 4
@MAXSCATTERGATHER_SEND = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i8* null, align 8
@IPV6_PKTINFO = common dso_local global i32 0, align 4
@IPV6_USE_MIN_MTU = common dso_local global i32 0, align 4
@ISC_MSGSET_SOCKET = common dso_local global i32 0, align 4
@ISC_MSG_SENDTODATA = common dso_local global i32 0, align 4
@ISC_SOCKEVENTATTR_PKTINFO = common dso_local global i32 0, align 4
@TRACE = common dso_local global i32 0, align 4
@isc_msgcat = common dso_local global i32 0, align 4
@isc_sockettype_udp = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_14__*, %struct.msghdr*, %struct.iovec*, i64*)* @build_msghdr_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_msghdr_send(%struct.TYPE_16__* %0, %struct.TYPE_14__* %1, %struct.msghdr* %2, %struct.iovec* %3, i64* %4) #0 {
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.msghdr*, align 8
  %9 = alloca %struct.iovec*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_15__, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store %struct.msghdr* %2, %struct.msghdr** %8, align 8
  store %struct.iovec* %3, %struct.iovec** %9, align 8
  store i64* %4, i64** %10, align 8
  %16 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %17 = call i32 @memset(%struct.msghdr* %16, i32 0, i32 72)
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %5
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = bitcast i32* %26 to i8*
  %28 = bitcast i8* %27 to i32*
  %29 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %30 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %29, i32 0, i32 8
  store i32* %28, i32** %30, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %36 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %35, i32 0, i32 7
  store i64 %34, i64* %36, align 8
  br label %42

37:                                               ; preds = %5
  %38 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %39 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %38, i32 0, i32 8
  store i32* null, i32** %39, align 8
  %40 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %41 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %40, i32 0, i32 7
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %37, %22
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i32* @ISC_LIST_HEAD(i32 %45)
  store i32* %46, i32** %12, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %11, align 4
  %47 = load i32*, i32** %12, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %74

49:                                               ; preds = %42
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = sub i64 %53, %56
  store i64 %57, i64* %14, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %61, %64
  %66 = inttoptr i64 %65 to i8*
  %67 = load %struct.iovec*, %struct.iovec** %9, align 8
  %68 = getelementptr inbounds %struct.iovec, %struct.iovec* %67, i64 0
  %69 = getelementptr inbounds %struct.iovec, %struct.iovec* %68, i32 0, i32 1
  store i8* %66, i8** %69, align 8
  %70 = load i64, i64* %14, align 8
  %71 = load %struct.iovec*, %struct.iovec** %9, align 8
  %72 = getelementptr inbounds %struct.iovec, %struct.iovec* %71, i64 0
  %73 = getelementptr inbounds %struct.iovec, %struct.iovec* %72, i32 0, i32 0
  store i64 %70, i64* %73, align 8
  store i32 1, i32* %11, align 4
  br label %150

74:                                               ; preds = %42
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %15, align 8
  br label %78

78:                                               ; preds = %90, %74
  %79 = load i32*, i32** %12, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %98

81:                                               ; preds = %78
  %82 = load i32*, i32** %12, align 8
  %83 = call i32 @ISC_BUFFER_VALID(i32* %82)
  %84 = call i32 @REQUIRE(i32 %83)
  %85 = load i64, i64* %15, align 8
  %86 = load i32*, i32** %12, align 8
  %87 = call i64 @isc_buffer_usedlength(i32* %86)
  %88 = icmp ult i64 %85, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  br label %98

90:                                               ; preds = %81
  %91 = load i32*, i32** %12, align 8
  %92 = call i64 @isc_buffer_usedlength(i32* %91)
  %93 = load i64, i64* %15, align 8
  %94 = sub i64 %93, %92
  store i64 %94, i64* %15, align 8
  %95 = load i32*, i32** %12, align 8
  %96 = load i32, i32* @link, align 4
  %97 = call i32* @ISC_LIST_NEXT(i32* %95, i32 %96)
  store i32* %97, i32** %12, align 8
  br label %78

98:                                               ; preds = %89, %78
  br label %99

99:                                               ; preds = %141, %98
  %100 = load i32*, i32** %12, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %145

102:                                              ; preds = %99
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* @MAXSCATTERGATHER_SEND, align 4
  %105 = icmp ult i32 %103, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @INSIST(i32 %106)
  %108 = load i32*, i32** %12, align 8
  %109 = call i32 @isc_buffer_usedregion(i32* %108, %struct.TYPE_15__* %13)
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ugt i64 %111, 0
  br i1 %112, label %113, label %141

113:                                              ; preds = %102
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %15, align 8
  %117 = add i64 %115, %116
  %118 = inttoptr i64 %117 to i8*
  %119 = load %struct.iovec*, %struct.iovec** %9, align 8
  %120 = load i32, i32* %11, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.iovec, %struct.iovec* %119, i64 %121
  %123 = getelementptr inbounds %struct.iovec, %struct.iovec* %122, i32 0, i32 1
  store i8* %118, i8** %123, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* %15, align 8
  %127 = sub i64 %125, %126
  %128 = load %struct.iovec*, %struct.iovec** %9, align 8
  %129 = load i32, i32* %11, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds %struct.iovec, %struct.iovec* %128, i64 %130
  %132 = getelementptr inbounds %struct.iovec, %struct.iovec* %131, i32 0, i32 0
  store i64 %127, i64* %132, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %15, align 8
  %136 = sub i64 %134, %135
  %137 = load i64, i64* %14, align 8
  %138 = add i64 %137, %136
  store i64 %138, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %139 = load i32, i32* %11, align 4
  %140 = add i32 %139, 1
  store i32 %140, i32* %11, align 4
  br label %141

141:                                              ; preds = %113, %102
  %142 = load i32*, i32** %12, align 8
  %143 = load i32, i32* @link, align 4
  %144 = call i32* @ISC_LIST_NEXT(i32* %142, i32 %143)
  store i32* %144, i32** %12, align 8
  br label %99

145:                                              ; preds = %99
  %146 = load i64, i64* %15, align 8
  %147 = icmp eq i64 %146, 0
  %148 = zext i1 %147 to i32
  %149 = call i32 @INSIST(i32 %148)
  br label %150

150:                                              ; preds = %145, %49
  %151 = load %struct.iovec*, %struct.iovec** %9, align 8
  %152 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %153 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %152, i32 0, i32 6
  store %struct.iovec* %151, %struct.iovec** %153, align 8
  %154 = load i32, i32* %11, align 4
  %155 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %156 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  %157 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %158 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %157, i32 0, i32 3
  store i32* null, i32** %158, align 8
  %159 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %160 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %159, i32 0, i32 2
  store i64 0, i64* %160, align 8
  %161 = load i64*, i64** %10, align 8
  %162 = icmp ne i64* %161, null
  br i1 %162, label %163, label %166

163:                                              ; preds = %150
  %164 = load i64, i64* %14, align 8
  %165 = load i64*, i64** %10, align 8
  store i64 %164, i64* %165, align 8
  br label %166

166:                                              ; preds = %163, %150
  ret void
}

declare dso_local i32 @memset(%struct.msghdr*, i32, i32) #1

declare dso_local i32* @ISC_LIST_HEAD(i32) #1

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @ISC_BUFFER_VALID(i32*) #1

declare dso_local i64 @isc_buffer_usedlength(i32*) #1

declare dso_local i32* @ISC_LIST_NEXT(i32*, i32) #1

declare dso_local i32 @INSIST(i32) #1

declare dso_local i32 @isc_buffer_usedregion(i32*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
