; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_rdisc.c_set_rdisc_mg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_rdisc.c_set_rdisc_mg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interface = type { i32, i32, i32 }
%struct.group_req = type { i32, i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8* }

@rdisc_sock = common dso_local global i64 0, align 8
@IS_NO_RDISC = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@IS_ALL_HOSTS = common dso_local global i32 0, align 4
@IS_ALL_ROUTERS = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@supplier = common dso_local global i64 0, align 8
@IS_NO_ADV_IN = common dso_local global i32 0, align 4
@INADDR_ALLHOSTS_GROUP = common dso_local global i32 0, align 4
@IPPROTO_IP = common dso_local global i32 0, align 4
@MCAST_LEAVE_GROUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"MCAST_LEAVE_GROUP ALLHOSTS\00", align 1
@MCAST_JOIN_GROUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"MCAST_JOIN_GROUP ALLHOSTS\00", align 1
@IS_NO_ADV_OUT = common dso_local global i32 0, align 4
@INADDR_ALLROUTERS_GROUP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"MCAST_LEAVE_GROUP ALLROUTERS\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"MCAST_JOIN_GROUP ALLROUTERS\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_rdisc_mg(%struct.interface* %0, i32 %1) #0 {
  %3 = alloca %struct.interface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.group_req, align 4
  %6 = alloca %struct.sockaddr_in*, align 8
  store %struct.interface* %0, %struct.interface** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.interface*, %struct.interface** %3, align 8
  %8 = icmp ne %struct.interface* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load i64, i64* @rdisc_sock, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = load %struct.interface*, %struct.interface** %3, align 8
  %15 = getelementptr inbounds %struct.interface, %struct.interface* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IS_NO_RDISC, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @IS_NO_RDISC, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %13
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21, %13
  br label %191

25:                                               ; preds = %21
  %26 = call i32 (...) @get_rdisc_sock()
  br label %27

27:                                               ; preds = %25, %2
  %28 = load %struct.interface*, %struct.interface** %3, align 8
  %29 = getelementptr inbounds %struct.interface, %struct.interface* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IFF_MULTICAST, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @IS_ALL_HOSTS, align 4
  %36 = load i32, i32* @IS_ALL_ROUTERS, align 4
  %37 = or i32 %35, %36
  %38 = xor i32 %37, -1
  %39 = load %struct.interface*, %struct.interface** %3, align 8
  %40 = getelementptr inbounds %struct.interface, %struct.interface* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %191

43:                                               ; preds = %27
  %44 = call i32 @memset(%struct.group_req* %5, i32 0, i32 8)
  %45 = load %struct.interface*, %struct.interface** %3, align 8
  %46 = getelementptr inbounds %struct.interface, %struct.interface* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.group_req, %struct.group_req* %5, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  %49 = getelementptr inbounds %struct.group_req, %struct.group_req* %5, i32 0, i32 0
  %50 = bitcast i32* %49 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %50, %struct.sockaddr_in** %6, align 8
  %51 = load i32, i32* @AF_INET, align 4
  %52 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %53 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load i64, i64* @supplier, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %43
  %57 = load %struct.interface*, %struct.interface** %3, align 8
  %58 = getelementptr inbounds %struct.interface, %struct.interface* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @IS_NO_ADV_IN, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %56
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %94, label %66

66:                                               ; preds = %63, %56, %43
  %67 = load %struct.interface*, %struct.interface** %3, align 8
  %68 = getelementptr inbounds %struct.interface, %struct.interface* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @IS_ALL_HOSTS, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %93

73:                                               ; preds = %66
  %74 = load i32, i32* @INADDR_ALLHOSTS_GROUP, align 4
  %75 = call i8* @htonl(i32 %74)
  %76 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %77 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i8* %75, i8** %78, align 8
  %79 = load i64, i64* @rdisc_sock, align 8
  %80 = load i32, i32* @IPPROTO_IP, align 4
  %81 = load i32, i32* @MCAST_LEAVE_GROUP, align 4
  %82 = call i64 @setsockopt(i64 %79, i32 %80, i32 %81, %struct.group_req* %5, i32 8)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %73
  %85 = call i32 @LOGERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %73
  %87 = load i32, i32* @IS_ALL_HOSTS, align 4
  %88 = xor i32 %87, -1
  %89 = load %struct.interface*, %struct.interface** %3, align 8
  %90 = getelementptr inbounds %struct.interface, %struct.interface* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, %88
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %86, %66
  br label %122

