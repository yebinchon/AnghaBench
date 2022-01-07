; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_sfp.c_convert_sff_connector.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_sfp.c_convert_sff_connector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@conn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Unallocated\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Vendor specific\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i32)* @convert_sff_connector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_sff_connector(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @conn, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i8* @find_value(i32 %8, i32 %9)
  store i8* %10, i8** %7, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %29

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp sge i32 %13, 13
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32, i32* %6, align 4
  %17 = icmp sle i32 %16, 31
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %28

19:                                               ; preds = %15, %12
  %20 = load i32, i32* %6, align 4
  %21 = icmp sge i32 %20, 36
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = icmp sle i32 %23, 127
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %27

26:                                               ; preds = %22, %19
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %27

27:                                               ; preds = %26, %25
  br label %28

28:                                               ; preds = %27, %18
  br label %29

29:                                               ; preds = %28, %3
  %30 = load i8*, i8** %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @snprintf(i8* %30, i64 %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  ret void
}

declare dso_local i8* @find_value(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
