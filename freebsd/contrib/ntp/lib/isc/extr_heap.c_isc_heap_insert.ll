; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_heap.c_isc_heap_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_heap.c_isc_heap_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@ISC_R_NOMEMORY = common dso_local global i32 0, align 4
@ISC_R_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isc_heap_insert(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = call i32 @VALID_HEAP(%struct.TYPE_6__* %7)
  %9 = call i32 @REQUIRE(i32 %8)
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ugt i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @RUNTIME_CHECK(i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp uge i32 %18, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = call i32 @resize(%struct.TYPE_6__* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @ISC_R_NOMEMORY, align 4
  store i32 %28, i32* %3, align 4
  br label %38

29:                                               ; preds = %23, %2
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @float_up(%struct.TYPE_6__* %33, i32 %34, i8* %35)
  %37 = load i32, i32* @ISC_R_SUCCESS, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %29, %27
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @VALID_HEAP(%struct.TYPE_6__*) #1

declare dso_local i32 @RUNTIME_CHECK(i32) #1

declare dso_local i32 @resize(%struct.TYPE_6__*) #1

declare dso_local i32 @float_up(%struct.TYPE_6__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
