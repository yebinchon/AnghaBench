; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_pending_udp_timer_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_pending_udp_timer_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pending = type { %struct.TYPE_3__*, %struct.TYPE_4__*, i32 (i32, i32, i32, i32*)*, i32, %struct.outside_network* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32* }
%struct.outside_network = type { i32, i32, i64 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"timeout udp\00", align 1
@NETEVENT_TIMEOUT = common dso_local global i32 0, align 4
@pending_udp_timer_delay_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pending_udp_timer_cb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pending*, align 8
  %4 = alloca %struct.outside_network*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.pending*
  store %struct.pending* %6, %struct.pending** %3, align 8
  %7 = load %struct.pending*, %struct.pending** %3, align 8
  %8 = getelementptr inbounds %struct.pending, %struct.pending* %7, i32 0, i32 4
  %9 = load %struct.outside_network*, %struct.outside_network** %8, align 8
  store %struct.outside_network* %9, %struct.outside_network** %4, align 8
  %10 = load i32, i32* @VERB_ALGO, align 4
  %11 = call i32 @verbose(i32 %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.pending*, %struct.pending** %3, align 8
  %13 = getelementptr inbounds %struct.pending, %struct.pending* %12, i32 0, i32 2
  %14 = load i32 (i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32*)** %13, align 8
  %15 = icmp ne i32 (i32, i32, i32, i32*)* %14, null
  br i1 %15, label %16, label %35

16:                                               ; preds = %1
  %17 = load %struct.pending*, %struct.pending** %3, align 8
  %18 = getelementptr inbounds %struct.pending, %struct.pending* %17, i32 0, i32 2
  %19 = load i32 (i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32*)** %18, align 8
  %20 = call i32 @fptr_whitelist_pending_udp(i32 (i32, i32, i32, i32*)* %19)
  %21 = call i32 @fptr_ok(i32 %20)
  %22 = load %struct.pending*, %struct.pending** %3, align 8
  %23 = getelementptr inbounds %struct.pending, %struct.pending* %22, i32 0, i32 2
  %24 = load i32 (i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32*)** %23, align 8
  %25 = load %struct.pending*, %struct.pending** %3, align 8
  %26 = getelementptr inbounds %struct.pending, %struct.pending* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.pending*, %struct.pending** %3, align 8
  %31 = getelementptr inbounds %struct.pending, %struct.pending* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @NETEVENT_TIMEOUT, align 4
  %34 = call i32 %24(i32 %29, i32 %32, i32 %33, i32* null)
  br label %35

35:                                               ; preds = %16, %1
  %36 = load %struct.outside_network*, %struct.outside_network** %4, align 8
  %37 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %35
  %41 = load %struct.outside_network*, %struct.outside_network** %4, align 8
  %42 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %58, label %45

45:                                               ; preds = %40
  %46 = load %struct.pending*, %struct.pending** %3, align 8
  %47 = getelementptr inbounds %struct.pending, %struct.pending* %46, i32 0, i32 2
  store i32 (i32, i32, i32, i32*)* null, i32 (i32, i32, i32, i32*)** %47, align 8
  %48 = load %struct.pending*, %struct.pending** %3, align 8
  %49 = getelementptr inbounds %struct.pending, %struct.pending* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32* @pending_udp_timer_delay_cb, i32** %51, align 8
  %52 = load %struct.pending*, %struct.pending** %3, align 8
  %53 = getelementptr inbounds %struct.pending, %struct.pending* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load %struct.outside_network*, %struct.outside_network** %4, align 8
  %56 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %55, i32 0, i32 0
  %57 = call i32 @comm_timer_set(%struct.TYPE_4__* %54, i32* %56)
  br label %69

58:                                               ; preds = %40, %35
  %59 = load %struct.outside_network*, %struct.outside_network** %4, align 8
  %60 = load %struct.pending*, %struct.pending** %3, align 8
  %61 = getelementptr inbounds %struct.pending, %struct.pending* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = call i32 @portcomm_loweruse(%struct.outside_network* %59, %struct.TYPE_3__* %62)
  %64 = load %struct.outside_network*, %struct.outside_network** %4, align 8
  %65 = load %struct.pending*, %struct.pending** %3, align 8
  %66 = call i32 @pending_delete(%struct.outside_network* %64, %struct.pending* %65)
  %67 = load %struct.outside_network*, %struct.outside_network** %4, align 8
  %68 = call i32 @outnet_send_wait_udp(%struct.outside_network* %67)
  br label %69

69:                                               ; preds = %58, %45
  ret void
}

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i32 @fptr_ok(i32) #1

declare dso_local i32 @fptr_whitelist_pending_udp(i32 (i32, i32, i32, i32*)*) #1

declare dso_local i32 @comm_timer_set(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @portcomm_loweruse(%struct.outside_network*, %struct.TYPE_3__*) #1

declare dso_local i32 @pending_delete(%struct.outside_network*, %struct.pending*) #1

declare dso_local i32 @outnet_send_wait_udp(%struct.outside_network*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
