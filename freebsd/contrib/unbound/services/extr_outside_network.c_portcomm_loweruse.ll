; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_portcomm_loweruse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_portcomm_loweruse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.outside_network = type { %struct.port_comm* }
%struct.port_comm = type { i64, i64, %struct.port_comm*, i32, %struct.port_if*, i32 }
%struct.port_if = type { i64, i64, %struct.TYPE_2__**, i32* }
%struct.TYPE_2__ = type { i64 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"close of port %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.outside_network*, %struct.port_comm*)* @portcomm_loweruse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @portcomm_loweruse(%struct.outside_network* %0, %struct.port_comm* %1) #0 {
  %3 = alloca %struct.outside_network*, align 8
  %4 = alloca %struct.port_comm*, align 8
  %5 = alloca %struct.port_if*, align 8
  store %struct.outside_network* %0, %struct.outside_network** %3, align 8
  store %struct.port_comm* %1, %struct.port_comm** %4, align 8
  %6 = load %struct.port_comm*, %struct.port_comm** %4, align 8
  %7 = getelementptr inbounds %struct.port_comm, %struct.port_comm* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %8, -1
  store i64 %9, i64* %7, align 8
  %10 = load %struct.port_comm*, %struct.port_comm** %4, align 8
  %11 = getelementptr inbounds %struct.port_comm, %struct.port_comm* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %87

15:                                               ; preds = %2
  %16 = load i32, i32* @VERB_ALGO, align 4
  %17 = load %struct.port_comm*, %struct.port_comm** %4, align 8
  %18 = getelementptr inbounds %struct.port_comm, %struct.port_comm* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @verbose(i32 %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.port_comm*, %struct.port_comm** %4, align 8
  %22 = getelementptr inbounds %struct.port_comm, %struct.port_comm* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @comm_point_close(i32 %23)
  %25 = load %struct.port_comm*, %struct.port_comm** %4, align 8
  %26 = getelementptr inbounds %struct.port_comm, %struct.port_comm* %25, i32 0, i32 4
  %27 = load %struct.port_if*, %struct.port_if** %26, align 8
  store %struct.port_if* %27, %struct.port_if** %5, align 8
  %28 = load %struct.port_if*, %struct.port_if** %5, align 8
  %29 = getelementptr inbounds %struct.port_if, %struct.port_if* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ugt i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @log_assert(i32 %32)
  %34 = load %struct.port_comm*, %struct.port_comm** %4, align 8
  %35 = getelementptr inbounds %struct.port_comm, %struct.port_comm* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.port_if*, %struct.port_if** %5, align 8
  %38 = getelementptr inbounds %struct.port_if, %struct.port_if* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.port_if*, %struct.port_if** %5, align 8
  %41 = getelementptr inbounds %struct.port_if, %struct.port_if* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.port_if*, %struct.port_if** %5, align 8
  %44 = getelementptr inbounds %struct.port_if, %struct.port_if* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub i64 %42, %45
  %47 = getelementptr inbounds i32, i32* %39, i64 %46
  store i32 %36, i32* %47, align 4
  %48 = load %struct.port_if*, %struct.port_if** %5, align 8
  %49 = getelementptr inbounds %struct.port_if, %struct.port_if* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, -1
  store i64 %51, i64* %49, align 8
  %52 = load %struct.port_if*, %struct.port_if** %5, align 8
  %53 = getelementptr inbounds %struct.port_if, %struct.port_if* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %53, align 8
  %55 = load %struct.port_if*, %struct.port_if** %5, align 8
  %56 = getelementptr inbounds %struct.port_if, %struct.port_if* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %54, i64 %57
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load %struct.port_if*, %struct.port_if** %5, align 8
  %61 = getelementptr inbounds %struct.port_if, %struct.port_if* %60, i32 0, i32 2
  %62 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %61, align 8
  %63 = load %struct.port_comm*, %struct.port_comm** %4, align 8
  %64 = getelementptr inbounds %struct.port_comm, %struct.port_comm* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %62, i64 %65
  store %struct.TYPE_2__* %59, %struct.TYPE_2__** %66, align 8
  %67 = load %struct.port_comm*, %struct.port_comm** %4, align 8
  %68 = getelementptr inbounds %struct.port_comm, %struct.port_comm* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.port_if*, %struct.port_if** %5, align 8
  %71 = getelementptr inbounds %struct.port_if, %struct.port_if* %70, i32 0, i32 2
  %72 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %71, align 8
  %73 = load %struct.port_comm*, %struct.port_comm** %4, align 8
  %74 = getelementptr inbounds %struct.port_comm, %struct.port_comm* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %72, i64 %75
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i64 %69, i64* %78, align 8
  %79 = load %struct.outside_network*, %struct.outside_network** %3, align 8
  %80 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %79, i32 0, i32 0
  %81 = load %struct.port_comm*, %struct.port_comm** %80, align 8
  %82 = load %struct.port_comm*, %struct.port_comm** %4, align 8
  %83 = getelementptr inbounds %struct.port_comm, %struct.port_comm* %82, i32 0, i32 2
  store %struct.port_comm* %81, %struct.port_comm** %83, align 8
  %84 = load %struct.port_comm*, %struct.port_comm** %4, align 8
  %85 = load %struct.outside_network*, %struct.outside_network** %3, align 8
  %86 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %85, i32 0, i32 0
  store %struct.port_comm* %84, %struct.port_comm** %86, align 8
  br label %87

87:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @verbose(i32, i8*, i32) #1

declare dso_local i32 @comm_point_close(i32) #1

declare dso_local i32 @log_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
