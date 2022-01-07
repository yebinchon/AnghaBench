; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_user.c_cc_user_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_user.c_cc_user_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccuser = type { %struct.ccuser*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CCLOG_USER_INST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"destroy '%s'\00", align 1
@node_link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cc_user_destroy(%struct.ccuser* %0) #0 {
  %2 = alloca %struct.ccuser*, align 8
  store %struct.ccuser* %0, %struct.ccuser** %2, align 8
  %3 = load %struct.ccuser*, %struct.ccuser** %2, align 8
  %4 = getelementptr inbounds %struct.ccuser, %struct.ccuser* %3, i32 0, i32 2
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @CCLOG_USER_INST, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.ccuser*, %struct.ccuser** %2, align 8
  %13 = load %struct.ccuser*, %struct.ccuser** %2, align 8
  %14 = getelementptr inbounds %struct.ccuser, %struct.ccuser* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @cc_user_log(%struct.ccuser* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %11, %1
  %18 = load %struct.ccuser*, %struct.ccuser** %2, align 8
  %19 = call i32 @cc_user_abort(%struct.ccuser* %18, i32* null)
  %20 = load %struct.ccuser*, %struct.ccuser** %2, align 8
  %21 = getelementptr inbounds %struct.ccuser, %struct.ccuser* %20, i32 0, i32 0
  %22 = load %struct.ccuser*, %struct.ccuser** %21, align 8
  %23 = icmp ne %struct.ccuser* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load %struct.ccuser*, %struct.ccuser** %2, align 8
  %26 = getelementptr inbounds %struct.ccuser, %struct.ccuser* %25, i32 0, i32 0
  %27 = load %struct.ccuser*, %struct.ccuser** %26, align 8
  %28 = call i32 @CCFREE(%struct.ccuser* %27)
  br label %29

29:                                               ; preds = %24, %17
  %30 = load %struct.ccuser*, %struct.ccuser** %2, align 8
  %31 = call i32 @cc_user_sig_flush(%struct.ccuser* %30)
  %32 = load %struct.ccuser*, %struct.ccuser** %2, align 8
  %33 = load i32, i32* @node_link, align 4
  %34 = call i32 @LIST_REMOVE(%struct.ccuser* %32, i32 %33)
  %35 = load %struct.ccuser*, %struct.ccuser** %2, align 8
  %36 = call i32 @CCFREE(%struct.ccuser* %35)
  ret void
}

declare dso_local i32 @cc_user_log(%struct.ccuser*, i8*, i32) #1

declare dso_local i32 @cc_user_abort(%struct.ccuser*, i32*) #1

declare dso_local i32 @CCFREE(%struct.ccuser*) #1

declare dso_local i32 @cc_user_sig_flush(%struct.ccuser*) #1

declare dso_local i32 @LIST_REMOVE(%struct.ccuser*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
