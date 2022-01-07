; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/util/extr_pps-api.c_Chew.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/util/extr_pps-api.c_Chew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }

@Chew.idx = internal global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%d.%09d \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%u %u \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%.9f \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Chew(%struct.timespec* %0, %struct.timespec* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca %struct.timespec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.timespec, align 4
  store %struct.timespec* %0, %struct.timespec** %5, align 8
  store %struct.timespec* %1, %struct.timespec** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.timespec*, %struct.timespec** %5, align 8
  %11 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.timespec*, %struct.timespec** %5, align 8
  %14 = getelementptr inbounds %struct.timespec, %struct.timespec* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15)
  %17 = load %struct.timespec*, %struct.timespec** %6, align 8
  %18 = getelementptr inbounds %struct.timespec, %struct.timespec* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.timespec*, %struct.timespec** %6, align 8
  %21 = getelementptr inbounds %struct.timespec, %struct.timespec* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load %struct.timespec*, %struct.timespec** %6, align 8
  %28 = bitcast %struct.timespec* %9 to i8*
  %29 = bitcast %struct.timespec* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 8, i1 false)
  %30 = load %struct.timespec*, %struct.timespec** %5, align 8
  %31 = call i32 @timespecsub(%struct.timespec* %9, %struct.timespec* %30)
  %32 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sitofp i32 %33 to double
  %35 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sitofp i32 %36 to double
  %38 = fdiv double %37, 1.000000e+09
  %39 = fadd double %34, %38
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), double %39)
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i32, i32* @stdout, align 4
  %43 = call i32 @fflush(i32 %42)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @timespecsub(%struct.timespec*, %struct.timespec*) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
