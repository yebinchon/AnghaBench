; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_xfer_probe_timer_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_xfer_probe_timer_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_xfer = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32*, %struct.module_env* }
%struct.module_env = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@verbosity = common dso_local global i64 0, align 8
@VERB_ALGO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"auth zone %s soa probe timeout\00", align 1
@AUTH_PROBE_TIMEOUT_STOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @auth_xfer_probe_timer_callback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.auth_xfer*, align 8
  %4 = alloca %struct.module_env*, align 8
  %5 = alloca [256 x i8], align 16
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.auth_xfer*
  store %struct.auth_xfer* %7, %struct.auth_xfer** %3, align 8
  %8 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %9 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = call i32 @log_assert(%struct.TYPE_4__* %10)
  %12 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %13 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %12, i32 0, i32 1
  %14 = call i32 @lock_basic_lock(i32* %13)
  %15 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %16 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load %struct.module_env*, %struct.module_env** %18, align 8
  store %struct.module_env* %19, %struct.module_env** %4, align 8
  %20 = load %struct.module_env*, %struct.module_env** %4, align 8
  %21 = getelementptr inbounds %struct.module_env, %struct.module_env* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %28 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %27, i32 0, i32 1
  %29 = call i32 @lock_basic_unlock(i32* %28)
  br label %83

30:                                               ; preds = %1
  %31 = load i64, i64* @verbosity, align 8
  %32 = load i64, i64* @VERB_ALGO, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %36 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %39 = call i32 @dname_str(i32 %37, i8* %38)
  %40 = load i64, i64* @VERB_ALGO, align 8
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %42 = call i32 @verbose(i64 %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %34, %30
  %44 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %45 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @AUTH_PROBE_TIMEOUT_STOP, align 4
  %50 = icmp sle i32 %48, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %43
  %52 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %53 = load %struct.module_env*, %struct.module_env** %4, align 8
  %54 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %55 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = mul nsw i32 %58, 2
  %60 = call i64 @xfr_probe_send_probe(%struct.auth_xfer* %52, %struct.module_env* %53, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %51
  %63 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %64 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %63, i32 0, i32 1
  %65 = call i32 @lock_basic_unlock(i32* %64)
  br label %83

66:                                               ; preds = %51
  br label %67

67:                                               ; preds = %66, %43
  %68 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %69 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @comm_point_delete(i32* %72)
  %74 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %75 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  store i32* null, i32** %77, align 8
  %78 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %79 = call i32 @xfr_probe_nextmaster(%struct.auth_xfer* %78)
  %80 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %81 = load %struct.module_env*, %struct.module_env** %4, align 8
  %82 = call i32 @xfr_probe_send_or_end(%struct.auth_xfer* %80, %struct.module_env* %81)
  br label %83

83:                                               ; preds = %67, %62, %26
  ret void
}

declare dso_local i32 @log_assert(%struct.TYPE_4__*) #1

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i32 @dname_str(i32, i8*) #1

declare dso_local i32 @verbose(i64, i8*, i8*) #1

declare dso_local i64 @xfr_probe_send_probe(%struct.auth_xfer*, %struct.module_env*, i32) #1

declare dso_local i32 @comm_point_delete(i32*) #1

declare dso_local i32 @xfr_probe_nextmaster(%struct.auth_xfer*) #1

declare dso_local i32 @xfr_probe_send_or_end(%struct.auth_xfer*, %struct.module_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
