; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_procstat_getrlimit_kvm.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_procstat_getrlimit_kvm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kinfo_proc = type { i8*, i32 }
%struct.rlimit = type { i32* }
%struct.proc = type { i32* }

@RLIM_NLIMITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"can't read proc struct at %p for pid %d\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"can't read rlimit struct at %p for pid %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.kinfo_proc*, i32, %struct.rlimit*)* @procstat_getrlimit_kvm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @procstat_getrlimit_kvm(i32* %0, %struct.kinfo_proc* %1, i32 %2, %struct.rlimit* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.kinfo_proc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rlimit*, align 8
  %10 = alloca %struct.proc, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.kinfo_proc* %1, %struct.kinfo_proc** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.rlimit* %3, %struct.rlimit** %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp ne i32* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.kinfo_proc*, %struct.kinfo_proc** %7, align 8
  %17 = icmp ne %struct.kinfo_proc* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32, i32* %8, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @RLIM_NLIMITS, align 4
  %25 = icmp slt i32 %23, %24
  br label %26

26:                                               ; preds = %22, %4
  %27 = phi i1 [ false, %4 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i32*, i32** %6, align 8
  %31 = load %struct.kinfo_proc*, %struct.kinfo_proc** %7, align 8
  %32 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = ptrtoint i8* %33 to i64
  %35 = bitcast %struct.proc* %10 to %struct.rlimit*
  %36 = call i32 @kvm_read_all(i32* %30, i64 %34, %struct.rlimit* %35, i32 8)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %26
  %39 = load %struct.kinfo_proc*, %struct.kinfo_proc** %7, align 8
  %40 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.kinfo_proc*, %struct.kinfo_proc** %7, align 8
  %43 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @warnx(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %41, i32 %44)
  store i32 -1, i32* %5, align 4
  br label %72

46:                                               ; preds = %26
  %47 = getelementptr inbounds %struct.proc, %struct.proc* %10, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 -1, i32* %5, align 4
  br label %72

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.proc, %struct.proc* %10, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = ptrtoint i32* %53 to i64
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 8, %56
  %58 = add i64 %54, %57
  store i64 %58, i64* %11, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = load i64, i64* %11, align 8
  %61 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %62 = call i32 @kvm_read_all(i32* %59, i64 %60, %struct.rlimit* %61, i32 8)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %51
  %65 = load i64, i64* %11, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = load %struct.kinfo_proc*, %struct.kinfo_proc** %7, align 8
  %68 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @warnx(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %66, i32 %69)
  store i32 -1, i32* %5, align 4
  br label %72

71:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %71, %64, %50, %38
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @kvm_read_all(i32*, i64, %struct.rlimit*, i32) #1

declare dso_local i32 @warnx(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
