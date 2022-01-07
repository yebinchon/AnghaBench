; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_app.c_isc__nothread_wait_hack.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_app.c_isc__nothread_wait_hack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8* }

@in_recursive_evloop = common dso_local global i8* null, align 8
@ISC_TRUE = common dso_local global i8* null, align 8
@isc_g_appctx = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@ISC_R_RELOAD = common dso_local global i64 0, align 8
@signalled = common dso_local global i8* null, align 8
@ISC_FALSE = common dso_local global i8* null, align 8
@ISC_R_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @isc__nothread_wait_hack(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @UNUSED(i32* %6)
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @UNUSED(i32* %8)
  %10 = load i8*, i8** @in_recursive_evloop, align 8
  %11 = icmp ne i8* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @INSIST(i32 %13)
  %15 = load i8*, i8** @ISC_TRUE, align 8
  store i8* %15, i8** @in_recursive_evloop, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 1
  %19 = zext i1 %18 to i32
  %20 = call i32 @INSIST(i32 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %21, align 4
  %24 = call i64 @evloop(%struct.TYPE_3__* @isc_g_appctx)
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @ISC_R_RELOAD, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i8*, i8** @ISC_TRUE, align 8
  store i8* %29, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @isc_g_appctx, i32 0, i32 1), align 8
  br label %30

30:                                               ; preds = %28, %2
  %31 = load i8*, i8** @signalled, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i8*, i8** @ISC_FALSE, align 8
  store i8* %34, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @isc_g_appctx, i32 0, i32 0), align 8
  %35 = load i8*, i8** @ISC_FALSE, align 8
  store i8* %35, i8** @signalled, align 8
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load i8*, i8** @ISC_FALSE, align 8
  store i8* %40, i8** @in_recursive_evloop, align 8
  %41 = load i64, i64* @ISC_R_SUCCESS, align 8
  ret i64 %41
}

declare dso_local i32 @UNUSED(i32*) #1

declare dso_local i32 @INSIST(i32) #1

declare dso_local i64 @evloop(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
