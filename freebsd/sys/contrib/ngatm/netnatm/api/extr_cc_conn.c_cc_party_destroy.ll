; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_conn.c_cc_party_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_conn.c_cc_party_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccparty = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@CCLOG_PARTY_INST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"destroyed %u.%u\00", align 1
@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccparty*)* @cc_party_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_party_destroy(%struct.ccparty* %0) #0 {
  %2 = alloca %struct.ccparty*, align 8
  store %struct.ccparty* %0, %struct.ccparty** %2, align 8
  %3 = load %struct.ccparty*, %struct.ccparty** %2, align 8
  %4 = getelementptr inbounds %struct.ccparty, %struct.ccparty* %3, i32 0, i32 1
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @CCLOG_PARTY_INST, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load %struct.ccparty*, %struct.ccparty** %2, align 8
  %15 = load %struct.ccparty*, %struct.ccparty** %2, align 8
  %16 = getelementptr inbounds %struct.ccparty, %struct.ccparty* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ccparty*, %struct.ccparty** %2, align 8
  %20 = getelementptr inbounds %struct.ccparty, %struct.ccparty* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @cc_party_log(%struct.ccparty* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %22)
  br label %24

24:                                               ; preds = %13, %1
  %25 = load %struct.ccparty*, %struct.ccparty** %2, align 8
  %26 = load i32, i32* @link, align 4
  %27 = call i32 @LIST_REMOVE(%struct.ccparty* %25, i32 %26)
  %28 = load %struct.ccparty*, %struct.ccparty** %2, align 8
  %29 = call i32 @CCFREE(%struct.ccparty* %28)
  ret void
}

declare dso_local i32 @cc_party_log(%struct.ccparty*, i8*, i32, i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.ccparty*, i32) #1

declare dso_local i32 @CCFREE(%struct.ccparty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
