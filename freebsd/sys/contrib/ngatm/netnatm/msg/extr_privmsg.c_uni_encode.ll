; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_privmsg.c_uni_encode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_privmsg.c_uni_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.uni_msg*, i32*, %struct.unicx*)* }
%struct.uni_msg = type { i32 }
%struct.unicx = type { i32 }
%struct.uni_all = type { i32, i32 }

@uni_msgtable = common dso_local global %struct.TYPE_2__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uni_encode(%struct.uni_msg* %0, %struct.uni_all* %1, %struct.unicx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uni_msg*, align 8
  %6 = alloca %struct.uni_all*, align 8
  %7 = alloca %struct.unicx*, align 8
  store %struct.uni_msg* %0, %struct.uni_msg** %5, align 8
  store %struct.uni_all* %1, %struct.uni_all** %6, align 8
  store %struct.unicx* %2, %struct.unicx** %7, align 8
  %8 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %9 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp sge i32 %10, 256
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %38

13:                                               ; preds = %3
  %14 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @uni_msgtable, align 8
  %15 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %16 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %14, i64 %18
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp eq %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  store i32 -3, i32* %4, align 4
  br label %38

23:                                               ; preds = %13
  %24 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @uni_msgtable, align 8
  %25 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %26 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %24, i64 %28
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.uni_msg*, i32*, %struct.unicx*)*, i32 (%struct.uni_msg*, i32*, %struct.unicx*)** %31, align 8
  %33 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %34 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %35 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %34, i32 0, i32 1
  %36 = load %struct.unicx*, %struct.unicx** %7, align 8
  %37 = call i32 %32(%struct.uni_msg* %33, i32* %35, %struct.unicx* %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %23, %22, %12
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
