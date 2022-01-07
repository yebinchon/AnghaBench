; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ngatm/snmp_atm/extr_snmp_atm.c_atm_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ngatm/snmp_atm/extr_snmp_atm.c_atm_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mibif = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@oid_begemotAtm = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"The Begemot MIB for ATM interfaces.\00", align 1
@module = common dso_local global i32 0, align 4
@reg_atm = common dso_local global i32 0, align 4
@started = common dso_local global i32 0, align 4
@IFT_ATM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @atm_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atm_start() #0 {
  %1 = alloca %struct.mibif*, align 8
  %2 = load i32, i32* @module, align 4
  %3 = call i32 @or_register(i32* @oid_begemotAtm, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %2)
  store i32 %3, i32* @reg_atm, align 4
  store i32 1, i32* @started, align 4
  %4 = call %struct.mibif* (...) @mib_first_if()
  store %struct.mibif* %4, %struct.mibif** %1, align 8
  br label %5

5:                                                ; preds = %25, %0
  %6 = load %struct.mibif*, %struct.mibif** %1, align 8
  %7 = icmp ne %struct.mibif* %6, null
  br i1 %7, label %8, label %28

8:                                                ; preds = %5
  %9 = load %struct.mibif*, %struct.mibif** %1, align 8
  %10 = getelementptr inbounds %struct.mibif, %struct.mibif* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IFT_ATM, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %8
  %17 = load %struct.mibif*, %struct.mibif** %1, align 8
  %18 = getelementptr inbounds %struct.mibif, %struct.mibif* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.mibif*, %struct.mibif** %1, align 8
  %23 = call i32 @attach_if(%struct.mibif* %22)
  br label %24

24:                                               ; preds = %21, %16, %8
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.mibif*, %struct.mibif** %1, align 8
  %27 = call %struct.mibif* @mib_next_if(%struct.mibif* %26)
  store %struct.mibif* %27, %struct.mibif** %1, align 8
  br label %5

28:                                               ; preds = %5
  ret void
}

declare dso_local i32 @or_register(i32*, i8*, i32) #1

declare dso_local %struct.mibif* @mib_first_if(...) #1

declare dso_local i32 @attach_if(%struct.mibif*) #1

declare dso_local %struct.mibif* @mib_next_if(%struct.mibif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
