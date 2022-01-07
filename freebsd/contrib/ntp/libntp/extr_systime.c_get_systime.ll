; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_systime.c_get_systime.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_systime.c_get_systime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i32 }
%struct.TYPE_14__ = type { i64 }

@get_systime.ts_last = internal global %struct.timespec zeroinitializer, align 8
@get_systime.ts_prev = internal global %struct.timespec zeroinitializer, align 8
@get_systime.lfp_prev = internal global %struct.TYPE_14__ zeroinitializer, align 8
@systime_init_done = common dso_local global i32 0, align 4
@lamport_violated = common dso_local global i32 0, align 4
@sys_lamport = common dso_local global i32 0, align 4
@sys_fuzz_nsec = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"get_systime Lamport advance exceeds one second (%.9f)\00", align 1
@FRAC = common dso_local global i32 0, align 4
@sys_fuzz = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"get_systime: postcond failed by %s secs, fixed\0A\00", align 1
@sys_tsrounding = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_systime(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.timespec, align 8
  %4 = alloca %struct.timespec, align 8
  %5 = alloca %struct.timespec, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.TYPE_14__, align 8
  %8 = alloca %struct.TYPE_14__, align 8
  %9 = alloca %struct.TYPE_14__, align 8
  %10 = alloca %struct.timespec, align 8
  %11 = alloca %struct.timespec, align 8
  %12 = alloca %struct.timespec, align 8
  %13 = alloca %struct.TYPE_14__, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %14 = call i32 @get_ostime(%struct.timespec* %3)
  %15 = load i32, i32* @systime_init_done, align 4
  %16 = call i32 @DEBUG_REQUIRE(i32 %15)
  %17 = call i32 (...) @ENTER_GET_SYSTIME_CRITSEC()
  %18 = bitcast %struct.timespec* %3 to { i64, i32 }*
  %19 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call { i64, i32 } @add_tspec_ns(i64 %20, i32 %22, i32 50000000)
  %24 = bitcast %struct.timespec* %10 to { i64, i32 }*
  %25 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %24, i32 0, i32 0
  %26 = extractvalue { i64, i32 } %23, 0
  store i64 %26, i64* %25, align 8
  %27 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %24, i32 0, i32 1
  %28 = extractvalue { i64, i32 } %23, 1
  store i32 %28, i32* %27, align 8
  %29 = bitcast %struct.timespec* %10 to { i64, i32 }*
  %30 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %29, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i64, i64* getelementptr inbounds ({ i64, i32 }, { i64, i32 }* bitcast (%struct.timespec* @get_systime.ts_last to { i64, i32 }*), i32 0, i32 0), align 8
  %35 = load i32, i32* getelementptr inbounds ({ i64, i32 }, { i64, i32 }* bitcast (%struct.timespec* @get_systime.ts_last to { i64, i32 }*), i32 0, i32 1), align 8
  %36 = call i64 @cmp_tspec(i64 %31, i32 %33, i64 %34, i32 %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %1
  store i32 1, i32* @lamport_violated, align 4
  %39 = load i32, i32* @sys_lamport, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @sys_lamport, align 4
  br label %41

41:                                               ; preds = %38, %1
  %42 = bitcast %struct.timespec* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.timespec* @get_systime.ts_last to i8*), i8* align 8 %42, i64 16, i1 false)
  %43 = call i32 (...) @USING_SIGIO()
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %116, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @sys_fuzz_nsec, align 4
  %47 = load i64, i64* getelementptr inbounds ({ i64, i32 }, { i64, i32 }* bitcast (%struct.timespec* @get_systime.ts_prev to { i64, i32 }*), i32 0, i32 0), align 8
  %48 = load i32, i32* getelementptr inbounds ({ i64, i32 }, { i64, i32 }* bitcast (%struct.timespec* @get_systime.ts_prev to { i64, i32 }*), i32 0, i32 1), align 8
  %49 = call { i64, i32 } @add_tspec_ns(i64 %47, i32 %48, i32 %46)
  %50 = bitcast %struct.timespec* %11 to { i64, i32 }*
  %51 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %50, i32 0, i32 0
  %52 = extractvalue { i64, i32 } %49, 0
  store i64 %52, i64* %51, align 8
  %53 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %50, i32 0, i32 1
  %54 = extractvalue { i64, i32 } %49, 1
  store i32 %54, i32* %53, align 8
  %55 = bitcast %struct.timespec* %4 to i8*
  %56 = bitcast %struct.timespec* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 16, i1 false)
  %57 = bitcast %struct.timespec* %3 to { i64, i32 }*
  %58 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %57, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = bitcast %struct.timespec* %4 to { i64, i32 }*
  %63 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %62, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @cmp_tspec(i64 %59, i32 %61, i64 %64, i32 %66)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %114

