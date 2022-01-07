; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_interfaceiter.c_isc_interfaceiter_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_interfaceiter.c_isc_interfaceiter_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }

@ISC_R_SUCCESS = common dso_local global i64 0, align 8
@use_GAA_determined = common dso_local global i32 0, align 4
@use_GAA = common dso_local global i64 0, align 8
@ISC_R_NOMORE = common dso_local global i64 0, align 8
@ISC_R_IGNORE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @isc_interfaceiter_next(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %4 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %5 = call i32 @VALID_IFITER(%struct.TYPE_10__* %4)
  %6 = call i32 @REQUIRE(i32 %5)
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ISC_R_SUCCESS, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @REQUIRE(i32 %12)
  %14 = load i32, i32* @use_GAA_determined, align 4
  %15 = call i32 @REQUIRE(i32 %14)
  %16 = load i64, i64* @use_GAA, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %29, %18
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %21 = call i64 @internal_next_GAA(%struct.TYPE_10__* %20)
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* @ISC_R_NOMORE, align 8
  %23 = load i64, i64* %3, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %71

26:                                               ; preds = %19
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %28 = call i64 @internal_current_GAA(%struct.TYPE_10__* %27)
  store i64 %28, i64* %3, align 8
  br label %29

29:                                               ; preds = %26
  %30 = load i64, i64* @ISC_R_IGNORE, align 8
  %31 = load i64, i64* %3, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %19, label %33

33:                                               ; preds = %29
  br label %71

34:                                               ; preds = %1
  br label %35

35:                                               ; preds = %69, %34
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %37 = call i64 @internal_next(%struct.TYPE_10__* %36)
  store i64 %37, i64* %3, align 8
  %38 = load i64, i64* %3, align 8
  %39 = load i64, i64* @ISC_R_NOMORE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %35
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %43 = call i64 @internal_next6(%struct.TYPE_10__* %42)
  store i64 %43, i64* %3, align 8
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* @ISC_R_SUCCESS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %70

48:                                               ; preds = %41
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %50 = call i64 @internal_current6(%struct.TYPE_10__* %49)
  store i64 %50, i64* %3, align 8
  %51 = load i64, i64* %3, align 8
  %52 = load i64, i64* @ISC_R_IGNORE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %70

55:                                               ; preds = %48
  br label %62

56:                                               ; preds = %35
  %57 = load i64, i64* %3, align 8
  %58 = load i64, i64* @ISC_R_SUCCESS, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %70

61:                                               ; preds = %56
  br label %62

62:                                               ; preds = %61, %55
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %64 = call i64 @internal_current(%struct.TYPE_10__* %63)
  store i64 %64, i64* %3, align 8
  %65 = load i64, i64* %3, align 8
  %66 = load i64, i64* @ISC_R_IGNORE, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %70

69:                                               ; preds = %62
  br label %35

70:                                               ; preds = %68, %60, %54, %47
  br label %71

71:                                               ; preds = %70, %33, %25
  %72 = load i64, i64* %3, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load i64, i64* %3, align 8
  ret i64 %75
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @VALID_IFITER(%struct.TYPE_10__*) #1

declare dso_local i64 @internal_next_GAA(%struct.TYPE_10__*) #1

declare dso_local i64 @internal_current_GAA(%struct.TYPE_10__*) #1

declare dso_local i64 @internal_next(%struct.TYPE_10__*) #1

declare dso_local i64 @internal_next6(%struct.TYPE_10__*) #1

declare dso_local i64 @internal_current6(%struct.TYPE_10__*) #1

declare dso_local i64 @internal_current(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
