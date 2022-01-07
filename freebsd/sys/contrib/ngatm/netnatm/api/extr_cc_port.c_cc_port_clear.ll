; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_port.c_cc_port_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_port.c_cc_port_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccdata = type { i32 }
%struct.ccaddr = type { i32 }
%struct.ccport = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@port_link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cc_port_clear(%struct.ccdata* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ccaddr*, align 8
  %7 = alloca %struct.ccport*, align 8
  store %struct.ccdata* %0, %struct.ccdata** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ccdata*, %struct.ccdata** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.ccport* @find_port(%struct.ccdata* %8, i32 %9)
  store %struct.ccport* %10, %struct.ccport** %7, align 8
  %11 = icmp eq %struct.ccport* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOENT, align 4
  store i32 %13, i32* %3, align 4
  br label %29

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %20, %14
  %16 = load %struct.ccport*, %struct.ccport** %7, align 8
  %17 = getelementptr inbounds %struct.ccport, %struct.ccport* %16, i32 0, i32 0
  %18 = call %struct.ccaddr* @TAILQ_FIRST(i32* %17)
  store %struct.ccaddr* %18, %struct.ccaddr** %6, align 8
  %19 = icmp ne %struct.ccaddr* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.ccport*, %struct.ccport** %7, align 8
  %22 = getelementptr inbounds %struct.ccport, %struct.ccport* %21, i32 0, i32 0
  %23 = load %struct.ccaddr*, %struct.ccaddr** %6, align 8
  %24 = load i32, i32* @port_link, align 4
  %25 = call i32 @TAILQ_REMOVE(i32* %22, %struct.ccaddr* %23, i32 %24)
  %26 = load %struct.ccaddr*, %struct.ccaddr** %6, align 8
  %27 = call i32 @CCFREE(%struct.ccaddr* %26)
  br label %15

28:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %12
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.ccport* @find_port(%struct.ccdata*, i32) #1

declare dso_local %struct.ccaddr* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.ccaddr*, i32) #1

declare dso_local i32 @CCFREE(%struct.ccaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
