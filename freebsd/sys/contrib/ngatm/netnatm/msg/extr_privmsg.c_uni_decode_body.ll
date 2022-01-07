; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_privmsg.c_uni_decode_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_privmsg.c_uni_decode_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_msg = type { i32 }
%struct.uni_all = type { i32, i32 }
%struct.unicx = type { i64 }

@uni_msgtable = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uni_decode_body(%struct.uni_msg* %0, %struct.uni_all* %1, %struct.unicx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uni_msg*, align 8
  %6 = alloca %struct.uni_all*, align 8
  %7 = alloca %struct.unicx*, align 8
  store %struct.uni_msg* %0, %struct.uni_msg** %5, align 8
  store %struct.uni_all* %1, %struct.uni_all** %6, align 8
  store %struct.unicx* %2, %struct.unicx** %7, align 8
  %8 = load %struct.unicx*, %struct.unicx** %7, align 8
  %9 = getelementptr inbounds %struct.unicx, %struct.unicx* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  %10 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %11 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sge i32 %12, 256
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %35

15:                                               ; preds = %3
  %16 = load i32**, i32*** @uni_msgtable, align 8
  %17 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %18 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %16, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  store i32 -1, i32* %4, align 4
  br label %35

25:                                               ; preds = %15
  %26 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %27 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %31 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %32 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %31, i32 0, i32 1
  %33 = load %struct.unicx*, %struct.unicx** %7, align 8
  %34 = call i32 @uni_decode_body_internal(i64 %29, %struct.uni_msg* %30, i32* %32, %struct.unicx* %33)
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %25, %24, %14
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @uni_decode_body_internal(i64, %struct.uni_msg*, i32*, %struct.unicx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
