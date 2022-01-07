; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_procstat_getumask_kvm.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_procstat_getumask_kvm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kinfo_proc = type { i32, i32* }
%struct.filedesc = type { i16 }

@.str = private unnamed_addr constant [37 x i8] c"can't read filedesc at %p for pid %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.kinfo_proc*, i16*)* @procstat_getumask_kvm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @procstat_getumask_kvm(i32* %0, %struct.kinfo_proc* %1, i16* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.kinfo_proc*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca %struct.filedesc, align 2
  store i32* %0, i32** %5, align 8
  store %struct.kinfo_proc* %1, %struct.kinfo_proc** %6, align 8
  store i16* %2, i16** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp ne i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %14 = icmp ne %struct.kinfo_proc* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %18 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %42

22:                                               ; preds = %3
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %25 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = ptrtoint i32* %26 to i64
  %28 = call i32 @kvm_read_all(i32* %23, i64 %27, %struct.filedesc* %8, i32 2)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %22
  %31 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %32 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %35 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @warnx(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32* %33, i32 %36)
  store i32 -1, i32* %4, align 4
  br label %42

38:                                               ; preds = %22
  %39 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %8, i32 0, i32 0
  %40 = load i16, i16* %39, align 2
  %41 = load i16*, i16** %7, align 8
  store i16 %40, i16* %41, align 2
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %38, %30, %21
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @kvm_read_all(i32*, i64, %struct.filedesc*, i32) #1

declare dso_local i32 @warnx(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
