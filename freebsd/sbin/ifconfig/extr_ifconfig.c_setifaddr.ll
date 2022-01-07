; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifconfig.c_setifaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifconfig.c_setifaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afswtch = type { i64, i32 (i8*, i32)* }

@setaddr = common dso_local global i32 0, align 4
@doalias = common dso_local global i64 0, align 8
@AF_LINK = common dso_local global i64 0, align 8
@clearaddr = common dso_local global i32 0, align 4
@ADDR = common dso_local global i32 0, align 4
@RIDADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, %struct.afswtch*)* @setifaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setifaddr(i8* %0, i32 %1, i32 %2, %struct.afswtch* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.afswtch*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.afswtch* %3, %struct.afswtch** %8, align 8
  %9 = load %struct.afswtch*, %struct.afswtch** %8, align 8
  %10 = getelementptr inbounds %struct.afswtch, %struct.afswtch* %9, i32 0, i32 1
  %11 = load i32 (i8*, i32)*, i32 (i8*, i32)** %10, align 8
  %12 = icmp eq i32 (i8*, i32)* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  br label %40

14:                                               ; preds = %4
  %15 = load i32, i32* @setaddr, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @setaddr, align 4
  %17 = load i64, i64* @doalias, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.afswtch*, %struct.afswtch** %8, align 8
  %21 = getelementptr inbounds %struct.afswtch, %struct.afswtch* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AF_LINK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 1, i32* @clearaddr, align 4
  br label %26

26:                                               ; preds = %25, %19, %14
  %27 = load %struct.afswtch*, %struct.afswtch** %8, align 8
  %28 = getelementptr inbounds %struct.afswtch, %struct.afswtch* %27, i32 0, i32 1
  %29 = load i32 (i8*, i32)*, i32 (i8*, i32)** %28, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load i64, i64* @doalias, align 8
  %32 = icmp sge i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @ADDR, align 4
  br label %37

35:                                               ; preds = %26
  %36 = load i32, i32* @RIDADDR, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = call i32 %29(i8* %30, i32 %38)
  br label %40

40:                                               ; preds = %37, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
