; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_base_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_base_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_base = type { %struct.comm_base*, i32*, i32, i64 }

@.str = private unnamed_addr constant [32 x i8] c"could not event_del slow_accept\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @comm_base_delete(%struct.comm_base* %0) #0 {
  %2 = alloca %struct.comm_base*, align 8
  store %struct.comm_base* %0, %struct.comm_base** %2, align 8
  %3 = load %struct.comm_base*, %struct.comm_base** %2, align 8
  %4 = icmp ne %struct.comm_base* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %47

6:                                                ; preds = %1
  %7 = load %struct.comm_base*, %struct.comm_base** %2, align 8
  %8 = getelementptr inbounds %struct.comm_base, %struct.comm_base* %7, i32 0, i32 0
  %9 = load %struct.comm_base*, %struct.comm_base** %8, align 8
  %10 = getelementptr inbounds %struct.comm_base, %struct.comm_base* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %6
  %14 = load %struct.comm_base*, %struct.comm_base** %2, align 8
  %15 = getelementptr inbounds %struct.comm_base, %struct.comm_base* %14, i32 0, i32 0
  %16 = load %struct.comm_base*, %struct.comm_base** %15, align 8
  %17 = getelementptr inbounds %struct.comm_base, %struct.comm_base* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @ub_event_del(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = call i32 @log_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %13
  %24 = load %struct.comm_base*, %struct.comm_base** %2, align 8
  %25 = getelementptr inbounds %struct.comm_base, %struct.comm_base* %24, i32 0, i32 0
  %26 = load %struct.comm_base*, %struct.comm_base** %25, align 8
  %27 = getelementptr inbounds %struct.comm_base, %struct.comm_base* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @ub_event_free(i32 %28)
  br label %30

30:                                               ; preds = %23, %6
  %31 = load %struct.comm_base*, %struct.comm_base** %2, align 8
  %32 = getelementptr inbounds %struct.comm_base, %struct.comm_base* %31, i32 0, i32 0
  %33 = load %struct.comm_base*, %struct.comm_base** %32, align 8
  %34 = getelementptr inbounds %struct.comm_base, %struct.comm_base* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @ub_event_base_free(i32* %35)
  %37 = load %struct.comm_base*, %struct.comm_base** %2, align 8
  %38 = getelementptr inbounds %struct.comm_base, %struct.comm_base* %37, i32 0, i32 0
  %39 = load %struct.comm_base*, %struct.comm_base** %38, align 8
  %40 = getelementptr inbounds %struct.comm_base, %struct.comm_base* %39, i32 0, i32 1
  store i32* null, i32** %40, align 8
  %41 = load %struct.comm_base*, %struct.comm_base** %2, align 8
  %42 = getelementptr inbounds %struct.comm_base, %struct.comm_base* %41, i32 0, i32 0
  %43 = load %struct.comm_base*, %struct.comm_base** %42, align 8
  %44 = call i32 @free(%struct.comm_base* %43)
  %45 = load %struct.comm_base*, %struct.comm_base** %2, align 8
  %46 = call i32 @free(%struct.comm_base* %45)
  br label %47

47:                                               ; preds = %30, %5
  ret void
}

declare dso_local i64 @ub_event_del(i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @ub_event_free(i32) #1

declare dso_local i32 @ub_event_base_free(i32*) #1

declare dso_local i32 @free(%struct.comm_base*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
