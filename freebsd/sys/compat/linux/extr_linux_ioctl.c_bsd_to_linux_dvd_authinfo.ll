; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ioctl.c_bsd_to_linux_dvd_authinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ioctl.c_bsd_to_linux_dvd_authinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvd_authinfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@LINUX_DVD_AUTH_ESTABLISHED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvd_authinfo*, %struct.TYPE_15__*)* @bsd_to_linux_dvd_authinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bsd_to_linux_dvd_authinfo(%struct.dvd_authinfo* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvd_authinfo*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  store %struct.dvd_authinfo* %0, %struct.dvd_authinfo** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %6 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %108 [
    i32 133, label %9
    i32 137, label %16
    i32 130, label %19
    i32 131, label %28
    i32 136, label %37
    i32 128, label %41
    i32 132, label %68
    i32 134, label %75
    i32 129, label %76
    i32 135, label %107
  ]

9:                                                ; preds = %2
  %10 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %4, align 8
  %11 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %10, i32 0, i32 10
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 6
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 4
  br label %110

16:                                               ; preds = %2
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  store i32 130, i32* %18, align 4
  br label %110

19:                                               ; preds = %2
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %4, align 8
  %25 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @memcpy(i32 %23, i32 %26, i32 4)
  br label %110

28:                                               ; preds = %2
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %4, align 8
  %34 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %33, i32 0, i32 9
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @memcpy(i32 %32, i32 %35, i32 4)
  br label %110

37:                                               ; preds = %2
  %38 = load i32, i32* @LINUX_DVD_AUTH_ESTABLISHED, align 4
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %110

41:                                               ; preds = %2
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %4, align 8
  %47 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %46, i32 0, i32 9
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @memcpy(i32 %45, i32 %48, i32 4)
  %50 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %4, align 8
  %51 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %50, i32 0, i32 8
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 2
  store i32 %52, i32* %55, align 4
  %56 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %4, align 8
  %57 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %4, align 8
  %63 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 4
  br label %110

68:                                               ; preds = %2
  %69 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %4, align 8
  %70 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 4
  br label %110

75:                                               ; preds = %2
  br label %110

76:                                               ; preds = %2
  %77 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %4, align 8
  %78 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 4
  store i32 %79, i32* %82, align 4
  %83 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %4, align 8
  %84 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 3
  store i32 %85, i32* %88, align 4
  %89 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %4, align 8
  %90 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 2
  store i32 %91, i32* %94, align 4
  %95 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %4, align 8
  %96 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 1
  store i32 %97, i32* %100, align 4
  %101 = load %struct.dvd_authinfo*, %struct.dvd_authinfo** %4, align 8
  %102 = getelementptr inbounds %struct.dvd_authinfo, %struct.dvd_authinfo* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 4
  br label %110

107:                                              ; preds = %2
  br label %110

108:                                              ; preds = %2
  %109 = load i32, i32* @EINVAL, align 4
  store i32 %109, i32* %3, align 4
  br label %111

110:                                              ; preds = %107, %76, %75, %68, %41, %37, %28, %19, %16, %9
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %110, %108
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
