; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ether.c_ethertype_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ether.c_ethertype_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32 }
%struct.lladdr_info = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"et1 \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"(NOV-ETHII) \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c" [|osi]\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c": \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ethertype_print(%struct.TYPE_28__* %0, i32 %1, i32* %2, i32 %3, i32 %4, %struct.lladdr_info* %5, %struct.lladdr_info* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.lladdr_info*, align 8
  %15 = alloca %struct.lladdr_info*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.lladdr_info* %5, %struct.lladdr_info** %14, align 8
  store %struct.lladdr_info* %6, %struct.lladdr_info** %15, align 8
  %16 = load i32, i32* %10, align 4
  switch i32 %16, label %174 [
    i32 151, label %17
    i32 150, label %22
    i32 161, label %27
    i32 132, label %27
    i32 156, label %33
    i32 160, label %39
    i32 163, label %52
    i32 149, label %57
    i32 148, label %64
    i32 136, label %80
    i32 134, label %80
    i32 135, label %80
    i32 133, label %80
    i32 155, label %85
    i32 131, label %90
    i32 137, label %97
    i32 141, label %108
    i32 129, label %113
    i32 158, label %118
    i32 157, label %118
    i32 146, label %123
    i32 145, label %128
    i32 140, label %133
    i32 139, label %133
    i32 128, label %138
    i32 138, label %144
    i32 153, label %148
    i32 154, label %148
    i32 159, label %154
    i32 162, label %160
    i32 144, label %165
    i32 147, label %173
    i32 130, label %173
    i32 142, label %173
    i32 143, label %173
    i32 152, label %173
  ]

17:                                               ; preds = %7
  %18 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = load i32, i32* %12, align 4
  %21 = call i32 @ip_print(%struct.TYPE_28__* %18, i32* %19, i32 %20)
  store i32 1, i32* %8, align 4
  br label %175

22:                                               ; preds = %7
  %23 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = load i32, i32* %12, align 4
  %26 = call i32 @ip6_print(%struct.TYPE_28__* %23, i32* %24, i32 %25)
  store i32 1, i32* %8, align 4
  br label %175

27:                                               ; preds = %7, %7
  %28 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @arp_print(%struct.TYPE_28__* %28, i32* %29, i32 %30, i32 %31)
  store i32 1, i32* %8, align 4
  br label %175

33:                                               ; preds = %7
  %34 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @decnet_print(%struct.TYPE_28__* %34, i32* %35, i32 %36, i32 %37)
  store i32 1, i32* %8, align 4
  br label %175

39:                                               ; preds = %7
  %40 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %46 = call i32 @ND_PRINT(%struct.TYPE_28__* bitcast ([5 x i8]* @.str to %struct.TYPE_28__*))
  br label %47

47:                                               ; preds = %44, %39
  %48 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @atalk_print(%struct.TYPE_28__* %48, i32* %49, i32 %50)
  store i32 1, i32* %8, align 4
  br label %175

52:                                               ; preds = %7
  %53 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @aarp_print(%struct.TYPE_28__* %53, i32* %54, i32 %55)
  store i32 1, i32* %8, align 4
  br label %175

57:                                               ; preds = %7
  %58 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %59 = call i32 @ND_PRINT(%struct.TYPE_28__* bitcast ([13 x i8]* @.str.1 to %struct.TYPE_28__*))
  %60 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @ipx_print(%struct.TYPE_28__* %60, i32* %61, i32 %62)
  store i32 1, i32* %8, align 4
  br label %175

64:                                               ; preds = %7
  %65 = load i32, i32* %12, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %13, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67, %64
  %71 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %72 = call i32 @ND_PRINT(%struct.TYPE_28__* bitcast ([8 x i8]* @.str.2 to %struct.TYPE_28__*))
  store i32 1, i32* %8, align 4
  br label %175

73:                                               ; preds = %67
  %74 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %12, align 4
  %78 = sub nsw i32 %77, 1
  %79 = call i32 @isoclns_print(%struct.TYPE_28__* %74, i32* %76, i32 %78)
  store i32 1, i32* %8, align 4
  br label %175

80:                                               ; preds = %7, %7, %7, %7
  %81 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %82 = load i32*, i32** %11, align 8
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @pppoe_print(%struct.TYPE_28__* %81, i32* %82, i32 %83)
  store i32 1, i32* %8, align 4
  br label %175

85:                                               ; preds = %7
  %86 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %87 = load i32*, i32** %11, align 8
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @eap_print(%struct.TYPE_28__* %86, i32* %87, i32 %88)
  store i32 1, i32* %8, align 4
  br label %175

90:                                               ; preds = %7
  %91 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %92 = load i32*, i32** %11, align 8
  %93 = load i32, i32* %12, align 4
  %94 = load %struct.lladdr_info*, %struct.lladdr_info** %14, align 8
  %95 = load %struct.lladdr_info*, %struct.lladdr_info** %15, align 8
  %96 = call i32 @rrcp_print(%struct.TYPE_28__* %91, i32* %92, i32 %93, %struct.lladdr_info* %94, %struct.lladdr_info* %95)
  store i32 1, i32* %8, align 4
  br label %175

97:                                               ; preds = %7
  %98 = load i32, i32* %12, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  %101 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %102 = call i32 @ND_PRINT(%struct.TYPE_28__* bitcast ([3 x i8]* @.str.3 to %struct.TYPE_28__*))
  %103 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %104 = load i32*, i32** %11, align 8
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @ppp_print(%struct.TYPE_28__* %103, i32* %104, i32 %105)
  br label %107

107:                                              ; preds = %100, %97
  store i32 1, i32* %8, align 4
  br label %175

108:                                              ; preds = %7
  %109 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %110 = load i32*, i32** %11, align 8
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @mpcp_print(%struct.TYPE_28__* %109, i32* %110, i32 %111)
  store i32 1, i32* %8, align 4
  br label %175

113:                                              ; preds = %7
  %114 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %115 = load i32*, i32** %11, align 8
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @slow_print(%struct.TYPE_28__* %114, i32* %115, i32 %116)
  store i32 1, i32* %8, align 4
  br label %175

118:                                              ; preds = %7, %7
  %119 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %120 = load i32*, i32** %11, align 8
  %121 = load i32, i32* %12, align 4
  %122 = call i32 @cfm_print(%struct.TYPE_28__* %119, i32* %120, i32 %121)
  store i32 1, i32* %8, align 4
  br label %175

123:                                              ; preds = %7
  %124 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %125 = load i32*, i32** %11, align 8
  %126 = load i32, i32* %12, align 4
  %127 = call i32 @lldp_print(%struct.TYPE_28__* %124, i32* %125, i32 %126)
  store i32 1, i32* %8, align 4
  br label %175

128:                                              ; preds = %7
  %129 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %130 = load i32*, i32** %11, align 8
  %131 = load i32, i32* %12, align 4
  %132 = call i32 @loopback_print(%struct.TYPE_28__* %129, i32* %130, i32 %131)
  store i32 1, i32* %8, align 4
  br label %175

133:                                              ; preds = %7, %7
  %134 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %135 = load i32*, i32** %11, align 8
  %136 = load i32, i32* %12, align 4
  %137 = call i32 @mpls_print(%struct.TYPE_28__* %134, i32* %135, i32 %136)
  store i32 1, i32* %8, align 4
  br label %175

138:                                              ; preds = %7
  %139 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %140 = load i32*, i32** %11, align 8
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* %13, align 4
  %143 = call i32 @tipc_print(%struct.TYPE_28__* %139, i32* %140, i32 %141, i32 %142)
  store i32 1, i32* %8, align 4
  br label %175

144:                                              ; preds = %7
  %145 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %146 = load i32*, i32** %11, align 8
  %147 = call i32 @msnlb_print(%struct.TYPE_28__* %145, i32* %146)
  store i32 1, i32* %8, align 4
  br label %175

148:                                              ; preds = %7, %7
  %149 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %150 = load i32*, i32** %11, align 8
  %151 = load i32, i32* %12, align 4
  %152 = load %struct.lladdr_info*, %struct.lladdr_info** %14, align 8
  %153 = call i32 @geonet_print(%struct.TYPE_28__* %149, i32* %150, i32 %151, %struct.lladdr_info* %152)
  store i32 1, i32* %8, align 4
  br label %175

154:                                              ; preds = %7
  %155 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %156 = load i32*, i32** %11, align 8
  %157 = load i32, i32* %12, align 4
  %158 = load %struct.lladdr_info*, %struct.lladdr_info** %14, align 8
  %159 = call i32 @calm_fast_print(%struct.TYPE_28__* %155, i32* %156, i32 %157, %struct.lladdr_info* %158)
  store i32 1, i32* %8, align 4
  br label %175

160:                                              ; preds = %7
  %161 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %162 = load i32*, i32** %11, align 8
  %163 = load i32, i32* %12, align 4
  %164 = call i32 @aoe_print(%struct.TYPE_28__* %161, i32* %162, i32 %163)
  store i32 1, i32* %8, align 4
  br label %175

165:                                              ; preds = %7
  %166 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %167 = load i32*, i32** %11, align 8
  %168 = load i32, i32* %12, align 4
  %169 = load i32, i32* %13, align 4
  %170 = load %struct.lladdr_info*, %struct.lladdr_info** %14, align 8
  %171 = load %struct.lladdr_info*, %struct.lladdr_info** %15, align 8
  %172 = call i32 @medsa_print(%struct.TYPE_28__* %166, i32* %167, i32 %168, i32 %169, %struct.lladdr_info* %170, %struct.lladdr_info* %171)
  store i32 1, i32* %8, align 4
  br label %175

173:                                              ; preds = %7, %7, %7, %7, %7
  br label %174

174:                                              ; preds = %7, %173
  store i32 0, i32* %8, align 4
  br label %175

175:                                              ; preds = %174, %165, %160, %154, %148, %144, %138, %133, %128, %123, %118, %113, %108, %107, %90, %85, %80, %73, %70, %57, %52, %47, %33, %27, %22, %17
  %176 = load i32, i32* %8, align 4
  ret i32 %176
}

