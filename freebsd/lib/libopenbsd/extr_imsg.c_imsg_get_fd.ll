; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libopenbsd/extr_imsg.c_imsg_get_fd.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libopenbsd/extr_imsg.c_imsg_get_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imsgbuf = type { i32 }
%struct.imsg_fd = type { i32 }

@entry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imsg_get_fd(%struct.imsgbuf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.imsgbuf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.imsg_fd*, align 8
  store %struct.imsgbuf* %0, %struct.imsgbuf** %3, align 8
  %6 = load %struct.imsgbuf*, %struct.imsgbuf** %3, align 8
  %7 = getelementptr inbounds %struct.imsgbuf, %struct.imsgbuf* %6, i32 0, i32 0
  %8 = call %struct.imsg_fd* @TAILQ_FIRST(i32* %7)
  store %struct.imsg_fd* %8, %struct.imsg_fd** %5, align 8
  %9 = icmp eq %struct.imsg_fd* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %23

11:                                               ; preds = %1
  %12 = load %struct.imsg_fd*, %struct.imsg_fd** %5, align 8
  %13 = getelementptr inbounds %struct.imsg_fd, %struct.imsg_fd* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  %15 = load %struct.imsgbuf*, %struct.imsgbuf** %3, align 8
  %16 = getelementptr inbounds %struct.imsgbuf, %struct.imsgbuf* %15, i32 0, i32 0
  %17 = load %struct.imsg_fd*, %struct.imsg_fd** %5, align 8
  %18 = load i32, i32* @entry, align 4
  %19 = call i32 @TAILQ_REMOVE(i32* %16, %struct.imsg_fd* %17, i32 %18)
  %20 = load %struct.imsg_fd*, %struct.imsg_fd** %5, align 8
  %21 = call i32 @free(%struct.imsg_fd* %20)
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %11, %10
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local %struct.imsg_fd* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.imsg_fd*, i32) #1

declare dso_local i32 @free(%struct.imsg_fd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
