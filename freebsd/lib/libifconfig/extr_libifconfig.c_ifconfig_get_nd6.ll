; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libifconfig/extr_libifconfig.c_ifconfig_get_nd6.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libifconfig/extr_libifconfig.c_ifconfig_get_nd6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.in6_ndireq = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@SIOCGIFINFO_IN6 = common dso_local global i32 0, align 4
@ND6_IFF_DEFAULTIF = common dso_local global i32 0, align 4
@OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifconfig_get_nd6(%struct.TYPE_9__* %0, i8* %1, %struct.in6_ndireq* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.in6_ndireq*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.in6_ndireq* %2, %struct.in6_ndireq** %7, align 8
  %8 = load %struct.in6_ndireq*, %struct.in6_ndireq** %7, align 8
  %9 = call i32 @memset(%struct.in6_ndireq* %8, i32 0, i32 8)
  %10 = load %struct.in6_ndireq*, %struct.in6_ndireq** %7, align 8
  %11 = getelementptr inbounds %struct.in6_ndireq, %struct.in6_ndireq* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @strlcpy(i32 %12, i8* %13, i32 4)
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = load i32, i32* @AF_INET6, align 4
  %17 = load i32, i32* @SIOCGIFINFO_IN6, align 4
  %18 = load %struct.in6_ndireq*, %struct.in6_ndireq** %7, align 8
  %19 = call i32 @ifconfig_ioctlwrap(%struct.TYPE_9__* %15, i32 %16, i32 %17, %struct.in6_ndireq* %18)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %44

22:                                               ; preds = %3
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i64 @isnd6defif(%struct.TYPE_9__* %23, i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load i32, i32* @ND6_IFF_DEFAULTIF, align 4
  %29 = load %struct.in6_ndireq*, %struct.in6_ndireq** %7, align 8
  %30 = getelementptr inbounds %struct.in6_ndireq, %struct.in6_ndireq* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %28
  store i32 %33, i32* %31, align 4
  br label %43

34:                                               ; preds = %22
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @OK, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 -1, i32* %4, align 4
  br label %44

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42, %27
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %41, %21
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @memset(%struct.in6_ndireq*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @ifconfig_ioctlwrap(%struct.TYPE_9__*, i32, i32, %struct.in6_ndireq*) #1

declare dso_local i64 @isnd6defif(%struct.TYPE_9__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
