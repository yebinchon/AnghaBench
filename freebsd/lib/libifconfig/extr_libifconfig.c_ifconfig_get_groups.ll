; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libifconfig/extr_libifconfig.c_ifconfig_get_groups.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libifconfig/extr_libifconfig.c_ifconfig_get_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.ifgroupreq = type { i32, %struct.ifg_req*, i32 }
%struct.ifg_req = type { i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@AF_LOCAL = common dso_local global i32 0, align 4
@SIOCGIFGROUP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@ENOTTY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifconfig_get_groups(%struct.TYPE_6__* %0, i8* %1, %struct.ifgroupreq* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ifgroupreq*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.ifgroupreq* %2, %struct.ifgroupreq** %7, align 8
  %9 = load %struct.ifgroupreq*, %struct.ifgroupreq** %7, align 8
  %10 = call i32 @memset(%struct.ifgroupreq* %9, i32 0, i32 24)
  %11 = load %struct.ifgroupreq*, %struct.ifgroupreq** %7, align 8
  %12 = getelementptr inbounds %struct.ifgroupreq, %struct.ifgroupreq* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* @IFNAMSIZ, align 4
  %16 = call i32 @strlcpy(i32 %13, i8* %14, i32 %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = load i32, i32* @AF_LOCAL, align 4
  %19 = load i32, i32* @SIOCGIFGROUP, align 4
  %20 = load %struct.ifgroupreq*, %struct.ifgroupreq** %7, align 8
  %21 = call i32 @ifconfig_ioctlwrap(%struct.TYPE_6__* %17, i32 %18, i32 %19, %struct.ifgroupreq* %20)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %39

23:                                               ; preds = %3
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @EINVAL, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %37, label %30

30:                                               ; preds = %23
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ENOTTY, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %30, %23
  store i32 0, i32* %4, align 4
  br label %67

38:                                               ; preds = %30
  store i32 -1, i32* %4, align 4
  br label %67

39:                                               ; preds = %3
  %40 = load %struct.ifgroupreq*, %struct.ifgroupreq** %7, align 8
  %41 = getelementptr inbounds %struct.ifgroupreq, %struct.ifgroupreq* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @malloc(i32 %43)
  %45 = inttoptr i64 %44 to %struct.ifg_req*
  %46 = load %struct.ifgroupreq*, %struct.ifgroupreq** %7, align 8
  %47 = getelementptr inbounds %struct.ifgroupreq, %struct.ifgroupreq* %46, i32 0, i32 1
  store %struct.ifg_req* %45, %struct.ifg_req** %47, align 8
  %48 = load %struct.ifgroupreq*, %struct.ifgroupreq** %7, align 8
  %49 = getelementptr inbounds %struct.ifgroupreq, %struct.ifgroupreq* %48, i32 0, i32 1
  %50 = load %struct.ifg_req*, %struct.ifg_req** %49, align 8
  %51 = icmp eq %struct.ifg_req* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %39
  store i32 1, i32* %4, align 4
  br label %67

53:                                               ; preds = %39
  %54 = load %struct.ifgroupreq*, %struct.ifgroupreq** %7, align 8
  %55 = getelementptr inbounds %struct.ifgroupreq, %struct.ifgroupreq* %54, i32 0, i32 1
  %56 = load %struct.ifg_req*, %struct.ifg_req** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @bzero(%struct.ifg_req* %56, i32 %57)
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %60 = load i32, i32* @AF_LOCAL, align 4
  %61 = load i32, i32* @SIOCGIFGROUP, align 4
  %62 = load %struct.ifgroupreq*, %struct.ifgroupreq** %7, align 8
  %63 = call i32 @ifconfig_ioctlwrap(%struct.TYPE_6__* %59, i32 %60, i32 %61, %struct.ifgroupreq* %62)
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  store i32 -1, i32* %4, align 4
  br label %67

66:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %65, %52, %38, %37
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @memset(%struct.ifgroupreq*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @ifconfig_ioctlwrap(%struct.TYPE_6__*, i32, i32, %struct.ifgroupreq*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @bzero(%struct.ifg_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
