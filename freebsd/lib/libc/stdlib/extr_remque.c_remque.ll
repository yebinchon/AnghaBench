; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_remque.c_remque.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_remque.c_remque.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.que_elem = type { %struct.que_elem*, %struct.que_elem* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @remque(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.que_elem*, align 8
  %4 = alloca %struct.que_elem*, align 8
  %5 = alloca %struct.que_elem*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.que_elem*
  store %struct.que_elem* %7, %struct.que_elem** %5, align 8
  %8 = load %struct.que_elem*, %struct.que_elem** %5, align 8
  %9 = getelementptr inbounds %struct.que_elem, %struct.que_elem* %8, i32 0, i32 0
  %10 = load %struct.que_elem*, %struct.que_elem** %9, align 8
  store %struct.que_elem* %10, %struct.que_elem** %3, align 8
  %11 = load %struct.que_elem*, %struct.que_elem** %5, align 8
  %12 = getelementptr inbounds %struct.que_elem, %struct.que_elem* %11, i32 0, i32 1
  %13 = load %struct.que_elem*, %struct.que_elem** %12, align 8
  store %struct.que_elem* %13, %struct.que_elem** %4, align 8
  %14 = load %struct.que_elem*, %struct.que_elem** %3, align 8
  %15 = icmp ne %struct.que_elem* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.que_elem*, %struct.que_elem** %4, align 8
  %18 = load %struct.que_elem*, %struct.que_elem** %3, align 8
  %19 = getelementptr inbounds %struct.que_elem, %struct.que_elem* %18, i32 0, i32 1
  store %struct.que_elem* %17, %struct.que_elem** %19, align 8
  br label %20

20:                                               ; preds = %16, %1
  %21 = load %struct.que_elem*, %struct.que_elem** %4, align 8
  %22 = icmp ne %struct.que_elem* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load %struct.que_elem*, %struct.que_elem** %3, align 8
  %25 = load %struct.que_elem*, %struct.que_elem** %4, align 8
  %26 = getelementptr inbounds %struct.que_elem, %struct.que_elem* %25, i32 0, i32 0
  store %struct.que_elem* %24, %struct.que_elem** %26, align 8
  br label %27

27:                                               ; preds = %23, %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
