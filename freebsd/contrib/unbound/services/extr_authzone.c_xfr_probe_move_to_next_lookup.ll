; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_xfr_probe_move_to_next_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_xfr_probe_move_to_next_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_xfer = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_6__* }
%struct.module_env = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.auth_xfer*, %struct.module_env*)* @xfr_probe_move_to_next_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfr_probe_move_to_next_lookup(%struct.auth_xfer* %0, %struct.module_env* %1) #0 {
  %3 = alloca %struct.auth_xfer*, align 8
  %4 = alloca %struct.module_env*, align 8
  store %struct.auth_xfer* %0, %struct.auth_xfer** %3, align 8
  store %struct.module_env* %1, %struct.module_env** %4, align 8
  %5 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %6 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %5, i32 0, i32 0
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = icmp ne %struct.TYPE_6__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %65

12:                                               ; preds = %2
  %13 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %14 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %12
  %20 = load %struct.module_env*, %struct.module_env** %4, align 8
  %21 = getelementptr inbounds %struct.module_env, %struct.module_env* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %28 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  br label %65

31:                                               ; preds = %19, %12
  %32 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %33 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %40 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %42, align 8
  %43 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %44 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  %47 = load %struct.module_env*, %struct.module_env** %4, align 8
  %48 = getelementptr inbounds %struct.module_env, %struct.module_env* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %31
  %54 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %55 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = icmp ne %struct.TYPE_6__* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %62 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  br label %65

65:                                               ; preds = %11, %26, %60, %53, %31
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
