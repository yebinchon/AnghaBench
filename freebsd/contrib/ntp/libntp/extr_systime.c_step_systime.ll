; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_systime.c_step_systime.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_systime.c_step_systime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }
%struct.timespec = type { i32, i32 }

@sys_residual = common dso_local global double 0.000000e+00, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"step-systime: %m\00", align 1
@enable_panic_check = common dso_local global i64 0, align 8
@allow_panic = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"step_systime: allow_panic is TRUE!\00", align 1
@FALSE = common dso_local global i32 0, align 4
@lamport_violated = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @step_systime(double %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.timeval, align 4
  %6 = alloca %struct.timeval, align 4
  %7 = alloca %struct.timespec, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.timeval, align 4
  store double %0, double* %3, align 8
  store i32 2147483647, i32* %4, align 4
  %11 = load double, double* @sys_residual, align 8
  %12 = call i32 @DTOLFP(double %11, i32* %9)
  %13 = load double, double* %3, align 8
  %14 = call i32 @DTOLFP(double %13, i32* %8)
  %15 = call i32 @L_ADD(i32* %8, i32* %9)
  %16 = call i32 @get_ostime(%struct.timespec* %7)
  %17 = bitcast %struct.timespec* %7 to i64*
  %18 = load i64, i64* %17, align 4
  %19 = call i32 @tspec_stamp_to_lfp(i64 %18)
  store i32 %19, i32* %9, align 4
  %20 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 500
  %26 = sdiv i32 %25, 1000
  %27 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = call i32 @L_ADD(i32* %9, i32* %8)
  %29 = load i32, i32* %9, align 4
  %30 = call i64 @lfp_stamp_to_tval(i32 %29, i32* %4)
  %31 = bitcast %struct.timeval* %10 to i64*
  store i64 %30, i64* %31, align 4
  %32 = bitcast %struct.timeval* %5 to i8*
  %33 = bitcast %struct.timeval* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 %33, i64 8, i1 false)
  %34 = call i64 @ntp_set_tod(%struct.timeval* %5, i32* null)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %1
  %37 = load i32, i32* @LOG_ERR, align 4
  %38 = call i32 @msyslog(i32 %37, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %39 = load i64, i64* @enable_panic_check, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i64, i64* @allow_panic, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* @LOG_ERR, align 4
  %46 = call i32 @msyslog(i32 %45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %41, %36
  %48 = load i32, i32* @FALSE, align 4
  store i32 %48, i32* %2, align 4
  br label %76

49:                                               ; preds = %1
  store double 0.000000e+00, double* @sys_residual, align 8
  %50 = load double, double* %3, align 8
  %51 = fcmp olt double %50, 0.000000e+00
  %52 = zext i1 %51 to i32
  store i32 %52, i32* @lamport_violated, align 4
  br i1 true, label %53, label %55

53:                                               ; preds = %49
  %54 = call i32 (...) @step_callback()
  br label %55

55:                                               ; preds = %53, %49
  %56 = bitcast %struct.timeval* %5 to i64*
  %57 = load i64, i64* %56, align 4
  %58 = bitcast %struct.timeval* %6 to i64*
  %59 = load i64, i64* %58, align 4
  %60 = call i32 @update_uwtmp(i64 %57, i64 %59)
  %61 = load i64, i64* @enable_panic_check, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %55
  %64 = load i64, i64* @allow_panic, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = load i32, i32* @LOG_ERR, align 4
  %68 = call i32 @msyslog(i32 %67, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i64, i64* @allow_panic, align 8
  %70 = icmp ne i64 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i32 @INSIST(i32 %72)
  br label %74

74:                                               ; preds = %66, %63, %55
  %75 = load i32, i32* @TRUE, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %74, %47
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @DTOLFP(double, i32*) #1

declare dso_local i32 @L_ADD(i32*, i32*) #1

declare dso_local i32 @get_ostime(%struct.timespec*) #1

declare dso_local i32 @tspec_stamp_to_lfp(i64) #1

declare dso_local i64 @lfp_stamp_to_tval(i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ntp_set_tod(%struct.timeval*, i32*) #1

declare dso_local i32 @msyslog(i32, i8*) #1

declare dso_local i32 @step_callback(...) #1

declare dso_local i32 @update_uwtmp(i64, i64) #1

declare dso_local i32 @INSIST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
