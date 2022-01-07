; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_pidfile.c_pidfile_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_pidfile.c_pidfile_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pidfh = type { i32, i32 }

@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pidfile_close(%struct.pidfh* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pidfh*, align 8
  %4 = alloca i32, align 4
  store %struct.pidfh* %0, %struct.pidfh** %3, align 8
  %5 = load %struct.pidfh*, %struct.pidfh** %3, align 8
  %6 = call i32 @pidfile_verify(%struct.pidfh* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %38

11:                                               ; preds = %1
  %12 = load %struct.pidfh*, %struct.pidfh** %3, align 8
  %13 = getelementptr inbounds %struct.pidfh, %struct.pidfh* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @close(i32 %14)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* @errno, align 4
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %17, %11
  %20 = load %struct.pidfh*, %struct.pidfh** %3, align 8
  %21 = getelementptr inbounds %struct.pidfh, %struct.pidfh* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @close(i32 %22)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @errno, align 4
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %28, %25, %19
  %31 = load %struct.pidfh*, %struct.pidfh** %3, align 8
  %32 = call i32 @free(%struct.pidfh* %31)
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %38

37:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %35, %9
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @pidfile_verify(%struct.pidfh*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(%struct.pidfh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
