; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_procstat_getosrel_kvm.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_procstat_getosrel_kvm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kinfo_proc = type { i32, i64 }
%struct.proc = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"can't read proc struct at %p for pid %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.kinfo_proc*, i32*)* @procstat_getosrel_kvm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @procstat_getosrel_kvm(i32* %0, %struct.kinfo_proc* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.kinfo_proc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.proc, align 4
  store i32* %0, i32** %5, align 8
  store %struct.kinfo_proc* %1, %struct.kinfo_proc** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp ne i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %14 = icmp ne %struct.kinfo_proc* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32*, i32** %5, align 8
  %18 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %19 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @kvm_read_all(i32* %17, i64 %20, %struct.proc* %8, i32 4)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %3
  %24 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %25 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %28 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @warnx(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %26, i32 %29)
  store i32 -1, i32* %4, align 4
  br label %35

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.proc, %struct.proc* %8, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %7, align 8
  store i32 %33, i32* %34, align 4
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %31, %23
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @kvm_read_all(i32*, i64, %struct.proc*, i32) #1

declare dso_local i32 @warnx(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
