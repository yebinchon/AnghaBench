; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dhclient.c_findproto.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dhclient.c_findproto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @findproto(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %51

11:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %12

12:                                               ; preds = %47, %11
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %50

15:                                               ; preds = %12
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %15
  %21 = load i8*, i8** %4, align 8
  %22 = bitcast i8* %21 to %struct.sockaddr*
  store %struct.sockaddr* %22, %struct.sockaddr** %6, align 8
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %42 [
    i32 130, label %24
    i32 132, label %24
    i32 131, label %24
    i32 128, label %24
    i32 129, label %41
  ]

24:                                               ; preds = %20, %20, %20, %20
  %25 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %26 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @AF_INET, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @AF_INET, align 4
  store i32 %31, i32* %3, align 4
  br label %51

32:                                               ; preds = %24
  %33 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %34 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @AF_INET6, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @AF_INET6, align 4
  store i32 %39, i32* %3, align 4
  br label %51

40:                                               ; preds = %32
  br label %42

41:                                               ; preds = %20
  br label %42

42:                                               ; preds = %20, %41, %40
  %43 = load i8*, i8** %4, align 8
  %44 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %45 = call i32 @ADVANCE(i8* %43, %struct.sockaddr* %44)
  br label %46

46:                                               ; preds = %42, %15
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %7, align 4
  %49 = shl i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %12

50:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %38, %30, %10
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @ADVANCE(i8*, %struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
