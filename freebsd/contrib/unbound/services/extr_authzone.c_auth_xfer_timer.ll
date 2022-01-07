; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_xfer_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_xfer_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_xfer = type { i64, i64, i32, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.module_env* }
%struct.module_env = type { i64*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @auth_xfer_timer(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.auth_xfer*, align 8
  %4 = alloca %struct.module_env*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.auth_xfer*
  store %struct.auth_xfer* %6, %struct.auth_xfer** %3, align 8
  %7 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %8 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %7, i32 0, i32 5
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = call i32 @log_assert(%struct.TYPE_4__* %9)
  %11 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %12 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %11, i32 0, i32 2
  %13 = call i32 @lock_basic_lock(i32* %12)
  %14 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %15 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %14, i32 0, i32 5
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.module_env*, %struct.module_env** %17, align 8
  store %struct.module_env* %18, %struct.module_env** %4, align 8
  %19 = load %struct.module_env*, %struct.module_env** %4, align 8
  %20 = getelementptr inbounds %struct.module_env, %struct.module_env* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %27 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %26, i32 0, i32 2
  %28 = call i32 @lock_basic_unlock(i32* %27)
  br label %73

29:                                               ; preds = %1
  %30 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %31 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %62

34:                                               ; preds = %29
  %35 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %36 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %62, label %39

39:                                               ; preds = %34
  %40 = load %struct.module_env*, %struct.module_env** %4, align 8
  %41 = getelementptr inbounds %struct.module_env, %struct.module_env* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %45 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %48 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = icmp sge i64 %43, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %39
  %53 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %54 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %53, i32 0, i32 2
  %55 = call i32 @lock_basic_unlock(i32* %54)
  %56 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %57 = load %struct.module_env*, %struct.module_env** %4, align 8
  %58 = call i32 @auth_xfer_set_expired(%struct.auth_xfer* %56, %struct.module_env* %57, i32 1)
  %59 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %60 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %59, i32 0, i32 2
  %61 = call i32 @lock_basic_lock(i32* %60)
  br label %62

62:                                               ; preds = %52, %39, %34, %29
  %63 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %64 = call i32 @xfr_nextprobe_disown(%struct.auth_xfer* %63)
  %65 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %66 = load %struct.module_env*, %struct.module_env** %4, align 8
  %67 = call i32 @xfr_start_probe(%struct.auth_xfer* %65, %struct.module_env* %66, i32* null)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %62
  %70 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %71 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %70, i32 0, i32 2
  %72 = call i32 @lock_basic_unlock(i32* %71)
  br label %73

73:                                               ; preds = %25, %69, %62
  ret void
}

declare dso_local i32 @log_assert(%struct.TYPE_4__*) #1

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i32 @auth_xfer_set_expired(%struct.auth_xfer*, %struct.module_env*, i32) #1

declare dso_local i32 @xfr_nextprobe_disown(%struct.auth_xfer*) #1

declare dso_local i32 @xfr_start_probe(%struct.auth_xfer*, %struct.module_env*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
