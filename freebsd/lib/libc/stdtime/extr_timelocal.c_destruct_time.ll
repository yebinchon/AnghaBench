; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdtime/extr_timelocal.c_destruct_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdtime/extr_timelocal.c_destruct_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlocale_time = type { %struct.xlocale_time* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @destruct_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destruct_time(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.xlocale_time*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.xlocale_time*
  store %struct.xlocale_time* %5, %struct.xlocale_time** %3, align 8
  %6 = load %struct.xlocale_time*, %struct.xlocale_time** %3, align 8
  %7 = getelementptr inbounds %struct.xlocale_time, %struct.xlocale_time* %6, i32 0, i32 0
  %8 = load %struct.xlocale_time*, %struct.xlocale_time** %7, align 8
  %9 = icmp ne %struct.xlocale_time* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.xlocale_time*, %struct.xlocale_time** %3, align 8
  %12 = getelementptr inbounds %struct.xlocale_time, %struct.xlocale_time* %11, i32 0, i32 0
  %13 = load %struct.xlocale_time*, %struct.xlocale_time** %12, align 8
  %14 = call i32 @free(%struct.xlocale_time* %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.xlocale_time*, %struct.xlocale_time** %3, align 8
  %17 = call i32 @free(%struct.xlocale_time* %16)
  ret void
}

declare dso_local i32 @free(%struct.xlocale_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
