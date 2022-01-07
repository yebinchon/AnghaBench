; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifvxlan.c_vxlan_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifvxlan.c_vxlan_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifvxlancfg = type { i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.sockaddr }
%struct.sockaddr = type { i64, i32 }
%struct.TYPE_4__ = type { %struct.sockaddr }
%struct.sockaddr_in = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@NI_MAXHOST = common dso_local global i32 0, align 4
@NI_MAXSERV = common dso_local global i32 0, align 4
@VXLAN_CMD_GET_CONFIG = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@VXLAN_VNI_MAX = common dso_local global i32 0, align 4
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@NI_NUMERICSERV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"\09vxlan vni %d\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c" local %s%s%s:%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c" %s %s%s%s:%s\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"remote\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [12 x i8] c"\0A\09\09config: \00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"%slearning portrange %d-%d ttl %d\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"\0A\09\09ftable: \00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"cnt %d max %d timeout %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @vxlan_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxlan_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifvxlancfg, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.sockaddr_in*, align 8
  %16 = alloca %struct.sockaddr_in6*, align 8
  store i32 %0, i32* %2, align 4
  %17 = load i32, i32* @NI_MAXHOST, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %4, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %5, align 8
  %21 = load i32, i32* @NI_MAXHOST, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %6, align 8
  %24 = load i32, i32* @NI_MAXSERV, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %7, align 8
  %27 = load i32, i32* @NI_MAXSERV, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %8, align 8
  %30 = call i32 @bzero(%struct.ifvxlancfg* %3, i32 72)
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @VXLAN_CMD_GET_CONFIG, align 4
  %33 = call i64 @do_cmd(i32 %31, i32 %32, %struct.ifvxlancfg* %3, i32 72, i32 0)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %1
  store i32 1, i32* %14, align 4
  br label %152

36:                                               ; preds = %1
  %37 = getelementptr inbounds %struct.ifvxlancfg, %struct.ifvxlancfg* %3, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %11, align 4
  %39 = getelementptr inbounds %struct.ifvxlancfg, %struct.ifvxlancfg* %3, i32 0, i32 9
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store %struct.sockaddr* %40, %struct.sockaddr** %9, align 8
  %41 = getelementptr inbounds %struct.ifvxlancfg, %struct.ifvxlancfg* %3, i32 0, i32 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store %struct.sockaddr* %42, %struct.sockaddr** %10, align 8
  %43 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %44 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @AF_INET6, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @VXLAN_VNI_MAX, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %36
  store i32 1, i32* %14, align 4
  br label %152

53:                                               ; preds = %36
  %54 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %55 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %56 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = trunc i64 %18 to i32
  %59 = trunc i64 %25 to i32
  %60 = load i32, i32* @NI_NUMERICHOST, align 4
  %61 = load i32, i32* @NI_NUMERICSERV, align 4
  %62 = or i32 %60, %61
  %63 = call i64 @getnameinfo(%struct.sockaddr* %54, i32 %57, i8* %20, i32 %58, i8* %26, i32 %59, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %53
  %66 = getelementptr inbounds i8, i8* %26, i64 0
  store i8 0, i8* %66, align 16
  %67 = getelementptr inbounds i8, i8* %20, i64 0
  store i8 0, i8* %67, align 16
  br label %68

68:                                               ; preds = %65, %53
  %69 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %70 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %71 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = trunc i64 %22 to i32
  %74 = trunc i64 %28 to i32
  %75 = load i32, i32* @NI_NUMERICHOST, align 4
  %76 = load i32, i32* @NI_NUMERICSERV, align 4
  %77 = or i32 %75, %76
  %78 = call i64 @getnameinfo(%struct.sockaddr* %69, i32 %72, i8* %23, i32 %73, i8* %29, i32 %74, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %68
  %81 = getelementptr inbounds i8, i8* %29, i64 0
  store i8 0, i8* %81, align 16
  %82 = getelementptr inbounds i8, i8* %23, i64 0
  store i8 0, i8* %82, align 16
  br label %83

83:                                               ; preds = %80, %68
  %84 = load i32, i32* %13, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %83
  %87 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %88 = bitcast %struct.sockaddr* %87 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %88, %struct.sockaddr_in** %15, align 8
  %89 = load %struct.sockaddr_in*, %struct.sockaddr_in** %15, align 8
  %90 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ntohl(i32 %92)
  %94 = call i32 @IN_MULTICAST(i32 %93)
  store i32 %94, i32* %12, align 4
  br label %101

95:                                               ; preds = %83
  %96 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %97 = bitcast %struct.sockaddr* %96 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %97, %struct.sockaddr_in6** %16, align 8
  %98 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %16, align 8
  %99 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %98, i32 0, i32 0
  %100 = call i32 @IN6_IS_ADDR_MULTICAST(i32* %99)
  store i32 %100, i32* %12, align 4
  br label %101

101:                                              ; preds = %95, %86
  %102 = load i32, i32* %11, align 4
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %108 = load i32, i32* %13, align 4
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %107, i8* %20, i8* %111, i8* %26)
  %113 = load i32, i32* %12, align 4
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)
  %117 = load i32, i32* %13, align 4
  %118 = icmp ne i32 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %121 = load i32, i32* %13, align 4
  %122 = icmp ne i32 %121, 0
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %116, i8* %120, i8* %23, i8* %124, i8* %29)
  %126 = load i64, i64* @verbose, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %150

128:                                              ; preds = %101
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %130 = getelementptr inbounds %struct.ifvxlancfg, %struct.ifvxlancfg* %3, i32 0, i32 7
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)
  %135 = getelementptr inbounds %struct.ifvxlancfg, %struct.ifvxlancfg* %3, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds %struct.ifvxlancfg, %struct.ifvxlancfg* %3, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = getelementptr inbounds %struct.ifvxlancfg, %struct.ifvxlancfg* %3, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i8* %134, i32 %136, i32 %138, i32 %140)
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %143 = getelementptr inbounds %struct.ifvxlancfg, %struct.ifvxlancfg* %3, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = getelementptr inbounds %struct.ifvxlancfg, %struct.ifvxlancfg* %3, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds %struct.ifvxlancfg, %struct.ifvxlancfg* %3, i32 0, i32 6
  %148 = load i32, i32* %147, align 8
  %149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 %144, i32 %146, i32 %148)
  br label %150

150:                                              ; preds = %128, %101
  %151 = call i32 @putchar(i8 signext 10)
  store i32 0, i32* %14, align 4
  br label %152

152:                                              ; preds = %150, %52, %35
  %153 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %153)
  %154 = load i32, i32* %14, align 4
  switch i32 %154, label %156 [
    i32 0, label %155
    i32 1, label %155
  ]

155:                                              ; preds = %152, %152
  ret void

156:                                              ; preds = %152
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bzero(%struct.ifvxlancfg*, i32) #2

declare dso_local i64 @do_cmd(i32, i32, %struct.ifvxlancfg*, i32, i32) #2

declare dso_local i64 @getnameinfo(%struct.sockaddr*, i32, i8*, i32, i8*, i32, i32) #2

declare dso_local i32 @IN_MULTICAST(i32) #2

declare dso_local i32 @ntohl(i32) #2

declare dso_local i32 @IN6_IS_ADDR_MULTICAST(i32*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @putchar(i8 signext) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
