; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_carp.c_setcarp_vhid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_carp.c_setcarp_vhid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afswtch = type { i32, i64, i64 }

@carpr_vhid = common dso_local global i64 0, align 8
@CARP_MAXVHID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"vhid must be greater than 0 and less than %u\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"%s doesn't support carp(4)\00", align 1
@setcarp_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, %struct.afswtch*)* @setcarp_vhid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setcarp_vhid(i8* %0, i32 %1, i32 %2, %struct.afswtch* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.afswtch*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.afswtch* %3, %struct.afswtch** %8, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @atoi(i8* %9)
  store i64 %10, i64* @carpr_vhid, align 8
  %11 = load i64, i64* @carpr_vhid, align 8
  %12 = icmp sle i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %4
  %14 = load i64, i64* @carpr_vhid, align 8
  %15 = load i64, i64* @CARP_MAXVHID, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13, %4
  %18 = load i64, i64* @CARP_MAXVHID, align 8
  %19 = call i32 @errx(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %18)
  br label %20

20:                                               ; preds = %17, %13
  %21 = load %struct.afswtch*, %struct.afswtch** %8, align 8
  %22 = getelementptr inbounds %struct.afswtch, %struct.afswtch* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %24 [
  ]

24:                                               ; preds = %20
  %25 = load %struct.afswtch*, %struct.afswtch** %8, align 8
  %26 = getelementptr inbounds %struct.afswtch, %struct.afswtch* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %27)
  br label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @setcarp_callback, align 4
  %31 = call i32 @callback_register(i32 %30, i32* null)
  ret void
}

declare dso_local i64 @atoi(i8*) #1

declare dso_local i32 @errx(i32, i8*, i64) #1

declare dso_local i32 @callback_register(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
