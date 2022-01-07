; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_user.c_cc_user_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_user.c_cc_user_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccuser = type { i64, i64, i64, i32, %struct.TYPE_2__*, i32*, i32 }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [16 x i8] c"connq not empty\00", align 1
@USER_P2P = common dso_local global i32 0, align 4
@USER_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccuser*)* @cc_user_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_user_reset(%struct.ccuser* %0) #0 {
  %2 = alloca %struct.ccuser*, align 8
  store %struct.ccuser* %0, %struct.ccuser** %2, align 8
  %3 = load %struct.ccuser*, %struct.ccuser** %2, align 8
  %4 = getelementptr inbounds %struct.ccuser, %struct.ccuser* %3, i32 0, i32 6
  %5 = call i32 @TAILQ_EMPTY(i32* %4)
  %6 = call i32 @CCASSERT(i32 %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.ccuser*, %struct.ccuser** %2, align 8
  %8 = getelementptr inbounds %struct.ccuser, %struct.ccuser* %7, i32 0, i32 5
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.ccuser*, %struct.ccuser** %2, align 8
  %13 = getelementptr inbounds %struct.ccuser, %struct.ccuser* %12, i32 0, i32 5
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @CCFREE(i32* %14)
  %16 = load %struct.ccuser*, %struct.ccuser** %2, align 8
  %17 = getelementptr inbounds %struct.ccuser, %struct.ccuser* %16, i32 0, i32 5
  store i32* null, i32** %17, align 8
  br label %18

18:                                               ; preds = %11, %1
  %19 = load %struct.ccuser*, %struct.ccuser** %2, align 8
  %20 = getelementptr inbounds %struct.ccuser, %struct.ccuser* %19, i32 0, i32 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.ccuser*, %struct.ccuser** %2, align 8
  %25 = getelementptr inbounds %struct.ccuser, %struct.ccuser* %24, i32 0, i32 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  %28 = load %struct.ccuser*, %struct.ccuser** %2, align 8
  %29 = getelementptr inbounds %struct.ccuser, %struct.ccuser* %28, i32 0, i32 4
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %29, align 8
  br label %30

30:                                               ; preds = %23, %18
  %31 = load i32, i32* @USER_P2P, align 4
  %32 = load %struct.ccuser*, %struct.ccuser** %2, align 8
  %33 = getelementptr inbounds %struct.ccuser, %struct.ccuser* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load %struct.ccuser*, %struct.ccuser** %2, align 8
  %35 = getelementptr inbounds %struct.ccuser, %struct.ccuser* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.ccuser*, %struct.ccuser** %2, align 8
  %37 = getelementptr inbounds %struct.ccuser, %struct.ccuser* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.ccuser*, %struct.ccuser** %2, align 8
  %39 = getelementptr inbounds %struct.ccuser, %struct.ccuser* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load %struct.ccuser*, %struct.ccuser** %2, align 8
  %41 = load i32, i32* @USER_NULL, align 4
  %42 = call i32 @set_state(%struct.ccuser* %40, i32 %41)
  %43 = load %struct.ccuser*, %struct.ccuser** %2, align 8
  %44 = call i32 @cc_user_sig_flush(%struct.ccuser* %43)
  ret void
}

declare dso_local i32 @CCASSERT(i32, i8*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @CCFREE(i32*) #1

declare dso_local i32 @set_state(%struct.ccuser*, i32) #1

declare dso_local i32 @cc_user_sig_flush(%struct.ccuser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
