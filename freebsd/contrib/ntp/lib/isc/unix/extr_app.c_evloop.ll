; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_app.c_evloop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_app.c_evloop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i8*, i32 }
%struct.timeval = type { i32, i32 }

@ISC_FALSE = common dso_local global i8* null, align 8
@ISC_R_RELOAD = common dso_local global i32 0, align 4
@ISC_TRUE = common dso_local global i8* null, align 8
@ISC_R_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @evloop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evloop(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.timeval, align 4
  %9 = alloca %struct.timeval*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  br label %14

14:                                               ; preds = %91, %1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %96

20:                                               ; preds = %14
  %21 = load i8*, i8** @ISC_FALSE, align 8
  store i8* %21, i8** %12, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load i8*, i8** @ISC_FALSE, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 3
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* @ISC_R_RELOAD, align 4
  store i32 %30, i32* %2, align 4
  br label %98

31:                                               ; preds = %20
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i8* @isc__taskmgr_ready(i32 %34)
  store i8* %35, i8** %11, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i32 0, i32* %39, align 4
  %40 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  store i32 0, i32* %40, align 4
  store %struct.timeval* %8, %struct.timeval** %9, align 8
  %41 = load i8*, i8** @ISC_TRUE, align 8
  store i8* %41, i8** %12, align 8
  br label %66

42:                                               ; preds = %31
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @isc__timermgr_nextevent(i32 %45, i32* %6)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @ISC_R_SUCCESS, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  store %struct.timeval* null, %struct.timeval** %9, align 8
  br label %65

51:                                               ; preds = %42
  %52 = call i32 @TIME_NOW(i32* %7)
  %53 = call i32 @isc_time_microdiff(i32* %6, i32* %7)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i8*, i8** @ISC_TRUE, align 8
  store i8* %57, i8** %12, align 8
  br label %58

58:                                               ; preds = %56, %51
  %59 = load i32, i32* %13, align 4
  %60 = sdiv i32 %59, 1000000
  %61 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* %13, align 4
  %63 = srem i32 %62, 1000000
  %64 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  store i32 %63, i32* %64, align 4
  store %struct.timeval* %8, %struct.timeval** %9, align 8
  br label %65

65:                                               ; preds = %58, %50
  br label %66

66:                                               ; preds = %65, %38
  store i32* null, i32** %10, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.timeval*, %struct.timeval** %9, align 8
  %71 = call i32 @isc__socketmgr_waitevents(i32 %69, %struct.timeval* %70, i32** %10)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %66
  %75 = load i8*, i8** %12, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %74, %66
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @isc__timermgr_dispatch(i32 %80)
  br label %82

82:                                               ; preds = %77, %74
  %83 = load i32, i32* %5, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %10, align 8
  %90 = call i32 @isc__socketmgr_dispatch(i32 %88, i32* %89)
  br label %91

91:                                               ; preds = %85, %82
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @isc__taskmgr_dispatch(i32 %94)
  br label %14

96:                                               ; preds = %14
  %97 = load i32, i32* @ISC_R_SUCCESS, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %96, %26
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i8* @isc__taskmgr_ready(i32) #1

declare dso_local i32 @isc__timermgr_nextevent(i32, i32*) #1

declare dso_local i32 @TIME_NOW(i32*) #1

declare dso_local i32 @isc_time_microdiff(i32*, i32*) #1

declare dso_local i32 @isc__socketmgr_waitevents(i32, %struct.timeval*, i32**) #1

declare dso_local i32 @isc__timermgr_dispatch(i32) #1

declare dso_local i32 @isc__socketmgr_dispatch(i32, i32*) #1

declare dso_local i32 @isc__taskmgr_dispatch(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
