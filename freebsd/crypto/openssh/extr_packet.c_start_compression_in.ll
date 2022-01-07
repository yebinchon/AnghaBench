; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_start_compression_in.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_start_compression_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssh*)* @start_compression_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_compression_in(%struct.ssh* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ssh*, align 8
  store %struct.ssh* %0, %struct.ssh** %3, align 8
  %4 = load %struct.ssh*, %struct.ssh** %3, align 8
  %5 = getelementptr inbounds %struct.ssh, %struct.ssh* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.ssh*, %struct.ssh** %3, align 8
  %12 = getelementptr inbounds %struct.ssh, %struct.ssh* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = call i32 @inflateEnd(i32* %14)
  br label %16

16:                                               ; preds = %10, %1
  %17 = load %struct.ssh*, %struct.ssh** %3, align 8
  %18 = getelementptr inbounds %struct.ssh, %struct.ssh* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = call i32 @inflateInit(i32* %20)
  switch i32 %21, label %29 [
    i32 128, label %22
    i32 129, label %27
  ]

22:                                               ; preds = %16
  %23 = load %struct.ssh*, %struct.ssh** %3, align 8
  %24 = getelementptr inbounds %struct.ssh, %struct.ssh* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  br label %31

27:                                               ; preds = %16
  %28 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %28, i32* %2, align 4
  br label %32

29:                                               ; preds = %16
  %30 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %30, i32* %2, align 4
  br label %32

31:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %29, %27
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @inflateEnd(i32*) #1

declare dso_local i32 @inflateInit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
