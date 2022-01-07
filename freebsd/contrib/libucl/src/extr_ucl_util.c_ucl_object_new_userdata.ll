; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_util.c_ucl_object_new_userdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_util.c_ucl_object_new_userdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_object_userdata = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32*, i32*, i32 }
%struct.TYPE_3__ = type { i8* }

@UCL_USERDATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ucl_object_new_userdata(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ucl_object_userdata*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i64 48, i64* %8, align 8
  %9 = load i64, i64* %8, align 8
  %10 = call %struct.ucl_object_userdata* @UCL_ALLOC(i64 %9)
  store %struct.ucl_object_userdata* %10, %struct.ucl_object_userdata** %7, align 8
  %11 = load %struct.ucl_object_userdata*, %struct.ucl_object_userdata** %7, align 8
  %12 = icmp ne %struct.ucl_object_userdata* %11, null
  br i1 %12, label %13, label %43

13:                                               ; preds = %3
  %14 = load %struct.ucl_object_userdata*, %struct.ucl_object_userdata** %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @memset(%struct.ucl_object_userdata* %14, i32 0, i64 %15)
  %17 = load %struct.ucl_object_userdata*, %struct.ucl_object_userdata** %7, align 8
  %18 = getelementptr inbounds %struct.ucl_object_userdata, %struct.ucl_object_userdata* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load i32, i32* @UCL_USERDATA, align 4
  %21 = load %struct.ucl_object_userdata*, %struct.ucl_object_userdata** %7, align 8
  %22 = getelementptr inbounds %struct.ucl_object_userdata, %struct.ucl_object_userdata* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 4
  store i32 %20, i32* %23, align 8
  %24 = load %struct.ucl_object_userdata*, %struct.ucl_object_userdata** %7, align 8
  %25 = getelementptr inbounds %struct.ucl_object_userdata, %struct.ucl_object_userdata* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  store i32* null, i32** %26, align 8
  %27 = load %struct.ucl_object_userdata*, %struct.ucl_object_userdata** %7, align 8
  %28 = bitcast %struct.ucl_object_userdata* %27 to i32*
  %29 = load %struct.ucl_object_userdata*, %struct.ucl_object_userdata** %7, align 8
  %30 = getelementptr inbounds %struct.ucl_object_userdata, %struct.ucl_object_userdata* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  store i32* %28, i32** %31, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.ucl_object_userdata*, %struct.ucl_object_userdata** %7, align 8
  %34 = getelementptr inbounds %struct.ucl_object_userdata, %struct.ucl_object_userdata* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.ucl_object_userdata*, %struct.ucl_object_userdata** %7, align 8
  %37 = getelementptr inbounds %struct.ucl_object_userdata, %struct.ucl_object_userdata* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load %struct.ucl_object_userdata*, %struct.ucl_object_userdata** %7, align 8
  %40 = getelementptr inbounds %struct.ucl_object_userdata, %struct.ucl_object_userdata* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i8* %38, i8** %42, align 8
  br label %43

43:                                               ; preds = %13, %3
  %44 = load %struct.ucl_object_userdata*, %struct.ucl_object_userdata** %7, align 8
  %45 = bitcast %struct.ucl_object_userdata* %44 to i32*
  ret i32* %45
}

declare dso_local %struct.ucl_object_userdata* @UCL_ALLOC(i64) #1

declare dso_local i32 @memset(%struct.ucl_object_userdata*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
