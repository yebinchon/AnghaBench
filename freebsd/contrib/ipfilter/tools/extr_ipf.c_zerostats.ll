; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ipfilter/tools/extr_ipf.c_zerostats.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ipfilter/tools/extr_ipf.c_zerostats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32*, i32, i32 }

@IPFILTER_VERSION = common dso_local global i32 0, align 4
@IPFOBJ_IPFSTAT = common dso_local global i32 0, align 4
@ipfname = common dso_local global i32 0, align 4
@fd = common dso_local global i32 0, align 4
@SIOCFRZST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ioctl(SIOCFRZST)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zerostats() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @IPFILTER_VERSION, align 4
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 4
  store i32 %3, i32* %4, align 4
  %5 = load i32, i32* @IPFOBJ_IPFSTAT, align 4
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  store i32 %5, i32* %6, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i32 4, i32* %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  store i32* %2, i32** %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* @ipfname, align 4
  %11 = call i32 @opendevice(i32 %10, i32 1)
  %12 = icmp ne i32 %11, -2
  br i1 %12, label %13, label %24

13:                                               ; preds = %0
  %14 = load i32, i32* @fd, align 4
  %15 = load i32, i32* @SIOCFRZST, align 4
  %16 = call i32 @ioctl(i32 %14, i32 %15, %struct.TYPE_3__* %1)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load i32, i32* @fd, align 4
  %20 = call i32 @ipferror(i32 %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @exit(i32 -1) #3
  unreachable

22:                                               ; preds = %13
  %23 = call i32 @showstats(i32* %2)
  br label %24

24:                                               ; preds = %22, %0
  ret void
}

declare dso_local i32 @opendevice(i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @ipferror(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @showstats(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
