; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_pidfile.c_pidfile_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_pidfile.c_pidfile_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pidfh = type { i32, i64, i64 }
%struct.stat = type { i64, i64 }

@EDOOFUS = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pidfh*)* @pidfile_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pidfile_verify(%struct.pidfh* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pidfh*, align 8
  %4 = alloca %struct.stat, align 8
  store %struct.pidfh* %0, %struct.pidfh** %3, align 8
  %5 = load %struct.pidfh*, %struct.pidfh** %3, align 8
  %6 = icmp eq %struct.pidfh* %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load %struct.pidfh*, %struct.pidfh** %3, align 8
  %9 = getelementptr inbounds %struct.pidfh, %struct.pidfh* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %14

12:                                               ; preds = %7, %1
  %13 = load i32, i32* @EDOOFUS, align 4
  store i32 %13, i32* %2, align 4
  br label %39

14:                                               ; preds = %7
  %15 = load %struct.pidfh*, %struct.pidfh** %3, align 8
  %16 = getelementptr inbounds %struct.pidfh, %struct.pidfh* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @fstat(i32 %17, %struct.stat* %4)
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @errno, align 4
  store i32 %21, i32* %2, align 4
  br label %39

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.pidfh*, %struct.pidfh** %3, align 8
  %26 = getelementptr inbounds %struct.pidfh, %struct.pidfh* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %36, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.pidfh*, %struct.pidfh** %3, align 8
  %33 = getelementptr inbounds %struct.pidfh, %struct.pidfh* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %29, %22
  %37 = load i32, i32* @EDOOFUS, align 4
  store i32 %37, i32* %2, align 4
  br label %39

38:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %36, %20, %12
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @fstat(i32, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
