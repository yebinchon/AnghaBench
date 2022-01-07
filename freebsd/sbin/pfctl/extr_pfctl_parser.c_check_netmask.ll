; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_parser.c_check_netmask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_parser.c_check_netmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_host = type { %struct.TYPE_6__, %struct.node_host* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.pf_addr }
%struct.pf_addr = type { i64* }

@PF_ADDR_TABLE = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8
@PF_ADDR_DYNIFTL = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"netmask %u invalid for IPv4 address\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_netmask(%struct.node_host* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.node_host*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.node_host*, align 8
  %7 = alloca %struct.pf_addr*, align 8
  store %struct.node_host* %0, %struct.node_host** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.node_host* null, %struct.node_host** %6, align 8
  %8 = load %struct.node_host*, %struct.node_host** %4, align 8
  store %struct.node_host* %8, %struct.node_host** %6, align 8
  br label %9

9:                                                ; preds = %76, %2
  %10 = load %struct.node_host*, %struct.node_host** %6, align 8
  %11 = icmp ne %struct.node_host* %10, null
  br i1 %11, label %12, label %80

12:                                               ; preds = %9
  %13 = load %struct.node_host*, %struct.node_host** %4, align 8
  %14 = getelementptr inbounds %struct.node_host, %struct.node_host* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PF_ADDR_TABLE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %76

20:                                               ; preds = %12
  %21 = load %struct.node_host*, %struct.node_host** %4, align 8
  %22 = getelementptr inbounds %struct.node_host, %struct.node_host* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store %struct.pf_addr* %25, %struct.pf_addr** %7, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @AF_INET, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %20
  %30 = load %struct.node_host*, %struct.node_host** %4, align 8
  %31 = getelementptr inbounds %struct.node_host, %struct.node_host* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PF_ADDR_DYNIFTL, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load %struct.pf_addr*, %struct.pf_addr** %7, align 8
  %38 = load i32, i32* @AF_INET6, align 4
  %39 = call i32 @unmask(%struct.pf_addr* %37, i32 %38)
  %40 = icmp sgt i32 %39, 32
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.node_host*, %struct.node_host** %6, align 8
  %43 = call i32 @set_ipmask(%struct.node_host* %42, i32 32)
  br label %44

44:                                               ; preds = %41, %36, %29, %20
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @AF_INET, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %75

48:                                               ; preds = %44
  %49 = load %struct.pf_addr*, %struct.pf_addr** %7, align 8
  %50 = getelementptr inbounds %struct.pf_addr, %struct.pf_addr* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %69, label %55

55:                                               ; preds = %48
  %56 = load %struct.pf_addr*, %struct.pf_addr** %7, align 8
  %57 = getelementptr inbounds %struct.pf_addr, %struct.pf_addr* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %55
  %63 = load %struct.pf_addr*, %struct.pf_addr** %7, align 8
  %64 = getelementptr inbounds %struct.pf_addr, %struct.pf_addr* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %62, %55, %48
  %70 = load i32, i32* @stderr, align 4
  %71 = load %struct.pf_addr*, %struct.pf_addr** %7, align 8
  %72 = load i32, i32* @AF_INET6, align 4
  %73 = call i32 @unmask(%struct.pf_addr* %71, i32 %72)
  %74 = call i32 @fprintf(i32 %70, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %73)
  store i32 1, i32* %3, align 4
  br label %81

75:                                               ; preds = %62, %44
  br label %76

76:                                               ; preds = %75, %19
  %77 = load %struct.node_host*, %struct.node_host** %6, align 8
  %78 = getelementptr inbounds %struct.node_host, %struct.node_host* %77, i32 0, i32 1
  %79 = load %struct.node_host*, %struct.node_host** %78, align 8
  store %struct.node_host* %79, %struct.node_host** %6, align 8
  br label %9

80:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %69
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @unmask(%struct.pf_addr*, i32) #1

declare dso_local i32 @set_ipmask(%struct.node_host*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
