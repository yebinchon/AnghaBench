; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_ie.c_uni_print_ie_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_ie.c_uni_print_ie_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.uni_ieall = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.unicx = type { i32 }
%struct.iedecl = type { i32 (%union.uni_ieall*, %struct.unicx*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uni_print_ie_internal(i32 %0, %union.uni_ieall* %1, %struct.unicx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.uni_ieall*, align 8
  %6 = alloca %struct.unicx*, align 8
  %7 = alloca %struct.iedecl*, align 8
  store i32 %0, i32* %4, align 4
  store %union.uni_ieall* %1, %union.uni_ieall** %5, align 8
  store %struct.unicx* %2, %struct.unicx** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %union.uni_ieall*, %union.uni_ieall** %5, align 8
  %10 = bitcast %union.uni_ieall* %9 to %struct.TYPE_2__*
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.iedecl* @GET_IEDECL(i32 %8, i32 %12)
  store %struct.iedecl* %13, %struct.iedecl** %7, align 8
  %14 = icmp ne %struct.iedecl* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load %struct.iedecl*, %struct.iedecl** %7, align 8
  %17 = getelementptr inbounds %struct.iedecl, %struct.iedecl* %16, i32 0, i32 0
  %18 = load i32 (%union.uni_ieall*, %struct.unicx*)*, i32 (%union.uni_ieall*, %struct.unicx*)** %17, align 8
  %19 = load %union.uni_ieall*, %union.uni_ieall** %5, align 8
  %20 = load %struct.unicx*, %struct.unicx** %6, align 8
  %21 = call i32 %18(%union.uni_ieall* %19, %struct.unicx* %20)
  br label %22

22:                                               ; preds = %15, %3
  ret void
}

declare dso_local %struct.iedecl* @GET_IEDECL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
