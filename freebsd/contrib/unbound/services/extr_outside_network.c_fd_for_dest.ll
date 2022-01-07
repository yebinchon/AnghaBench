; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_fd_for_dest.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_fd_for_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.outside_network = type { i64, i64, i32, %struct.port_if*, %struct.port_if* }
%struct.port_if = type { i64, i32, i32*, %struct.TYPE_2__**, i32, %struct.sockaddr_storage }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr_in6 = type { i8* }
%struct.sockaddr_in = type { i8* }
%struct.sockaddr = type { i32 }

@VERB_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"need ipv6 to send, but no ipv6 outgoing interfaces, for %s\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"need ipv4 to send, but no ipv4 outgoing interfaces, for %s\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"cannot send probe, ports are in use\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.outside_network*, %struct.sockaddr_storage*, i32)* @fd_for_dest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fd_for_dest(%struct.outside_network* %0, %struct.sockaddr_storage* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.outside_network*, align 8
  %6 = alloca %struct.sockaddr_storage*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_storage*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.port_if*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [64 x i8], align 16
  %20 = alloca [64 x i8], align 16
  %21 = alloca %struct.sockaddr_in6, align 8
  %22 = alloca %struct.sockaddr_in*, align 8
  store %struct.outside_network* %0, %struct.outside_network** %5, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %170, %3
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %24, 1000
  br i1 %25, label %26, label %173

