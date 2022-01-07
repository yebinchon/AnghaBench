; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_print_modify_rej.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_print_modify_rej.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_modify_rej = type { %struct.TYPE_16__, %struct.TYPE_14__*, %struct.TYPE_12__, %struct.TYPE_10__ }
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

@UNI_IE_PRESENT = common dso_local global i32 0, align 4
@UNI_IE_CAUSE = common dso_local global i32 0, align 4
@UNI_IE_NOTIFY = common dso_local global i32 0, align 4
@UNI_NUM_IE_GIT = common dso_local global i64 0, align 8
@UNI_IE_GIT = common dso_local global i32 0, align 4
@UNI_IE_UNREC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uni_modify_rej*, %struct.unicx*)* @print_modify_rej to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_modify_rej(%struct.uni_modify_rej* %0, %struct.unicx* %1) #0 {
  %3 = alloca %struct.uni_modify_rej*, align 8
  %4 = alloca %struct.unicx*, align 8
  %5 = alloca i64, align 8
  store %struct.uni_modify_rej* %0, %struct.uni_modify_rej** %3, align 8
  store %struct.unicx* %1, %struct.unicx** %4, align 8
  %6 = load %struct.uni_modify_rej*, %struct.uni_modify_rej** %3, align 8
  %7 = getelementptr inbounds %struct.uni_modify_rej, %struct.uni_modify_rej* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @UNI_IE_PRESENT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load i32, i32* @UNI_IE_CAUSE, align 4
  %16 = load %struct.uni_modify_rej*, %struct.uni_modify_rej** %3, align 8
  %17 = getelementptr inbounds %struct.uni_modify_rej, %struct.uni_modify_rej* %16, i32 0, i32 3
  %18 = bitcast %struct.TYPE_10__* %17 to %union.uni_ieall*
  %19 = load %struct.unicx*, %struct.unicx** %4, align 8
  %20 = call i32 @uni_print_ie_internal(i32 %15, %union.uni_ieall* %18, %struct.unicx* %19)
  br label %21

21:                                               ; preds = %14, %2
  %22 = load %struct.uni_modify_rej*, %struct.uni_modify_rej** %3, align 8
  %23 = getelementptr inbounds %struct.uni_modify_rej, %struct.uni_modify_rej* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @UNI_IE_PRESENT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %21
  %31 = load i32, i32* @UNI_IE_NOTIFY, align 4
  %32 = load %struct.uni_modify_rej*, %struct.uni_modify_rej** %3, align 8
  %33 = getelementptr inbounds %struct.uni_modify_rej, %struct.uni_modify_rej* %32, i32 0, i32 2
  %34 = bitcast %struct.TYPE_12__* %33 to %union.uni_ieall*
  %35 = load %struct.unicx*, %struct.unicx** %4, align 8
  %36 = call i32 @uni_print_ie_internal(i32 %31, %union.uni_ieall* %34, %struct.unicx* %35)
  br label %37

37:                                               ; preds = %30, %21
  store i64 0, i64* %5, align 8
  br label %38

38:                                               ; preds = %65, %37
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @UNI_NUM_IE_GIT, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %68

42:                                               ; preds = %38
  %43 = load %struct.uni_modify_rej*, %struct.uni_modify_rej** %3, align 8
  %44 = getelementptr inbounds %struct.uni_modify_rej, %struct.uni_modify_rej* %43, i32 0, i32 1
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  %46 = load i64, i64* %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @UNI_IE_PRESENT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %42
  %55 = load i32, i32* @UNI_IE_GIT, align 4
  %56 = load %struct.uni_modify_rej*, %struct.uni_modify_rej** %3, align 8
  %57 = getelementptr inbounds %struct.uni_modify_rej, %struct.uni_modify_rej* %56, i32 0, i32 1
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %57, align 8
  %59 = load i64, i64* %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i64 %59
  %61 = bitcast %struct.TYPE_14__* %60 to %union.uni_ieall*
  %62 = load %struct.unicx*, %struct.unicx** %4, align 8
  %63 = call i32 @uni_print_ie_internal(i32 %55, %union.uni_ieall* %61, %struct.unicx* %62)
  br label %64

64:                                               ; preds = %54, %42
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %5, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %5, align 8
  br label %38

68:                                               ; preds = %38
  %69 = load %struct.uni_modify_rej*, %struct.uni_modify_rej** %3, align 8
  %70 = getelementptr inbounds %struct.uni_modify_rej, %struct.uni_modify_rej* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @UNI_IE_PRESENT, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %68
  %78 = load i32, i32* @UNI_IE_UNREC, align 4
  %79 = load %struct.uni_modify_rej*, %struct.uni_modify_rej** %3, align 8
  %80 = getelementptr inbounds %struct.uni_modify_rej, %struct.uni_modify_rej* %79, i32 0, i32 0
  %81 = bitcast %struct.TYPE_16__* %80 to %union.uni_ieall*
  %82 = load %struct.unicx*, %struct.unicx** %4, align 8
  %83 = call i32 @uni_print_ie_internal(i32 %78, %union.uni_ieall* %81, %struct.unicx* %82)
  br label %84

84:                                               ; preds = %77, %68
  ret void
}

declare dso_local i32 @uni_print_ie_internal(i32, %union.uni_ieall*, %struct.unicx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
