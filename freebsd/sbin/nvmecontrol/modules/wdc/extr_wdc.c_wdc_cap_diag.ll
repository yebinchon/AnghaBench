; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/modules/wdc/extr_wdc.c_wdc_cap_diag.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/modules/wdc/extr_wdc.c_wdc_cap_diag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }
%struct.cmd = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@opt = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Missing template arg.\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"cap_diag\00", align 1
@WDC_NVME_CAP_DIAG_OPCODE = common dso_local global i32 0, align 4
@WDC_NVME_CAP_DIAG_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmd*, i32, i8**)* @wdc_cap_diag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wdc_cap_diag(%struct.cmd* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %10 = load i32, i32* @MAXPATHLEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i8**, i8*** %6, align 8
  %16 = load %struct.cmd*, %struct.cmd** %4, align 8
  %17 = call i64 @arg_parse(i32 %14, i8** %15, %struct.cmd* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %20)
  ret void

21:                                               ; preds = %3
  %22 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opt, i32 0, i32 1), align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %5, align 4
  %28 = load i8**, i8*** %6, align 8
  %29 = load %struct.cmd*, %struct.cmd** %4, align 8
  %30 = call i32 @arg_help(i32 %27, i8** %28, %struct.cmd* %29)
  br label %31

31:                                               ; preds = %24, %21
  %32 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opt, i32 0, i32 1), align 8
  %33 = trunc i64 %11 to i32
  %34 = call i32 @strlcpy(i8* %13, i32* %32, i32 %33)
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opt, i32 0, i32 0), align 8
  %36 = call i32 @open_dev(i32 %35, i32* %9, i32 1, i32 1)
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @WDC_NVME_CAP_DIAG_OPCODE, align 4
  %39 = load i32, i32* @WDC_NVME_CAP_DIAG_CMD, align 4
  %40 = call i32 @wdc_do_dump(i32 %37, i8* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %39, i32 4)
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @close(i32 %41)
  %43 = call i32 @exit(i32 1) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @arg_parse(i32, i8**, %struct.cmd*) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i32 @arg_help(i32, i8**, %struct.cmd*) #2

declare dso_local i32 @strlcpy(i8*, i32*, i32) #2

declare dso_local i32 @open_dev(i32, i32*, i32, i32) #2

declare dso_local i32 @wdc_do_dump(i32, i8*, i8*, i32, i32, i32) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
