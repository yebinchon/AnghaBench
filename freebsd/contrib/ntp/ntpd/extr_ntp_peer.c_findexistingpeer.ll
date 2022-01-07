; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_peer.c_findexistingpeer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_peer.c_findexistingpeer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.peer* @findexistingpeer(i32* %0, i8* %1, %struct.peer* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.peer*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.peer*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.peer* %2, %struct.peer** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %6
  %17 = load i8*, i8** %9, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @AF(i32* %18)
  %20 = load %struct.peer*, %struct.peer** %10, align 8
  %21 = load i32, i32* %11, align 4
  %22 = call %struct.peer* @findexistingpeer_name(i8* %17, i32 %19, %struct.peer* %20, i32 %21)
  store %struct.peer* %22, %struct.peer** %7, align 8
  br label %30

23:                                               ; preds = %6
  %24 = load i32*, i32** %8, align 8
  %25 = load %struct.peer*, %struct.peer** %10, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32*, i32** %13, align 8
  %29 = call %struct.peer* @findexistingpeer_addr(i32* %24, %struct.peer* %25, i32 %26, i32 %27, i32* %28)
  store %struct.peer* %29, %struct.peer** %7, align 8
  br label %30

30:                                               ; preds = %23, %16
  %31 = load %struct.peer*, %struct.peer** %7, align 8
  ret %struct.peer* %31
}

declare dso_local %struct.peer* @findexistingpeer_name(i8*, i32, %struct.peer*, i32) #1

declare dso_local i32 @AF(i32*) #1

declare dso_local %struct.peer* @findexistingpeer_addr(i32*, %struct.peer*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
