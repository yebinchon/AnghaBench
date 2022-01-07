; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/libifconfig/extr_status.c_print_inet6_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/libifconfig/extr_status.c_print_inet6_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddrs = type { i32 }
%struct.ifconfig_inet6_addr = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__*, i32* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.timespec = type { i64 }
%struct.sockaddr = type { i32 }

@NI_MAXHOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"ifconfig_inet6_get_addrinfo\00", align 1
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"\09inet6 %s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c" --> %s\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c" prefixlen %d \00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"scopeid 0x%x \00", align 1
@IN6_IFF_ANYCAST = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"anycast \00", align 1
@IN6_IFF_TENTATIVE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"tentative \00", align 1
@IN6_IFF_DUPLICATED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"duplicated \00", align 1
@IN6_IFF_DETACHED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"detached \00", align 1
@IN6_IFF_DEPRECATED = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"deprecated \00", align 1
@IN6_IFF_AUTOCONF = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"autoconf \00", align 1
@IN6_IFF_TEMPORARY = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"temporary \00", align 1
@IN6_IFF_PREFER_SOURCE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c"prefer_source \00", align 1
@CLOCK_MONOTONIC_FAST = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"pltime \00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%ld \00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"infty \00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"vltime \00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"vhid %d \00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.ifaddrs*)* @print_inet6_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_inet6_addr(i32* %0, %struct.ifaddrs* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ifaddrs*, align 8
  %5 = alloca %struct.ifconfig_inet6_addr, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.timespec, align 8
  store i32* %0, i32** %3, align 8
  store %struct.ifaddrs* %1, %struct.ifaddrs** %4, align 8
  %9 = load i32, i32* @NI_MAXHOST, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %15 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %18 = call i64 @ifconfig_inet6_get_addrinfo(i32* %13, i32 %16, %struct.ifaddrs* %17, %struct.ifconfig_inet6_addr* %5)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = call i32 @err(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %2
  %23 = getelementptr inbounds %struct.ifconfig_inet6_addr, %struct.ifconfig_inet6_addr* %5, i32 0, i32 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = bitcast %struct.TYPE_3__* %24 to %struct.sockaddr*
  %26 = getelementptr inbounds %struct.ifconfig_inet6_addr, %struct.ifconfig_inet6_addr* %5, i32 0, i32 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = trunc i64 %10 to i32
  %31 = load i32, i32* @NI_NUMERICHOST, align 4
  %32 = call i64 @getnameinfo(%struct.sockaddr* %25, i32 %29, i8* %12, i32 %30, i32* null, i32 0, i32 %31)
  %33 = icmp ne i64 0, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %22
  %35 = load i32, i32* @AF_INET6, align 4
  %36 = getelementptr inbounds %struct.ifconfig_inet6_addr, %struct.ifconfig_inet6_addr* %5, i32 0, i32 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = trunc i64 %10 to i32
  %40 = call i32 @inet_ntop(i32 %35, i32* %38, i8* %12, i32 %39)
  br label %41

41:                                               ; preds = %34, %22
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %12)
  %43 = getelementptr inbounds %struct.ifconfig_inet6_addr, %struct.ifconfig_inet6_addr* %5, i32 0, i32 5
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i32, i32* @AF_INET6, align 4
  %48 = getelementptr inbounds %struct.ifconfig_inet6_addr, %struct.ifconfig_inet6_addr* %5, i32 0, i32 5
  %49 = load i32*, i32** %48, align 8
  %50 = trunc i64 %10 to i32
  %51 = call i32 @inet_ntop(i32 %47, i32* %49, i8* %12, i32 %50)
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %12)
  br label %53

