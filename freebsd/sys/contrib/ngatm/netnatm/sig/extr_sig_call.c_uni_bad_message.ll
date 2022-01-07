; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_call.c_uni_bad_message.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_call.c_uni_bad_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.call = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.uni_all = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.uni_ie_epref = type { i32, i32 }
%struct.party = type { i32 }

@UNI_MSGACT_CLEAR = common dso_local global i64 0, align 8
@CALLST_U11 = common dso_local global i64 0, align 8
@CALLST_U12 = common dso_local global i64 0, align 8
@CALLST_N11 = common dso_local global i64 0, align 8
@CALLST_N12 = common dso_local global i64 0, align 8
@UNI_MSGACT_IGNORE = common dso_local global i64 0, align 8
@UNI_CAUSE_LOC_USER = common dso_local global i32 0, align 4
@UNI_STATUS = common dso_local global i32 0, align 4
@UNI_EPSTATE_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uni_bad_message(%struct.call* %0, %struct.uni_all* %1, i32 %2, %struct.uni_ie_epref* %3, i32 %4) #0 {
  %6 = alloca %struct.call*, align 8
  %7 = alloca %struct.uni_all*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.uni_ie_epref*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.uni_all*, align 8
  %12 = alloca %struct.party*, align 8
  store %struct.call* %0, %struct.call** %6, align 8
  store %struct.uni_all* %1, %struct.uni_all** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.uni_ie_epref* %3, %struct.uni_ie_epref** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %14 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @UNI_MSGACT_CLEAR, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %44

20:                                               ; preds = %5
  %21 = load %struct.call*, %struct.call** %6, align 8
  %22 = getelementptr inbounds %struct.call, %struct.call* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CALLST_U11, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %52, label %26

26:                                               ; preds = %20
  %27 = load %struct.call*, %struct.call** %6, align 8
  %28 = getelementptr inbounds %struct.call, %struct.call* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CALLST_U12, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %52, label %32

32:                                               ; preds = %26
  %33 = load %struct.call*, %struct.call** %6, align 8
  %34 = getelementptr inbounds %struct.call, %struct.call* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CALLST_N11, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %52, label %38

38:                                               ; preds = %32
  %39 = load %struct.call*, %struct.call** %6, align 8
  %40 = getelementptr inbounds %struct.call, %struct.call* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CALLST_N12, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %52, label %44

44:                                               ; preds = %38, %5
  %45 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %46 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @UNI_MSGACT_IGNORE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44, %38, %32, %26, %20
  br label %166

53:                                               ; preds = %44
  %54 = load %struct.call*, %struct.call** %6, align 8
  %55 = getelementptr inbounds %struct.call, %struct.call* %54, i32 0, i32 1
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @UNI_CAUSE_LOC_USER, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @MK_IE_CAUSE(i32 %58, i32 %59, i32 %60)
  %62 = load %struct.call*, %struct.call** %6, align 8
  %63 = getelementptr inbounds %struct.call, %struct.call* %62, i32 0, i32 1
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %68 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @ADD_CAUSE_MTYPE(i32 %66, i32 %69)
  %71 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %72 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @UNI_MSGACT_CLEAR, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %53
  %79 = load %struct.call*, %struct.call** %6, align 8
  %80 = call i32 @clear_callD(%struct.call* %79)
  br label %166

81:                                               ; preds = %53
  %82 = call %struct.uni_all* (...) @UNI_ALLOC()
  store %struct.uni_all* %82, %struct.uni_all** %11, align 8
  %83 = icmp ne %struct.uni_all* %82, null
  br i1 %83, label %84, label %166

84:                                               ; preds = %81
  %85 = load %struct.uni_all*, %struct.uni_all** %11, align 8
  %86 = load i32, i32* @UNI_STATUS, align 4
  %87 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %88 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = call i32 @MK_MSG_RESP(%struct.uni_all* %85, i32 %86, i32* %90)
  %92 = load %struct.uni_all*, %struct.uni_all** %11, align 8
  %93 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.call*, %struct.call** %6, align 8
  %98 = getelementptr inbounds %struct.call, %struct.call* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @map_callstate(i64 %99)
  %101 = call i32 @MK_IE_CALLSTATE(i32 %96, i32 %100)
  %102 = load %struct.call*, %struct.call** %6, align 8
  %103 = getelementptr inbounds %struct.call, %struct.call* %102, i32 0, i32 1
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.uni_all*, %struct.uni_all** %11, align 8
  %108 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 2
  store i32 %106, i32* %110, align 8
  %111 = load %struct.uni_ie_epref*, %struct.uni_ie_epref** %9, align 8
  %112 = icmp ne %struct.uni_ie_epref* %111, null
  br i1 %112, label %113, label %158