94:                                               ; preds = %63
  %95 = load %struct.interface*, %struct.interface** %3, align 8
  %96 = getelementptr inbounds %struct.interface, %struct.interface* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @IS_ALL_HOSTS, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %121, label %101

101:                                              ; preds = %94
  %102 = load i32, i32* @INADDR_ALLHOSTS_GROUP, align 4
  %103 = call i8* @htonl(i32 %102)
  %104 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %105 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  store i8* %103, i8** %106, align 8
  %107 = load i64, i64* @rdisc_sock, align 8
  %108 = load i32, i32* @IPPROTO_IP, align 4
  %109 = load i32, i32* @MCAST_JOIN_GROUP, align 4
  %110 = call i64 @setsockopt(i64 %107, i32 %108, i32 %109, %struct.group_req* %5, i32 8)
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %101
  %113 = call i32 @LOGERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %120

114:                                              ; preds = %101
  %115 = load i32, i32* @IS_ALL_HOSTS, align 4
  %116 = load %struct.interface*, %struct.interface** %3, align 8
  %117 = getelementptr inbounds %struct.interface, %struct.interface* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %114, %112
  br label %121

121:                                              ; preds = %120, %94
  br label %122

122:                                              ; preds = %121, %93
  %123 = load i64, i64* @supplier, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %122
  %126 = load %struct.interface*, %struct.interface** %3, align 8
  %127 = getelementptr inbounds %struct.interface, %struct.interface* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @IS_NO_ADV_OUT, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %125
  %133 = load i32, i32* %4, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %163, label %135

135:                                              ; preds = %132, %125, %122
  %136 = load %struct.interface*, %struct.interface** %3, align 8
  %137 = getelementptr inbounds %struct.interface, %struct.interface* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @IS_ALL_ROUTERS, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %162

142:                                              ; preds = %135
  %143 = load i32, i32* @INADDR_ALLROUTERS_GROUP, align 4
  %144 = call i8* @htonl(i32 %143)
  %145 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %146 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  store i8* %144, i8** %147, align 8
  %148 = load i64, i64* @rdisc_sock, align 8
  %149 = load i32, i32* @IPPROTO_IP, align 4
  %150 = load i32, i32* @MCAST_LEAVE_GROUP, align 4
  %151 = call i64 @setsockopt(i64 %148, i32 %149, i32 %150, %struct.group_req* %5, i32 8)
  %152 = icmp slt i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %142
  %154 = call i32 @LOGERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %155

155:                                              ; preds = %153, %142
  %156 = load i32, i32* @IS_ALL_ROUTERS, align 4
  %157 = xor i32 %156, -1
  %158 = load %struct.interface*, %struct.interface** %3, align 8
  %159 = getelementptr inbounds %struct.interface, %struct.interface* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = and i32 %160, %157
  store i32 %161, i32* %159, align 4
  br label %162

162:                                              ; preds = %155, %135
  br label %191

163:                                              ; preds = %132
  %164 = load %struct.interface*, %struct.interface** %3, align 8
  %165 = getelementptr inbounds %struct.interface, %struct.interface* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @IS_ALL_ROUTERS, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %190, label %170

170:                                              ; preds = %163
  %171 = load i32, i32* @INADDR_ALLROUTERS_GROUP, align 4
  %172 = call i8* @htonl(i32 %171)
  %173 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %174 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 0
  store i8* %172, i8** %175, align 8
  %176 = load i64, i64* @rdisc_sock, align 8
  %177 = load i32, i32* @IPPROTO_IP, align 4
  %178 = load i32, i32* @MCAST_JOIN_GROUP, align 4
  %179 = call i64 @setsockopt(i64 %176, i32 %177, i32 %178, %struct.group_req* %5, i32 8)
  %180 = icmp slt i64 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %170
  %182 = call i32 @LOGERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %189

183:                                              ; preds = %170
  %184 = load i32, i32* @IS_ALL_ROUTERS, align 4
  %185 = load %struct.interface*, %struct.interface** %3, align 8
  %186 = getelementptr inbounds %struct.interface, %struct.interface* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = or i32 %187, %184
  store i32 %188, i32* %186, align 4
  br label %189

189:                                              ; preds = %183, %181
  br label %190

190:                                              ; preds = %189, %163
  br label %191

191:                                              ; preds = %24, %34, %190, %162
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @get_rdisc_sock(...) #1

declare dso_local i32 @memset(%struct.group_req*, i32, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i64 @setsockopt(i64, i32, i32, %struct.group_req*, i32) #1

declare dso_local i32 @LOGERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
