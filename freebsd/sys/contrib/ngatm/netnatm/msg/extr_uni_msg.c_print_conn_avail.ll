; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_print_conn_avail.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_print_conn_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_conn_avail = type { %struct.TYPE_16__, %struct.TYPE_14__, %struct.TYPE_12__*, %struct.TYPE_10__ }
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
@UNI_IE_NOTIFY = common dso_local global i32 0, align 4
@UNI_NUM_IE_GIT = common dso_local global i64 0, align 8
@UNI_IE_GIT = common dso_local global i32 0, align 4
@UNI_IE_REPORT = common dso_local global i32 0, align 4
@UNI_IE_UNREC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uni_conn_avail*, %struct.unicx*)* @print_conn_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_conn_avail(%struct.uni_conn_avail* %0, %struct.unicx* %1) #0 {
  %3 = alloca %struct.uni_conn_avail*, align 8
  %4 = alloca %struct.unicx*, align 8
  %5 = alloca i64, align 8
  store %struct.uni_conn_avail* %0, %struct.uni_conn_avail** %3, align 8
  store %struct.unicx* %1, %struct.unicx** %4, align 8
  %6 = load %struct.uni_conn_avail*, %struct.uni_conn_avail** %3, align 8
  %7 = getelementptr inbounds %struct.uni_conn_avail, %struct.uni_conn_avail* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @UNI_IE_PRESENT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load i32, i32* @UNI_IE_NOTIFY, align 4
  %16 = load %struct.uni_conn_avail*, %struct.uni_conn_avail** %3, align 8
  %17 = getelementptr inbounds %struct.uni_conn_avail, %struct.uni_conn_avail* %16, i32 0, i32 3
  %18 = bitcast %struct.TYPE_10__* %17 to %union.uni_ieall*
  %19 = load %struct.unicx*, %struct.unicx** %4, align 8
  %20 = call i32 @uni_print_ie_internal(i32 %15, %union.uni_ieall* %18, %struct.unicx* %19)
  br label %21

21:                                               ; preds = %14, %2
  store i64 0, i64* %5, align 8
  br label %22

22:                                               ; preds = %49, %21
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @UNI_NUM_IE_GIT, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %52

26:                                               ; preds = %22
  %27 = load %struct.uni_conn_avail*, %struct.uni_conn_avail** %3, align 8
  %28 = getelementptr inbounds %struct.uni_conn_avail, %struct.uni_conn_avail* %27, i32 0, i32 2
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @UNI_IE_PRESENT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %26
  %39 = load i32, i32* @UNI_IE_GIT, align 4
  %40 = load %struct.uni_conn_avail*, %struct.uni_conn_avail** %3, align 8
  %41 = getelementptr inbounds %struct.uni_conn_avail, %struct.uni_conn_avail* %40, i32 0, i32 2
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i64 %43
  %45 = bitcast %struct.TYPE_12__* %44 to %union.uni_ieall*
  %46 = load %struct.unicx*, %struct.unicx** %4, align 8
  %47 = call i32 @uni_print_ie_internal(i32 %39, %union.uni_ieall* %45, %struct.unicx* %46)
  br label %48

48:                                               ; preds = %38, %26
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %5, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %5, align 8
  br label %22

52:                                               ; preds = %22
  %53 = load %struct.uni_conn_avail*, %struct.uni_conn_avail** %3, align 8
  %54 = getelementptr inbounds %struct.uni_conn_avail, %struct.uni_conn_avail* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @UNI_IE_PRESENT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %52
  %62 = load i32, i32* @UNI_IE_REPORT, align 4
  %63 = load %struct.uni_conn_avail*, %struct.uni_conn_avail** %3, align 8
  %64 = getelementptr inbounds %struct.uni_conn_avail, %struct.uni_conn_avail* %63, i32 0, i32 1
  %65 = bitcast %struct.TYPE_14__* %64 to %union.uni_ieall*
  %66 = load %struct.unicx*, %struct.unicx** %4, align 8
  %67 = call i32 @uni_print_ie_internal(i32 %62, %union.uni_ieall* %65, %struct.unicx* %66)
  br label %68

68:                                               ; preds = %61, %52
  %69 = load %struct.uni_conn_avail*, %struct.uni_conn_avail** %3, align 8
  %70 = getelementptr inbounds %struct.uni_conn_avail, %struct.uni_conn_avail* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @UNI_IE_PRESENT, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %68
  %78 = load i32, i32* @UNI_IE_UNREC, align 4
  %79 = load %struct.uni_conn_avail*, %struct.uni_conn_avail** %3, align 8
  %80 = getelementptr inbounds %struct.uni_conn_avail, %struct.uni_conn_avail* %79, i32 0, i32 0
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
