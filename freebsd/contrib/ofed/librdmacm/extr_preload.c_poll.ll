; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_preload.c_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_preload.c_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.pollfd*, i32, i32)* }
%struct.pollfd = type { i64, i32, i32 }

@fd_rsocket = common dso_local global i64 0, align 8
@real = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @poll(%struct.pollfd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pollfd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pollfd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pollfd* %0, %struct.pollfd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = call i32 (...) @init_preload()
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %28, %3
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %12
  %17 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %17, i64 %19
  %21 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @fd_gett(i32 %22)
  %24 = load i64, i64* @fd_rsocket, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %37

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %9, align 4
  br label %12

31:                                               ; preds = %12
  %32 = load i32 (%struct.pollfd*, i32, i32)*, i32 (%struct.pollfd*, i32, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @real, i32 0, i32 0), align 8
  %33 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 %32(%struct.pollfd* %33, i32 %34, i32 %35)
  store i32 %36, i32* %4, align 4
  br label %108

37:                                               ; preds = %26
  %38 = load i32, i32* %6, align 4
  %39 = call %struct.pollfd* @fds_alloc(i32 %38)
  store %struct.pollfd* %39, %struct.pollfd** %8, align 8
  %40 = load %struct.pollfd*, %struct.pollfd** %8, align 8
  %41 = icmp ne %struct.pollfd* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = call i32 @ERR(i32 %43)
  store i32 %44, i32* %4, align 4
  br label %108

45:                                               ; preds = %37
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %79, %45
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %82

50:                                               ; preds = %46
  %51 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %51, i64 %53
  %55 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @fd_getd(i32 %56)
  %58 = load %struct.pollfd*, %struct.pollfd** %8, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %58, i64 %60
  %62 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %61, i32 0, i32 2
  store i32 %57, i32* %62, align 4
  %63 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %63, i64 %65
  %67 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.pollfd*, %struct.pollfd** %8, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %69, i64 %71
  %73 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %72, i32 0, i32 1
  store i32 %68, i32* %73, align 8
  %74 = load %struct.pollfd*, %struct.pollfd** %8, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %74, i64 %76
  %78 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %77, i32 0, i32 0
  store i64 0, i64* %78, align 8
  br label %79

79:                                               ; preds = %50
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %46

82:                                               ; preds = %46
  %83 = load %struct.pollfd*, %struct.pollfd** %8, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @rpoll(%struct.pollfd* %83, i32 %84, i32 %85)
  store i32 %86, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %87

87:                                               ; preds = %103, %82
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %106

91:                                               ; preds = %87
  %92 = load %struct.pollfd*, %struct.pollfd** %8, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %92, i64 %94
  %96 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %98, i64 %100
  %102 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %101, i32 0, i32 0
  store i64 %97, i64* %102, align 8
  br label %103

103:                                              ; preds = %91
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %9, align 4
  br label %87

106:                                              ; preds = %87
  %107 = load i32, i32* %10, align 4
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %106, %42, %31
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @init_preload(...) #1

declare dso_local i64 @fd_gett(i32) #1

declare dso_local %struct.pollfd* @fds_alloc(i32) #1

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @fd_getd(i32) #1

declare dso_local i32 @rpoll(%struct.pollfd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
