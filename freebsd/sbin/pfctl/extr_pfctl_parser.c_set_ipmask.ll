; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_parser.c_set_ipmask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_parser.c_set_ipmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_host = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.pf_addr, %struct.pf_addr }
%struct.pf_addr = type { i32* }

@PF_ADDR_ADDRMASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_ipmask(%struct.node_host* %0, i32 %1) #0 {
  %3 = alloca %struct.node_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pf_addr*, align 8
  %6 = alloca %struct.pf_addr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.node_host* %0, %struct.node_host** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.node_host*, %struct.node_host** %3, align 8
  %10 = getelementptr inbounds %struct.node_host, %struct.node_host* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store %struct.pf_addr* %13, %struct.pf_addr** %5, align 8
  %14 = load %struct.pf_addr*, %struct.pf_addr** %5, align 8
  %15 = call i32 @memset(%struct.pf_addr* %14, i32 0, i32 8)
  br label %16

16:                                               ; preds = %19, %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp sge i32 %17, 32
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load %struct.pf_addr*, %struct.pf_addr** %5, align 8
  %21 = getelementptr inbounds %struct.pf_addr, %struct.pf_addr* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %8, align 4
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  store i32 -1, i32* %26, align 4
  %27 = load i32, i32* %4, align 4
  %28 = sub nsw i32 %27, 32
  store i32 %28, i32* %4, align 4
  br label %16

29:                                               ; preds = %16
  store i32 31, i32* %7, align 4
  br label %30

30:                                               ; preds = %46, %29
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %4, align 4
  %33 = sub nsw i32 31, %32
  %34 = icmp sgt i32 %31, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %30
  %36 = load i32, i32* %7, align 4
  %37 = shl i32 1, %36
  %38 = load %struct.pf_addr*, %struct.pf_addr** %5, align 8
  %39 = getelementptr inbounds %struct.pf_addr, %struct.pf_addr* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %37
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %35
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %7, align 4
  br label %30

49:                                               ; preds = %30
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %49
  %53 = load %struct.pf_addr*, %struct.pf_addr** %5, align 8
  %54 = getelementptr inbounds %struct.pf_addr, %struct.pf_addr* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @htonl(i32 %59)
  %61 = load %struct.pf_addr*, %struct.pf_addr** %5, align 8
  %62 = getelementptr inbounds %struct.pf_addr, %struct.pf_addr* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %60, i32* %66, align 4
  br label %67

67:                                               ; preds = %52, %49
  %68 = load %struct.node_host*, %struct.node_host** %3, align 8
  %69 = getelementptr inbounds %struct.node_host, %struct.node_host* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store %struct.pf_addr* %72, %struct.pf_addr** %6, align 8
  %73 = load %struct.node_host*, %struct.node_host** %3, align 8
  %74 = getelementptr inbounds %struct.node_host, %struct.node_host* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @PF_ADDR_ADDRMASK, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %109

79:                                               ; preds = %67
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %105, %79
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %81, 4
  br i1 %82, label %83, label %108

83:                                               ; preds = %80
  %84 = load %struct.pf_addr*, %struct.pf_addr** %6, align 8
  %85 = getelementptr inbounds %struct.pf_addr, %struct.pf_addr* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.pf_addr*, %struct.pf_addr** %5, align 8
  %92 = getelementptr inbounds %struct.pf_addr, %struct.pf_addr* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %90, %97
  %99 = load %struct.pf_addr*, %struct.pf_addr** %6, align 8
  %100 = getelementptr inbounds %struct.pf_addr, %struct.pf_addr* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 %98, i32* %104, align 4
  br label %105

105:                                              ; preds = %83
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %80

108:                                              ; preds = %80
  br label %109

109:                                              ; preds = %108, %67
  ret void
}

declare dso_local i32 @memset(%struct.pf_addr*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
