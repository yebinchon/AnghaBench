; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_trail.c_trail_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_trail.c_trail_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trail = type { i64, i32, i32 }

@TRAIL_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trail_free(%struct.trail* %0) #0 {
  %2 = alloca %struct.trail*, align 8
  store %struct.trail* %0, %struct.trail** %2, align 8
  %3 = load %struct.trail*, %struct.trail** %2, align 8
  %4 = getelementptr inbounds %struct.trail, %struct.trail* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @TRAIL_MAGIC, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @PJDLOG_ASSERT(i32 %8)
  %10 = load %struct.trail*, %struct.trail** %2, align 8
  %11 = getelementptr inbounds %struct.trail, %struct.trail* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.trail*, %struct.trail** %2, align 8
  %16 = call i32 @trail_close(%struct.trail* %15)
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.trail*, %struct.trail** %2, align 8
  %19 = getelementptr inbounds %struct.trail, %struct.trail* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @closedir(i32 %20)
  %22 = load %struct.trail*, %struct.trail** %2, align 8
  %23 = call i32 @bzero(%struct.trail* %22, i32 16)
  %24 = load %struct.trail*, %struct.trail** %2, align 8
  %25 = getelementptr inbounds %struct.trail, %struct.trail* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load %struct.trail*, %struct.trail** %2, align 8
  %27 = getelementptr inbounds %struct.trail, %struct.trail* %26, i32 0, i32 1
  store i32 -1, i32* %27, align 8
  %28 = load %struct.trail*, %struct.trail** %2, align 8
  %29 = call i32 @free(%struct.trail* %28)
  ret void
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @trail_close(%struct.trail*) #1

declare dso_local i32 @closedir(i32) #1

declare dso_local i32 @bzero(%struct.trail*, i32) #1

declare dso_local i32 @free(%struct.trail*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
