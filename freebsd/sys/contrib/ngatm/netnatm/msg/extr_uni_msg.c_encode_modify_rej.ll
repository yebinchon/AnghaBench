; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_encode_modify_rej.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_encode_modify_rej.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_msg = type { i64*, i64, i64 }
%struct.uni_modify_rej = type { %struct.TYPE_16__, %struct.TYPE_14__*, %struct.TYPE_12__, %struct.TYPE_10__, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.unicx = type { i32 }
%union.uni_ieall = type { i32 }

@UNI_MODIFY_REJ = common dso_local global i32 0, align 4
@UNI_IE_PRESENT = common dso_local global i32 0, align 4
@UNI_IE_CAUSE = common dso_local global i32 0, align 4
@UNI_IE_NOTIFY = common dso_local global i32 0, align 4
@UNI_NUM_IE_GIT = common dso_local global i64 0, align 8
@UNI_IE_GIT = common dso_local global i32 0, align 4
@UNI_IE_UNREC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uni_msg*, %struct.uni_modify_rej*, %struct.unicx*)* @encode_modify_rej to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_modify_rej(%struct.uni_msg* %0, %struct.uni_modify_rej* %1, %struct.unicx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uni_msg*, align 8
  %6 = alloca %struct.uni_modify_rej*, align 8
  %7 = alloca %struct.unicx*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.uni_msg* %0, %struct.uni_msg** %5, align 8
  store %struct.uni_modify_rej* %1, %struct.uni_modify_rej** %6, align 8
  store %struct.unicx* %2, %struct.unicx** %7, align 8
  %10 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %11 = load %struct.uni_modify_rej*, %struct.uni_modify_rej** %6, align 8
  %12 = getelementptr inbounds %struct.uni_modify_rej, %struct.uni_modify_rej* %11, i32 0, i32 4
  %13 = load i32, i32* @UNI_MODIFY_REJ, align 4
  %14 = load %struct.unicx*, %struct.unicx** %7, align 8
  %15 = call i64 @uni_encode_msg_hdr(%struct.uni_msg* %10, i32* %12, i32 %13, %struct.unicx* %14, i64* %8)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 -2, i32* %4, align 4
  br label %153

18:                                               ; preds = %3
  %19 = load %struct.uni_modify_rej*, %struct.uni_modify_rej** %6, align 8
  %20 = getelementptr inbounds %struct.uni_modify_rej, %struct.uni_modify_rej* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @UNI_IE_PRESENT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %18
  %28 = load i32, i32* @UNI_IE_CAUSE, align 4
  %29 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %30 = load %struct.uni_modify_rej*, %struct.uni_modify_rej** %6, align 8
  %31 = getelementptr inbounds %struct.uni_modify_rej, %struct.uni_modify_rej* %30, i32 0, i32 3
  %32 = bitcast %struct.TYPE_10__* %31 to %union.uni_ieall*
  %33 = load %struct.unicx*, %struct.unicx** %7, align 8
  %34 = call i64 @uni_encode_ie(i32 %28, %struct.uni_msg* %29, %union.uni_ieall* %32, %struct.unicx* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* @UNI_IE_CAUSE, align 4
  store i32 %37, i32* %4, align 4
  br label %153

38:                                               ; preds = %27, %18
  %39 = load %struct.uni_modify_rej*, %struct.uni_modify_rej** %6, align 8
  %40 = getelementptr inbounds %struct.uni_modify_rej, %struct.uni_modify_rej* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @UNI_IE_PRESENT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %38
  %48 = load i32, i32* @UNI_IE_NOTIFY, align 4
  %49 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %50 = load %struct.uni_modify_rej*, %struct.uni_modify_rej** %6, align 8
  %51 = getelementptr inbounds %struct.uni_modify_rej, %struct.uni_modify_rej* %50, i32 0, i32 2
  %52 = bitcast %struct.TYPE_12__* %51 to %union.uni_ieall*
  %53 = load %struct.unicx*, %struct.unicx** %7, align 8
  %54 = call i64 @uni_encode_ie(i32 %48, %struct.uni_msg* %49, %union.uni_ieall* %52, %struct.unicx* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load i32, i32* @UNI_IE_NOTIFY, align 4
  store i32 %57, i32* %4, align 4
  br label %153

58:                                               ; preds = %47, %38
  store i64 0, i64* %9, align 8
  br label %59

59:                                               ; preds = %95, %58
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* @UNI_NUM_IE_GIT, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %98

63:                                               ; preds = %59
  %64 = load %struct.uni_modify_rej*, %struct.uni_modify_rej** %6, align 8
  %65 = getelementptr inbounds %struct.uni_modify_rej, %struct.uni_modify_rej* %64, i32 0, i32 1
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  %67 = load i64, i64* %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @UNI_IE_PRESENT, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %94

75:                                               ; preds = %63
  %76 = load i32, i32* @UNI_IE_GIT, align 4
  %77 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %78 = load %struct.uni_modify_rej*, %struct.uni_modify_rej** %6, align 8
  %79 = getelementptr inbounds %struct.uni_modify_rej, %struct.uni_modify_rej* %78, i32 0, i32 1
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %79, align 8
  %81 = load i64, i64* %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i64 %81
  %83 = bitcast %struct.TYPE_14__* %82 to %union.uni_ieall*
  %84 = load %struct.unicx*, %struct.unicx** %7, align 8
  %85 = call i64 @uni_encode_ie(i32 %76, %struct.uni_msg* %77, %union.uni_ieall* %83, %struct.unicx* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %75
  %88 = load i64, i64* %9, align 8
  %89 = shl i64 %88, 16
  %90 = load i32, i32* @UNI_IE_GIT, align 4
  %91 = sext i32 %90 to i64
  %92 = add i64 %89, %91
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %4, align 4
  br label %153

94:                                               ; preds = %75, %63
  br label %95

95:                                               ; preds = %94
  %96 = load i64, i64* %9, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %9, align 8
  br label %59

98:                                               ; preds = %59
  %99 = load %struct.uni_modify_rej*, %struct.uni_modify_rej** %6, align 8
  %100 = getelementptr inbounds %struct.uni_modify_rej, %struct.uni_modify_rej* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @UNI_IE_PRESENT, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %98
  %108 = load i32, i32* @UNI_IE_UNREC, align 4
  %109 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %110 = load %struct.uni_modify_rej*, %struct.uni_modify_rej** %6, align 8
  %111 = getelementptr inbounds %struct.uni_modify_rej, %struct.uni_modify_rej* %110, i32 0, i32 0
  %112 = bitcast %struct.TYPE_16__* %111 to %union.uni_ieall*
  %113 = load %struct.unicx*, %struct.unicx** %7, align 8
  %114 = call i64 @uni_encode_ie(i32 %108, %struct.uni_msg* %109, %union.uni_ieall* %112, %struct.unicx* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %107
  %117 = load i32, i32* @UNI_IE_UNREC, align 4
  store i32 %117, i32* %4, align 4
  br label %153

118:                                              ; preds = %107, %98
  %119 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %120 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %123 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = sub i64 %121, %124
  %126 = load i64, i64* %8, align 8
  %127 = sub i64 %125, %126
  %128 = sub i64 %127, 2
  %129 = lshr i64 %128, 8
  %130 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %131 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %130, i32 0, i32 0
  %132 = load i64*, i64** %131, align 8
  %133 = load i64, i64* %8, align 8
  %134 = add i64 %133, 0
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  store i64 %129, i64* %135, align 8
  %136 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %137 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %140 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = sub i64 %138, %141
  %143 = load i64, i64* %8, align 8
  %144 = sub i64 %142, %143
  %145 = sub i64 %144, 2
  %146 = lshr i64 %145, 0
  %147 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %148 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %147, i32 0, i32 0
  %149 = load i64*, i64** %148, align 8
  %150 = load i64, i64* %8, align 8
  %151 = add i64 %150, 1
  %152 = getelementptr inbounds i64, i64* %149, i64 %151
  store i64 %146, i64* %152, align 8
  store i32 0, i32* %4, align 4
  br label %153

153:                                              ; preds = %118, %116, %87, %56, %36, %17
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local i64 @uni_encode_msg_hdr(%struct.uni_msg*, i32*, i32, %struct.unicx*, i64*) #1

declare dso_local i64 @uni_encode_ie(i32, %struct.uni_msg*, %union.uni_ieall*, %struct.unicx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
