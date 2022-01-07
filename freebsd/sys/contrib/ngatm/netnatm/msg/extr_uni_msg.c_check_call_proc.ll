; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_check_call_proc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_check_call_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_call_proc = type { i32, i32, i32, i32 }
%struct.unicx = type { i32 }
%union.uni_ieall = type { i32 }

@UNI_IE_CONNID = common dso_local global i32 0, align 4
@UNI_IE_EPREF = common dso_local global i32 0, align 4
@UNI_IE_NOTIFY = common dso_local global i32 0, align 4
@UNI_IE_UNREC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uni_call_proc*, %struct.unicx*)* @check_call_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_call_proc(%struct.uni_call_proc* %0, %struct.unicx* %1) #0 {
  %3 = alloca %struct.uni_call_proc*, align 8
  %4 = alloca %struct.unicx*, align 8
  %5 = alloca i32, align 4
  store %struct.uni_call_proc* %0, %struct.uni_call_proc** %3, align 8
  store %struct.unicx* %1, %struct.unicx** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @UNI_IE_CONNID, align 4
  %7 = load %struct.uni_call_proc*, %struct.uni_call_proc** %3, align 8
  %8 = getelementptr inbounds %struct.uni_call_proc, %struct.uni_call_proc* %7, i32 0, i32 3
  %9 = bitcast i32* %8 to %union.uni_ieall*
  %10 = load %struct.unicx*, %struct.unicx** %4, align 8
  %11 = call i32 @uni_check_ie(i32 %6, %union.uni_ieall* %9, %struct.unicx* %10)
  %12 = load i32, i32* %5, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @UNI_IE_EPREF, align 4
  %15 = load %struct.uni_call_proc*, %struct.uni_call_proc** %3, align 8
  %16 = getelementptr inbounds %struct.uni_call_proc, %struct.uni_call_proc* %15, i32 0, i32 2
  %17 = bitcast i32* %16 to %union.uni_ieall*
  %18 = load %struct.unicx*, %struct.unicx** %4, align 8
  %19 = call i32 @uni_check_ie(i32 %14, %union.uni_ieall* %17, %struct.unicx* %18)
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load %struct.unicx*, %struct.unicx** %4, align 8
  %23 = getelementptr inbounds %struct.unicx, %struct.unicx* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %2
  %27 = load %struct.uni_call_proc*, %struct.uni_call_proc** %3, align 8
  %28 = getelementptr inbounds %struct.uni_call_proc, %struct.uni_call_proc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @IE_ISPRESENT(i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  br label %42

33:                                               ; preds = %2
  %34 = load i32, i32* @UNI_IE_NOTIFY, align 4
  %35 = load %struct.uni_call_proc*, %struct.uni_call_proc** %3, align 8
  %36 = getelementptr inbounds %struct.uni_call_proc, %struct.uni_call_proc* %35, i32 0, i32 1
  %37 = bitcast i32* %36 to %union.uni_ieall*
  %38 = load %struct.unicx*, %struct.unicx** %4, align 8
  %39 = call i32 @uni_check_ie(i32 %34, %union.uni_ieall* %37, %struct.unicx* %38)
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %33, %26
  %43 = load i32, i32* @UNI_IE_UNREC, align 4
  %44 = load %struct.uni_call_proc*, %struct.uni_call_proc** %3, align 8
  %45 = getelementptr inbounds %struct.uni_call_proc, %struct.uni_call_proc* %44, i32 0, i32 0
  %46 = bitcast i32* %45 to %union.uni_ieall*
  %47 = load %struct.unicx*, %struct.unicx** %4, align 8
  %48 = call i32 @uni_check_ie(i32 %43, %union.uni_ieall* %46, %struct.unicx* %47)
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @uni_check_ie(i32, %union.uni_ieall*, %struct.unicx*) #1

declare dso_local i32 @IE_ISPRESENT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
