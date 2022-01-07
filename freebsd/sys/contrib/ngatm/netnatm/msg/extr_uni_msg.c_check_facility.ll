; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_check_facility.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_check_facility.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_facility = type { i32, i32, i32, i32, i32, i32 }
%struct.unicx = type { i32 }
%union.uni_ieall = type { i32 }

@UNI_IE_FACILITY = common dso_local global i32 0, align 4
@UNI_IE_CALLED = common dso_local global i32 0, align 4
@UNI_IE_CALLEDSUB = common dso_local global i32 0, align 4
@UNI_IE_CALLING = common dso_local global i32 0, align 4
@UNI_IE_NOTIFY = common dso_local global i32 0, align 4
@UNI_IE_UNREC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uni_facility*, %struct.unicx*)* @check_facility to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_facility(%struct.uni_facility* %0, %struct.unicx* %1) #0 {
  %3 = alloca %struct.uni_facility*, align 8
  %4 = alloca %struct.unicx*, align 8
  %5 = alloca i32, align 4
  store %struct.uni_facility* %0, %struct.uni_facility** %3, align 8
  store %struct.unicx* %1, %struct.unicx** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @UNI_IE_FACILITY, align 4
  %7 = load %struct.uni_facility*, %struct.uni_facility** %3, align 8
  %8 = getelementptr inbounds %struct.uni_facility, %struct.uni_facility* %7, i32 0, i32 5
  %9 = bitcast i32* %8 to %union.uni_ieall*
  %10 = load %struct.unicx*, %struct.unicx** %4, align 8
  %11 = call i32 @uni_check_ie(i32 %6, %union.uni_ieall* %9, %struct.unicx* %10)
  %12 = load i32, i32* %5, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @UNI_IE_CALLED, align 4
  %15 = load %struct.uni_facility*, %struct.uni_facility** %3, align 8
  %16 = getelementptr inbounds %struct.uni_facility, %struct.uni_facility* %15, i32 0, i32 4
  %17 = bitcast i32* %16 to %union.uni_ieall*
  %18 = load %struct.unicx*, %struct.unicx** %4, align 8
  %19 = call i32 @uni_check_ie(i32 %14, %union.uni_ieall* %17, %struct.unicx* %18)
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @UNI_IE_CALLEDSUB, align 4
  %23 = load %struct.uni_facility*, %struct.uni_facility** %3, align 8
  %24 = getelementptr inbounds %struct.uni_facility, %struct.uni_facility* %23, i32 0, i32 3
  %25 = bitcast i32* %24 to %union.uni_ieall*
  %26 = load %struct.unicx*, %struct.unicx** %4, align 8
  %27 = call i32 @uni_check_ie(i32 %22, %union.uni_ieall* %25, %struct.unicx* %26)
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @UNI_IE_CALLING, align 4
  %31 = load %struct.uni_facility*, %struct.uni_facility** %3, align 8
  %32 = getelementptr inbounds %struct.uni_facility, %struct.uni_facility* %31, i32 0, i32 2
  %33 = bitcast i32* %32 to %union.uni_ieall*
  %34 = load %struct.unicx*, %struct.unicx** %4, align 8
  %35 = call i32 @uni_check_ie(i32 %30, %union.uni_ieall* %33, %struct.unicx* %34)
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* @UNI_IE_NOTIFY, align 4
  %39 = load %struct.uni_facility*, %struct.uni_facility** %3, align 8
  %40 = getelementptr inbounds %struct.uni_facility, %struct.uni_facility* %39, i32 0, i32 1
  %41 = bitcast i32* %40 to %union.uni_ieall*
  %42 = load %struct.unicx*, %struct.unicx** %4, align 8
  %43 = call i32 @uni_check_ie(i32 %38, %union.uni_ieall* %41, %struct.unicx* %42)
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* @UNI_IE_UNREC, align 4
  %47 = load %struct.uni_facility*, %struct.uni_facility** %3, align 8
  %48 = getelementptr inbounds %struct.uni_facility, %struct.uni_facility* %47, i32 0, i32 0
  %49 = bitcast i32* %48 to %union.uni_ieall*
  %50 = load %struct.unicx*, %struct.unicx** %4, align 8
  %51 = call i32 @uni_check_ie(i32 %46, %union.uni_ieall* %49, %struct.unicx* %50)
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @uni_check_ie(i32, %union.uni_ieall*, %struct.unicx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
