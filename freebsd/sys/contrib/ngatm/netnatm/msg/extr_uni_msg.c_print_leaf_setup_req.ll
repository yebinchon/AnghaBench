; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_print_leaf_setup_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_print_leaf_setup_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_leaf_setup_req = type { %struct.TYPE_23__, %struct.TYPE_21__, %struct.TYPE_19__, %struct.TYPE_17__*, %struct.TYPE_31__, %struct.TYPE_29__*, %struct.TYPE_27__, %struct.TYPE_25__* }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_31__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.unicx = type { i32 }
%union.uni_ieall = type { i32 }

@UNI_NUM_IE_TNS = common dso_local global i64 0, align 8
@UNI_IE_PRESENT = common dso_local global i32 0, align 4
@UNI_IE_TNS = common dso_local global i32 0, align 4
@UNI_IE_CALLING = common dso_local global i32 0, align 4
@UNI_NUM_IE_CALLINGSUB = common dso_local global i64 0, align 8
@UNI_IE_CALLINGSUB = common dso_local global i32 0, align 4
@UNI_IE_CALLED = common dso_local global i32 0, align 4
@UNI_NUM_IE_CALLEDSUB = common dso_local global i64 0, align 8
@UNI_IE_CALLEDSUB = common dso_local global i32 0, align 4
@UNI_IE_LIJ_CALLID = common dso_local global i32 0, align 4
@UNI_IE_LIJ_SEQNO = common dso_local global i32 0, align 4
@UNI_IE_UNREC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uni_leaf_setup_req*, %struct.unicx*)* @print_leaf_setup_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_leaf_setup_req(%struct.uni_leaf_setup_req* %0, %struct.unicx* %1) #0 {
  %3 = alloca %struct.uni_leaf_setup_req*, align 8
  %4 = alloca %struct.unicx*, align 8
  %5 = alloca i64, align 8
  store %struct.uni_leaf_setup_req* %0, %struct.uni_leaf_setup_req** %3, align 8
  store %struct.unicx* %1, %struct.unicx** %4, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %33, %2
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @UNI_NUM_IE_TNS, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %36

10:                                               ; preds = %6
  %11 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %3, align 8
  %12 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %11, i32 0, i32 7
  %13 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @UNI_IE_PRESENT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %10
  %23 = load i32, i32* @UNI_IE_TNS, align 4
  %24 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %3, align 8
  %25 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %24, i32 0, i32 7
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %26, i64 %27
  %29 = bitcast %struct.TYPE_25__* %28 to %union.uni_ieall*
  %30 = load %struct.unicx*, %struct.unicx** %4, align 8
  %31 = call i32 @uni_print_ie_internal(i32 %23, %union.uni_ieall* %29, %struct.unicx* %30)
  br label %32

32:                                               ; preds = %22, %10
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %5, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %5, align 8
  br label %6

36:                                               ; preds = %6
  %37 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %3, align 8
  %38 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %37, i32 0, i32 6
  %39 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @UNI_IE_PRESENT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %36
  %46 = load i32, i32* @UNI_IE_CALLING, align 4
  %47 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %3, align 8
  %48 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %47, i32 0, i32 6
  %49 = bitcast %struct.TYPE_27__* %48 to %union.uni_ieall*
  %50 = load %struct.unicx*, %struct.unicx** %4, align 8
  %51 = call i32 @uni_print_ie_internal(i32 %46, %union.uni_ieall* %49, %struct.unicx* %50)
  br label %52

52:                                               ; preds = %45, %36
  store i64 0, i64* %5, align 8
  br label %53

53:                                               ; preds = %80, %52
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* @UNI_NUM_IE_CALLINGSUB, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %83

57:                                               ; preds = %53
  %58 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %3, align 8
  %59 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %58, i32 0, i32 5
  %60 = load %struct.TYPE_29__*, %struct.TYPE_29__** %59, align 8
  %61 = load i64, i64* %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @UNI_IE_PRESENT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %57
  %70 = load i32, i32* @UNI_IE_CALLINGSUB, align 4
  %71 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %3, align 8
  %72 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %71, i32 0, i32 5
  %73 = load %struct.TYPE_29__*, %struct.TYPE_29__** %72, align 8
  %74 = load i64, i64* %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %73, i64 %74
  %76 = bitcast %struct.TYPE_29__* %75 to %union.uni_ieall*
  %77 = load %struct.unicx*, %struct.unicx** %4, align 8
  %78 = call i32 @uni_print_ie_internal(i32 %70, %union.uni_ieall* %76, %struct.unicx* %77)
  br label %79

