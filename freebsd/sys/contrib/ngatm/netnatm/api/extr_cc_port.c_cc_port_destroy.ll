; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_port.c_cc_port_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_port.c_cc_port_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccport = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ccaddr = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.ccreq = type { i32, i32, i32, %struct.TYPE_2__* }

@node_link = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@port_link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cc_port_destroy(%struct.ccport* %0, i32 %1) #0 {
  %3 = alloca %struct.ccport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ccaddr*, align 8
  %6 = alloca %struct.ccreq*, align 8
  store %struct.ccport* %0, %struct.ccport** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ccport*, %struct.ccport** %3, align 8
  %8 = getelementptr inbounds %struct.ccport, %struct.ccport* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.ccport*, %struct.ccport** %3, align 8
  %12 = bitcast %struct.ccport* %11 to %struct.ccreq*
  %13 = load i32, i32* @node_link, align 4
  %14 = call i32 @TAILQ_REMOVE(i32* %10, %struct.ccreq* %12, i32 %13)
  br label %15

15:                                               ; preds = %20, %2
  %16 = load %struct.ccport*, %struct.ccport** %3, align 8
  %17 = getelementptr inbounds %struct.ccport, %struct.ccport* %16, i32 0, i32 2
  %18 = call %struct.ccreq* @TAILQ_FIRST(i32* %17)
  store %struct.ccreq* %18, %struct.ccreq** %6, align 8
  %19 = icmp ne %struct.ccreq* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.ccport*, %struct.ccport** %3, align 8
  %22 = getelementptr inbounds %struct.ccport, %struct.ccport* %21, i32 0, i32 2
  %23 = load %struct.ccreq*, %struct.ccreq** %6, align 8
  %24 = load i32, i32* @link, align 4
  %25 = call i32 @TAILQ_REMOVE(i32* %22, %struct.ccreq* %23, i32 %24)
  %26 = load %struct.ccreq*, %struct.ccreq** %6, align 8
  %27 = call i32 @CCFREE(%struct.ccreq* %26)
  br label %15

28:                                               ; preds = %15
  br label %29

29:                                               ; preds = %35, %28
  %30 = load %struct.ccport*, %struct.ccport** %3, align 8
  %31 = getelementptr inbounds %struct.ccport, %struct.ccport* %30, i32 0, i32 1
  %32 = call i32 @LIST_EMPTY(i32* %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load %struct.ccport*, %struct.ccport** %3, align 8
  %37 = getelementptr inbounds %struct.ccport, %struct.ccport* %36, i32 0, i32 1
  %38 = call i32 @LIST_FIRST(i32* %37)
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @cc_conn_abort(i32 %38, i32 %39)
  br label %29

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %48, %41
  %43 = load %struct.ccport*, %struct.ccport** %3, align 8
  %44 = getelementptr inbounds %struct.ccport, %struct.ccport* %43, i32 0, i32 0
  %45 = call %struct.ccreq* @TAILQ_FIRST(i32* %44)
  %46 = bitcast %struct.ccreq* %45 to %struct.ccaddr*
  store %struct.ccaddr* %46, %struct.ccaddr** %5, align 8
  %47 = icmp ne %struct.ccaddr* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %42
  %49 = load %struct.ccport*, %struct.ccport** %3, align 8
  %50 = getelementptr inbounds %struct.ccport, %struct.ccport* %49, i32 0, i32 0
  %51 = load %struct.ccaddr*, %struct.ccaddr** %5, align 8
  %52 = bitcast %struct.ccaddr* %51 to %struct.ccreq*
  %53 = load i32, i32* @port_link, align 4
  %54 = call i32 @TAILQ_REMOVE(i32* %50, %struct.ccreq* %52, i32 %53)
  %55 = load %struct.ccaddr*, %struct.ccaddr** %5, align 8
  %56 = bitcast %struct.ccaddr* %55 to %struct.ccreq*
  %57 = call i32 @CCFREE(%struct.ccreq* %56)
  br label %42

58:                                               ; preds = %42
  %59 = load %struct.ccport*, %struct.ccport** %3, align 8
  %60 = bitcast %struct.ccport* %59 to %struct.ccreq*
  %61 = call i32 @CCFREE(%struct.ccreq* %60)
  ret void
}

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.ccreq*, i32) #1

declare dso_local %struct.ccreq* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @CCFREE(%struct.ccreq*) #1

declare dso_local i32 @LIST_EMPTY(i32*) #1

declare dso_local i32 @cc_conn_abort(i32, i32) #1

declare dso_local i32 @LIST_FIRST(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
