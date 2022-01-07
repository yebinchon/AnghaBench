; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_sig.c_cc_conn_sig_msg_nodef.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_sig.c_cc_conn_sig_msg_nodef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccconn = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.uni_msg = type { i32 }
%struct.ccsig = type { i32 }

@SIG_CONN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"queuing sig %s to conn %p\00", align 1
@cc_conn_sigtab = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cc_conn_sig_msg_nodef(%struct.ccconn* %0, i32 %1, %struct.uni_msg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ccconn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.uni_msg*, align 8
  %8 = alloca %struct.ccsig*, align 8
  store %struct.ccconn* %0, %struct.ccconn** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.uni_msg* %2, %struct.uni_msg** %7, align 8
  %9 = load %struct.ccconn*, %struct.ccconn** %5, align 8
  %10 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = load i32, i32* @SIG_CONN, align 4
  %13 = load %struct.ccconn*, %struct.ccconn** %5, align 8
  %14 = load %struct.uni_msg*, %struct.uni_msg** %7, align 8
  %15 = icmp ne %struct.uni_msg* %14, null
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.uni_msg*, %struct.uni_msg** %7, align 8
  %19 = call %struct.ccsig* @sig_alloc(%struct.TYPE_3__* %11, i32 %12, %struct.ccconn* %13, i32 %16, i32 %17, %struct.uni_msg* %18, i32 0)
  store %struct.ccsig* %19, %struct.ccsig** %8, align 8
  %20 = load %struct.ccsig*, %struct.ccsig** %8, align 8
  %21 = icmp eq %struct.ccsig* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOMEM, align 4
  store i32 %23, i32* %4, align 4
  br label %42

24:                                               ; preds = %3
  %25 = load %struct.ccconn*, %struct.ccconn** %5, align 8
  %26 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.ccsig*, %struct.ccsig** %8, align 8
  %30 = load i32, i32* @link, align 4
  %31 = call i32 @TAILQ_INSERT_TAIL(i32* %28, %struct.ccsig* %29, i32 %30)
  %32 = load %struct.ccconn*, %struct.ccconn** %5, align 8
  %33 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i32*, i32** @cc_conn_sigtab, align 8
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ccconn*, %struct.ccconn** %5, align 8
  %41 = call i32 @cc_sig_log(%struct.TYPE_3__* %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %39, %struct.ccconn* %40)
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %24, %22
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.ccsig* @sig_alloc(%struct.TYPE_3__*, i32, %struct.ccconn*, i32, i32, %struct.uni_msg*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.ccsig*, i32) #1

declare dso_local i32 @cc_sig_log(%struct.TYPE_3__*, i8*, i32, %struct.ccconn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
