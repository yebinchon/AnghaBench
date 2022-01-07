; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_copyoutmsghdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_copyoutmsghdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.msghdr32 = type { i32, i32, i8*, i32, i8*, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msghdr*, %struct.msghdr32*)* @freebsd32_copyoutmsghdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @freebsd32_copyoutmsghdr(%struct.msghdr* %0, %struct.msghdr32* %1) #0 {
  %3 = alloca %struct.msghdr*, align 8
  %4 = alloca %struct.msghdr32*, align 8
  %5 = alloca %struct.msghdr32, align 8
  %6 = alloca i32, align 4
  store %struct.msghdr* %0, %struct.msghdr** %3, align 8
  store %struct.msghdr32* %1, %struct.msghdr32** %4, align 8
  %7 = load %struct.msghdr*, %struct.msghdr** %3, align 8
  %8 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 4
  %10 = call i8* @PTROUT(i32 %9)
  %11 = getelementptr inbounds %struct.msghdr32, %struct.msghdr32* %5, i32 0, i32 6
  store i8* %10, i8** %11, align 8
  %12 = load %struct.msghdr*, %struct.msghdr** %3, align 8
  %13 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.msghdr32, %struct.msghdr32* %5, i32 0, i32 5
  store i32 %14, i32* %15, align 8
  %16 = load %struct.msghdr*, %struct.msghdr** %3, align 8
  %17 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @PTROUT(i32 %18)
  %20 = getelementptr inbounds %struct.msghdr32, %struct.msghdr32* %5, i32 0, i32 4
  store i8* %19, i8** %20, align 8
  %21 = load %struct.msghdr*, %struct.msghdr** %3, align 8
  %22 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.msghdr32, %struct.msghdr32* %5, i32 0, i32 3
  store i32 %23, i32* %24, align 8
  %25 = load %struct.msghdr*, %struct.msghdr** %3, align 8
  %26 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @PTROUT(i32 %27)
  %29 = getelementptr inbounds %struct.msghdr32, %struct.msghdr32* %5, i32 0, i32 2
  store i8* %28, i8** %29, align 8
  %30 = load %struct.msghdr*, %struct.msghdr** %3, align 8
  %31 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.msghdr32, %struct.msghdr32* %5, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load %struct.msghdr*, %struct.msghdr** %3, align 8
  %35 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.msghdr32, %struct.msghdr32* %5, i32 0, i32 0
  store i32 %36, i32* %37, align 8
  %38 = load %struct.msghdr32*, %struct.msghdr32** %4, align 8
  %39 = call i32 @copyout(%struct.msghdr32* %5, %struct.msghdr32* %38, i32 48)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i8* @PTROUT(i32) #1

declare dso_local i32 @copyout(%struct.msghdr32*, %struct.msghdr32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
