; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dispatch.c_add_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dispatch.c_add_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeout = type { void (i8*)*, i8*, i64, %struct.timeout* }

@timeouts = common dso_local global %struct.timeout* null, align 8
@free_timeouts = common dso_local global %struct.timeout* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"Can't allocate timeout structure!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_timeout(i64 %0, void (i8*)* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca void (i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.timeout*, align 8
  %8 = alloca %struct.timeout*, align 8
  store i64 %0, i64* %4, align 8
  store void (i8*)* %1, void (i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  store %struct.timeout* null, %struct.timeout** %7, align 8
  %9 = load %struct.timeout*, %struct.timeout** @timeouts, align 8
  store %struct.timeout* %9, %struct.timeout** %8, align 8
  br label %10

10:                                               ; preds = %41, %3
  %11 = load %struct.timeout*, %struct.timeout** %8, align 8
  %12 = icmp ne %struct.timeout* %11, null
  br i1 %12, label %13, label %45

13:                                               ; preds = %10
  %14 = load %struct.timeout*, %struct.timeout** %8, align 8
  %15 = getelementptr inbounds %struct.timeout, %struct.timeout* %14, i32 0, i32 0
  %16 = load void (i8*)*, void (i8*)** %15, align 8
  %17 = load void (i8*)*, void (i8*)** %5, align 8
  %18 = icmp eq void (i8*)* %16, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %13
  %20 = load %struct.timeout*, %struct.timeout** %8, align 8
  %21 = getelementptr inbounds %struct.timeout, %struct.timeout* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = icmp eq i8* %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %19
  %26 = load %struct.timeout*, %struct.timeout** %7, align 8
  %27 = icmp ne %struct.timeout* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load %struct.timeout*, %struct.timeout** %8, align 8
  %30 = getelementptr inbounds %struct.timeout, %struct.timeout* %29, i32 0, i32 3
  %31 = load %struct.timeout*, %struct.timeout** %30, align 8
  %32 = load %struct.timeout*, %struct.timeout** %7, align 8
  %33 = getelementptr inbounds %struct.timeout, %struct.timeout* %32, i32 0, i32 3
  store %struct.timeout* %31, %struct.timeout** %33, align 8
  br label %38

34:                                               ; preds = %25
  %35 = load %struct.timeout*, %struct.timeout** %8, align 8
  %36 = getelementptr inbounds %struct.timeout, %struct.timeout* %35, i32 0, i32 3
  %37 = load %struct.timeout*, %struct.timeout** %36, align 8
  store %struct.timeout* %37, %struct.timeout** @timeouts, align 8
  br label %38

38:                                               ; preds = %34, %28
  br label %45

39:                                               ; preds = %19, %13
  %40 = load %struct.timeout*, %struct.timeout** %8, align 8
  store %struct.timeout* %40, %struct.timeout** %7, align 8
  br label %41

41:                                               ; preds = %39
  %42 = load %struct.timeout*, %struct.timeout** %8, align 8
  %43 = getelementptr inbounds %struct.timeout, %struct.timeout* %42, i32 0, i32 3
  %44 = load %struct.timeout*, %struct.timeout** %43, align 8
  store %struct.timeout* %44, %struct.timeout** %8, align 8
  br label %10

45:                                               ; preds = %38, %10
  %46 = load %struct.timeout*, %struct.timeout** %8, align 8
  %47 = icmp ne %struct.timeout* %46, null
  br i1 %47, label %76, label %48

48:                                               ; preds = %45
  %49 = load %struct.timeout*, %struct.timeout** @free_timeouts, align 8
  %50 = icmp ne %struct.timeout* %49, null
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = load %struct.timeout*, %struct.timeout** @free_timeouts, align 8
  store %struct.timeout* %52, %struct.timeout** %8, align 8
  %53 = load %struct.timeout*, %struct.timeout** %8, align 8
  %54 = getelementptr inbounds %struct.timeout, %struct.timeout* %53, i32 0, i32 3
  %55 = load %struct.timeout*, %struct.timeout** %54, align 8
  store %struct.timeout* %55, %struct.timeout** @free_timeouts, align 8
  %56 = load void (i8*)*, void (i8*)** %5, align 8
  %57 = load %struct.timeout*, %struct.timeout** %8, align 8
  %58 = getelementptr inbounds %struct.timeout, %struct.timeout* %57, i32 0, i32 0
  store void (i8*)* %56, void (i8*)** %58, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load %struct.timeout*, %struct.timeout** %8, align 8
  %61 = getelementptr inbounds %struct.timeout, %struct.timeout* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  br label %75

62:                                               ; preds = %48
  %63 = call %struct.timeout* @malloc(i32 32)
  store %struct.timeout* %63, %struct.timeout** %8, align 8
  %64 = load %struct.timeout*, %struct.timeout** %8, align 8
  %65 = icmp ne %struct.timeout* %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = call i32 @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %62
  %69 = load void (i8*)*, void (i8*)** %5, align 8
  %70 = load %struct.timeout*, %struct.timeout** %8, align 8
  %71 = getelementptr inbounds %struct.timeout, %struct.timeout* %70, i32 0, i32 0
  store void (i8*)* %69, void (i8*)** %71, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = load %struct.timeout*, %struct.timeout** %8, align 8
  %74 = getelementptr inbounds %struct.timeout, %struct.timeout* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  br label %75

75:                                               ; preds = %68, %51
  br label %76

76:                                               ; preds = %75, %45
  %77 = load i64, i64* %4, align 8
  %78 = load %struct.timeout*, %struct.timeout** %8, align 8
  %79 = getelementptr inbounds %struct.timeout, %struct.timeout* %78, i32 0, i32 2
  store i64 %77, i64* %79, align 8
  %80 = load %struct.timeout*, %struct.timeout** @timeouts, align 8
  %81 = icmp ne %struct.timeout* %80, null
  br i1 %81, label %82, label %90

82:                                               ; preds = %76
  %83 = load %struct.timeout*, %struct.timeout** @timeouts, align 8
  %84 = getelementptr inbounds %struct.timeout, %struct.timeout* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.timeout*, %struct.timeout** %8, align 8
  %87 = getelementptr inbounds %struct.timeout, %struct.timeout* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp sgt i64 %85, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %82, %76
  %91 = load %struct.timeout*, %struct.timeout** @timeouts, align 8
  %92 = load %struct.timeout*, %struct.timeout** %8, align 8
  %93 = getelementptr inbounds %struct.timeout, %struct.timeout* %92, i32 0, i32 3
  store %struct.timeout* %91, %struct.timeout** %93, align 8
  %94 = load %struct.timeout*, %struct.timeout** %8, align 8
  store %struct.timeout* %94, %struct.timeout** @timeouts, align 8
  br label %132

95:                                               ; preds = %82
  %96 = load %struct.timeout*, %struct.timeout** @timeouts, align 8
  store %struct.timeout* %96, %struct.timeout** %7, align 8
  br label %97

97:                                               ; preds = %122, %95
  %98 = load %struct.timeout*, %struct.timeout** %7, align 8
  %99 = getelementptr inbounds %struct.timeout, %struct.timeout* %98, i32 0, i32 3
  %100 = load %struct.timeout*, %struct.timeout** %99, align 8
  %101 = icmp ne %struct.timeout* %100, null
  br i1 %101, label %102, label %126

102:                                              ; preds = %97
  %103 = load %struct.timeout*, %struct.timeout** %7, align 8
  %104 = getelementptr inbounds %struct.timeout, %struct.timeout* %103, i32 0, i32 3
  %105 = load %struct.timeout*, %struct.timeout** %104, align 8
  %106 = getelementptr inbounds %struct.timeout, %struct.timeout* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.timeout*, %struct.timeout** %8, align 8
  %109 = getelementptr inbounds %struct.timeout, %struct.timeout* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp sgt i64 %107, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %102
  %113 = load %struct.timeout*, %struct.timeout** %7, align 8
  %114 = getelementptr inbounds %struct.timeout, %struct.timeout* %113, i32 0, i32 3
  %115 = load %struct.timeout*, %struct.timeout** %114, align 8
  %116 = load %struct.timeout*, %struct.timeout** %8, align 8
  %117 = getelementptr inbounds %struct.timeout, %struct.timeout* %116, i32 0, i32 3
  store %struct.timeout* %115, %struct.timeout** %117, align 8
  %118 = load %struct.timeout*, %struct.timeout** %8, align 8
  %119 = load %struct.timeout*, %struct.timeout** %7, align 8
  %120 = getelementptr inbounds %struct.timeout, %struct.timeout* %119, i32 0, i32 3
  store %struct.timeout* %118, %struct.timeout** %120, align 8
  br label %132

121:                                              ; preds = %102
  br label %122

122:                                              ; preds = %121
  %123 = load %struct.timeout*, %struct.timeout** %7, align 8
  %124 = getelementptr inbounds %struct.timeout, %struct.timeout* %123, i32 0, i32 3
  %125 = load %struct.timeout*, %struct.timeout** %124, align 8
  store %struct.timeout* %125, %struct.timeout** %7, align 8
  br label %97

126:                                              ; preds = %97
  %127 = load %struct.timeout*, %struct.timeout** %8, align 8
  %128 = load %struct.timeout*, %struct.timeout** %7, align 8
  %129 = getelementptr inbounds %struct.timeout, %struct.timeout* %128, i32 0, i32 3
  store %struct.timeout* %127, %struct.timeout** %129, align 8
  %130 = load %struct.timeout*, %struct.timeout** %8, align 8
  %131 = getelementptr inbounds %struct.timeout, %struct.timeout* %130, i32 0, i32 3
  store %struct.timeout* null, %struct.timeout** %131, align 8
  br label %132

132:                                              ; preds = %126, %112, %90
  ret void
}

declare dso_local %struct.timeout* @malloc(i32) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
