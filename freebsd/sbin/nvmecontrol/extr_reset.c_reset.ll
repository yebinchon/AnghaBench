; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_reset.c_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_reset.c_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cmd = type { i32 }

@opt = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@NVME_RESET_CONTROLLER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"reset request to %s failed\00", align 1
@optind = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmd*, i32, i8**)* @reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset(%struct.cmd* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i8**, i8*** %6, align 8
  %10 = load %struct.cmd*, %struct.cmd** %4, align 8
  %11 = call i32 @arg_parse(i32 %8, i8** %9, %struct.cmd* %10)
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opt, i32 0, i32 0), align 4
  %13 = call i32 @open_dev(i32 %12, i32* %7, i32 1, i32 1)
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @NVME_RESET_CONTROLLER, align 4
  %16 = call i64 @ioctl(i32 %14, i32 %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load i8**, i8*** %6, align 8
  %20 = load i64, i64* @optind, align 8
  %21 = getelementptr inbounds i8*, i8** %19, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @err(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %22)
  br label %24

24:                                               ; preds = %18, %3
  %25 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @arg_parse(i32, i8**, %struct.cmd*) #1

declare dso_local i32 @open_dev(i32, i32*, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
