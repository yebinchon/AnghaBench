; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rbootd/extr_bpf.c_BpfClose.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rbootd/extr_bpf.c_BpfClose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32, i64 }

@BpfPkt = common dso_local global i32* null, align 8
@BpfFd = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@RmpMcastAddr = common dso_local global i32* null, align 8
@RMP_ADDRLEN = common dso_local global i64 0, align 8
@SIOCDELMULTI = common dso_local global i32 0, align 4
@BIOCPROMISC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BpfClose() #0 {
  %1 = alloca %struct.ifreq, align 8
  %2 = load i32*, i32** @BpfPkt, align 8
  %3 = icmp ne i32* %2, null
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = load i32*, i32** @BpfPkt, align 8
  %6 = bitcast i32* %5 to i8*
  %7 = call i32 @free(i8* %6)
  store i32* null, i32** @BpfPkt, align 8
  br label %8

8:                                                ; preds = %4, %0
  %9 = load i32, i32* @BpfFd, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  br label %37

12:                                               ; preds = %8
  %13 = load i32, i32* @AF_UNSPEC, align 4
  %14 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %1, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %1, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = bitcast i32* %19 to i8*
  %21 = load i32*, i32** @RmpMcastAddr, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i64, i64* @RMP_ADDRLEN, align 8
  %24 = call i32 @memmove(i8* %20, i32* %22, i64 %23)
  %25 = load i32, i32* @BpfFd, align 4
  %26 = load i32, i32* @SIOCDELMULTI, align 4
  %27 = ptrtoint %struct.ifreq* %1 to i32
  %28 = call i64 @ioctl(i32 %25, i32 %26, i32 %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %12
  %31 = load i32, i32* @BpfFd, align 4
  %32 = load i32, i32* @BIOCPROMISC, align 4
  %33 = call i64 @ioctl(i32 %31, i32 %32, i32 0)
  br label %34

34:                                               ; preds = %30, %12
  %35 = load i32, i32* @BpfFd, align 4
  %36 = call i32 @close(i32 %35)
  store i32 -1, i32* @BpfFd, align 4
  br label %37

37:                                               ; preds = %34, %11
  ret void
}

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memmove(i8*, i32*, i64) #1

declare dso_local i64 @ioctl(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
