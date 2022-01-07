; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_call.c_unx_add_party_rej.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_call.c_unx_add_party_rej.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.call = type { i32, i32 }
%struct.uni_msg = type { i32 }
%struct.uni_all = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.uni_add_party_rej }
%struct.TYPE_8__ = type { i32, i32 }
%struct.uni_add_party_rej = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.party = type { i32 }

@SIGP_ADD_PARTY_REJ = common dso_local global i32 0, align 4
@UNI_CAUSE_MSG_INCOMP = common dso_local global i32 0, align 4
@UNI_IE_EPREF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.call*, %struct.uni_msg*, %struct.uni_all*, i32)* @unx_add_party_rej to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unx_add_party_rej(%struct.call* %0, %struct.uni_msg* %1, %struct.uni_all* %2, i32 %3) #0 {
  %5 = alloca %struct.call*, align 8
  %6 = alloca %struct.uni_msg*, align 8
  %7 = alloca %struct.uni_all*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.uni_add_party_rej*, align 8
  %10 = alloca %struct.party*, align 8
  store %struct.call* %0, %struct.call** %5, align 8
  store %struct.uni_msg* %1, %struct.uni_msg** %6, align 8
  store %struct.uni_all* %2, %struct.uni_all** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %12 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  store %struct.uni_add_party_rej* %13, %struct.uni_add_party_rej** %9, align 8
  %14 = load %struct.uni_add_party_rej*, %struct.uni_add_party_rej** %9, align 8
  %15 = getelementptr inbounds %struct.uni_add_party_rej, %struct.uni_add_party_rej* %14, i32 0, i32 0
  %16 = bitcast %struct.TYPE_10__* %15 to i64*
  %17 = load i64, i64* %16, align 4
  %18 = call i64 @IE_ISGOOD(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %112

20:                                               ; preds = %4
  %21 = load %struct.call*, %struct.call** %5, align 8
  %22 = load %struct.uni_add_party_rej*, %struct.uni_add_party_rej** %9, align 8
  %23 = getelementptr inbounds %struct.uni_add_party_rej, %struct.uni_add_party_rej* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.uni_add_party_rej*, %struct.uni_add_party_rej** %9, align 8
  %27 = getelementptr inbounds %struct.uni_add_party_rej, %struct.uni_add_party_rej* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.party* @uni_find_partyx(%struct.call* %21, i32 %25, i32 %29)
  store %struct.party* %30, %struct.party** %10, align 8
  %31 = load %struct.party*, %struct.party** %10, align 8
  %32 = icmp eq %struct.party* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  br label %148

34:                                               ; preds = %20
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %105

37:                                               ; preds = %34
  %38 = load %struct.call*, %struct.call** %5, align 8
  %39 = load %struct.uni_add_party_rej*, %struct.uni_add_party_rej** %9, align 8
  %40 = getelementptr inbounds %struct.uni_add_party_rej, %struct.uni_add_party_rej* %39, i32 0, i32 1
  %41 = call i32 @handle_bad_drop_cause(%struct.call* %38, i32* %40, i32 0)
  %42 = load %struct.call*, %struct.call** %5, align 8
  %43 = getelementptr inbounds %struct.call, %struct.call* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @uni_vfy_remove_unknown(i32 %44)
  %46 = load %struct.call*, %struct.call** %5, align 8
  %47 = getelementptr inbounds %struct.call, %struct.call* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %50 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @uni_verify(i32 %48, i32 %53)
  switch i32 %54, label %99 [
    i32 134, label %55
    i32 130, label %56
    i32 131, label %56
    i32 133, label %74
    i32 128, label %75
    i32 129, label %80
    i32 132, label %98
  ]

55:                                               ; preds = %37
  br label %141

56:                                               ; preds = %37, %37
  %57 = load %struct.call*, %struct.call** %5, align 8
  %58 = getelementptr inbounds %struct.call, %struct.call* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %61 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load %struct.call*, %struct.call** %5, align 8
  %65 = getelementptr inbounds %struct.call, %struct.call* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @map_callstate(i32 %66)
  %68 = load %struct.uni_add_party_rej*, %struct.uni_add_party_rej** %9, align 8
  %69 = getelementptr inbounds %struct.uni_add_party_rej, %struct.uni_add_party_rej* %68, i32 0, i32 0
  %70 = load %struct.party*, %struct.party** %10, align 8
  %71 = getelementptr inbounds %struct.party, %struct.party* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @uni_respond_status_verify(i32 %59, i32* %63, i32 %67, %struct.TYPE_10__* %69, i32 %72)
  br label %74

74:                                               ; preds = %37, %56
  br label %148

75:                                               ; preds = %37
  %76 = load %struct.call*, %struct.call** %5, align 8
  %77 = getelementptr inbounds %struct.call, %struct.call* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @uni_vfy_collect_ies(i32 %78)
  br label %99

80:                                               ; preds = %37
  %81 = load %struct.call*, %struct.call** %5, align 8
  %82 = getelementptr inbounds %struct.call, %struct.call* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %85 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load %struct.call*, %struct.call** %5, align 8
  %89 = getelementptr inbounds %struct.call, %struct.call* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @map_callstate(i32 %90)
  %92 = load %struct.uni_add_party_rej*, %struct.uni_add_party_rej** %9, align 8
  %93 = getelementptr inbounds %struct.uni_add_party_rej, %struct.uni_add_party_rej* %92, i32 0, i32 0
  %94 = load %struct.party*, %struct.party** %10, align 8
  %95 = getelementptr inbounds %struct.party, %struct.party* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @uni_respond_status_verify(i32 %83, i32* %87, i32 %91, %struct.TYPE_10__* %93, i32 %96)
  br label %98

98:                                               ; preds = %37, %80
  br label %99

99:                                               ; preds = %37, %98, %75
  %100 = load %struct.party*, %struct.party** %10, align 8
  %101 = load i32, i32* @SIGP_ADD_PARTY_REJ, align 4
  %102 = load %struct.uni_msg*, %struct.uni_msg** %6, align 8
  %103 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %104 = call i32 @uni_enq_party(%struct.party* %100, i32 %101, i32 0, %struct.uni_msg* %102, %struct.uni_all* %103)
  br label %153

105:                                              ; preds = %34
  %106 = load %struct.call*, %struct.call** %5, align 8
  %107 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %108 = load i32, i32* @UNI_CAUSE_MSG_INCOMP, align 4
  %109 = load %struct.uni_add_party_rej*, %struct.uni_add_party_rej** %9, align 8
  %110 = getelementptr inbounds %struct.uni_add_party_rej, %struct.uni_add_party_rej* %109, i32 0, i32 0
  %111 = call i32 @uni_bad_message(%struct.call* %106, %struct.uni_all* %107, i32 %108, %struct.TYPE_10__* %110, i32 -1)
  br label %153

112:                                              ; preds = %4
  %113 = load %struct.call*, %struct.call** %5, align 8
  %114 = getelementptr inbounds %struct.call, %struct.call* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.uni_add_party_rej*, %struct.uni_add_party_rej** %9, align 8
  %117 = getelementptr inbounds %struct.uni_add_party_rej, %struct.uni_add_party_rej* %116, i32 0, i32 0
  %118 = call i32 @default_act_epref(i32 %115, %struct.TYPE_10__* %117)
  %119 = load %struct.uni_add_party_rej*, %struct.uni_add_party_rej** %9, align 8
  %120 = getelementptr inbounds %struct.uni_add_party_rej, %struct.uni_add_party_rej* %119, i32 0, i32 0
  %121 = bitcast %struct.TYPE_10__* %120 to i64*
  %122 = load i64, i64* %121, align 4
  %123 = call i32 @IE_ISPRESENT(i64 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %131, label %125

125:                                              ; preds = %112
  %126 = load %struct.call*, %struct.call** %5, align 8
  %127 = getelementptr inbounds %struct.call, %struct.call* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @UNI_IE_EPREF, align 4
  %130 = call i32 @uni_mandate_ie(i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %125, %112
  %132 = load %struct.call*, %struct.call** %5, align 8
  %133 = getelementptr inbounds %struct.call, %struct.call* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %136 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @uni_verify(i32 %134, i32 %139)
  br label %141

141:                                              ; preds = %131, %55
  %142 = load %struct.call*, %struct.call** %5, align 8
  %143 = getelementptr inbounds %struct.call, %struct.call* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @uni_vfy_collect_ies(i32 %144)
  %146 = load %struct.call*, %struct.call** %5, align 8
  %147 = call i32 @clear_callD(%struct.call* %146)
  br label %148

148:                                              ; preds = %141, %74, %33
  %149 = load %struct.uni_msg*, %struct.uni_msg** %6, align 8
  %150 = call i32 @uni_msg_destroy(%struct.uni_msg* %149)
  %151 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %152 = call i32 @UNI_FREE(%struct.uni_all* %151)
  br label %153

153:                                              ; preds = %148, %105, %99
  ret void
}

declare dso_local i64 @IE_ISGOOD(i64) #1

declare dso_local %struct.party* @uni_find_partyx(%struct.call*, i32, i32) #1

declare dso_local i32 @handle_bad_drop_cause(%struct.call*, i32*, i32) #1

declare dso_local i32 @uni_vfy_remove_unknown(i32) #1

declare dso_local i32 @uni_verify(i32, i32) #1

declare dso_local i32 @uni_respond_status_verify(i32, i32*, i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @map_callstate(i32) #1

declare dso_local i32 @uni_vfy_collect_ies(i32) #1

declare dso_local i32 @uni_enq_party(%struct.party*, i32, i32, %struct.uni_msg*, %struct.uni_all*) #1

declare dso_local i32 @uni_bad_message(%struct.call*, %struct.uni_all*, i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @default_act_epref(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @IE_ISPRESENT(i64) #1

declare dso_local i32 @uni_mandate_ie(i32, i32) #1

declare dso_local i32 @clear_callD(%struct.call*) #1

declare dso_local i32 @uni_msg_destroy(%struct.uni_msg*) #1

declare dso_local i32 @UNI_FREE(%struct.uni_all*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