26:                                               ; preds = %23
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 -1, i32* %18, align 4
  %27 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @addr_is_ip6(%struct.sockaddr_storage* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %58

31:                                               ; preds = %26
  %32 = load %struct.outside_network*, %struct.outside_network** %5, align 8
  %33 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  %40 = call i32 @addr_to_str(%struct.sockaddr_storage* %37, i32 %38, i8* %39, i32 64)
  %41 = load i32, i32* @VERB_QUERY, align 4
  %42 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  %43 = call i32 @verbose(i32 %41, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i8* %42)
  store i32 -1, i32* %4, align 4
  br label %175

44:                                               ; preds = %31
  %45 = load %struct.outside_network*, %struct.outside_network** %5, align 8
  %46 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.outside_network*, %struct.outside_network** %5, align 8
  %49 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @ub_random_max(i32 %47, i64 %50)
  store i32 %51, i32* %10, align 4
  %52 = load %struct.outside_network*, %struct.outside_network** %5, align 8
  %53 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %52, i32 0, i32 4
  %54 = load %struct.port_if*, %struct.port_if** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.port_if, %struct.port_if* %54, i64 %56
  store %struct.port_if* %57, %struct.port_if** %13, align 8
  br label %85

58:                                               ; preds = %26
  %59 = load %struct.outside_network*, %struct.outside_network** %5, align 8
  %60 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = getelementptr inbounds [64 x i8], [64 x i8]* %20, i64 0, i64 0
  %67 = call i32 @addr_to_str(%struct.sockaddr_storage* %64, i32 %65, i8* %66, i32 64)
  %68 = load i32, i32* @VERB_QUERY, align 4
  %69 = getelementptr inbounds [64 x i8], [64 x i8]* %20, i64 0, i64 0
  %70 = call i32 @verbose(i32 %68, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i8* %69)
  store i32 -1, i32* %4, align 4
  br label %175

71:                                               ; preds = %58
  %72 = load %struct.outside_network*, %struct.outside_network** %5, align 8
  %73 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.outside_network*, %struct.outside_network** %5, align 8
  %76 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @ub_random_max(i32 %74, i64 %77)
  store i32 %78, i32* %10, align 4
  %79 = load %struct.outside_network*, %struct.outside_network** %5, align 8
  %80 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %79, i32 0, i32 3
  %81 = load %struct.port_if*, %struct.port_if** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.port_if, %struct.port_if* %81, i64 %83
  store %struct.port_if* %84, %struct.port_if** %13, align 8
  br label %85

85:                                               ; preds = %71, %44
  %86 = load %struct.port_if*, %struct.port_if** %13, align 8
  %87 = getelementptr inbounds %struct.port_if, %struct.port_if* %86, i32 0, i32 5
  store %struct.sockaddr_storage* %87, %struct.sockaddr_storage** %8, align 8
  %88 = load %struct.port_if*, %struct.port_if** %13, align 8
  %89 = getelementptr inbounds %struct.port_if, %struct.port_if* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  store i32 %90, i32* %9, align 4
  %91 = load %struct.outside_network*, %struct.outside_network** %5, align 8
  %92 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.port_if*, %struct.port_if** %13, align 8
  %95 = getelementptr inbounds %struct.port_if, %struct.port_if* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @ub_random_max(i32 %93, i64 %96)
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  %99 = load %struct.port_if*, %struct.port_if** %13, align 8
  %100 = getelementptr inbounds %struct.port_if, %struct.port_if* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %113

103:                                              ; preds = %85
  %104 = load %struct.port_if*, %struct.port_if** %13, align 8
  %105 = getelementptr inbounds %struct.port_if, %struct.port_if* %104, i32 0, i32 3
  %106 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %105, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %106, i64 %108
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %14, align 4
  br label %125

113:                                              ; preds = %85
  %114 = load %struct.port_if*, %struct.port_if** %13, align 8
  %115 = getelementptr inbounds %struct.port_if, %struct.port_if* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %12, align 4
  %118 = load %struct.port_if*, %struct.port_if** %13, align 8
  %119 = getelementptr inbounds %struct.port_if, %struct.port_if* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = sub nsw i32 %117, %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %116, i64 %122
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %14, align 4
  br label %125

125:                                              ; preds = %113, %103
  %126 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %127 = load i32, i32* %7, align 4
  %128 = call i64 @addr_is_ip6(%struct.sockaddr_storage* %126, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %145

130:                                              ; preds = %125
  %131 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %8, align 8
  %132 = bitcast %struct.sockaddr_storage* %131 to %struct.sockaddr_in6*
  %133 = bitcast %struct.sockaddr_in6* %21 to i8*
  %134 = bitcast %struct.sockaddr_in6* %132 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %133, i8* align 8 %134, i64 8, i1 false)
  %135 = load i32, i32* %14, align 4
  %136 = call i64 @htons(i32 %135)
  %137 = inttoptr i64 %136 to i8*
  %138 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %21, i32 0, i32 0
  store i8* %137, i8** %138, align 8
  %139 = load i32, i32* @AF_INET6, align 4
  %140 = load i32, i32* @SOCK_DGRAM, align 4
  %141 = bitcast %struct.sockaddr_in6* %21 to %struct.sockaddr*
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* %15, align 4
  %144 = call i32 @create_udp_sock(i32 %139, i32 %140, %struct.sockaddr* %141, i32 %142, i32 1, i32* %17, i32* %16, i32 0, i32 0, i32 0, i32* null, i32 0, i32 %143, i32 0)
  store i32 %144, i32* %18, align 4
  br label %160

145:                                              ; preds = %125
  %146 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %8, align 8
  %147 = bitcast %struct.sockaddr_storage* %146 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %147, %struct.sockaddr_in** %22, align 8
  %148 = load i32, i32* %14, align 4
  %149 = call i64 @htons(i32 %148)
  %150 = inttoptr i64 %149 to i8*
  %151 = load %struct.sockaddr_in*, %struct.sockaddr_in** %22, align 8
  %152 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %151, i32 0, i32 0
  store i8* %150, i8** %152, align 8
  %153 = load i32, i32* @AF_INET, align 4
  %154 = load i32, i32* @SOCK_DGRAM, align 4
  %155 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %8, align 8
  %156 = bitcast %struct.sockaddr_storage* %155 to %struct.sockaddr*
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* %15, align 4
  %159 = call i32 @create_udp_sock(i32 %153, i32 %154, %struct.sockaddr* %156, i32 %157, i32 1, i32* %17, i32* %16, i32 0, i32 0, i32 0, i32* null, i32 0, i32 %158, i32 0)
  store i32 %159, i32* %18, align 4
  br label %160

160:                                              ; preds = %145, %130
  %161 = load i32, i32* %18, align 4
  %162 = icmp ne i32 %161, -1
  br i1 %162, label %163, label %165

163:                                              ; preds = %160
  %164 = load i32, i32* %18, align 4
  store i32 %164, i32* %4, align 4
  br label %175

165:                                              ; preds = %160
  %166 = load i32, i32* %17, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %165
  store i32 -1, i32* %4, align 4
  br label %175

169:                                              ; preds = %165
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %11, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %11, align 4
  br label %23

173:                                              ; preds = %23
  %174 = call i32 @log_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %175

175:                                              ; preds = %173, %168, %163, %63, %36
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

declare dso_local i64 @addr_is_ip6(%struct.sockaddr_storage*, i32) #1

declare dso_local i32 @addr_to_str(%struct.sockaddr_storage*, i32, i8*, i32) #1

declare dso_local i32 @verbose(i32, i8*, i8*) #1

declare dso_local i32 @ub_random_max(i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @create_udp_sock(i32, i32, %struct.sockaddr*, i32, i32, i32*, i32*, i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @log_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
