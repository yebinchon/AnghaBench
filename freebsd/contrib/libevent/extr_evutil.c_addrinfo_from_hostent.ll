; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evutil.c_addrinfo_from_hostent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evutil.c_addrinfo_from_hostent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i64, i32, i64, i64* }
%struct.evutil_addrinfo = type { i32, i32* }
%struct.sockaddr_in = type { i32, i8*, i32, i32, i8*, i32 }
%struct.sockaddr_in6 = type { i32, i8*, i32, i32, i8*, i32 }
%struct.sockaddr = type { i32 }

@PF_INET = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Weird h_length from gethostbyname\00", align 1
@PF_INET6 = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i32 0, align 4
@EVUTIL_AI_CANONNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.evutil_addrinfo* (%struct.hostent*, i32, %struct.evutil_addrinfo*)* @addrinfo_from_hostent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.evutil_addrinfo* @addrinfo_from_hostent(%struct.hostent* %0, i32 %1, %struct.evutil_addrinfo* %2) #0 {
  %4 = alloca %struct.evutil_addrinfo*, align 8
  %5 = alloca %struct.hostent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.evutil_addrinfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_in, align 8
  %10 = alloca %struct.sockaddr_in6, align 8
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.evutil_addrinfo*, align 8
  %14 = alloca %struct.evutil_addrinfo*, align 8
  %15 = alloca i8*, align 8
  store %struct.hostent* %0, %struct.hostent** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.evutil_addrinfo* %2, %struct.evutil_addrinfo** %7, align 8
  store %struct.evutil_addrinfo* null, %struct.evutil_addrinfo** %13, align 8
  %16 = load %struct.hostent*, %struct.hostent** %5, align 8
  %17 = getelementptr inbounds %struct.hostent, %struct.hostent* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PF_INET, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %3
  %22 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr_in6*
  %23 = call i32 @memset(%struct.sockaddr_in6* %22, i32 0, i32 40)
  %24 = load i32, i32* @AF_INET, align 4
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 5
  store i32 %24, i32* %25, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i8* @htons(i32 %26)
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 4
  store i8* %27, i8** %28, align 8
  %29 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  store %struct.sockaddr* %29, %struct.sockaddr** %11, align 8
  store i32 40, i32* %12, align 4
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 3
  %31 = bitcast i32* %30 to i8*
  store i8* %31, i8** %15, align 8
  %32 = load %struct.hostent*, %struct.hostent** %5, align 8
  %33 = getelementptr inbounds %struct.hostent, %struct.hostent* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = icmp ne i64 %35, 4
  br i1 %36, label %37, label %39

37:                                               ; preds = %21
  %38 = call i32 @event_warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store %struct.evutil_addrinfo* null, %struct.evutil_addrinfo** %4, align 8
  br label %137

39:                                               ; preds = %21
  br label %66

40:                                               ; preds = %3
  %41 = load %struct.hostent*, %struct.hostent** %5, align 8
  %42 = getelementptr inbounds %struct.hostent, %struct.hostent* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PF_INET6, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %40
  %47 = call i32 @memset(%struct.sockaddr_in6* %10, i32 0, i32 40)
  %48 = load i32, i32* @AF_INET6, align 4
  %49 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %10, i32 0, i32 2
  store i32 %48, i32* %49, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i8* @htons(i32 %50)
  %52 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %10, i32 0, i32 1
  store i8* %51, i8** %52, align 8
  %53 = bitcast %struct.sockaddr_in6* %10 to %struct.sockaddr*
  store %struct.sockaddr* %53, %struct.sockaddr** %11, align 8
  store i32 40, i32* %12, align 4
  %54 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %10, i32 0, i32 0
  %55 = bitcast i32* %54 to i8*
  store i8* %55, i8** %15, align 8
  %56 = load %struct.hostent*, %struct.hostent** %5, align 8
  %57 = getelementptr inbounds %struct.hostent, %struct.hostent* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = icmp ne i64 %59, 4
  br i1 %60, label %61, label %63

61:                                               ; preds = %46
  %62 = call i32 @event_warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store %struct.evutil_addrinfo* null, %struct.evutil_addrinfo** %4, align 8
  br label %137

63:                                               ; preds = %46
  br label %65

