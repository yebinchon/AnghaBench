; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/extr_readline.c__rl_update_pos.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/extr_readline.c__rl_update_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64 }

@e = common dso_local global i32 0, align 4
@rl_point = common dso_local global i32 0, align 4
@rl_end = common dso_local global i64 0, align 8
@rl_line_buffer = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @_rl_update_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rl_update_pos() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = load i32, i32* @e, align 4
  %3 = call %struct.TYPE_3__* @el_line(i32 %2)
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %1, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = sub nsw i64 %6, %9
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* @rl_point, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %14, %17
  %19 = trunc i64 %18 to i32
  %20 = sext i32 %19 to i64
  store i64 %20, i64* @rl_end, align 8
  %21 = load i8*, i8** @rl_line_buffer, align 8
  %22 = load i64, i64* @rl_end, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  store i8 0, i8* %23, align 1
  ret void
}

declare dso_local %struct.TYPE_3__* @el_line(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