113:                                              ; preds = %84
  %114 = load %struct.uni_ie_epref*, %struct.uni_ie_epref** %9, align 8
  %115 = bitcast %struct.uni_ie_epref* %114 to i64*
  %116 = load i64, i64* %115, align 4
  %117 = call i64 @IE_ISGOOD(i64 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %158

119:                                              ; preds = %113
  %120 = load %struct.uni_all*, %struct.uni_all** %11, align 8
  %121 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.uni_ie_epref*, %struct.uni_ie_epref** %9, align 8
  %126 = getelementptr inbounds %struct.uni_ie_epref, %struct.uni_ie_epref* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.uni_ie_epref*, %struct.uni_ie_epref** %9, align 8
  %129 = getelementptr inbounds %struct.uni_ie_epref, %struct.uni_ie_epref* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  %132 = xor i1 %131, true
  %133 = zext i1 %132 to i32
  %134 = call i32 @MK_IE_EPREF(i32 %124, i32 %127, i32 %133)
  %135 = load i32, i32* %10, align 4
  %136 = icmp eq i32 %135, -1
  br i1 %136, label %137, label %150

137:                                              ; preds = %119
  %138 = load %struct.call*, %struct.call** %6, align 8
  %139 = load %struct.uni_ie_epref*, %struct.uni_ie_epref** %9, align 8
  %140 = call %struct.party* @uni_find_party(%struct.call* %138, %struct.uni_ie_epref* %139)
  store %struct.party* %140, %struct.party** %12, align 8
  %141 = load %struct.party*, %struct.party** %12, align 8
  %142 = icmp eq %struct.party* %141, null
  br i1 %142, label %143, label %145

143:                                              ; preds = %137
  %144 = load i32, i32* @UNI_EPSTATE_NULL, align 4
  store i32 %144, i32* %10, align 4
  br label %149

145:                                              ; preds = %137
  %146 = load %struct.party*, %struct.party** %12, align 8
  %147 = getelementptr inbounds %struct.party, %struct.party* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %10, align 4
  br label %149

149:                                              ; preds = %145, %143
  br label %150

150:                                              ; preds = %149, %119
  %151 = load %struct.uni_all*, %struct.uni_all** %11, align 8
  %152 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* %10, align 4
  %157 = call i32 @MK_IE_EPSTATE(i32 %155, i32 %156)
  br label %158

158:                                              ; preds = %150, %113, %84
  %159 = load %struct.uni_all*, %struct.uni_all** %11, align 8
  %160 = load %struct.call*, %struct.call** %6, align 8
  %161 = getelementptr inbounds %struct.call, %struct.call* %160, i32 0, i32 1
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %161, align 8
  %163 = call i32 @uni_send_output(%struct.uni_all* %159, %struct.TYPE_8__* %162)
  %164 = load %struct.uni_all*, %struct.uni_all** %11, align 8
  %165 = call i32 @UNI_FREE(%struct.uni_all* %164)
  br label %166

166:                                              ; preds = %52, %78, %158, %81
  ret void
}

declare dso_local i32 @MK_IE_CAUSE(i32, i32, i32) #1

declare dso_local i32 @ADD_CAUSE_MTYPE(i32, i32) #1

declare dso_local i32 @clear_callD(%struct.call*) #1

declare dso_local %struct.uni_all* @UNI_ALLOC(...) #1

declare dso_local i32 @MK_MSG_RESP(%struct.uni_all*, i32, i32*) #1

declare dso_local i32 @MK_IE_CALLSTATE(i32, i32) #1

declare dso_local i32 @map_callstate(i64) #1

declare dso_local i64 @IE_ISGOOD(i64) #1

declare dso_local i32 @MK_IE_EPREF(i32, i32, i32) #1

declare dso_local %struct.party* @uni_find_party(%struct.call*, %struct.uni_ie_epref*) #1

declare dso_local i32 @MK_IE_EPSTATE(i32, i32) #1

declare dso_local i32 @uni_send_output(%struct.uni_all*, %struct.TYPE_8__*) #1

declare dso_local i32 @UNI_FREE(%struct.uni_all*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
