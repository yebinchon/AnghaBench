; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_socket.c_build_msghdr_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_socket.c_build_msghdr_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i64, i32*, i32, %struct.msghdr }
%struct.msghdr = type { i32, i32, i64, i32*, i64, i32*, i64, %struct.iovec*, i32*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__, i32, %struct.msghdr }
%struct.TYPE_10__ = type { i64, i64 }
%struct.iovec = type { i64, i8* }
%struct.TYPE_12__ = type { i64, i64 }

@isc_sockettype_udp = common dso_local global i64 0, align 8
@link = common dso_local global i32 0, align 4
@MAXSCATTERGATHER_RECV = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@AF_UNIX = common dso_local global i64 0, align 8
@maxiov = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_11__*, %struct.msghdr*, %struct.iovec*, i64*)* @build_msghdr_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_msghdr_recv(%struct.TYPE_13__* %0, %struct.TYPE_11__* %1, %struct.msghdr* %2, %struct.iovec* %3, i64* %4) #0 {
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.msghdr*, align 8
  %9 = alloca %struct.iovec*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_12__, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store %struct.msghdr* %2, %struct.msghdr** %8, align 8
  store %struct.iovec* %3, %struct.iovec** %9, align 8
  store i64* %4, i64** %10, align 8
  %15 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %16 = call i32 @memset(%struct.msghdr* %15, i32 0, i32 80)
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @isc_sockettype_udp, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %5
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 3
  %25 = call i32 @memset(%struct.msghdr* %24, i32 0, i32 80)
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %27, i32 0, i32 9
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = bitcast i32* %29 to i8*
  %31 = bitcast i8* %30 to i32*
  %32 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %33 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %32, i32 0, i32 8
  store i32* %31, i32** %33, align 8
  %34 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %35 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %34, i32 0, i32 0
  store i32 16, i32* %35, align 8
  br label %47

36:                                               ; preds = %5
  %37 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %38 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %37, i32 0, i32 8
  store i32* null, i32** %38, align 8
  %39 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %40 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 5
  %45 = bitcast %struct.msghdr* %42 to i8*
  %46 = bitcast %struct.msghdr* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 80, i1 false)
  br label %47

47:                                               ; preds = %36, %22
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32* @ISC_LIST_HEAD(i32 %50)
  store i32* %51, i32** %12, align 8
  store i64 0, i64* %14, align 8
  %52 = load i32*, i32** %12, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %79

54:                                               ; preds = %47
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = sub i64 %58, %61
  store i64 %62, i64* %14, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %66, %69
  %71 = inttoptr i64 %70 to i8*
  %72 = load %struct.iovec*, %struct.iovec** %9, align 8
  %73 = getelementptr inbounds %struct.iovec, %struct.iovec* %72, i64 0
  %74 = getelementptr inbounds %struct.iovec, %struct.iovec* %73, i32 0, i32 1
  store i8* %71, i8** %74, align 8
  %75 = load i64, i64* %14, align 8
  %76 = load %struct.iovec*, %struct.iovec** %9, align 8
  %77 = getelementptr inbounds %struct.iovec, %struct.iovec* %76, i64 0
  %78 = getelementptr inbounds %struct.iovec, %struct.iovec* %77, i32 0, i32 0
  store i64 %75, i64* %78, align 8
  store i32 1, i32* %11, align 4
  br label %137

79:                                               ; preds = %47
  br label %80

80:                                               ; preds = %91, %79
  %81 = load i32*, i32** %12, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %95

83:                                               ; preds = %80
  %84 = load i32*, i32** %12, align 8
  %85 = call i32 @ISC_BUFFER_VALID(i32* %84)
  %86 = call i32 @REQUIRE(i32 %85)
  %87 = load i32*, i32** %12, align 8
  %88 = call i64 @isc_buffer_availablelength(i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %95

91:                                               ; preds = %83
  %92 = load i32*, i32** %12, align 8
  %93 = load i32, i32* @link, align 4
  %94 = call i32* @ISC_LIST_NEXT(i32* %92, i32 %93)
  store i32* %94, i32** %12, align 8
  br label %80

95:                                               ; preds = %90, %80
  store i32 0, i32* %11, align 4
  br label %96

96:                                               ; preds = %132, %95
  %97 = load i32*, i32** %12, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %136

99:                                               ; preds = %96
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @MAXSCATTERGATHER_RECV, align 4
  %102 = icmp ult i32 %100, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 @INSIST(i32 %103)
  %105 = load i32*, i32** %12, align 8
  %106 = call i32 @isc_buffer_availableregion(i32* %105, %struct.TYPE_12__* %13)
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ugt i64 %108, 0
  br i1 %109, label %110, label %132

110:                                              ; preds = %99
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = inttoptr i64 %112 to i8*
  %114 = load %struct.iovec*, %struct.iovec** %9, align 8
  %115 = load i32, i32* %11, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.iovec, %struct.iovec* %114, i64 %116
  %118 = getelementptr inbounds %struct.iovec, %struct.iovec* %117, i32 0, i32 1
  store i8* %113, i8** %118, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.iovec*, %struct.iovec** %9, align 8
  %122 = load i32, i32* %11, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.iovec, %struct.iovec* %121, i64 %123
  %125 = getelementptr inbounds %struct.iovec, %struct.iovec* %124, i32 0, i32 0
  store i64 %120, i64* %125, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %14, align 8
  %129 = add i64 %128, %127
  store i64 %129, i64* %14, align 8
  %130 = load i32, i32* %11, align 4
  %131 = add i32 %130, 1
  store i32 %131, i32* %11, align 4
  br label %132

132:                                              ; preds = %110, %99
  %133 = load i32*, i32** %12, align 8
  %134 = load i32, i32* @link, align 4
  %135 = call i32* @ISC_LIST_NEXT(i32* %133, i32 %134)
  store i32* %135, i32** %12, align 8
  br label %96

136:                                              ; preds = %96
  br label %137

137:                                              ; preds = %136, %54
  %138 = load %struct.iovec*, %struct.iovec** %9, align 8
  %139 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %140 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %139, i32 0, i32 7
  store %struct.iovec* %138, %struct.iovec** %140, align 8
  %141 = load i32, i32* %11, align 4
  %142 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %143 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  %144 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %145 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %144, i32 0, i32 3
  store i32* null, i32** %145, align 8
  %146 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %147 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %146, i32 0, i32 2
  store i64 0, i64* %147, align 8
  %148 = load i64*, i64** %10, align 8
  %149 = icmp ne i64* %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %137
  %151 = load i64, i64* %14, align 8
  %152 = load i64*, i64** %10, align 8
  store i64 %151, i64* %152, align 8
  br label %153

153:                                              ; preds = %150, %137
  ret void
}

declare dso_local i32 @memset(%struct.msghdr*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @ISC_LIST_HEAD(i32) #1

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @ISC_BUFFER_VALID(i32*) #1

declare dso_local i64 @isc_buffer_availablelength(i32*) #1

declare dso_local i32* @ISC_LIST_NEXT(i32*, i32) #1

declare dso_local i32 @INSIST(i32) #1

declare dso_local i32 @isc_buffer_availableregion(i32*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
