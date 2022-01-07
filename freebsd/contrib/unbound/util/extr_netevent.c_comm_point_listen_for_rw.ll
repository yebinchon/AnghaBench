; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_point_listen_for_rw.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_point_listen_for_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_point = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"comm point listen_for_rw %d %d\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"event_del error to cplf\00", align 1
@UB_EV_READ = common dso_local global i32 0, align 4
@UB_EV_WRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"event_add failed. in cplf.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @comm_point_listen_for_rw(%struct.comm_point* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.comm_point*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.comm_point* %0, %struct.comm_point** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @VERB_ALGO, align 4
  %8 = load %struct.comm_point*, %struct.comm_point** %4, align 8
  %9 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @verbose(i32 %7, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11)
  %13 = load %struct.comm_point*, %struct.comm_point** %4, align 8
  %14 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @ub_event_del(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = call i32 @log_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %3
  %23 = load %struct.comm_point*, %struct.comm_point** %4, align 8
  %24 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @UB_EV_READ, align 4
  %29 = load i32, i32* @UB_EV_WRITE, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @ub_event_del_bits(i32 %27, i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %22
  %35 = load %struct.comm_point*, %struct.comm_point** %4, align 8
  %36 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @UB_EV_READ, align 4
  %41 = call i32 @ub_event_add_bits(i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %34, %22
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load %struct.comm_point*, %struct.comm_point** %4, align 8
  %47 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @UB_EV_WRITE, align 4
  %52 = call i32 @ub_event_add_bits(i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %45, %42
  %54 = load %struct.comm_point*, %struct.comm_point** %4, align 8
  %55 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.comm_point*, %struct.comm_point** %4, align 8
  %60 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @ub_event_add(i32 %58, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %53
  %65 = call i32 @log_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %53
  ret void
}

declare dso_local i32 @verbose(i32, i8*, i32, i32) #1

declare dso_local i64 @ub_event_del(i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @ub_event_del_bits(i32, i32) #1

declare dso_local i32 @ub_event_add_bits(i32, i32) #1

declare dso_local i64 @ub_event_add(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
