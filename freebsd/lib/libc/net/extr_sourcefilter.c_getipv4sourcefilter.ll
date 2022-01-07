; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_sourcefilter.c_getipv4sourcefilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_sourcefilter.c_getipv4sourcefilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, %struct.in_addr, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_storage = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getipv4sourcefilter(i32 %0, i32 %1, i32 %2, i64* %3, i64* %4, %struct.in_addr* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.in_addr, align 4
  %9 = alloca %struct.in_addr, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.in_addr*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca %struct.TYPE_9__, align 8
  %17 = alloca %struct.in_addr*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %8, i32 0, i32 0
  store i32 %1, i32* %22, align 4
  %23 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %9, i32 0, i32 0
  store i32 %2, i32* %23, align 4
  store i32 %0, i32* %10, align 4
  store i64* %3, i64** %11, align 8
  store i64* %4, i64** %12, align 8
  store %struct.in_addr* %5, %struct.in_addr** %13, align 8
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, -1
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i64*, i64** %11, align 8
  %29 = icmp ne i64* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i64*, i64** %12, align 8
  %33 = icmp ne i64* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i64*, i64** %12, align 8
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %21, align 8
  %38 = load i64*, i64** %12, align 8
  store i64 0, i64* %38, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %15, align 8
  %39 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %9, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ntohl(i32 %40)
  %42 = call i32 @IN_MULTICAST(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %6
  %45 = load i64, i64* %21, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load %struct.in_addr*, %struct.in_addr** %13, align 8
  %49 = icmp eq %struct.in_addr* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %47, %6
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* @errno, align 4
  store i32 -1, i32* %7, align 4
  br label %135

52:                                               ; preds = %47, %44
  %53 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %8, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @__inaddr_to_index(i32 %54)
  store i64 %55, i64* %20, align 8
  %56 = load i64, i64* %20, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %59, i32* @errno, align 4
  store i32 -1, i32* %7, align 4
  br label %135

60:                                               ; preds = %52
  %61 = call i32 @memset(%struct.TYPE_9__* %16, i32 0, i32 24)
  %62 = load i64, i64* @AF_INET, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  store i64 %62, i64* %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  store i32 4, i32* %66, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = bitcast %struct.in_addr* %68 to i8*
  %70 = bitcast %struct.in_addr* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %69, i8* align 4 %70, i64 4, i1 false)
  %71 = load i64, i64* %21, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %60
  %74 = load %struct.in_addr*, %struct.in_addr** %13, align 8
  %75 = icmp ne %struct.in_addr* %74, null
  br i1 %75, label %76, label %84

76:                                               ; preds = %73, %60
  %77 = load i64, i64* %21, align 8
  %78 = call %struct.TYPE_9__* @calloc(i64 %77, i32 24)
  store %struct.TYPE_9__* %78, %struct.TYPE_9__** %15, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %80 = icmp eq %struct.TYPE_9__* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* @ENOMEM, align 4
  store i32 %82, i32* @errno, align 4
  store i32 -1, i32* %7, align 4
  br label %135

83:                                               ; preds = %76
  br label %84

84:                                               ; preds = %83, %73
  %85 = load i32, i32* %10, align 4
  %86 = load i64, i64* %20, align 8
  %87 = bitcast %struct.TYPE_9__* %16 to %struct.sockaddr*
  %88 = load i64*, i64** %11, align 8
  %89 = load i64*, i64** %12, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %91 = bitcast %struct.TYPE_9__* %90 to %struct.sockaddr_storage*
  %92 = call i32 @getsourcefilter(i32 %85, i64 %86, %struct.sockaddr* %87, i32 4, i64* %88, i64* %89, %struct.sockaddr_storage* %91)
  store i32 %92, i32* %18, align 4
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %94 = icmp ne %struct.TYPE_9__* %93, null
  br i1 %94, label %95, label %133

95:                                               ; preds = %84
  %96 = load i64*, i64** %12, align 8
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %133

99:                                               ; preds = %95
  %100 = load %struct.in_addr*, %struct.in_addr** %13, align 8
  store %struct.in_addr* %100, %struct.in_addr** %17, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  store %struct.TYPE_9__* %101, %struct.TYPE_9__** %14, align 8
  store i64 0, i64* %19, align 8
  br label %102

102:                                              ; preds = %125, %99
  %103 = load i64, i64* %19, align 8
  %104 = load i64, i64* %21, align 8
  %105 = load i64*, i64** %12, align 8
  %106 = load i64, i64* %105, align 8
  %107 = call i64 @MIN(i64 %104, i64 %106)
  %108 = icmp ult i64 %103, %107
  br i1 %108, label %109, label %130

109:                                              ; preds = %102
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @AF_INET, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %109
  br label %125

117:                                              ; preds = %109
  %118 = load %struct.in_addr*, %struct.in_addr** %17, align 8
  %119 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %118, i32 1
  store %struct.in_addr* %119, %struct.in_addr** %17, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = bitcast %struct.in_addr* %118 to i8*
  %124 = bitcast %struct.in_addr* %122 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %123, i8* align 4 %124, i64 4, i1 false)
  br label %125

125:                                              ; preds = %117, %116
  %126 = load i64, i64* %19, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %19, align 8
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 1
  store %struct.TYPE_9__* %129, %struct.TYPE_9__** %14, align 8
  br label %102

130:                                              ; preds = %102
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %132 = call i32 @free(%struct.TYPE_9__* %131)
  br label %133

133:                                              ; preds = %130, %95, %84
  %134 = load i32, i32* %18, align 4
  store i32 %134, i32* %7, align 4
  br label %135

135:                                              ; preds = %133, %81, %58, %50
  %136 = load i32, i32* %7, align 4
  ret i32 %136
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @IN_MULTICAST(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i64 @__inaddr_to_index(i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_9__* @calloc(i64, i32) #1

declare dso_local i32 @getsourcefilter(i32, i64, %struct.sockaddr*, i32, i64*, i64*, %struct.sockaddr_storage*) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
