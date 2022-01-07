; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_kwset.c_treedelta.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_kwset.c_treedelta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i64, %struct.tree*, %struct.tree* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tree*, i32, i8*)* @treedelta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @treedelta(%struct.tree* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.tree*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.tree* %0, %struct.tree** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load %struct.tree*, %struct.tree** %4, align 8
  %8 = icmp ne %struct.tree* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  br label %38

10:                                               ; preds = %3
  %11 = load %struct.tree*, %struct.tree** %4, align 8
  %12 = getelementptr inbounds %struct.tree, %struct.tree* %11, i32 0, i32 2
  %13 = load %struct.tree*, %struct.tree** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i8*, i8** %6, align 8
  call void @treedelta(%struct.tree* %13, i32 %14, i8* %15)
  %16 = load %struct.tree*, %struct.tree** %4, align 8
  %17 = getelementptr inbounds %struct.tree, %struct.tree* %16, i32 0, i32 1
  %18 = load %struct.tree*, %struct.tree** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i8*, i8** %6, align 8
  call void @treedelta(%struct.tree* %18, i32 %19, i8* %20)
  %21 = load i32, i32* %5, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.tree*, %struct.tree** %4, align 8
  %24 = getelementptr inbounds %struct.tree, %struct.tree* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i8, i8* %22, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp ult i32 %21, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %10
  %31 = load i32, i32* %5, align 4
  %32 = trunc i32 %31 to i8
  %33 = load i8*, i8** %6, align 8
  %34 = load %struct.tree*, %struct.tree** %4, align 8
  %35 = getelementptr inbounds %struct.tree, %struct.tree* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  store i8 %32, i8* %37, align 1
  br label %38

38:                                               ; preds = %9, %30, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
