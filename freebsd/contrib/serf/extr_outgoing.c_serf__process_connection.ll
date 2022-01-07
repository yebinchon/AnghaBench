; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/extr_outgoing.c_serf__process_connection.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/extr_outgoing.c_serf__process_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, %struct.TYPE_7__*, i32, i32, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_7__* }

@APR_POLLIN = common dso_local global i32 0, align 4
@APR_SUCCESS = common dso_local global i32 0, align 4
@APR_POLLHUP = common dso_local global i32 0, align 4
@SERF_ERROR_ABORTED_CONNECTION = common dso_local global i32 0, align 4
@APR_POLLERR = common dso_local global i32 0, align 4
@APR_EGENERAL = common dso_local global i32 0, align 4
@APR_POLLOUT = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @serf__process_connection(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @APR_POLLIN, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = call i32 @read_from_connection(%struct.TYPE_8__* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @APR_SUCCESS, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %78

18:                                               ; preds = %11
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @APR_POLLHUP, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @APR_SUCCESS, align 4
  store i32 %26, i32* %3, align 4
  br label %78

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27, %2
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @APR_POLLHUP, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = call i32 @reset_connection(%struct.TYPE_8__* %39, i32 1)
  store i32 %40, i32* %3, align 4
  br label %78

41:                                               ; preds = %33
  %42 = load i32, i32* @SERF_ERROR_ABORTED_CONNECTION, align 4
  store i32 %42, i32* %3, align 4
  br label %78

43:                                               ; preds = %28
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @APR_POLLERR, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %43
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %60 = call i32 @reset_connection(%struct.TYPE_8__* %59, i32 1)
  store i32 %60, i32* %3, align 4
  br label %78

61:                                               ; preds = %53, %48
  %62 = load i32, i32* @APR_EGENERAL, align 4
  store i32 %62, i32* %3, align 4
  br label %78

63:                                               ; preds = %43
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @APR_POLLOUT, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %70 = call i32 @write_to_connection(%struct.TYPE_8__* %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* @APR_SUCCESS, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %3, align 4
  br label %78

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75, %63
  %77 = load i32, i32* @APR_SUCCESS, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %73, %61, %58, %41, %38, %25, %16
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @read_from_connection(%struct.TYPE_8__*) #1

declare dso_local i32 @reset_connection(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @write_to_connection(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
