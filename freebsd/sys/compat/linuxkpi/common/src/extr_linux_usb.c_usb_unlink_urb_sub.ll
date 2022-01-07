; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_usb.c_usb_unlink_urb_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_usb.c_usb_unlink_urb_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i64, i32, i32 (%struct.urb*)*, %struct.TYPE_4__*, i64, i32, %struct.TYPE_3__, %struct.usb_host_endpoint* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32* }
%struct.usb_host_endpoint = type { i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@Giant = common dso_local global i32 0, align 4
@bsd_urb_list = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urb*, i32)* @usb_unlink_urb_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_unlink_urb_sub(%struct.urb* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_host_endpoint*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.urb*, %struct.urb** %4, align 8
  %11 = icmp eq %struct.urb* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %125

15:                                               ; preds = %2
  %16 = call i64 @mtx_owned(i32* @Giant)
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 0, i32 1
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = call i32 @mtx_lock(i32* @Giant)
  br label %24

24:                                               ; preds = %22, %15
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load %struct.urb*, %struct.urb** %4, align 8
  %29 = getelementptr inbounds %struct.urb, %struct.urb* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %27, %24
  %33 = load %struct.urb*, %struct.urb** %4, align 8
  %34 = getelementptr inbounds %struct.urb, %struct.urb* %33, i32 0, i32 7
  %35 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %34, align 8
  %36 = icmp eq %struct.usb_host_endpoint* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %9, align 4
  br label %110

40:                                               ; preds = %32
  %41 = load %struct.urb*, %struct.urb** %4, align 8
  %42 = getelementptr inbounds %struct.urb, %struct.urb* %41, i32 0, i32 7
  %43 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %42, align 8
  store %struct.usb_host_endpoint* %43, %struct.usb_host_endpoint** %6, align 8
  %44 = load %struct.urb*, %struct.urb** %4, align 8
  %45 = getelementptr inbounds %struct.urb, %struct.urb* %44, i32 0, i32 6
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %92

49:                                               ; preds = %40
  %50 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %51 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %50, i32 0, i32 1
  %52 = load %struct.urb*, %struct.urb** %4, align 8
  %53 = load i32, i32* @bsd_urb_list, align 4
  %54 = call i32 @TAILQ_REMOVE(i32* %51, %struct.urb* %52, i32 %53)
  %55 = load %struct.urb*, %struct.urb** %4, align 8
  %56 = getelementptr inbounds %struct.urb, %struct.urb* %55, i32 0, i32 6
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32* null, i32** %57, align 8
  %58 = load i32, i32* @ECONNRESET, align 4
  %59 = sub nsw i32 0, %58
  %60 = load %struct.urb*, %struct.urb** %4, align 8
  %61 = getelementptr inbounds %struct.urb, %struct.urb* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 8
  %62 = load %struct.urb*, %struct.urb** %4, align 8
  %63 = getelementptr inbounds %struct.urb, %struct.urb* %62, i32 0, i32 4
  store i64 0, i64* %63, align 8
  store i64 0, i64* %7, align 8
  br label %64

64:                                               ; preds = %77, %49
  %65 = load i64, i64* %7, align 8
  %66 = load %struct.urb*, %struct.urb** %4, align 8
  %67 = getelementptr inbounds %struct.urb, %struct.urb* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ult i64 %65, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %64
  %71 = load %struct.urb*, %struct.urb** %4, align 8
  %72 = getelementptr inbounds %struct.urb, %struct.urb* %71, i32 0, i32 3
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i64, i64* %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  br label %77

77:                                               ; preds = %70
  %78 = load i64, i64* %7, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %7, align 8
  br label %64

80:                                               ; preds = %64
  %81 = load %struct.urb*, %struct.urb** %4, align 8
  %82 = getelementptr inbounds %struct.urb, %struct.urb* %81, i32 0, i32 2
  %83 = load i32 (%struct.urb*)*, i32 (%struct.urb*)** %82, align 8
  %84 = icmp ne i32 (%struct.urb*)* %83, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load %struct.urb*, %struct.urb** %4, align 8
  %87 = getelementptr inbounds %struct.urb, %struct.urb* %86, i32 0, i32 2
  %88 = load i32 (%struct.urb*)*, i32 (%struct.urb*)** %87, align 8
  %89 = load %struct.urb*, %struct.urb** %4, align 8
  %90 = call i32 %88(%struct.urb* %89)
  br label %91

91:                                               ; preds = %85, %80
  br label %109

92:                                               ; preds = %40
  %93 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %94 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.urb*, %struct.urb** %4, align 8
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @usb_unlink_bsd(i32 %97, %struct.urb* %98, i32 %99)
  %101 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %102 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.urb*, %struct.urb** %4, align 8
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @usb_unlink_bsd(i32 %105, %struct.urb* %106, i32 %107)
  br label %109

109:                                              ; preds = %92, %91
  store i32 0, i32* %9, align 4
  br label %110

110:                                              ; preds = %109, %37
  %111 = load i32, i32* %5, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  %114 = load %struct.urb*, %struct.urb** %4, align 8
  %115 = getelementptr inbounds %struct.urb, %struct.urb* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %115, align 8
  br label %118

118:                                              ; preds = %113, %110
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = call i32 @mtx_unlock(i32* @Giant)
  br label %123

123:                                              ; preds = %121, %118
  %124 = load i32, i32* %9, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %123, %12
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i64 @mtx_owned(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.urb*, i32) #1

declare dso_local i32 @usb_unlink_bsd(i32, %struct.urb*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
