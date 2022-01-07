; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_blame.c_blame_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_blame.c_blame_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame = type { i64, %struct.blame* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.blame* (%struct.blame*, i64)* @blame_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.blame* @blame_find(%struct.blame* %0, i64 %1) #0 {
  %3 = alloca %struct.blame*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.blame*, align 8
  store %struct.blame* %0, %struct.blame** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.blame* null, %struct.blame** %5, align 8
  br label %6

6:                                                ; preds = %16, %2
  %7 = load %struct.blame*, %struct.blame** %3, align 8
  %8 = icmp ne %struct.blame* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %6
  %10 = load %struct.blame*, %struct.blame** %3, align 8
  %11 = getelementptr inbounds %struct.blame, %struct.blame* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %21

16:                                               ; preds = %9
  %17 = load %struct.blame*, %struct.blame** %3, align 8
  store %struct.blame* %17, %struct.blame** %5, align 8
  %18 = load %struct.blame*, %struct.blame** %3, align 8
  %19 = getelementptr inbounds %struct.blame, %struct.blame* %18, i32 0, i32 1
  %20 = load %struct.blame*, %struct.blame** %19, align 8
  store %struct.blame* %20, %struct.blame** %3, align 8
  br label %6

21:                                               ; preds = %15, %6
  %22 = load %struct.blame*, %struct.blame** %5, align 8
  ret %struct.blame* %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
