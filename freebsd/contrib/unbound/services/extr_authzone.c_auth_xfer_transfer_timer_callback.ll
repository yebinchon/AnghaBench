; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_xfer_transfer_timer_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_xfer_transfer_timer_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_xfer = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i64, i32, i32*, %struct.TYPE_6__*, i64, %struct.module_env* }
%struct.TYPE_6__ = type { i32 }
%struct.module_env = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"xfr stopped, connection timeout to %s\00", align 1
@NUM_TIMEOUTS_FALLBACK_IXFR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [60 x i8] c"xfr to %s, fallback from IXFR to AXFR (because of timeouts)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @auth_xfer_transfer_timer_callback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.auth_xfer*, align 8
  %4 = alloca %struct.module_env*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.auth_xfer*
  store %struct.auth_xfer* %7, %struct.auth_xfer** %3, align 8
  store i32 1, i32* %5, align 4
  %8 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %9 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %8, i32 0, i32 0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = call i32 @log_assert(%struct.TYPE_7__* %10)
  %12 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %13 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %12, i32 0, i32 1
  %14 = call i32 @lock_basic_lock(i32* %13)
  %15 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %16 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 5
  %19 = load %struct.module_env*, %struct.module_env** %18, align 8
  store %struct.module_env* %19, %struct.module_env** %4, align 8
  %20 = load %struct.module_env*, %struct.module_env** %4, align 8
  %21 = getelementptr inbounds %struct.module_env, %struct.module_env* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %28 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %27, i32 0, i32 1
  %29 = call i32 @lock_basic_unlock(i32* %28)
  br label %99

30:                                               ; preds = %1
  %31 = load i32, i32* @VERB_ALGO, align 4
  %32 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %33 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @verbose(i32 %31, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %41 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %75

46:                                               ; preds = %30
  %47 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %48 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %50, align 8
  %53 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %54 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @NUM_TIMEOUTS_FALLBACK_IXFR, align 8
  %59 = icmp sge i64 %57, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %46
  %61 = load i32, i32* @VERB_ALGO, align 4
  %62 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %63 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 3
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @verbose(i32 %61, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %71 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  store i32 1, i32* %73, align 8
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %60, %46
  br label %75

75:                                               ; preds = %74, %30
  %76 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %77 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %76, i32 0, i32 0
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = call i32 @auth_chunks_delete(%struct.TYPE_7__* %78)
  %80 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %81 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %80, i32 0, i32 0
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @comm_point_delete(i32* %84)
  %86 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %87 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 2
  store i32* null, i32** %89, align 8
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %75
  %93 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %94 = call i32 @xfr_transfer_nextmaster(%struct.auth_xfer* %93)
  br label %95

95:                                               ; preds = %92, %75
  %96 = load %struct.auth_xfer*, %struct.auth_xfer** %3, align 8
  %97 = load %struct.module_env*, %struct.module_env** %4, align 8
  %98 = call i32 @xfr_transfer_nexttarget_or_end(%struct.auth_xfer* %96, %struct.module_env* %97)
  br label %99

99:                                               ; preds = %95, %26
  ret void
}

declare dso_local i32 @log_assert(%struct.TYPE_7__*) #1

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i32 @verbose(i32, i8*, i32) #1

declare dso_local i32 @auth_chunks_delete(%struct.TYPE_7__*) #1

declare dso_local i32 @comm_point_delete(i32*) #1

declare dso_local i32 @xfr_transfer_nextmaster(%struct.auth_xfer*) #1

declare dso_local i32 @xfr_transfer_nexttarget_or_end(%struct.auth_xfer*, %struct.module_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
