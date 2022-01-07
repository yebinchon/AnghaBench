; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_print_notify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_print_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_notify = type { %struct.TYPE_8__, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.unicx = type { i32 }
%union.uni_ieall = type { i32 }

@UNI_IE_PRESENT = common dso_local global i32 0, align 4
@UNI_IE_NOTIFY = common dso_local global i32 0, align 4
@UNI_IE_EPREF = common dso_local global i32 0, align 4
@UNI_IE_UNREC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uni_notify*, %struct.unicx*)* @print_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_notify(%struct.uni_notify* %0, %struct.unicx* %1) #0 {
  %3 = alloca %struct.uni_notify*, align 8
  %4 = alloca %struct.unicx*, align 8
  store %struct.uni_notify* %0, %struct.uni_notify** %3, align 8
  store %struct.unicx* %1, %struct.unicx** %4, align 8
  %5 = load %struct.uni_notify*, %struct.uni_notify** %3, align 8
  %6 = getelementptr inbounds %struct.uni_notify, %struct.uni_notify* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @UNI_IE_PRESENT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load i32, i32* @UNI_IE_NOTIFY, align 4
  %15 = load %struct.uni_notify*, %struct.uni_notify** %3, align 8
  %16 = getelementptr inbounds %struct.uni_notify, %struct.uni_notify* %15, i32 0, i32 2
  %17 = bitcast %struct.TYPE_10__* %16 to %union.uni_ieall*
  %18 = load %struct.unicx*, %struct.unicx** %4, align 8
  %19 = call i32 @uni_print_ie_internal(i32 %14, %union.uni_ieall* %17, %struct.unicx* %18)
  br label %20

20:                                               ; preds = %13, %2
  %21 = load %struct.uni_notify*, %struct.uni_notify** %3, align 8
  %22 = getelementptr inbounds %struct.uni_notify, %struct.uni_notify* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @UNI_IE_PRESENT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %20
  %30 = load i32, i32* @UNI_IE_EPREF, align 4
  %31 = load %struct.uni_notify*, %struct.uni_notify** %3, align 8
  %32 = getelementptr inbounds %struct.uni_notify, %struct.uni_notify* %31, i32 0, i32 1
  %33 = bitcast %struct.TYPE_12__* %32 to %union.uni_ieall*
  %34 = load %struct.unicx*, %struct.unicx** %4, align 8
  %35 = call i32 @uni_print_ie_internal(i32 %30, %union.uni_ieall* %33, %struct.unicx* %34)
  br label %36

36:                                               ; preds = %29, %20
  %37 = load %struct.uni_notify*, %struct.uni_notify** %3, align 8
  %38 = getelementptr inbounds %struct.uni_notify, %struct.uni_notify* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @UNI_IE_PRESENT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %36
  %46 = load i32, i32* @UNI_IE_UNREC, align 4
  %47 = load %struct.uni_notify*, %struct.uni_notify** %3, align 8
  %48 = getelementptr inbounds %struct.uni_notify, %struct.uni_notify* %47, i32 0, i32 0
  %49 = bitcast %struct.TYPE_8__* %48 to %union.uni_ieall*
  %50 = load %struct.unicx*, %struct.unicx** %4, align 8
  %51 = call i32 @uni_print_ie_internal(i32 %46, %union.uni_ieall* %49, %struct.unicx* %50)
  br label %52

52:                                               ; preds = %45, %36
  ret void
}

declare dso_local i32 @uni_print_ie_internal(i32, %union.uni_ieall*, %struct.unicx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
