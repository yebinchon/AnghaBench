; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_user.c_cc_user_err.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_user.c_cc_user_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccuser = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.ccuser*, i32, i32, i32, i32*, i32)* }

@ATMRESP_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccuser*, i32)* @cc_user_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_user_err(%struct.ccuser* %0, i32 %1) #0 {
  %3 = alloca %struct.ccuser*, align 8
  %4 = alloca i32, align 4
  store %struct.ccuser* %0, %struct.ccuser** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ccuser*, %struct.ccuser** %3, align 8
  %6 = getelementptr inbounds %struct.ccuser, %struct.ccuser* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32 (%struct.ccuser*, i32, i32, i32, i32*, i32)*, i32 (%struct.ccuser*, i32, i32, i32, i32*, i32)** %10, align 8
  %12 = load %struct.ccuser*, %struct.ccuser** %3, align 8
  %13 = load %struct.ccuser*, %struct.ccuser** %3, align 8
  %14 = getelementptr inbounds %struct.ccuser, %struct.ccuser* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @ATMRESP_NONE, align 4
  %18 = call i32 %11(%struct.ccuser* %12, i32 %15, i32 %16, i32 %17, i32* null, i32 0)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
