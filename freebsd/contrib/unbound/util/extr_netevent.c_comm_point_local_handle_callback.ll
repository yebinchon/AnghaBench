; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_point_local_handle_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_point_local_handle_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_point = type { i64, i32, i32 (%struct.comm_point*, i32, i32, i32*)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@comm_local = common dso_local global i64 0, align 8
@UB_EV_READ = common dso_local global i16 0, align 2
@NETEVENT_CLOSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Ignored event %d for localhdl.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @comm_point_local_handle_callback(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.comm_point*, align 8
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.comm_point*
  store %struct.comm_point* %9, %struct.comm_point** %7, align 8
  %10 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %11 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @comm_local, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @log_assert(i32 %15)
  %17 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %18 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %17, i32 0, i32 3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ub_comm_base_now(i32 %21)
  %23 = load i16, i16* %5, align 2
  %24 = sext i16 %23 to i32
  %25 = load i16, i16* @UB_EV_READ, align 2
  %26 = sext i16 %25 to i32
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %3
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %32 = call i32 @comm_point_tcp_handle_read(i32 %30, %struct.comm_point* %31, i32 1)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %29
  %35 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %36 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %35, i32 0, i32 2
  %37 = load i32 (%struct.comm_point*, i32, i32, i32*)*, i32 (%struct.comm_point*, i32, i32, i32*)** %36, align 8
  %38 = call i32 @fptr_whitelist_comm_point(i32 (%struct.comm_point*, i32, i32, i32*)* %37)
  %39 = call i32 @fptr_ok(i32 %38)
  %40 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %41 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %40, i32 0, i32 2
  %42 = load i32 (%struct.comm_point*, i32, i32, i32*)*, i32 (%struct.comm_point*, i32, i32, i32*)** %41, align 8
  %43 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %44 = load %struct.comm_point*, %struct.comm_point** %7, align 8
  %45 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @NETEVENT_CLOSED, align 4
  %48 = call i32 %42(%struct.comm_point* %43, i32 %46, i32 %47, i32* null)
  br label %49

49:                                               ; preds = %34, %29
  br label %53

50:                                               ; preds = %3
  %51 = load i16, i16* %5, align 2
  %52 = call i32 @log_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i16 signext %51)
  br label %53

53:                                               ; preds = %50, %49
  ret void
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @ub_comm_base_now(i32) #1

declare dso_local i32 @comm_point_tcp_handle_read(i32, %struct.comm_point*, i32) #1

declare dso_local i32 @fptr_ok(i32) #1

declare dso_local i32 @fptr_whitelist_comm_point(i32 (%struct.comm_point*, i32, i32, i32*)*) #1

declare dso_local i32 @log_err(i8*, i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
