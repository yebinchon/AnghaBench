; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-keyscan.c_contouch.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-keyscan.c_contouch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@tq = common dso_local global i32 0, align 4
@fdcon = common dso_local global %struct.TYPE_6__* null, align 8
@c_link = common dso_local global i32 0, align 4
@timeout = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @contouch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @contouch(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fdcon, align 8
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i64 %5
  %7 = load i32, i32* @c_link, align 4
  %8 = call i32 @TAILQ_REMOVE(i32* @tq, %struct.TYPE_6__* %6, i32 %7)
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fdcon, align 8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = call i32 @monotime_tv(%struct.TYPE_5__* %13)
  %15 = load i64, i64* @timeout, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fdcon, align 8
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %15
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %21, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fdcon, align 8
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %28
  %30 = load i32, i32* @c_link, align 4
  %31 = call i32 @TAILQ_INSERT_TAIL(i32* @tq, %struct.TYPE_6__* %29, i32 %30)
  ret void
}

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @monotime_tv(%struct.TYPE_5__*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
