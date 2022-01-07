; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pptp.c_pptp_stopccrq_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pptp.c_pptp_stopccrq_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.pptp_msg_stopccrq = type { i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c" REASON(%u\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c":None\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c":Stop-Protocol\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c":Stop-Local-Shutdown\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c":?\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*)* @pptp_stopccrq_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pptp_stopccrq_print(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.pptp_msg_stopccrq*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = bitcast i32* %6 to %struct.pptp_msg_stopccrq*
  store %struct.pptp_msg_stopccrq* %7, %struct.pptp_msg_stopccrq** %5, align 8
  %8 = load %struct.pptp_msg_stopccrq*, %struct.pptp_msg_stopccrq** %5, align 8
  %9 = getelementptr inbounds %struct.pptp_msg_stopccrq, %struct.pptp_msg_stopccrq* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ND_TCHECK(i32 %10)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = load %struct.pptp_msg_stopccrq*, %struct.pptp_msg_stopccrq** %5, align 8
  %14 = getelementptr inbounds %struct.pptp_msg_stopccrq, %struct.pptp_msg_stopccrq* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to %struct.TYPE_4__*
  %18 = call i32 @ND_PRINT(%struct.TYPE_4__* %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %2
  %24 = load %struct.pptp_msg_stopccrq*, %struct.pptp_msg_stopccrq** %5, align 8
  %25 = getelementptr inbounds %struct.pptp_msg_stopccrq, %struct.pptp_msg_stopccrq* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %36 [
    i32 1, label %27
    i32 2, label %30
    i32 3, label %33
  ]

27:                                               ; preds = %23
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = call i32 @ND_PRINT(%struct.TYPE_4__* bitcast ([6 x i8]* @.str.1 to %struct.TYPE_4__*))
  br label %39

30:                                               ; preds = %23
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = call i32 @ND_PRINT(%struct.TYPE_4__* bitcast ([15 x i8]* @.str.2 to %struct.TYPE_4__*))
  br label %39

33:                                               ; preds = %23
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = call i32 @ND_PRINT(%struct.TYPE_4__* bitcast ([21 x i8]* @.str.3 to %struct.TYPE_4__*))
  br label %39

36:                                               ; preds = %23
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = call i32 @ND_PRINT(%struct.TYPE_4__* bitcast ([3 x i8]* @.str.4 to %struct.TYPE_4__*))
  br label %39

39:                                               ; preds = %36, %33, %30, %27
  br label %40

40:                                               ; preds = %39, %2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %42 = call i32 @ND_PRINT(%struct.TYPE_4__* bitcast ([2 x i8]* @.str.5 to %struct.TYPE_4__*))
  %43 = load %struct.pptp_msg_stopccrq*, %struct.pptp_msg_stopccrq** %5, align 8
  %44 = getelementptr inbounds %struct.pptp_msg_stopccrq, %struct.pptp_msg_stopccrq* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ND_TCHECK(i32 %45)
  %47 = load %struct.pptp_msg_stopccrq*, %struct.pptp_msg_stopccrq** %5, align 8
  %48 = getelementptr inbounds %struct.pptp_msg_stopccrq, %struct.pptp_msg_stopccrq* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ND_TCHECK(i32 %49)
  br label %57

51:                                               ; No predecessors!
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %53 = load i32, i32* @tstr, align 4
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to %struct.TYPE_4__*
  %56 = call i32 @ND_PRINT(%struct.TYPE_4__* %55)
  br label %57

57:                                               ; preds = %51, %40
  ret void
}

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
