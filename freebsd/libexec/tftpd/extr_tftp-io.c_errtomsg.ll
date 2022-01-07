; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/tftpd/extr_tftp-io.c_errtomsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/tftpd/extr_tftp-io.c_errtomsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.errmsg = type { i32, i8* }

@errtomsg.ebuf = internal global [40 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [8 x i8] c"success\00", align 1
@errmsgs = common dso_local global %struct.errmsg* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"error %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @errtomsg(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.errmsg*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %32

8:                                                ; preds = %1
  %9 = load %struct.errmsg*, %struct.errmsg** @errmsgs, align 8
  store %struct.errmsg* %9, %struct.errmsg** %4, align 8
  br label %10

10:                                               ; preds = %26, %8
  %11 = load %struct.errmsg*, %struct.errmsg** %4, align 8
  %12 = getelementptr inbounds %struct.errmsg, %struct.errmsg* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %10
  %16 = load %struct.errmsg*, %struct.errmsg** %4, align 8
  %17 = getelementptr inbounds %struct.errmsg, %struct.errmsg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.errmsg*, %struct.errmsg** %4, align 8
  %23 = getelementptr inbounds %struct.errmsg, %struct.errmsg* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %2, align 8
  br label %32

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.errmsg*, %struct.errmsg** %4, align 8
  %28 = getelementptr inbounds %struct.errmsg, %struct.errmsg* %27, i32 1
  store %struct.errmsg* %28, %struct.errmsg** %4, align 8
  br label %10

29:                                               ; preds = %10
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @snprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @errtomsg.ebuf, i64 0, i64 0), i32 40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @errtomsg.ebuf, i64 0, i64 0), i8** %2, align 8
  br label %32

32:                                               ; preds = %29, %21, %7
  %33 = load i8*, i8** %2, align 8
  ret i8* %33
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