79:                                               ; preds = %69, %57
  br label %80

80:                                               ; preds = %79
  %81 = load i64, i64* %5, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %5, align 8
  br label %53

83:                                               ; preds = %53
  %84 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %3, align 8
  %85 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @UNI_IE_PRESENT, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %83
  %93 = load i32, i32* @UNI_IE_CALLED, align 4
  %94 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %3, align 8
  %95 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %94, i32 0, i32 4
  %96 = bitcast %struct.TYPE_31__* %95 to %union.uni_ieall*
  %97 = load %struct.unicx*, %struct.unicx** %4, align 8
  %98 = call i32 @uni_print_ie_internal(i32 %93, %union.uni_ieall* %96, %struct.unicx* %97)
  br label %99

99:                                               ; preds = %92, %83
  store i64 0, i64* %5, align 8
  br label %100

100:                                              ; preds = %127, %99
  %101 = load i64, i64* %5, align 8
  %102 = load i64, i64* @UNI_NUM_IE_CALLEDSUB, align 8
  %103 = icmp ult i64 %101, %102
  br i1 %103, label %104, label %130

104:                                              ; preds = %100
  %105 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %3, align 8
  %106 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %105, i32 0, i32 3
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %106, align 8
  %108 = load i64, i64* %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @UNI_IE_PRESENT, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %104
  %117 = load i32, i32* @UNI_IE_CALLEDSUB, align 4
  %118 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %3, align 8
  %119 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %118, i32 0, i32 3
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %119, align 8
  %121 = load i64, i64* %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i64 %121
  %123 = bitcast %struct.TYPE_17__* %122 to %union.uni_ieall*
  %124 = load %struct.unicx*, %struct.unicx** %4, align 8
  %125 = call i32 @uni_print_ie_internal(i32 %117, %union.uni_ieall* %123, %struct.unicx* %124)
  br label %126

126:                                              ; preds = %116, %104
  br label %127

127:                                              ; preds = %126
  %128 = load i64, i64* %5, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %5, align 8
  br label %100

130:                                              ; preds = %100
  %131 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %3, align 8
  %132 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @UNI_IE_PRESENT, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %130
  %140 = load i32, i32* @UNI_IE_LIJ_CALLID, align 4
  %141 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %3, align 8
  %142 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %141, i32 0, i32 2
  %143 = bitcast %struct.TYPE_19__* %142 to %union.uni_ieall*
  %144 = load %struct.unicx*, %struct.unicx** %4, align 8
  %145 = call i32 @uni_print_ie_internal(i32 %140, %union.uni_ieall* %143, %struct.unicx* %144)
  br label %146

146:                                              ; preds = %139, %130
  %147 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %3, align 8
  %148 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @UNI_IE_PRESENT, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %146
  %156 = load i32, i32* @UNI_IE_LIJ_SEQNO, align 4
  %157 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %3, align 8
  %158 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %157, i32 0, i32 1
  %159 = bitcast %struct.TYPE_21__* %158 to %union.uni_ieall*
  %160 = load %struct.unicx*, %struct.unicx** %4, align 8
  %161 = call i32 @uni_print_ie_internal(i32 %156, %union.uni_ieall* %159, %struct.unicx* %160)
  br label %162

162:                                              ; preds = %155, %146
  %163 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %3, align 8
  %164 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @UNI_IE_PRESENT, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %162
  %172 = load i32, i32* @UNI_IE_UNREC, align 4
  %173 = load %struct.uni_leaf_setup_req*, %struct.uni_leaf_setup_req** %3, align 8
  %174 = getelementptr inbounds %struct.uni_leaf_setup_req, %struct.uni_leaf_setup_req* %173, i32 0, i32 0
  %175 = bitcast %struct.TYPE_23__* %174 to %union.uni_ieall*
  %176 = load %struct.unicx*, %struct.unicx** %4, align 8
  %177 = call i32 @uni_print_ie_internal(i32 %172, %union.uni_ieall* %175, %struct.unicx* %176)
  br label %178

178:                                              ; preds = %171, %162
  ret void
}

declare dso_local i32 @uni_print_ie_internal(i32, %union.uni_ieall*, %struct.unicx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
