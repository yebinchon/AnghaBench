; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_device_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_device_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { %struct.TYPE_3__*, %struct.p2p_device*, %struct.p2p_device*, %struct.p2p_device*, %struct.p2p_device* }
%struct.TYPE_3__ = type { i32, i32 (i32, i32)* }
%struct.p2p_device = type { i32, %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i32*, i32*, i32*, i32**, i32 }

@P2P_DEV_REPORTED_ONCE = common dso_local global i32 0, align 4
@P2P_MAX_WPS_VENDOR_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p2p_data*, %struct.p2p_device*)* @p2p_device_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p2p_device_free(%struct.p2p_data* %0, %struct.p2p_device* %1) #0 {
  %3 = alloca %struct.p2p_data*, align 8
  %4 = alloca %struct.p2p_device*, align 8
  %5 = alloca i32, align 4
  store %struct.p2p_data* %0, %struct.p2p_data** %3, align 8
  store %struct.p2p_device* %1, %struct.p2p_device** %4, align 8
  %6 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %7 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %6, i32 0, i32 4
  %8 = load %struct.p2p_device*, %struct.p2p_device** %7, align 8
  %9 = load %struct.p2p_device*, %struct.p2p_device** %4, align 8
  %10 = icmp eq %struct.p2p_device* %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %13 = call i32 @p2p_go_neg_failed(%struct.p2p_data* %12, i32 -1)
  br label %14

14:                                               ; preds = %11, %2
  %15 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %16 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %15, i32 0, i32 3
  %17 = load %struct.p2p_device*, %struct.p2p_device** %16, align 8
  %18 = load %struct.p2p_device*, %struct.p2p_device** %4, align 8
  %19 = icmp eq %struct.p2p_device* %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %22 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %21, i32 0, i32 3
  store %struct.p2p_device* null, %struct.p2p_device** %22, align 8
  br label %23

23:                                               ; preds = %20, %14
  %24 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %25 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %24, i32 0, i32 2
  %26 = load %struct.p2p_device*, %struct.p2p_device** %25, align 8
  %27 = load %struct.p2p_device*, %struct.p2p_device** %4, align 8
  %28 = icmp eq %struct.p2p_device* %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %31 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %30, i32 0, i32 2
  store %struct.p2p_device* null, %struct.p2p_device** %31, align 8
  br label %32

32:                                               ; preds = %29, %23
  %33 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %34 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %33, i32 0, i32 1
  %35 = load %struct.p2p_device*, %struct.p2p_device** %34, align 8
  %36 = load %struct.p2p_device*, %struct.p2p_device** %4, align 8
  %37 = icmp eq %struct.p2p_device* %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %40 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %39, i32 0, i32 1
  store %struct.p2p_device* null, %struct.p2p_device** %40, align 8
  br label %41

41:                                               ; preds = %38, %32
  %42 = load %struct.p2p_device*, %struct.p2p_device** %4, align 8
  %43 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @P2P_DEV_REPORTED_ONCE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %41
  %49 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %50 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32 (i32, i32)*, i32 (i32, i32)** %52, align 8
  %54 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %55 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.p2p_device*, %struct.p2p_device** %4, align 8
  %60 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = call i32 %53(i32 %58, i32 %62)
  br label %64

64:                                               ; preds = %48, %41
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %86, %64
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @P2P_MAX_WPS_VENDOR_EXT, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %89

69:                                               ; preds = %65
  %70 = load %struct.p2p_device*, %struct.p2p_device** %4, align 8
  %71 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 3
  %73 = load i32**, i32*** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32*, i32** %73, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @wpabuf_free(i32* %77)
  %79 = load %struct.p2p_device*, %struct.p2p_device** %4, align 8
  %80 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 3
  %82 = load i32**, i32*** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32*, i32** %82, i64 %84
  store i32* null, i32** %85, align 8
  br label %86

86:                                               ; preds = %69
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  br label %65

89:                                               ; preds = %65
  %90 = load %struct.p2p_device*, %struct.p2p_device** %4, align 8
  %91 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @wpabuf_free(i32* %93)
  %95 = load %struct.p2p_device*, %struct.p2p_device** %4, align 8
  %96 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @wpabuf_free(i32* %98)
  %100 = load %struct.p2p_device*, %struct.p2p_device** %4, align 8
  %101 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @wpabuf_free(i32* %102)
  %104 = load %struct.p2p_device*, %struct.p2p_device** %4, align 8
  %105 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @wpabuf_free(i32* %107)
  %109 = load %struct.p2p_device*, %struct.p2p_device** %4, align 8
  %110 = call i32 @os_free(%struct.p2p_device* %109)
  ret void
}

declare dso_local i32 @p2p_go_neg_failed(%struct.p2p_data*, i32) #1

declare dso_local i32 @wpabuf_free(i32*) #1

declare dso_local i32 @os_free(%struct.p2p_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
