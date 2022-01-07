; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/extr_main.c_sntp_addremove_fd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/extr_main.c_sntp_addremove_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.event* }
%struct.event = type { i32 }

@blocking_children_alloc = common dso_local global i64 0, align 8
@blocking_children = common dso_local global %struct.TYPE_4__** null, align 8
@base = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@EV_PERSIST = common dso_local global i32 0, align 4
@worker_resp_cb = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"sntp_addremove_fd: event_new(base, fd) failed!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sntp_addremove_fd(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca %struct.event*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %8, align 8
  store i64 0, i64* %7, align 8
  br label %10

10:                                               ; preds = %30, %3
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @blocking_children_alloc, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %10
  %15 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @blocking_children, align 8
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %15, i64 %16
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %8, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %20 = icmp eq %struct.TYPE_4__* null, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %30

22:                                               ; preds = %14
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %33

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %21
  %31 = load i64, i64* %7, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %7, align 8
  br label %10

33:                                               ; preds = %28, %10
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @blocking_children_alloc, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %70

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load %struct.event*, %struct.event** %43, align 8
  store %struct.event* %44, %struct.event** %9, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store %struct.event* null, %struct.event** %46, align 8
  %47 = load %struct.event*, %struct.event** %9, align 8
  %48 = call i32 @event_del(%struct.event* %47)
  %49 = load %struct.event*, %struct.event** %9, align 8
  %50 = call i32 @event_free(%struct.event* %49)
  br label %70

51:                                               ; preds = %38
  %52 = load i32, i32* @base, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @EV_READ, align 4
  %55 = load i32, i32* @EV_PERSIST, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %58 = call %struct.event* @event_new(i32 %52, i32 %53, i32 %56, i32* @worker_resp_cb, %struct.TYPE_4__* %57)
  store %struct.event* %58, %struct.event** %9, align 8
  %59 = load %struct.event*, %struct.event** %9, align 8
  %60 = icmp eq %struct.event* null, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %51
  %62 = load i32, i32* @LOG_ERR, align 4
  %63 = call i32 @msyslog(i32 %62, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %70

64:                                               ; preds = %51
  %65 = load %struct.event*, %struct.event** %9, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  store %struct.event* %65, %struct.event** %67, align 8
  %68 = load %struct.event*, %struct.event** %9, align 8
  %69 = call i32 @event_add(%struct.event* %68, i32* null)
  br label %70

70:                                               ; preds = %64, %61, %41, %37
  ret void
}

declare dso_local i32 @event_del(%struct.event*) #1

declare dso_local i32 @event_free(%struct.event*) #1

declare dso_local %struct.event* @event_new(i32, i32, i32, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @msyslog(i32, i8*) #1

declare dso_local i32 @event_add(%struct.event*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
