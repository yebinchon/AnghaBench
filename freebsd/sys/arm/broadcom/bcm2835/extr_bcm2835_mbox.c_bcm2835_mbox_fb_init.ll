; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_mbox.c_bcm2835_mbox_fb_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_mbox.c_bcm2835_mbox_fb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_fb_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.msg_fb_setup = type { %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_10__, i64, %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@BCM2835_MBOX_CODE_REQ = common dso_local global i32 0, align 4
@SET_PHYSICAL_W_H = common dso_local global i32 0, align 4
@SET_VIRTUAL_W_H = common dso_local global i32 0, align 4
@SET_VIRTUAL_OFFSET = common dso_local global i32 0, align 4
@SET_DEPTH = common dso_local global i32 0, align 4
@SET_ALPHA_MODE = common dso_local global i32 0, align 4
@BCM2835_MBOX_ALPHA_MODE_IGNORED = common dso_local global i32 0, align 4
@ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GET_PITCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcm2835_mbox_fb_init(%struct.bcm2835_fb_config* %0) #0 {
  %2 = alloca %struct.bcm2835_fb_config*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.msg_fb_setup, align 8
  store %struct.bcm2835_fb_config* %0, %struct.bcm2835_fb_config** %2, align 8
  %5 = call i32 @memset(%struct.msg_fb_setup* %4, i32 0, i32 408)
  %6 = getelementptr inbounds %struct.msg_fb_setup, %struct.msg_fb_setup* %4, i32 0, i32 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i32 408, i32* %7, align 8
  %8 = load i32, i32* @BCM2835_MBOX_CODE_REQ, align 4
  %9 = getelementptr inbounds %struct.msg_fb_setup, %struct.msg_fb_setup* %4, i32 0, i32 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = getelementptr inbounds %struct.msg_fb_setup, %struct.msg_fb_setup* %4, i32 0, i32 4
  %12 = load i32, i32* @SET_PHYSICAL_W_H, align 4
  %13 = call i32 @BCM2835_MBOX_INIT_TAG(%struct.TYPE_10__* %11, i32 %12)
  %14 = load %struct.bcm2835_fb_config*, %struct.bcm2835_fb_config** %2, align 8
  %15 = getelementptr inbounds %struct.bcm2835_fb_config, %struct.bcm2835_fb_config* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.msg_fb_setup, %struct.msg_fb_setup* %4, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 6
  store i32 %16, i32* %20, align 4
  %21 = load %struct.bcm2835_fb_config*, %struct.bcm2835_fb_config** %2, align 8
  %22 = getelementptr inbounds %struct.bcm2835_fb_config, %struct.bcm2835_fb_config* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.msg_fb_setup, %struct.msg_fb_setup* %4, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 5
  store i32 %23, i32* %27, align 4
  %28 = getelementptr inbounds %struct.msg_fb_setup, %struct.msg_fb_setup* %4, i32 0, i32 3
  %29 = load i32, i32* @SET_VIRTUAL_W_H, align 4
  %30 = call i32 @BCM2835_MBOX_INIT_TAG(%struct.TYPE_10__* %28, i32 %29)
  %31 = load %struct.bcm2835_fb_config*, %struct.bcm2835_fb_config** %2, align 8
  %32 = getelementptr inbounds %struct.bcm2835_fb_config, %struct.bcm2835_fb_config* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.msg_fb_setup, %struct.msg_fb_setup* %4, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 6
  store i32 %33, i32* %37, align 4
  %38 = load %struct.bcm2835_fb_config*, %struct.bcm2835_fb_config** %2, align 8
  %39 = getelementptr inbounds %struct.bcm2835_fb_config, %struct.bcm2835_fb_config* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.msg_fb_setup, %struct.msg_fb_setup* %4, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 5
  store i32 %40, i32* %44, align 4
  %45 = getelementptr inbounds %struct.msg_fb_setup, %struct.msg_fb_setup* %4, i32 0, i32 2
  %46 = load i32, i32* @SET_VIRTUAL_OFFSET, align 4
  %47 = call i32 @BCM2835_MBOX_INIT_TAG(%struct.TYPE_10__* %45, i32 %46)
  %48 = load %struct.bcm2835_fb_config*, %struct.bcm2835_fb_config** %2, align 8
  %49 = getelementptr inbounds %struct.bcm2835_fb_config, %struct.bcm2835_fb_config* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.msg_fb_setup, %struct.msg_fb_setup* %4, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 4
  store i32 %50, i32* %54, align 4
  %55 = load %struct.bcm2835_fb_config*, %struct.bcm2835_fb_config** %2, align 8
  %56 = getelementptr inbounds %struct.bcm2835_fb_config, %struct.bcm2835_fb_config* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.msg_fb_setup, %struct.msg_fb_setup* %4, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 3
  store i32 %57, i32* %61, align 4
  %62 = getelementptr inbounds %struct.msg_fb_setup, %struct.msg_fb_setup* %4, i32 0, i32 7
  %63 = load i32, i32* @SET_DEPTH, align 4
  %64 = call i32 @BCM2835_MBOX_INIT_TAG(%struct.TYPE_10__* %62, i32 %63)
  %65 = load %struct.bcm2835_fb_config*, %struct.bcm2835_fb_config** %2, align 8
  %66 = getelementptr inbounds %struct.bcm2835_fb_config, %struct.bcm2835_fb_config* %65, i32 0, i32 9
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.msg_fb_setup, %struct.msg_fb_setup* %4, i32 0, i32 7
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  store i32 %67, i32* %71, align 4
  %72 = getelementptr inbounds %struct.msg_fb_setup, %struct.msg_fb_setup* %4, i32 0, i32 6
  %73 = load i32, i32* @SET_ALPHA_MODE, align 4
  %74 = call i32 @BCM2835_MBOX_INIT_TAG(%struct.TYPE_10__* %72, i32 %73)
  %75 = load i32, i32* @BCM2835_MBOX_ALPHA_MODE_IGNORED, align 4
  %76 = getelementptr inbounds %struct.msg_fb_setup, %struct.msg_fb_setup* %4, i32 0, i32 6
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  store i32 %75, i32* %79, align 4
  %80 = getelementptr inbounds %struct.msg_fb_setup, %struct.msg_fb_setup* %4, i32 0, i32 0
  %81 = load i32, i32* @ALLOCATE_BUFFER, align 4
  %82 = call i32 @BCM2835_MBOX_INIT_TAG(%struct.TYPE_10__* %80, i32 %81)
  %83 = load i32, i32* @PAGE_SIZE, align 4
  %84 = getelementptr inbounds %struct.msg_fb_setup, %struct.msg_fb_setup* %4, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  store i32 %83, i32* %87, align 4
  %88 = getelementptr inbounds %struct.msg_fb_setup, %struct.msg_fb_setup* %4, i32 0, i32 1
  %89 = load i32, i32* @GET_PITCH, align 4
  %90 = call i32 @BCM2835_MBOX_INIT_TAG(%struct.TYPE_10__* %88, i32 %89)
  %91 = getelementptr inbounds %struct.msg_fb_setup, %struct.msg_fb_setup* %4, i32 0, i32 5
  store i64 0, i64* %91, align 8
  %92 = call i32 @bcm2835_mbox_property(%struct.msg_fb_setup* %4, i32 408)
  store i32 %92, i32* %3, align 4
  %93 = load i32, i32* %3, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %160

95:                                               ; preds = %1
  %96 = getelementptr inbounds %struct.msg_fb_setup, %struct.msg_fb_setup* %4, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.bcm2835_fb_config*, %struct.bcm2835_fb_config** %2, align 8
  %102 = getelementptr inbounds %struct.bcm2835_fb_config, %struct.bcm2835_fb_config* %101, i32 0, i32 8
  store i32 %100, i32* %102, align 4
  %103 = getelementptr inbounds %struct.msg_fb_setup, %struct.msg_fb_setup* %4, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.bcm2835_fb_config*, %struct.bcm2835_fb_config** %2, align 8
  %109 = getelementptr inbounds %struct.bcm2835_fb_config, %struct.bcm2835_fb_config* %108, i32 0, i32 7
  store i32 %107, i32* %109, align 4
  %110 = getelementptr inbounds %struct.msg_fb_setup, %struct.msg_fb_setup* %4, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.bcm2835_fb_config*, %struct.bcm2835_fb_config** %2, align 8
  %116 = getelementptr inbounds %struct.bcm2835_fb_config, %struct.bcm2835_fb_config* %115, i32 0, i32 6
  store i32 %114, i32* %116, align 4
  %117 = getelementptr inbounds %struct.msg_fb_setup, %struct.msg_fb_setup* %4, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.bcm2835_fb_config*, %struct.bcm2835_fb_config** %2, align 8
  %123 = getelementptr inbounds %struct.bcm2835_fb_config, %struct.bcm2835_fb_config* %122, i32 0, i32 5
  store i32 %121, i32* %123, align 4
  %124 = getelementptr inbounds %struct.msg_fb_setup, %struct.msg_fb_setup* %4, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.bcm2835_fb_config*, %struct.bcm2835_fb_config** %2, align 8
  %130 = getelementptr inbounds %struct.bcm2835_fb_config, %struct.bcm2835_fb_config* %129, i32 0, i32 4
  store i32 %128, i32* %130, align 4
  %131 = getelementptr inbounds %struct.msg_fb_setup, %struct.msg_fb_setup* %4, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.bcm2835_fb_config*, %struct.bcm2835_fb_config** %2, align 8
  %137 = getelementptr inbounds %struct.bcm2835_fb_config, %struct.bcm2835_fb_config* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 4
  %138 = getelementptr inbounds %struct.msg_fb_setup, %struct.msg_fb_setup* %4, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.bcm2835_fb_config*, %struct.bcm2835_fb_config** %2, align 8
  %144 = getelementptr inbounds %struct.bcm2835_fb_config, %struct.bcm2835_fb_config* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 4
  %145 = getelementptr inbounds %struct.msg_fb_setup, %struct.msg_fb_setup* %4, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @VCBUS_TO_PHYS(i32 %149)
  %151 = load %struct.bcm2835_fb_config*, %struct.bcm2835_fb_config** %2, align 8
  %152 = getelementptr inbounds %struct.bcm2835_fb_config, %struct.bcm2835_fb_config* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  %153 = getelementptr inbounds %struct.msg_fb_setup, %struct.msg_fb_setup* %4, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.bcm2835_fb_config*, %struct.bcm2835_fb_config** %2, align 8
  %159 = getelementptr inbounds %struct.bcm2835_fb_config, %struct.bcm2835_fb_config* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 4
  br label %160

160:                                              ; preds = %95, %1
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32 @memset(%struct.msg_fb_setup*, i32, i32) #1

declare dso_local i32 @BCM2835_MBOX_INIT_TAG(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @bcm2835_mbox_property(%struct.msg_fb_setup*, i32) #1

declare dso_local i32 @VCBUS_TO_PHYS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
