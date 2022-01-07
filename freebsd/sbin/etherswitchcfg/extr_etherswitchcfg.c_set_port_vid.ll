; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/etherswitchcfg/extr_etherswitchcfg.c_set_port_vid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/etherswitchcfg/extr_etherswitchcfg.c_set_port_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@IEEE802DOT1Q_VID_MAX = common dso_local global i32 0, align 4
@EX_USAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"pvid must be between 0 and %d\00", align 1
@IOETHERSWITCHGETPORT = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"ioctl(IOETHERSWITCHGETPORT)\00", align 1
@IOETHERSWITCHSETPORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"ioctl(IOETHERSWITCHSETPORT)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg*, i32, i8**)* @set_port_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_port_vid(%struct.cfg* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__, align 4
  store %struct.cfg* %0, %struct.cfg** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %56

13:                                               ; preds = %3
  %14 = load i8**, i8*** %7, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @strtol(i8* %16, i32* null, i32 0)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @IEEE802DOT1Q_VID_MAX, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20, %13
  %25 = load i32, i32* @EX_USAGE, align 4
  %26 = load i32, i32* @IEEE802DOT1Q_VID_MAX, align 4
  %27 = call i32 @errx(i32 %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %24, %20
  %29 = call i32 @bzero(%struct.TYPE_4__* %9, i32 8)
  %30 = load %struct.cfg*, %struct.cfg** %5, align 8
  %31 = getelementptr inbounds %struct.cfg, %struct.cfg* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load %struct.cfg*, %struct.cfg** %5, align 8
  %35 = getelementptr inbounds %struct.cfg, %struct.cfg* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @IOETHERSWITCHGETPORT, align 4
  %38 = call i64 @ioctl(i32 %36, i32 %37, %struct.TYPE_4__* %9)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %28
  %41 = load i32, i32* @EX_OSERR, align 4
  %42 = call i32 @err(i32 %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %28
  %44 = load i32, i32* %8, align 4
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 %44, i32* %45, align 4
  %46 = load %struct.cfg*, %struct.cfg** %5, align 8
  %47 = getelementptr inbounds %struct.cfg, %struct.cfg* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IOETHERSWITCHSETPORT, align 4
  %50 = call i64 @ioctl(i32 %48, i32 %49, %struct.TYPE_4__* %9)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i32, i32* @EX_OSERR, align 4
  %54 = call i32 @err(i32 %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %43
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %12
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @bzero(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
