; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/libifconfig/extr_status.c_print_inet4_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/libifconfig/extr_status.c_print_inet4_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddrs = type { i32 }
%struct.ifconfig_inet_addr = type { i32, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_11__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_12__ }
%struct.TYPE_7__ = type { i32 }

@NI_MAXHOST = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"\09inet %s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c" --> %s\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c" netmask 0x%x \00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"broadcast %s \00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"vhid %d \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.ifaddrs*)* @print_inet4_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_inet4_addr(i32* %0, %struct.ifaddrs* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ifaddrs*, align 8
  %5 = alloca %struct.ifconfig_inet_addr, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
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
  %18 = call i64 @ifconfig_inet_get_addrinfo(i32* %13, i32 %16, %struct.ifaddrs* %17, %struct.ifconfig_inet_addr* %5)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  br label %76

21:                                               ; preds = %2
  %22 = load i32, i32* @AF_INET, align 4
  %23 = getelementptr inbounds %struct.ifconfig_inet_addr, %struct.ifconfig_inet_addr* %5, i32 0, i32 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = trunc i64 %10 to i32
  %27 = call i32 @inet_ntop(i32 %22, i32* %25, i8* %12, i32 %26)
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %12)
  %29 = getelementptr inbounds %struct.ifconfig_inet_addr, %struct.ifconfig_inet_addr* %5, i32 0, i32 3
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = icmp ne %struct.TYPE_8__* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.ifconfig_inet_addr, %struct.ifconfig_inet_addr* %5, i32 0, i32 3
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i8* @inet_ntoa(i64 %37)
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  br label %40

40:                                               ; preds = %32, %21
  %41 = getelementptr inbounds %struct.ifconfig_inet_addr, %struct.ifconfig_inet_addr* %5, i32 0, i32 2
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ntohl(i32 %45)
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = getelementptr inbounds %struct.ifconfig_inet_addr, %struct.ifconfig_inet_addr* %5, i32 0, i32 1
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = icmp ne %struct.TYPE_11__* %49, null
  br i1 %50, label %51, label %66

51:                                               ; preds = %40
  %52 = getelementptr inbounds %struct.ifconfig_inet_addr, %struct.ifconfig_inet_addr* %5, i32 0, i32 1
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.ifconfig_inet_addr, %struct.ifconfig_inet_addr* %5, i32 0, i32 1
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i8* @inet_ntoa(i64 %63)
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %64)
  br label %66

66:                                               ; preds = %58, %51, %40
  %67 = getelementptr inbounds %struct.ifconfig_inet_addr, %struct.ifconfig_inet_addr* %5, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.ifconfig_inet_addr, %struct.ifconfig_inet_addr* %5, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %70, %66
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %76

76:                                               ; preds = %74, %20
  %77 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %77)
  %78 = load i32, i32* %8, align 4
  switch i32 %78, label %80 [
    i32 0, label %79
    i32 1, label %79
  ]

79:                                               ; preds = %76, %76
  ret void

80:                                               ; preds = %76
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ifconfig_inet_get_addrinfo(i32*, i32, %struct.ifaddrs*, %struct.ifconfig_inet_addr*) #2

declare dso_local i32 @inet_ntop(i32, i32*, i8*, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i8* @inet_ntoa(i64) #2

declare dso_local i32 @ntohl(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
