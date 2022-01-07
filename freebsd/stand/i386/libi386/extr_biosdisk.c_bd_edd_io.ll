; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_biosdisk.c_bd_edd_io.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_biosdisk.c_bd_edd_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edd_packet = type { i32, i32, i32, i8*, i8* }
%struct.TYPE_5__ = type { i32, i32, i32, i8*, i8*, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@bd_edd_io.packet = internal global %struct.edd_packet zeroinitializer, align 8
@V86_FLAGS = common dso_local global i32 0, align 4
@v86 = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@BD_WR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32, %struct.edd_packet*, i32)* @bd_edd_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd_edd_io(%struct.TYPE_4__* %0, i32 %1, i32 %2, %struct.edd_packet* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.edd_packet*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.edd_packet* %3, %struct.edd_packet** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 32, i32* getelementptr inbounds (%struct.edd_packet, %struct.edd_packet* @bd_edd_io.packet, i32 0, i32 0), align 8
  %12 = load i32, i32* %9, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.edd_packet, %struct.edd_packet* @bd_edd_io.packet, i32 0, i32 1), align 4
  %13 = load %struct.edd_packet*, %struct.edd_packet** %10, align 8
  %14 = call i8* @VTOPOFF(%struct.edd_packet* %13)
  store i8* %14, i8** getelementptr inbounds (%struct.edd_packet, %struct.edd_packet* @bd_edd_io.packet, i32 0, i32 4), align 8
  %15 = load %struct.edd_packet*, %struct.edd_packet** %10, align 8
  %16 = call i8* @VTOPSEG(%struct.edd_packet* %15)
  store i8* %16, i8** getelementptr inbounds (%struct.edd_packet, %struct.edd_packet* @bd_edd_io.packet, i32 0, i32 3), align 8
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.edd_packet, %struct.edd_packet* @bd_edd_io.packet, i32 0, i32 2), align 8
  %18 = load i32, i32* @V86_FLAGS, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 6), align 4
  store i32 19, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 0), align 8
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @BD_WR, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 17152, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 1), align 4
  br label %24

23:                                               ; preds = %5
  store i32 16896, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 1), align 4
  br label %24

24:                                               ; preds = %23, %22
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 5), align 8
  %28 = call i8* @VTOPSEG(%struct.edd_packet* @bd_edd_io.packet)
  store i8* %28, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 4), align 8
  %29 = call i8* @VTOPOFF(%struct.edd_packet* @bd_edd_io.packet)
  store i8* %29, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 3), align 8
  %30 = call i32 (...) @v86int()
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 2), align 8
  %32 = call i64 @V86_CY(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @v86, i32 0, i32 1), align 4
  %36 = ashr i32 %35, 8
  store i32 %36, i32* %6, align 4
  br label %38

37:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %37, %34
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i8* @VTOPOFF(%struct.edd_packet*) #1

declare dso_local i8* @VTOPSEG(%struct.edd_packet*) #1

declare dso_local i32 @v86int(...) #1

declare dso_local i64 @V86_CY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