53:                                               ; preds = %46, %41
  %54 = getelementptr inbounds %struct.ifconfig_inet6_addr, %struct.ifconfig_inet6_addr* %5, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  %57 = getelementptr inbounds %struct.ifconfig_inet6_addr, %struct.ifconfig_inet6_addr* %5, i32 0, i32 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.ifconfig_inet6_addr, %struct.ifconfig_inet6_addr* %5, i32 0, i32 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %62, %53
  %69 = getelementptr inbounds %struct.ifconfig_inet6_addr, %struct.ifconfig_inet6_addr* %5, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @IN6_IFF_ANYCAST, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %68
  %77 = getelementptr inbounds %struct.ifconfig_inet6_addr, %struct.ifconfig_inet6_addr* %5, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @IN6_IFF_TENTATIVE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %76
  %85 = getelementptr inbounds %struct.ifconfig_inet6_addr, %struct.ifconfig_inet6_addr* %5, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @IN6_IFF_DUPLICATED, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %84
  %93 = getelementptr inbounds %struct.ifconfig_inet6_addr, %struct.ifconfig_inet6_addr* %5, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @IN6_IFF_DETACHED, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %92
  %101 = getelementptr inbounds %struct.ifconfig_inet6_addr, %struct.ifconfig_inet6_addr* %5, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @IN6_IFF_DEPRECATED, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %100
  %109 = getelementptr inbounds %struct.ifconfig_inet6_addr, %struct.ifconfig_inet6_addr* %5, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @IN6_IFF_AUTOCONF, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %108
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %108
  %117 = getelementptr inbounds %struct.ifconfig_inet6_addr, %struct.ifconfig_inet6_addr* %5, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @IN6_IFF_TEMPORARY, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %116
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  br label %124

124:                                              ; preds = %122, %116
  %125 = getelementptr inbounds %struct.ifconfig_inet6_addr, %struct.ifconfig_inet6_addr* %5, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @IN6_IFF_PREFER_SOURCE, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %124
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  br label %132

132:                                              ; preds = %130, %124
  %133 = load i32, i32* @CLOCK_MONOTONIC_FAST, align 4
  %134 = call i32 @clock_gettime(i32 %133, %struct.timespec* %8)
  %135 = getelementptr inbounds %struct.ifconfig_inet6_addr, %struct.ifconfig_inet6_addr* %5, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %132
  %140 = getelementptr inbounds %struct.ifconfig_inet6_addr, %struct.ifconfig_inet6_addr* %5, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %179

144:                                              ; preds = %139, %132
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %146 = getelementptr inbounds %struct.ifconfig_inet6_addr, %struct.ifconfig_inet6_addr* %5, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %159

150:                                              ; preds = %144
  %151 = getelementptr inbounds %struct.ifconfig_inet6_addr, %struct.ifconfig_inet6_addr* %5, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = sub nsw i64 %153, %155
  %157 = call i32 @MAX(i64 0, i64 %156)
  %158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %157)
  br label %161

159:                                              ; preds = %144
  %160 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  br label %161

161:                                              ; preds = %159, %150
  %162 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  %163 = getelementptr inbounds %struct.ifconfig_inet6_addr, %struct.ifconfig_inet6_addr* %5, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %176

167:                                              ; preds = %161
  %168 = getelementptr inbounds %struct.ifconfig_inet6_addr, %struct.ifconfig_inet6_addr* %5, i32 0, i32 3
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = sub nsw i64 %170, %172
  %174 = call i32 @MAX(i64 0, i64 %173)
  %175 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %174)
  br label %178

176:                                              ; preds = %161
  %177 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  br label %178

178:                                              ; preds = %176, %167
  br label %179

179:                                              ; preds = %178, %139
  %180 = getelementptr inbounds %struct.ifconfig_inet6_addr, %struct.ifconfig_inet6_addr* %5, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.ifconfig_inet6_addr, %struct.ifconfig_inet6_addr* %5, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i32 %185)
  br label %187

187:                                              ; preds = %183, %179
  %188 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %189 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %189)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ifconfig_inet6_get_addrinfo(i32*, i32, %struct.ifaddrs*, %struct.ifconfig_inet6_addr*) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i64 @getnameinfo(%struct.sockaddr*, i32, i8*, i32, i32*, i32, i32) #2

declare dso_local i32 @inet_ntop(i32, i32*, i8*, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #2

declare dso_local i32 @MAX(i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
