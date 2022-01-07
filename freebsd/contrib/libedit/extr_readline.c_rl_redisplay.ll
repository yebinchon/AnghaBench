; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/extr_readline.c_rl_redisplay.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/extr_readline.c_rl_redisplay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64** }

@e = common dso_local global %struct.TYPE_5__* null, align 8
@TS_IO = common dso_local global i64 0, align 8
@C_REPRINT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rl_redisplay() #0 {
  %1 = alloca [2 x i8], align 1
  %2 = load %struct.TYPE_5__*, %struct.TYPE_5__** @e, align 8
  %3 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %5 = load i64**, i64*** %4, align 8
  %6 = load i64, i64* @TS_IO, align 8
  %7 = getelementptr inbounds i64*, i64** %5, i64 %6
  %8 = load i64*, i64** %7, align 8
  %9 = load i64, i64* @C_REPRINT, align 8
  %10 = getelementptr inbounds i64, i64* %8, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i8
  %13 = getelementptr inbounds [2 x i8], [2 x i8]* %1, i64 0, i64 0
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds [2 x i8], [2 x i8]* %1, i64 0, i64 1
  store i8 0, i8* %14, align 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @e, align 8
  %16 = getelementptr inbounds [2 x i8], [2 x i8]* %1, i64 0, i64 0
  %17 = call i32 @el_push(%struct.TYPE_5__* %15, i8* %16)
  ret void
}

declare dso_local i32 @el_push(%struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
