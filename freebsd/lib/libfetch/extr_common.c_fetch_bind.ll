; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libfetch/extr_common.c_fetch_bind.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libfetch/extr_common.c_fetch_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, %struct.addrinfo* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fetch_bind(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.addrinfo*, align 8
  %9 = alloca %struct.addrinfo*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.addrinfo* @fetch_resolve(i8* %11, i32 0, i32 %12)
  store %struct.addrinfo* %13, %struct.addrinfo** %8, align 8
  %14 = icmp eq %struct.addrinfo* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %49

16:                                               ; preds = %3
  %17 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  store %struct.addrinfo* %17, %struct.addrinfo** %9, align 8
  br label %18

18:                                               ; preds = %33, %16
  %19 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %20 = icmp ne %struct.addrinfo* %19, null
  br i1 %20, label %21, label %37

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %24 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %27 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @bind(i32 %22, i32 %25, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %37

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %35 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %34, i32 0, i32 2
  %36 = load %struct.addrinfo*, %struct.addrinfo** %35, align 8
  store %struct.addrinfo* %36, %struct.addrinfo** %9, align 8
  br label %18

37:                                               ; preds = %31, %18
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i32 (...) @fetch_syserr()
  br label %42

42:                                               ; preds = %40, %37
  %43 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %44 = call i32 @freeaddrinfo(%struct.addrinfo* %43)
  %45 = load i32, i32* %10, align 4
  %46 = icmp eq i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 0, i32 -1
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %42, %15
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.addrinfo* @fetch_resolve(i8*, i32, i32) #1

declare dso_local i32 @bind(i32, i32, i32) #1

declare dso_local i32 @fetch_syserr(...) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
