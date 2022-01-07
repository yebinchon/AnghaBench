; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_pidfile.c_pidfile_fileno.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_pidfile.c_pidfile_fileno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pidfh = type { i32 }

@EDOOFUS = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pidfile_fileno(%struct.pidfh* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pidfh*, align 8
  store %struct.pidfh* %0, %struct.pidfh** %3, align 8
  %4 = load %struct.pidfh*, %struct.pidfh** %3, align 8
  %5 = icmp eq %struct.pidfh* %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load %struct.pidfh*, %struct.pidfh** %3, align 8
  %8 = getelementptr inbounds %struct.pidfh, %struct.pidfh* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %13

11:                                               ; preds = %6, %1
  %12 = load i32, i32* @EDOOFUS, align 4
  store i32 %12, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %17

13:                                               ; preds = %6
  %14 = load %struct.pidfh*, %struct.pidfh** %3, align 8
  %15 = getelementptr inbounds %struct.pidfh, %struct.pidfh* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %13, %11
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
