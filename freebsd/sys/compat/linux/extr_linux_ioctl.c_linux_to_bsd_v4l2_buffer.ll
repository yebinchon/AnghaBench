; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ioctl.c_linux_to_bsd_v4l2_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ioctl.c_linux_to_bsd_v4l2_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l_v4l2_buffer = type { i64, i32, i32, i32, %struct.TYPE_8__, i32, i32, %struct.TYPE_6__, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.v4l2_buffer = type { i64, i32, i32, i32, %struct.TYPE_7__, i32, i32, %struct.TYPE_5__, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@V4L2_MEMORY_USERPTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l_v4l2_buffer*, %struct.v4l2_buffer*)* @linux_to_bsd_v4l2_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_to_bsd_v4l2_buffer(%struct.l_v4l2_buffer* %0, %struct.v4l2_buffer* %1) #0 {
  %3 = alloca %struct.l_v4l2_buffer*, align 8
  %4 = alloca %struct.v4l2_buffer*, align 8
  store %struct.l_v4l2_buffer* %0, %struct.l_v4l2_buffer** %3, align 8
  store %struct.v4l2_buffer* %1, %struct.v4l2_buffer** %4, align 8
  %5 = load %struct.l_v4l2_buffer*, %struct.l_v4l2_buffer** %3, align 8
  %6 = getelementptr inbounds %struct.l_v4l2_buffer, %struct.l_v4l2_buffer* %5, i32 0, i32 12
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %9 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %8, i32 0, i32 12
  store i32 %7, i32* %9, align 8
  %10 = load %struct.l_v4l2_buffer*, %struct.l_v4l2_buffer** %3, align 8
  %11 = getelementptr inbounds %struct.l_v4l2_buffer, %struct.l_v4l2_buffer* %10, i32 0, i32 11
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %14 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %13, i32 0, i32 11
  store i32 %12, i32* %14, align 4
  %15 = load %struct.l_v4l2_buffer*, %struct.l_v4l2_buffer** %3, align 8
  %16 = getelementptr inbounds %struct.l_v4l2_buffer, %struct.l_v4l2_buffer* %15, i32 0, i32 10
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %19 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %18, i32 0, i32 10
  store i32 %17, i32* %19, align 8
  %20 = load %struct.l_v4l2_buffer*, %struct.l_v4l2_buffer** %3, align 8
  %21 = getelementptr inbounds %struct.l_v4l2_buffer, %struct.l_v4l2_buffer* %20, i32 0, i32 9
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %24 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %23, i32 0, i32 9
  store i32 %22, i32* %24, align 4
  %25 = load %struct.l_v4l2_buffer*, %struct.l_v4l2_buffer** %3, align 8
  %26 = getelementptr inbounds %struct.l_v4l2_buffer, %struct.l_v4l2_buffer* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %29 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %28, i32 0, i32 8
  store i32 %27, i32* %29, align 8
  %30 = load %struct.l_v4l2_buffer*, %struct.l_v4l2_buffer** %3, align 8
  %31 = getelementptr inbounds %struct.l_v4l2_buffer, %struct.l_v4l2_buffer* %30, i32 0, i32 7
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %35 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %34, i32 0, i32 7
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load %struct.l_v4l2_buffer*, %struct.l_v4l2_buffer** %3, align 8
  %38 = getelementptr inbounds %struct.l_v4l2_buffer, %struct.l_v4l2_buffer* %37, i32 0, i32 7
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %42 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %41, i32 0, i32 7
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  %44 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %45 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %44, i32 0, i32 6
  %46 = load %struct.l_v4l2_buffer*, %struct.l_v4l2_buffer** %3, align 8
  %47 = getelementptr inbounds %struct.l_v4l2_buffer, %struct.l_v4l2_buffer* %46, i32 0, i32 6
  %48 = call i32 @memcpy(i32* %45, i32* %47, i32 4)
  %49 = load %struct.l_v4l2_buffer*, %struct.l_v4l2_buffer** %3, align 8
  %50 = getelementptr inbounds %struct.l_v4l2_buffer, %struct.l_v4l2_buffer* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %53 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 8
  %54 = load %struct.l_v4l2_buffer*, %struct.l_v4l2_buffer** %3, align 8
  %55 = getelementptr inbounds %struct.l_v4l2_buffer, %struct.l_v4l2_buffer* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %58 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load %struct.l_v4l2_buffer*, %struct.l_v4l2_buffer** %3, align 8
  %60 = getelementptr inbounds %struct.l_v4l2_buffer, %struct.l_v4l2_buffer* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @V4L2_MEMORY_USERPTR, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %2
  %65 = load %struct.l_v4l2_buffer*, %struct.l_v4l2_buffer** %3, align 8
  %66 = getelementptr inbounds %struct.l_v4l2_buffer, %struct.l_v4l2_buffer* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @PTRIN(i32 %68)
  %70 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %71 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  store i64 %69, i64* %72, align 8
  br label %81

73:                                               ; preds = %2
  %74 = load %struct.l_v4l2_buffer*, %struct.l_v4l2_buffer** %3, align 8
  %75 = getelementptr inbounds %struct.l_v4l2_buffer, %struct.l_v4l2_buffer* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %79 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 8
  br label %81

81:                                               ; preds = %73, %64
  %82 = load %struct.l_v4l2_buffer*, %struct.l_v4l2_buffer** %3, align 8
  %83 = getelementptr inbounds %struct.l_v4l2_buffer, %struct.l_v4l2_buffer* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %86 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 8
  %87 = load %struct.l_v4l2_buffer*, %struct.l_v4l2_buffer** %3, align 8
  %88 = getelementptr inbounds %struct.l_v4l2_buffer, %struct.l_v4l2_buffer* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %91 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 4
  %92 = load %struct.l_v4l2_buffer*, %struct.l_v4l2_buffer** %3, align 8
  %93 = getelementptr inbounds %struct.l_v4l2_buffer, %struct.l_v4l2_buffer* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %96 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 8
  ret i32 0
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @PTRIN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
