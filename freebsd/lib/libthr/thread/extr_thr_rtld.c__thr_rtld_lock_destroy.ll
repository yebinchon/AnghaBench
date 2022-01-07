; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_rtld.c__thr_rtld_lock_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_rtld.c__thr_rtld_lock_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtld_lock = type { i32 }

@lock_place = common dso_local global %struct.rtld_lock* null, align 8
@busy_places = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @_thr_rtld_lock_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_thr_rtld_lock_destroy(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.rtld_lock*
  %7 = load %struct.rtld_lock*, %struct.rtld_lock** @lock_place, align 8
  %8 = getelementptr inbounds %struct.rtld_lock, %struct.rtld_lock* %7, i64 0
  %9 = ptrtoint %struct.rtld_lock* %6 to i64
  %10 = ptrtoint %struct.rtld_lock* %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 4
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %3, align 4
  store i64 0, i64* %4, align 8
  br label %14

14:                                               ; preds = %21, %1
  %15 = load i64, i64* %4, align 8
  %16 = icmp ult i64 %15, 4
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load i8*, i8** %2, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  store i8 0, i8* %20, align 1
  br label %21

21:                                               ; preds = %17
  %22 = load i64, i64* %4, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %4, align 8
  br label %14

24:                                               ; preds = %14
  %25 = load i32, i32* %3, align 4
  %26 = shl i32 1, %25
  %27 = xor i32 %26, -1
  %28 = load i32, i32* @busy_places, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* @busy_places, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
