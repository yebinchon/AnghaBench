; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_utilities.c_test_IPv6Address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/tests/extr_utilities.c_test_IPv6Address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.in6_addr, i32 }
%struct.addrinfo = type { i32 }

@__const.test_IPv6Address.address = private unnamed_addr constant %struct.in6_addr { %struct.TYPE_9__ { %struct.TYPE_10__ { i32 32, i32 1, i32 13, i32 184, i32 133, i32 163, i32 8, i32 211, i32 19, i32 25, i32 138, i32 46, i32 3, i32 112, i32 115, i32 52 } } }, align 4
@.str = private unnamed_addr constant [37 x i8] c"2001:db8:85a3:8d3:1319:8a2e:370:7334\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_IPv6Address() #0 {
  %1 = alloca %struct.in6_addr, align 4
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_11__, align 4
  %4 = alloca %struct.addrinfo, align 4
  %5 = alloca %struct.addrinfo, align 4
  %6 = bitcast %struct.in6_addr* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.in6_addr* @__const.test_IPv6Address.address to i8*), i64 64, i1 false)
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  %7 = call i32 @memset(%struct.TYPE_11__* %3, i32 0, i32 68)
  %8 = load i32, i32* @AF_INET6, align 4
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = bitcast %struct.in6_addr* %12 to i8*
  %14 = bitcast %struct.in6_addr* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 64, i1 false)
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @ss_to_str(%struct.TYPE_11__* %3)
  %17 = call i32 @TEST_ASSERT_EQUAL_STRING(i8* %15, i32 %16)
  %18 = call i32 @CreateAddrinfo(%struct.TYPE_11__* %3)
  %19 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = bitcast %struct.addrinfo* %4 to i8*
  %21 = bitcast %struct.addrinfo* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 4, i1 false)
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 @addrinfo_to_str(%struct.addrinfo* %4)
  %24 = call i32 @TEST_ASSERT_EQUAL_STRING(i8* %22, i32 %23)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #2

declare dso_local i32 @TEST_ASSERT_EQUAL_STRING(i8*, i32) #2

declare dso_local i32 @ss_to_str(%struct.TYPE_11__*) #2

declare dso_local i32 @CreateAddrinfo(%struct.TYPE_11__*) #2

declare dso_local i32 @addrinfo_to_str(%struct.addrinfo*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
