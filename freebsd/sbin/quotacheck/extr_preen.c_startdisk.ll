; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/quotacheck/extr_preen.c_startdisk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/quotacheck/extr_preen.c_startdisk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diskentry = type { i64, i32 }
%struct.partentry = type { i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.diskentry*)* @startdisk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @startdisk(%struct.diskentry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.diskentry*, align 8
  %4 = alloca %struct.partentry*, align 8
  store %struct.diskentry* %0, %struct.diskentry** %3, align 8
  %5 = load %struct.diskentry*, %struct.diskentry** %3, align 8
  %6 = getelementptr inbounds %struct.diskentry, %struct.diskentry* %5, i32 0, i32 1
  %7 = call %struct.partentry* @TAILQ_FIRST(i32* %6)
  store %struct.partentry* %7, %struct.partentry** %4, align 8
  %8 = call i64 (...) @fork()
  %9 = load %struct.diskentry*, %struct.diskentry** %3, align 8
  %10 = getelementptr inbounds %struct.diskentry, %struct.diskentry* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  %11 = load %struct.diskentry*, %struct.diskentry** %3, align 8
  %12 = getelementptr inbounds %struct.diskentry, %struct.diskentry* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 8, i32* %2, align 4
  br label %35

17:                                               ; preds = %1
  %18 = load %struct.diskentry*, %struct.diskentry** %3, align 8
  %19 = getelementptr inbounds %struct.diskentry, %struct.diskentry* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %17
  %23 = load %struct.partentry*, %struct.partentry** %4, align 8
  %24 = getelementptr inbounds %struct.partentry, %struct.partentry* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.partentry*, %struct.partentry** %4, align 8
  %27 = getelementptr inbounds %struct.partentry, %struct.partentry* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.partentry*, %struct.partentry** %4, align 8
  %30 = getelementptr inbounds %struct.partentry, %struct.partentry* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @chkquota(i32 %25, i32 %28, i32 %31)
  %33 = call i32 @exit(i32 %32) #3
  unreachable

34:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %15
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.partentry* @TAILQ_FIRST(i32*) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @chkquota(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
