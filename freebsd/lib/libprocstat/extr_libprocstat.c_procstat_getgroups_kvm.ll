; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_procstat_getgroups_kvm.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_procstat_getgroups_kvm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i64, i32, i64 }
%struct.kinfo_proc = type { i64, i32 }
%struct.proc = type { i64, i32, i64 }

@.str = private unnamed_addr constant [40 x i8] c"can't read proc struct at %p for pid %d\00", align 1
@NOCRED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"can't read ucred struct at %p for pid %d\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"malloc(%zu)\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"can't read groups at %p for pid %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ucred* (i32*, %struct.kinfo_proc*, i32*)* @procstat_getgroups_kvm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ucred* @procstat_getgroups_kvm(i32* %0, %struct.kinfo_proc* %1, i32* %2) #0 {
  %4 = alloca %struct.ucred*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.kinfo_proc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.proc, align 8
  %9 = alloca %struct.ucred, align 8
  %10 = alloca %struct.ucred*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.kinfo_proc* %1, %struct.kinfo_proc** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = icmp ne i32* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %17 = icmp ne %struct.kinfo_proc* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %22 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = bitcast %struct.proc* %8 to %struct.ucred*
  %25 = call i32 @kvm_read_all(i32* %20, i64 %23, %struct.ucred* %24, i64 24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %3
  %28 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %29 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %32 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @warnx(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %30, i32 %33)
  store %struct.ucred* null, %struct.ucred** %4, align 8
  br label %88

35:                                               ; preds = %3
  %36 = getelementptr inbounds %struct.proc, %struct.proc* %8, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @NOCRED, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store %struct.ucred* null, %struct.ucred** %4, align 8
  br label %88

41:                                               ; preds = %35
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds %struct.proc, %struct.proc* %8, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @kvm_read_all(i32* %42, i64 %44, %struct.ucred* %9, i64 24)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.proc, %struct.proc* %8, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %51 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @warnx(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %49, i32 %52)
  store %struct.ucred* null, %struct.ucred** %4, align 8
  br label %88

54:                                               ; preds = %41
  %55 = getelementptr inbounds %struct.ucred, %struct.ucred* %9, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 24
  store i64 %58, i64* %11, align 8
  %59 = load i64, i64* %11, align 8
  %60 = call %struct.ucred* @malloc(i64 %59)
  store %struct.ucred* %60, %struct.ucred** %10, align 8
  %61 = load %struct.ucred*, %struct.ucred** %10, align 8
  %62 = icmp eq %struct.ucred* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %54
  %64 = load i64, i64* %11, align 8
  %65 = call i32 @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %64)
  store %struct.ucred* null, %struct.ucred** %4, align 8
  br label %88

66:                                               ; preds = %54
  %67 = load i32*, i32** %5, align 8
  %68 = getelementptr inbounds %struct.ucred, %struct.ucred* %9, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.ucred*, %struct.ucred** %10, align 8
  %71 = load i64, i64* %11, align 8
  %72 = call i32 @kvm_read_all(i32* %67, i64 %69, %struct.ucred* %70, i64 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %66
  %75 = getelementptr inbounds %struct.ucred, %struct.ucred* %9, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %78 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @warnx(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %76, i32 %79)
  %81 = load %struct.ucred*, %struct.ucred** %10, align 8
  %82 = call i32 @free(%struct.ucred* %81)
  store %struct.ucred* null, %struct.ucred** %4, align 8
  br label %88

83:                                               ; preds = %66
  %84 = getelementptr inbounds %struct.ucred, %struct.ucred* %9, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32*, i32** %7, align 8
  store i32 %85, i32* %86, align 4
  %87 = load %struct.ucred*, %struct.ucred** %10, align 8
  store %struct.ucred* %87, %struct.ucred** %4, align 8
  br label %88

88:                                               ; preds = %83, %74, %63, %47, %40, %27
  %89 = load %struct.ucred*, %struct.ucred** %4, align 8
  ret %struct.ucred* %89
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @kvm_read_all(i32*, i64, %struct.ucred*, i64) #1

declare dso_local i32 @warnx(i8*, i64, i32) #1

declare dso_local %struct.ucred* @malloc(i64) #1

declare dso_local i32 @warn(i8*, i64) #1

declare dso_local i32 @free(%struct.ucred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
