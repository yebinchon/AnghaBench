; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librt/extr_sigev_thread.c_attrcopy.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librt/extr_sigev_thread.c_attrcopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_param = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @attrcopy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @attrcopy(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sched_param, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @_pthread_attr_getschedpolicy(i32* %9, i32* %8)
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @_pthread_attr_setschedpolicy(i32* %11, i32 %12)
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @_pthread_attr_getinheritsched(i32* %14, i32* %8)
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @_pthread_attr_setinheritsched(i32* %16, i32 %17)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @_pthread_attr_getschedparam(i32* %19, %struct.sched_param* %5)
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @_pthread_attr_setschedparam(i32* %21, %struct.sched_param* %5)
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @_pthread_attr_getscope(i32* %23, i32* %8)
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @_pthread_attr_setscope(i32* %25, i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @_pthread_attr_getstacksize(i32* %28, i64* %7)
  %30 = load i32*, i32** %4, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @_pthread_attr_setstacksize(i32* %30, i64 %31)
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @_pthread_attr_getstackaddr(i32* %33, i8** %6)
  %35 = load i32*, i32** %3, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @_pthread_attr_setstackaddr(i32* %35, i8* %36)
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @_pthread_attr_getguardsize(i32* %38, i64* %7)
  %40 = load i32*, i32** %4, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @_pthread_attr_setguardsize(i32* %40, i64 %41)
  ret void
}

declare dso_local i32 @_pthread_attr_getschedpolicy(i32*, i32*) #1

declare dso_local i32 @_pthread_attr_setschedpolicy(i32*, i32) #1

declare dso_local i32 @_pthread_attr_getinheritsched(i32*, i32*) #1

declare dso_local i32 @_pthread_attr_setinheritsched(i32*, i32) #1

declare dso_local i32 @_pthread_attr_getschedparam(i32*, %struct.sched_param*) #1

declare dso_local i32 @_pthread_attr_setschedparam(i32*, %struct.sched_param*) #1

declare dso_local i32 @_pthread_attr_getscope(i32*, i32*) #1

declare dso_local i32 @_pthread_attr_setscope(i32*, i32) #1

declare dso_local i32 @_pthread_attr_getstacksize(i32*, i64*) #1

declare dso_local i32 @_pthread_attr_setstacksize(i32*, i64) #1

declare dso_local i32 @_pthread_attr_getstackaddr(i32*, i8**) #1

declare dso_local i32 @_pthread_attr_setstackaddr(i32*, i8*) #1

declare dso_local i32 @_pthread_attr_getguardsize(i32*, i64*) #1

declare dso_local i32 @_pthread_attr_setguardsize(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
