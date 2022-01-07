; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_dump.c_cc_dump_party.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_dump.c_cc_dump_party.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dump = type { i32 }
%struct.ccparty = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"%s  party(%p): %u.%u %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dump*, %struct.ccparty*, i8*)* @cc_dump_party to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_dump_party(%struct.dump* %0, %struct.ccparty* %1, i8* %2) #0 {
  %4 = alloca %struct.dump*, align 8
  %5 = alloca %struct.ccparty*, align 8
  %6 = alloca i8*, align 8
  store %struct.dump* %0, %struct.dump** %4, align 8
  store %struct.ccparty* %1, %struct.ccparty** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.dump*, %struct.dump** %4, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = load %struct.ccparty*, %struct.ccparty** %5, align 8
  %10 = load %struct.ccparty*, %struct.ccparty** %5, align 8
  %11 = getelementptr inbounds %struct.ccparty, %struct.ccparty* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ccparty*, %struct.ccparty** %5, align 8
  %15 = getelementptr inbounds %struct.ccparty, %struct.ccparty* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ccparty*, %struct.ccparty** %5, align 8
  %19 = getelementptr inbounds %struct.ccparty, %struct.ccparty* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @cc_party_state2str(i32 %20)
  %22 = call i32 @cc_dumpf(%struct.dump* %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %8, %struct.ccparty* %9, i32 %13, i32 %17, i32 %21)
  ret void
}

declare dso_local i32 @cc_dumpf(%struct.dump*, i8*, i8*, %struct.ccparty*, i32, i32, i32) #1

declare dso_local i32 @cc_party_state2str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
