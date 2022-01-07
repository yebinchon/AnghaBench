; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dhclient.c_get_ifa.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dhclient.c_get_ifa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }

@RTA_IFA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sockaddr* @get_ifa(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.sockaddr*, align 8
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
  store %struct.sockaddr* null, %struct.sockaddr** %3, align 8
  br label %37

11:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %12

12:                                               ; preds = %33, %11
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %12
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = load i8*, i8** %4, align 8
  %22 = bitcast i8* %21 to %struct.sockaddr*
  store %struct.sockaddr* %22, %struct.sockaddr** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @RTA_IFA, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  store %struct.sockaddr* %27, %struct.sockaddr** %3, align 8
  br label %37

28:                                               ; preds = %20
  %29 = load i8*, i8** %4, align 8
  %30 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %31 = call i32 @ADVANCE(i8* %29, %struct.sockaddr* %30)
  br label %32

32:                                               ; preds = %28, %15
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %7, align 4
  %35 = shl i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %12

36:                                               ; preds = %12
  store %struct.sockaddr* null, %struct.sockaddr** %3, align 8
  br label %37

37:                                               ; preds = %36, %26, %10
  %38 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  ret %struct.sockaddr* %38
}

declare dso_local i32 @ADVANCE(i8*, %struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