69:                                               ; preds = %45
  %70 = bitcast %struct.timespec* %4 to { i64, i32 }*
  %71 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %70, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = bitcast %struct.timespec* %3 to { i64, i32 }*
  %76 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %75, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call { i64, i32 } @sub_tspec(i64 %72, i32 %74, i64 %77, i32 %79)
  %81 = bitcast %struct.timespec* %12 to { i64, i32 }*
  %82 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %81, i32 0, i32 0
  %83 = extractvalue { i64, i32 } %80, 0
  store i64 %83, i64* %82, align 8
  %84 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %81, i32 0, i32 1
  %85 = extractvalue { i64, i32 } %80, 1
  store i32 %85, i32* %84, align 8
  %86 = bitcast %struct.timespec* %5 to i8*
  %87 = bitcast %struct.timespec* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %86, i8* align 8 %87, i64 16, i1 false)
  %88 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp sgt i64 %89, 0
  br i1 %90, label %91, label %107

91:                                               ; preds = %69
  %92 = load i32, i32* @lamport_violated, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %107, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* @LOG_ERR, align 4
  %96 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = sitofp i64 %97 to double
  %99 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = sitofp i32 %100 to double
  %102 = fmul double 1.000000e-09, %101
  %103 = fadd double %98, %102
  %104 = fptosi double %103 to i64
  %105 = call i32 @msyslog(i32 %95, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %104)
  %106 = call i32 @exit(i32 1) #4
  unreachable

107:                                              ; preds = %91, %69
  %108 = load i32, i32* @lamport_violated, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = bitcast %struct.timespec* %3 to i8*
  %112 = bitcast %struct.timespec* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %111, i8* align 8 %112, i64 16, i1 false)
  br label %113

113:                                              ; preds = %110, %107
  br label %114

114:                                              ; preds = %113, %45
  %115 = bitcast %struct.timespec* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.timespec* @get_systime.ts_prev to i8*), i8* align 8 %115, i64 16, i1 false)
  br label %116

116:                                              ; preds = %114, %41
  %117 = bitcast %struct.timespec* %3 to { i64, i32 }*
  %118 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %117, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i64 @tspec_stamp_to_lfp(i64 %119, i32 %121)
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  store i64 %122, i64* %123, align 8
  %124 = bitcast %struct.TYPE_14__* %7 to i8*
  %125 = bitcast %struct.TYPE_14__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %124, i8* align 8 %125, i64 8, i1 false)
  %126 = call i32 (...) @ntp_random()
  %127 = sitofp i32 %126 to double
  %128 = fmul double %127, 2.000000e+00
  %129 = load i32, i32* @FRAC, align 4
  %130 = sitofp i32 %129 to double
  %131 = fdiv double %128, %130
  %132 = load i32, i32* @sys_fuzz, align 4
  %133 = sitofp i32 %132 to double
  %134 = fmul double %131, %133
  store double %134, double* %6, align 8
  %135 = load double, double* %6, align 8
  %136 = call i32 @DTOLFP(double %135, %struct.TYPE_14__* %8)
  %137 = call i32 @L_ADD(%struct.TYPE_14__* %7, %struct.TYPE_14__* %8)
  %138 = call i32 (...) @USING_SIGIO()
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %176, label %140

