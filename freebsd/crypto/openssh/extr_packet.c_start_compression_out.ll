; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_start_compression_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_start_compression_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Enabling compression at level %d.\00", align 1
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssh*, i32)* @start_compression_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_compression_out(%struct.ssh* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssh*, align 8
  %5 = alloca i32, align 4
  store %struct.ssh* %0, %struct.ssh** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp slt i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp sgt i32 %9, 9
  br i1 %10, label %11, label %13

11:                                               ; preds = %8, %2
  %12 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %12, i32* %3, align 4
  br label %45

13:                                               ; preds = %8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.ssh*, %struct.ssh** %4, align 8
  %17 = getelementptr inbounds %struct.ssh, %struct.ssh* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %28

22:                                               ; preds = %13
  %23 = load %struct.ssh*, %struct.ssh** %4, align 8
  %24 = getelementptr inbounds %struct.ssh, %struct.ssh* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = call i32 @deflateEnd(i32* %26)
  br label %28

28:                                               ; preds = %22, %13
  %29 = load %struct.ssh*, %struct.ssh** %4, align 8
  %30 = getelementptr inbounds %struct.ssh, %struct.ssh* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @deflateInit(i32* %32, i32 %33)
  switch i32 %34, label %42 [
    i32 128, label %35
    i32 129, label %40
  ]

35:                                               ; preds = %28
  %36 = load %struct.ssh*, %struct.ssh** %4, align 8
  %37 = getelementptr inbounds %struct.ssh, %struct.ssh* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  br label %44

40:                                               ; preds = %28
  %41 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %41, i32* %3, align 4
  br label %45

42:                                               ; preds = %28
  %43 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %43, i32* %3, align 4
  br label %45

44:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %42, %40, %11
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @debug(i8*, i32) #1

declare dso_local i32 @deflateEnd(i32*) #1

declare dso_local i32 @deflateInit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
