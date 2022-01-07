; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_init_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_init_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfctl = type { i32, i32*, i32* }

@PFTM_TCP_FIRST_PACKET_VAL = common dso_local global i32 0, align 4
@PFTM_TCP_FIRST_PACKET = common dso_local global i64 0, align 8
@PFTM_TCP_OPENING_VAL = common dso_local global i32 0, align 4
@PFTM_TCP_OPENING = common dso_local global i64 0, align 8
@PFTM_TCP_ESTABLISHED_VAL = common dso_local global i32 0, align 4
@PFTM_TCP_ESTABLISHED = common dso_local global i64 0, align 8
@PFTM_TCP_CLOSING_VAL = common dso_local global i32 0, align 4
@PFTM_TCP_CLOSING = common dso_local global i64 0, align 8
@PFTM_TCP_FIN_WAIT_VAL = common dso_local global i32 0, align 4
@PFTM_TCP_FIN_WAIT = common dso_local global i64 0, align 8
@PFTM_TCP_CLOSED_VAL = common dso_local global i32 0, align 4
@PFTM_TCP_CLOSED = common dso_local global i64 0, align 8
@PFTM_UDP_FIRST_PACKET_VAL = common dso_local global i32 0, align 4
@PFTM_UDP_FIRST_PACKET = common dso_local global i64 0, align 8
@PFTM_UDP_SINGLE_VAL = common dso_local global i32 0, align 4
@PFTM_UDP_SINGLE = common dso_local global i64 0, align 8
@PFTM_UDP_MULTIPLE_VAL = common dso_local global i32 0, align 4
@PFTM_UDP_MULTIPLE = common dso_local global i64 0, align 8
@PFTM_ICMP_FIRST_PACKET_VAL = common dso_local global i32 0, align 4
@PFTM_ICMP_FIRST_PACKET = common dso_local global i64 0, align 8
@PFTM_ICMP_ERROR_REPLY_VAL = common dso_local global i32 0, align 4
@PFTM_ICMP_ERROR_REPLY = common dso_local global i64 0, align 8
@PFTM_OTHER_FIRST_PACKET_VAL = common dso_local global i32 0, align 4
@PFTM_OTHER_FIRST_PACKET = common dso_local global i64 0, align 8
@PFTM_OTHER_SINGLE_VAL = common dso_local global i32 0, align 4
@PFTM_OTHER_SINGLE = common dso_local global i64 0, align 8
@PFTM_OTHER_MULTIPLE_VAL = common dso_local global i32 0, align 4
@PFTM_OTHER_MULTIPLE = common dso_local global i64 0, align 8
@PFTM_FRAG_VAL = common dso_local global i32 0, align 4
@PFTM_FRAG = common dso_local global i64 0, align 8
@PFTM_INTERVAL_VAL = common dso_local global i32 0, align 4
@PFTM_INTERVAL = common dso_local global i64 0, align 8
@PFTM_SRC_NODE_VAL = common dso_local global i32 0, align 4
@PFTM_SRC_NODE = common dso_local global i64 0, align 8
@PFTM_TS_DIFF_VAL = common dso_local global i32 0, align 4
@PFTM_TS_DIFF = common dso_local global i64 0, align 8
@PFSTATE_ADAPT_START = common dso_local global i32 0, align 4
@PFTM_ADAPTIVE_START = common dso_local global i64 0, align 8
@PFSTATE_ADAPT_END = common dso_local global i32 0, align 4
@PFTM_ADAPTIVE_END = common dso_local global i64 0, align 8
@PFSTATE_HIWAT = common dso_local global i32 0, align 4
@PF_LIMIT_STATES = common dso_local global i64 0, align 8
@PFFRAG_FRENT_HIWAT = common dso_local global i32 0, align 4
@PF_LIMIT_FRAGS = common dso_local global i64 0, align 8
@PFSNODE_HIWAT = common dso_local global i32 0, align 4
@PF_LIMIT_SRC_NODES = common dso_local global i64 0, align 8
@PFR_KENTRY_HIWAT = common dso_local global i32 0, align 4
@PF_LIMIT_TABLE_ENTRIES = common dso_local global i64 0, align 8
@PF_DEBUG_URGENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pfctl_init_options(%struct.pfctl* %0) #0 {
  %2 = alloca %struct.pfctl*, align 8
  store %struct.pfctl* %0, %struct.pfctl** %2, align 8
  %3 = load i32, i32* @PFTM_TCP_FIRST_PACKET_VAL, align 4
  %4 = load %struct.pfctl*, %struct.pfctl** %2, align 8
  %5 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %4, i32 0, i32 2
  %6 = load i32*, i32** %5, align 8
  %7 = load i64, i64* @PFTM_TCP_FIRST_PACKET, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @PFTM_TCP_OPENING_VAL, align 4
  %10 = load %struct.pfctl*, %struct.pfctl** %2, align 8
  %11 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* @PFTM_TCP_OPENING, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  store i32 %9, i32* %14, align 4
  %15 = load i32, i32* @PFTM_TCP_ESTABLISHED_VAL, align 4
  %16 = load %struct.pfctl*, %struct.pfctl** %2, align 8
  %17 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @PFTM_TCP_ESTABLISHED, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32 %15, i32* %20, align 4
  %21 = load i32, i32* @PFTM_TCP_CLOSING_VAL, align 4
  %22 = load %struct.pfctl*, %struct.pfctl** %2, align 8
  %23 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @PFTM_TCP_CLOSING, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32 %21, i32* %26, align 4
  %27 = load i32, i32* @PFTM_TCP_FIN_WAIT_VAL, align 4
  %28 = load %struct.pfctl*, %struct.pfctl** %2, align 8
  %29 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @PFTM_TCP_FIN_WAIT, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32 %27, i32* %32, align 4
  %33 = load i32, i32* @PFTM_TCP_CLOSED_VAL, align 4
  %34 = load %struct.pfctl*, %struct.pfctl** %2, align 8
  %35 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @PFTM_TCP_CLOSED, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32 %33, i32* %38, align 4
  %39 = load i32, i32* @PFTM_UDP_FIRST_PACKET_VAL, align 4
  %40 = load %struct.pfctl*, %struct.pfctl** %2, align 8
  %41 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @PFTM_UDP_FIRST_PACKET, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32 %39, i32* %44, align 4
  %45 = load i32, i32* @PFTM_UDP_SINGLE_VAL, align 4
  %46 = load %struct.pfctl*, %struct.pfctl** %2, align 8
  %47 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @PFTM_UDP_SINGLE, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32 %45, i32* %50, align 4
  %51 = load i32, i32* @PFTM_UDP_MULTIPLE_VAL, align 4
  %52 = load %struct.pfctl*, %struct.pfctl** %2, align 8
  %53 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @PFTM_UDP_MULTIPLE, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32 %51, i32* %56, align 4
  %57 = load i32, i32* @PFTM_ICMP_FIRST_PACKET_VAL, align 4
  %58 = load %struct.pfctl*, %struct.pfctl** %2, align 8
  %59 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @PFTM_ICMP_FIRST_PACKET, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32 %57, i32* %62, align 4
  %63 = load i32, i32* @PFTM_ICMP_ERROR_REPLY_VAL, align 4
  %64 = load %struct.pfctl*, %struct.pfctl** %2, align 8
  %65 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @PFTM_ICMP_ERROR_REPLY, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32 %63, i32* %68, align 4
  %69 = load i32, i32* @PFTM_OTHER_FIRST_PACKET_VAL, align 4
  %70 = load %struct.pfctl*, %struct.pfctl** %2, align 8
  %71 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* @PFTM_OTHER_FIRST_PACKET, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32 %69, i32* %74, align 4
  %75 = load i32, i32* @PFTM_OTHER_SINGLE_VAL, align 4
  %76 = load %struct.pfctl*, %struct.pfctl** %2, align 8
  %77 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @PFTM_OTHER_SINGLE, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32 %75, i32* %80, align 4
  %81 = load i32, i32* @PFTM_OTHER_MULTIPLE_VAL, align 4
  %82 = load %struct.pfctl*, %struct.pfctl** %2, align 8
  %83 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* @PFTM_OTHER_MULTIPLE, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32 %81, i32* %86, align 4
  %87 = load i32, i32* @PFTM_FRAG_VAL, align 4
  %88 = load %struct.pfctl*, %struct.pfctl** %2, align 8
  %89 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* @PFTM_FRAG, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  store i32 %87, i32* %92, align 4
  %93 = load i32, i32* @PFTM_INTERVAL_VAL, align 4
  %94 = load %struct.pfctl*, %struct.pfctl** %2, align 8
  %95 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = load i64, i64* @PFTM_INTERVAL, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  store i32 %93, i32* %98, align 4
  %99 = load i32, i32* @PFTM_SRC_NODE_VAL, align 4
  %100 = load %struct.pfctl*, %struct.pfctl** %2, align 8
  %101 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* @PFTM_SRC_NODE, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32 %99, i32* %104, align 4
  %105 = load i32, i32* @PFTM_TS_DIFF_VAL, align 4
  %106 = load %struct.pfctl*, %struct.pfctl** %2, align 8
  %107 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* @PFTM_TS_DIFF, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  store i32 %105, i32* %110, align 4
  %111 = load i32, i32* @PFSTATE_ADAPT_START, align 4
  %112 = load %struct.pfctl*, %struct.pfctl** %2, align 8
  %113 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = load i64, i64* @PFTM_ADAPTIVE_START, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  store i32 %111, i32* %116, align 4
  %117 = load i32, i32* @PFSTATE_ADAPT_END, align 4
  %118 = load %struct.pfctl*, %struct.pfctl** %2, align 8
  %119 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = load i64, i64* @PFTM_ADAPTIVE_END, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  store i32 %117, i32* %122, align 4
  %123 = load i32, i32* @PFSTATE_HIWAT, align 4
  %124 = load %struct.pfctl*, %struct.pfctl** %2, align 8
  %125 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load i64, i64* @PF_LIMIT_STATES, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  store i32 %123, i32* %128, align 4
  %129 = load i32, i32* @PFFRAG_FRENT_HIWAT, align 4
  %130 = load %struct.pfctl*, %struct.pfctl** %2, align 8
  %131 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = load i64, i64* @PF_LIMIT_FRAGS, align 8
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  store i32 %129, i32* %134, align 4
  %135 = load i32, i32* @PFSNODE_HIWAT, align 4
  %136 = load %struct.pfctl*, %struct.pfctl** %2, align 8
  %137 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = load i64, i64* @PF_LIMIT_SRC_NODES, align 8
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  store i32 %135, i32* %140, align 4
  %141 = load i32, i32* @PFR_KENTRY_HIWAT, align 4
  %142 = load %struct.pfctl*, %struct.pfctl** %2, align 8
  %143 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = load i64, i64* @PF_LIMIT_TABLE_ENTRIES, align 8
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  store i32 %141, i32* %146, align 4
  %147 = load i32, i32* @PF_DEBUG_URGENT, align 4
  %148 = load %struct.pfctl*, %struct.pfctl** %2, align 8
  %149 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