140:                                              ; preds = %116
  %141 = call i32 @L_ISZERO(%struct.TYPE_14__* @get_systime.lfp_prev)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %169, label %143

143:                                              ; preds = %140
  %144 = load i32, i32* @lamport_violated, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %169, label %146

146:                                              ; preds = %143
  %147 = load i32, i32* @sys_fuzz, align 4
  %148 = sitofp i32 %147 to double
  %149 = fcmp ogt double %148, 0.000000e+00
  br i1 %149, label %150, label %169

150:                                              ; preds = %146
  %151 = bitcast %struct.TYPE_14__* %9 to i8*
  %152 = bitcast %struct.TYPE_14__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %151, i8* align 8 %152, i64 8, i1 false)
  %153 = call i32 @L_SUB(%struct.TYPE_14__* %9, %struct.TYPE_14__* @get_systime.lfp_prev)
  %154 = call i32 @L_SUBUF(%struct.TYPE_14__* %9, i32 1)
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp slt i64 %156, 0
  br i1 %157, label %158, label %168

158:                                              ; preds = %150
  %159 = call i32 @L_NEG(%struct.TYPE_14__* %9)
  %160 = call i32 @lfptoa(%struct.TYPE_14__* %9, i32 9)
  %161 = sext i32 %160 to i64
  %162 = inttoptr i64 %161 to i8*
  %163 = call i32 @DPRINTF(i32 1, i8* %162)
  %164 = bitcast %struct.TYPE_14__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %164, i8* align 8 bitcast (%struct.TYPE_14__* @get_systime.lfp_prev to i8*), i64 8, i1 false)
  %165 = call i32 @L_ADDUF(%struct.TYPE_14__* %7, i32 1)
  %166 = load i32, i32* @sys_tsrounding, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* @sys_tsrounding, align 4
  br label %168

168:                                              ; preds = %158, %150
  br label %169

169:                                              ; preds = %168, %146, %143, %140
  %170 = bitcast %struct.TYPE_14__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_14__* @get_systime.lfp_prev to i8*), i8* align 8 %170, i64 8, i1 false)
  %171 = load i32, i32* @lamport_violated, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %169
  %174 = load i32, i32* @FALSE, align 4
  store i32 %174, i32* @lamport_violated, align 4
  br label %175

175:                                              ; preds = %173, %169
  br label %176

176:                                              ; preds = %175, %116
  %177 = call i32 (...) @LEAVE_GET_SYSTIME_CRITSEC()
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %179 = bitcast %struct.TYPE_14__* %178 to i8*
  %180 = bitcast %struct.TYPE_14__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %179, i8* align 8 %180, i64 8, i1 false)
  ret void
}

declare dso_local i32 @get_ostime(%struct.timespec*) #1

declare dso_local i32 @DEBUG_REQUIRE(i32) #1

declare dso_local i32 @ENTER_GET_SYSTIME_CRITSEC(...) #1

declare dso_local i64 @cmp_tspec(i64, i32, i64, i32) #1

declare dso_local { i64, i32 } @add_tspec_ns(i64, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @USING_SIGIO(...) #1

declare dso_local { i64, i32 } @sub_tspec(i64, i32, i64, i32) #1

declare dso_local i32 @msyslog(i32, i8*, i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i64 @tspec_stamp_to_lfp(i64, i32) #1

declare dso_local i32 @ntp_random(...) #1

declare dso_local i32 @DTOLFP(double, %struct.TYPE_14__*) #1

declare dso_local i32 @L_ADD(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @L_ISZERO(%struct.TYPE_14__*) #1

declare dso_local i32 @L_SUB(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @L_SUBUF(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @L_NEG(%struct.TYPE_14__*) #1

declare dso_local i32 @DPRINTF(i32, i8*) #1

declare dso_local i32 @lfptoa(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @L_ADDUF(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @LEAVE_GET_SYSTIME_CRITSEC(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
