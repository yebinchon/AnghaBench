; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_barrier_combining.c_ck_barrier_combining_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_barrier_combining.c_ck_barrier_combining_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_barrier_combining = type { %struct.ck_barrier_combining_group*, i32 }
%struct.ck_barrier_combining_group = type { i32*, i32, i32, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ck_barrier_combining_init(%struct.ck_barrier_combining* %0, %struct.ck_barrier_combining_group* %1) #0 {
  %3 = alloca %struct.ck_barrier_combining*, align 8
  %4 = alloca %struct.ck_barrier_combining_group*, align 8
  store %struct.ck_barrier_combining* %0, %struct.ck_barrier_combining** %3, align 8
  store %struct.ck_barrier_combining_group* %1, %struct.ck_barrier_combining_group** %4, align 8
  %5 = load %struct.ck_barrier_combining_group*, %struct.ck_barrier_combining_group** %4, align 8
  %6 = getelementptr inbounds %struct.ck_barrier_combining_group, %struct.ck_barrier_combining_group* %5, i32 0, i32 5
  store i64 0, i64* %6, align 8
  %7 = load %struct.ck_barrier_combining_group*, %struct.ck_barrier_combining_group** %4, align 8
  %8 = getelementptr inbounds %struct.ck_barrier_combining_group, %struct.ck_barrier_combining_group* %7, i32 0, i32 4
  store i64 0, i64* %8, align 8
  %9 = load %struct.ck_barrier_combining_group*, %struct.ck_barrier_combining_group** %4, align 8
  %10 = getelementptr inbounds %struct.ck_barrier_combining_group, %struct.ck_barrier_combining_group* %9, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = load %struct.ck_barrier_combining_group*, %struct.ck_barrier_combining_group** %4, align 8
  %12 = getelementptr inbounds %struct.ck_barrier_combining_group, %struct.ck_barrier_combining_group* %11, i32 0, i32 0
  store i32* null, i32** %12, align 8
  %13 = load %struct.ck_barrier_combining_group*, %struct.ck_barrier_combining_group** %4, align 8
  %14 = getelementptr inbounds %struct.ck_barrier_combining_group, %struct.ck_barrier_combining_group* %13, i32 0, i32 1
  store i32 0, i32* %14, align 8
  %15 = load %struct.ck_barrier_combining_group*, %struct.ck_barrier_combining_group** %4, align 8
  %16 = getelementptr inbounds %struct.ck_barrier_combining_group, %struct.ck_barrier_combining_group* %15, i32 0, i32 2
  store i32 0, i32* %16, align 4
  %17 = load %struct.ck_barrier_combining*, %struct.ck_barrier_combining** %3, align 8
  %18 = getelementptr inbounds %struct.ck_barrier_combining, %struct.ck_barrier_combining* %17, i32 0, i32 1
  %19 = call i32 @ck_spinlock_fas_init(i32* %18)
  %20 = load %struct.ck_barrier_combining_group*, %struct.ck_barrier_combining_group** %4, align 8
  %21 = load %struct.ck_barrier_combining*, %struct.ck_barrier_combining** %3, align 8
  %22 = getelementptr inbounds %struct.ck_barrier_combining, %struct.ck_barrier_combining* %21, i32 0, i32 0
  store %struct.ck_barrier_combining_group* %20, %struct.ck_barrier_combining_group** %22, align 8
  ret void
}

declare dso_local i32 @ck_spinlock_fas_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
