; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/sconfig/extr_sconfig.c_open_chan_ctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/sconfig/extr_sconfig.c_open_chan_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"/dev/serial/ctl%d\00", align 1
@errno = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"chan%d: not configured\0A\00", align 1
@SERIAL_GETNAME = common dso_local global i32 0, align 4
@chan_name = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"chan%d\00", align 1
@adapter_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @open_chan_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_chan_ctl(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [80 x i8], align 16
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @sprintf(i8* %5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %9 = call i32 @open(i8* %8, i32 0)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %1
  %13 = load i64, i64* @errno, align 8
  %14 = load i64, i64* @ENODEV, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i32, i32* @stderr, align 4
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  br label %23

20:                                               ; preds = %12
  %21 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %22 = call i32 @perror(i8* %21)
  br label %23

23:                                               ; preds = %20, %16
  %24 = call i32 @exit(i32 -1) #3
  unreachable

25:                                               ; preds = %1
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @SERIAL_GETNAME, align 4
  %28 = call i64 @ioctl(i32 %26, i32 %27, i8** @chan_name)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i8*, i8** @chan_name, align 8
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @sprintf(i8* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %30, %25
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @ioctl(i32, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