declare dso_local i32 @ip_print(%struct.TYPE_28__*, i32*, i32) #1

declare dso_local i32 @ip6_print(%struct.TYPE_28__*, i32*, i32) #1

declare dso_local i32 @arp_print(%struct.TYPE_28__*, i32*, i32, i32) #1

declare dso_local i32 @decnet_print(%struct.TYPE_28__*, i32*, i32, i32) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_28__*) #1

declare dso_local i32 @atalk_print(%struct.TYPE_28__*, i32*, i32) #1

declare dso_local i32 @aarp_print(%struct.TYPE_28__*, i32*, i32) #1

declare dso_local i32 @ipx_print(%struct.TYPE_28__*, i32*, i32) #1

declare dso_local i32 @isoclns_print(%struct.TYPE_28__*, i32*, i32) #1

declare dso_local i32 @pppoe_print(%struct.TYPE_28__*, i32*, i32) #1

declare dso_local i32 @eap_print(%struct.TYPE_28__*, i32*, i32) #1

declare dso_local i32 @rrcp_print(%struct.TYPE_28__*, i32*, i32, %struct.lladdr_info*, %struct.lladdr_info*) #1

declare dso_local i32 @ppp_print(%struct.TYPE_28__*, i32*, i32) #1

declare dso_local i32 @mpcp_print(%struct.TYPE_28__*, i32*, i32) #1

declare dso_local i32 @slow_print(%struct.TYPE_28__*, i32*, i32) #1

declare dso_local i32 @cfm_print(%struct.TYPE_28__*, i32*, i32) #1

declare dso_local i32 @lldp_print(%struct.TYPE_28__*, i32*, i32) #1

declare dso_local i32 @loopback_print(%struct.TYPE_28__*, i32*, i32) #1

declare dso_local i32 @mpls_print(%struct.TYPE_28__*, i32*, i32) #1

declare dso_local i32 @tipc_print(%struct.TYPE_28__*, i32*, i32, i32) #1

declare dso_local i32 @msnlb_print(%struct.TYPE_28__*, i32*) #1

declare dso_local i32 @geonet_print(%struct.TYPE_28__*, i32*, i32, %struct.lladdr_info*) #1

declare dso_local i32 @calm_fast_print(%struct.TYPE_28__*, i32*, i32, %struct.lladdr_info*) #1

declare dso_local i32 @aoe_print(%struct.TYPE_28__*, i32*, i32) #1

declare dso_local i32 @medsa_print(%struct.TYPE_28__*, i32*, i32, i32, %struct.lladdr_info*, %struct.lladdr_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
