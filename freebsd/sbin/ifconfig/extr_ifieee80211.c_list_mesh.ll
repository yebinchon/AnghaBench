; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_list_mesh.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_list_mesh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211req = type { i32, %struct.ieee80211req_mesh_route**, i32, i32, i32 }
%struct.ieee80211req_mesh_route = type { i32, i32, i32, i32, i32, i64, i64 }
%struct.ether_addr = type { i32 }

@name = common dso_local global i32 0, align 4
@IEEE80211_IOC_MESH_RTCMD = common dso_local global i32 0, align 4
@IEEE80211_MESH_RTCMD_LIST = common dso_local global i32 0, align 4
@SIOCG80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"unable to get the Mesh routing table\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"%-17.17s %-17.17s %4s %4s %4s %6s %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"DEST\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"NEXT HOP\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"HOPS\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"METRIC\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"LIFETIME\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"MSEQ\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"FLAGS\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"%s %4u   %4u   %6u %6u    %c%c\0A\00", align 1
@IEEE80211_MESHRT_FLAGS_DISCOVER = common dso_local global i32 0, align 4
@IEEE80211_MESHRT_FLAGS_VALID = common dso_local global i32 0, align 4
@IEEE80211_MESHRT_FLAGS_PROXY = common dso_local global i32 0, align 4
@IEEE80211_MESHRT_FLAGS_GATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @list_mesh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_mesh(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211req, align 8
  %4 = alloca [128 x %struct.ieee80211req_mesh_route], align 16
  %5 = alloca %struct.ieee80211req_mesh_route*, align 8
  store i32 %0, i32* %2, align 4
  %6 = call i32 @memset(%struct.ieee80211req* %3, i32 0, i32 32)
  %7 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %3, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @name, align 4
  %10 = call i32 @strlcpy(i32 %8, i32 %9, i32 4)
  %11 = load i32, i32* @IEEE80211_IOC_MESH_RTCMD, align 4
  %12 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %3, i32 0, i32 3
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @IEEE80211_MESH_RTCMD_LIST, align 4
  %14 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %3, i32 0, i32 2
  store i32 %13, i32* %14, align 8
  %15 = bitcast [128 x %struct.ieee80211req_mesh_route]* %4 to %struct.ieee80211req_mesh_route**
  %16 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %3, i32 0, i32 1
  store %struct.ieee80211req_mesh_route** %15, %struct.ieee80211req_mesh_route*** %16, align 8
  %17 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %3, i32 0, i32 0
  store i32 5120, i32* %17, align 8
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @SIOCG80211, align 4
  %20 = call i64 @ioctl(i32 %18, i32 %19, %struct.ieee80211req* %3)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = call i32 @err(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %1
  %25 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %26 = getelementptr inbounds [128 x %struct.ieee80211req_mesh_route], [128 x %struct.ieee80211req_mesh_route]* %4, i64 0, i64 0
  store %struct.ieee80211req_mesh_route* %26, %struct.ieee80211req_mesh_route** %5, align 8
  br label %27

27:                                               ; preds = %100, %24
  %28 = load %struct.ieee80211req_mesh_route*, %struct.ieee80211req_mesh_route** %5, align 8
  %29 = getelementptr inbounds [128 x %struct.ieee80211req_mesh_route], [128 x %struct.ieee80211req_mesh_route]* %4, i64 0, i64 0
  %30 = ptrtoint %struct.ieee80211req_mesh_route* %28 to i64
  %31 = ptrtoint %struct.ieee80211req_mesh_route* %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 40
  %34 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %3, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = udiv i64 %36, 40
  %38 = icmp ult i64 %33, %37
  br i1 %38, label %39, label %103

39:                                               ; preds = %27
  %40 = load %struct.ieee80211req_mesh_route*, %struct.ieee80211req_mesh_route** %5, align 8
  %41 = getelementptr inbounds %struct.ieee80211req_mesh_route, %struct.ieee80211req_mesh_route* %40, i32 0, i32 6
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.ether_addr*
  %44 = call i8* @ether_ntoa(%struct.ether_addr* %43)
  %45 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %44)
  %46 = load %struct.ieee80211req_mesh_route*, %struct.ieee80211req_mesh_route** %5, align 8
  %47 = getelementptr inbounds %struct.ieee80211req_mesh_route, %struct.ieee80211req_mesh_route* %46, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.ether_addr*
  %50 = call i8* @ether_ntoa(%struct.ether_addr* %49)
  %51 = load %struct.ieee80211req_mesh_route*, %struct.ieee80211req_mesh_route** %5, align 8
  %52 = getelementptr inbounds %struct.ieee80211req_mesh_route, %struct.ieee80211req_mesh_route* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.ieee80211req_mesh_route*, %struct.ieee80211req_mesh_route** %5, align 8
  %55 = getelementptr inbounds %struct.ieee80211req_mesh_route, %struct.ieee80211req_mesh_route* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ieee80211req_mesh_route*, %struct.ieee80211req_mesh_route** %5, align 8
  %58 = getelementptr inbounds %struct.ieee80211req_mesh_route, %struct.ieee80211req_mesh_route* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.ieee80211req_mesh_route*, %struct.ieee80211req_mesh_route** %5, align 8
  %61 = getelementptr inbounds %struct.ieee80211req_mesh_route, %struct.ieee80211req_mesh_route* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ieee80211req_mesh_route*, %struct.ieee80211req_mesh_route** %5, align 8
  %64 = getelementptr inbounds %struct.ieee80211req_mesh_route, %struct.ieee80211req_mesh_route* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @IEEE80211_MESHRT_FLAGS_DISCOVER, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %39
  br label %79

70:                                               ; preds = %39
  %71 = load %struct.ieee80211req_mesh_route*, %struct.ieee80211req_mesh_route** %5, align 8
  %72 = getelementptr inbounds %struct.ieee80211req_mesh_route, %struct.ieee80211req_mesh_route* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @IEEE80211_MESHRT_FLAGS_VALID, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 86, i32 33
  br label %79

79:                                               ; preds = %70, %69
  %80 = phi i32 [ 68, %69 ], [ %78, %70 ]
  %81 = load %struct.ieee80211req_mesh_route*, %struct.ieee80211req_mesh_route** %5, align 8
  %82 = getelementptr inbounds %struct.ieee80211req_mesh_route, %struct.ieee80211req_mesh_route* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @IEEE80211_MESHRT_FLAGS_PROXY, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %79
  br label %97

88:                                               ; preds = %79
  %89 = load %struct.ieee80211req_mesh_route*, %struct.ieee80211req_mesh_route** %5, align 8
  %90 = getelementptr inbounds %struct.ieee80211req_mesh_route, %struct.ieee80211req_mesh_route* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @IEEE80211_MESHRT_FLAGS_GATE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 71, i32 32
  br label %97

97:                                               ; preds = %88, %87
  %98 = phi i32 [ 80, %87 ], [ %96, %88 ]
  %99 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i8* %50, i32 %53, i32 %56, i32 %59, i32 %62, i32 %80, i32 %98)
  br label %100

100:                                              ; preds = %97
  %101 = load %struct.ieee80211req_mesh_route*, %struct.ieee80211req_mesh_route** %5, align 8
  %102 = getelementptr inbounds %struct.ieee80211req_mesh_route, %struct.ieee80211req_mesh_route* %101, i32 1
  store %struct.ieee80211req_mesh_route* %102, %struct.ieee80211req_mesh_route** %5, align 8
  br label %27

103:                                              ; preds = %27
  ret void
}

declare dso_local i32 @memset(%struct.ieee80211req*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ieee80211req*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @ether_ntoa(%struct.ether_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