64:                                               ; preds = %40
  store %struct.evutil_addrinfo* null, %struct.evutil_addrinfo** %4, align 8
  br label %137

65:                                               ; preds = %63
  br label %66

66:                                               ; preds = %65, %39
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %102, %66
  %68 = load %struct.hostent*, %struct.hostent** %5, align 8
  %69 = getelementptr inbounds %struct.hostent, %struct.hostent* %68, i32 0, i32 3
  %70 = load i64*, i64** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %105

76:                                               ; preds = %67
  %77 = load i8*, i8** %15, align 8
  %78 = load %struct.hostent*, %struct.hostent** %5, align 8
  %79 = getelementptr inbounds %struct.hostent, %struct.hostent* %78, i32 0, i32 3
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.hostent*, %struct.hostent** %5, align 8
  %86 = getelementptr inbounds %struct.hostent, %struct.hostent* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @memcpy(i8* %77, i64 %84, i32 %87)
  %89 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %90 = load i32, i32* %12, align 4
  %91 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %7, align 8
  %92 = call %struct.evutil_addrinfo* @evutil_new_addrinfo_(%struct.sockaddr* %89, i32 %90, %struct.evutil_addrinfo* %91)
  store %struct.evutil_addrinfo* %92, %struct.evutil_addrinfo** %14, align 8
  %93 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %14, align 8
  %94 = icmp ne %struct.evutil_addrinfo* %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %76
  %96 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %13, align 8
  %97 = call i32 @evutil_freeaddrinfo(%struct.evutil_addrinfo* %96)
  store %struct.evutil_addrinfo* null, %struct.evutil_addrinfo** %4, align 8
  br label %137

98:                                               ; preds = %76
  %99 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %13, align 8
  %100 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %14, align 8
  %101 = call %struct.evutil_addrinfo* @evutil_addrinfo_append_(%struct.evutil_addrinfo* %99, %struct.evutil_addrinfo* %100)
  store %struct.evutil_addrinfo* %101, %struct.evutil_addrinfo** %13, align 8
  br label %102

102:                                              ; preds = %98
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %8, align 4
  br label %67

105:                                              ; preds = %67
  %106 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %13, align 8
  %107 = icmp ne %struct.evutil_addrinfo* %106, null
  br i1 %107, label %108, label %135

108:                                              ; preds = %105
  %109 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %7, align 8
  %110 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @EVUTIL_AI_CANONNAME, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %135

115:                                              ; preds = %108
  %116 = load %struct.hostent*, %struct.hostent** %5, align 8
  %117 = getelementptr inbounds %struct.hostent, %struct.hostent* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %135

120:                                              ; preds = %115
  %121 = load %struct.hostent*, %struct.hostent** %5, align 8
  %122 = getelementptr inbounds %struct.hostent, %struct.hostent* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = call i32* @mm_strdup(i64 %123)
  %125 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %13, align 8
  %126 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %125, i32 0, i32 1
  store i32* %124, i32** %126, align 8
  %127 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %13, align 8
  %128 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = icmp eq i32* %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %120
  %132 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %13, align 8
  %133 = call i32 @evutil_freeaddrinfo(%struct.evutil_addrinfo* %132)
  store %struct.evutil_addrinfo* null, %struct.evutil_addrinfo** %4, align 8
  br label %137

134:                                              ; preds = %120
  br label %135

135:                                              ; preds = %134, %115, %108, %105
  %136 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %13, align 8
  store %struct.evutil_addrinfo* %136, %struct.evutil_addrinfo** %4, align 8
  br label %137

137:                                              ; preds = %135, %131, %95, %64, %61, %37
  %138 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %4, align 8
  ret %struct.evutil_addrinfo* %138
}

declare dso_local i32 @memset(%struct.sockaddr_in6*, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @event_warnx(i8*) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local %struct.evutil_addrinfo* @evutil_new_addrinfo_(%struct.sockaddr*, i32, %struct.evutil_addrinfo*) #1

declare dso_local i32 @evutil_freeaddrinfo(%struct.evutil_addrinfo*) #1

declare dso_local %struct.evutil_addrinfo* @evutil_addrinfo_append_(%struct.evutil_addrinfo*, %struct.evutil_addrinfo*) #1

declare dso_local i32* @mm_strdup(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
