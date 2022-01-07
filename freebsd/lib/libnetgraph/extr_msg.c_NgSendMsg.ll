; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libnetgraph/extr_msg.c_NgSendMsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libnetgraph/extr_msg.c_NgSendMsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_mesg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i64, i32, i32 }

@NG_VERSION = common dso_local global i32 0, align 4
@gMsgId = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@NGF_ORIG = common dso_local global i32 0, align 4
@NG_CMDSTRSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"cmd%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NgSendMsg(i32 %0, i8* %1, i32 %2, i32 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.ng_mesg, align 8
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = call i32 @memset(%struct.ng_mesg* %14, i32 0, i32 32)
  %16 = load i32, i32* @NG_VERSION, align 4
  %17 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %14, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %10, align 4
  %20 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %14, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = call i32 @atomic_fetch_add(i32* @gMsgId, i32 1)
  %23 = load i32, i32* @INT_MAX, align 4
  %24 = and i32 %22, %23
  %25 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %14, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @NGF_ORIG, align 4
  %28 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %14, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %11, align 4
  %31 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %14, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %14, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = load i32, i32* @NG_CMDSTRSIZ, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @snprintf(i8* %36, i32 %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = load i64, i64* %13, align 8
  %44 = call i64 @NgDeliverMsg(i32 %40, i8* %41, %struct.ng_mesg* %14, i8* %42, i64 %43)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %51

47:                                               ; preds = %6
  %48 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %14, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %47, %46
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i32 @memset(%struct.ng_mesg*, i32, i32) #1

declare dso_local i32 @atomic_fetch_add(i32*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @NgDeliverMsg(i32, i8*, %struct.ng_mesg*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
