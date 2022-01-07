; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_list_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_list_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211req = type { i32, i32, i32*, i32, i32 }
%struct.ieee80211req_maclist = type { i64 }
%struct.ether_addr = type { i32 }

@name = common dso_local global i32 0, align 4
@IEEE80211_IOC_MACCMD = common dso_local global i32 0, align 4
@IEEE80211_MACCMD_POLICY = common dso_local global i32 0, align 4
@SIOCG80211 = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"No acl policy loaded\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"unable to get mac policy\00", align 1
@IEEE80211_MACCMD_POLICY_OPEN = common dso_local global i32 0, align 4
@IEEE80211_MACCMD_POLICY_ALLOW = common dso_local global i32 0, align 4
@IEEE80211_MACCMD_POLICY_DENY = common dso_local global i32 0, align 4
@IEEE80211_MACCMD_POLICY_RADIUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"policy: unknown (%u)\0A\00", align 1
@verbose = common dso_local global i64 0, align 8
@IEEE80211_MACCMD_LIST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"unable to get mac acl list size\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"out of memory for acl list\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"unable to get mac acl list\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%c%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @list_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_mac(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211req, align 8
  %4 = alloca %struct.ieee80211req_maclist*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  %11 = call i32 @memset(%struct.ieee80211req* %3, i32 0, i32 24)
  %12 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %3, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @name, align 4
  %15 = call i32 @strlcpy(i32 %13, i32 %14, i32 4)
  %16 = load i32, i32* @IEEE80211_IOC_MACCMD, align 4
  %17 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %3, i32 0, i32 3
  store i32 %16, i32* %17, align 8
  %18 = load i32, i32* @IEEE80211_MACCMD_POLICY, align 4
  %19 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %3, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @SIOCG80211, align 4
  %22 = call i64 @ioctl(i32 %20, i32 %21, %struct.ieee80211req* %3)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %1
  %25 = load i64, i64* @errno, align 8
  %26 = load i64, i64* @EINVAL, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %142

30:                                               ; preds = %24
  %31 = call i32 @err(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %1
  %33 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %3, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @IEEE80211_MACCMD_POLICY_OPEN, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i8 42, i8* %10, align 1
  br label %60

39:                                               ; preds = %32
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @IEEE80211_MACCMD_POLICY_ALLOW, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i8 43, i8* %10, align 1
  br label %59

44:                                               ; preds = %39
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @IEEE80211_MACCMD_POLICY_DENY, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i8 45, i8* %10, align 1
  br label %58

49:                                               ; preds = %44
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @IEEE80211_MACCMD_POLICY_RADIUS, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i8 114, i8* %10, align 1
  br label %57

54:                                               ; preds = %49
  %55 = load i32, i32* %7, align 4
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  store i8 63, i8* %10, align 1
  br label %57

57:                                               ; preds = %54, %53
  br label %58

58:                                               ; preds = %57, %48
  br label %59

59:                                               ; preds = %58, %43
  br label %60

60:                                               ; preds = %59, %38
  %61 = load i64, i64* @verbose, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %60
  %64 = load i8, i8* %10, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 63
  br i1 %66, label %67, label %70

67:                                               ; preds = %63, %60
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @printpolicy(i32 %68)
  br label %70

70:                                               ; preds = %67, %63
  %71 = load i32, i32* @IEEE80211_MACCMD_LIST, align 4
  %72 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %3, i32 0, i32 0
  store i32 %71, i32* %72, align 8
  %73 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %3, i32 0, i32 1
  store i32 0, i32* %73, align 4
  %74 = load i32, i32* %2, align 4
  %75 = load i32, i32* @SIOCG80211, align 4
  %76 = call i64 @ioctl(i32 %74, i32 %75, %struct.ieee80211req* %3)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = call i32 @err(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %70
  %81 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %3, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %80
  %85 = load i64, i64* @verbose, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %84
  %88 = load i8, i8* %10, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 63
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @printpolicy(i32 %92)
  br label %94

94:                                               ; preds = %91, %87, %84
  br label %142

95:                                               ; preds = %80
  %96 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %3, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i32* @malloc(i32 %98)
  store i32* %99, i32** %9, align 8
  %100 = load i32*, i32** %9, align 8
  %101 = icmp eq i32* %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = call i32 @err(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %95
  %105 = load i32*, i32** %9, align 8
  %106 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %3, i32 0, i32 2
  store i32* %105, i32** %106, align 8
  %107 = load i32, i32* %2, align 4
  %108 = load i32, i32* @SIOCG80211, align 4
  %109 = call i64 @ioctl(i32 %107, i32 %108, %struct.ieee80211req* %3)
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = call i32 @err(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %104
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = udiv i64 %115, 8
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %6, align 4
  %118 = load i32*, i32** %9, align 8
  %119 = bitcast i32* %118 to %struct.ieee80211req_maclist*
  store %struct.ieee80211req_maclist* %119, %struct.ieee80211req_maclist** %4, align 8
  store i32 0, i32* %5, align 4
  br label %120

120:                                              ; preds = %136, %113
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* %6, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %139

124:                                              ; preds = %120
  %125 = load i8, i8* %10, align 1
  %126 = sext i8 %125 to i32
  %127 = load %struct.ieee80211req_maclist*, %struct.ieee80211req_maclist** %4, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.ieee80211req_maclist, %struct.ieee80211req_maclist* %127, i64 %129
  %131 = getelementptr inbounds %struct.ieee80211req_maclist, %struct.ieee80211req_maclist* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = inttoptr i64 %132 to %struct.ether_addr*
  %134 = call i32 @ether_ntoa(%struct.ether_addr* %133)
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %126, i32 %134)
  br label %136

136:                                              ; preds = %124
  %137 = load i32, i32* %5, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %5, align 4
  br label %120

139:                                              ; preds = %120
  %140 = load i32*, i32** %9, align 8
  %141 = call i32 @free(i32* %140)
  br label %142

142:                                              ; preds = %139, %94, %28
  ret void
}

declare dso_local i32 @memset(%struct.ieee80211req*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ieee80211req*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @printpolicy(i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @ether_ntoa(%struct.ether_addr*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
