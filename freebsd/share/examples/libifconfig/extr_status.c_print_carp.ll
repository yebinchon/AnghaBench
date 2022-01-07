; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/libifconfig/extr_status.c_print_carp.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/libifconfig/extr_status.c_print_carp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddrs = type { i32 }
%struct.carpreq = type { i32, i64, i32, i32, i32 }

@CARP_MAXVHID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"\09carp: %s vhid %d advbase %d advskew %d\00", align 1
@carp_states = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.ifaddrs*)* @print_carp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_carp(i32* %0, %struct.ifaddrs* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ifaddrs*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.ifaddrs* %1, %struct.ifaddrs** %4, align 8
  %9 = load i32, i32* @CARP_MAXVHID, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca %struct.carpreq, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %15 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CARP_MAXVHID, align 4
  %18 = call i64 @ifconfig_carp_get_info(i32* %13, i32 %16, %struct.carpreq* %12, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  br label %58

21:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %54, %21
  %23 = load i32, i32* %7, align 4
  %24 = getelementptr inbounds %struct.carpreq, %struct.carpreq* %12, i64 0
  %25 = getelementptr inbounds %struct.carpreq, %struct.carpreq* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 16
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %57

28:                                               ; preds = %22
  %29 = load i8**, i8*** @carp_states, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.carpreq, %struct.carpreq* %12, i64 %31
  %33 = getelementptr inbounds %struct.carpreq, %struct.carpreq* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i8*, i8** %29, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.carpreq, %struct.carpreq* %12, i64 %38
  %40 = getelementptr inbounds %struct.carpreq, %struct.carpreq* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 16
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.carpreq, %struct.carpreq* %12, i64 %43
  %45 = getelementptr inbounds %struct.carpreq, %struct.carpreq* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.carpreq, %struct.carpreq* %12, i64 %48
  %50 = getelementptr inbounds %struct.carpreq, %struct.carpreq* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %36, i32 %41, i32 %46, i32 %51)
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %28
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %22

57:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %57, %20
  %59 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %59)
  %60 = load i32, i32* %8, align 4
  switch i32 %60, label %62 [
    i32 0, label %61
    i32 1, label %61
  ]

61:                                               ; preds = %58, %58
  ret void

62:                                               ; preds = %58
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ifconfig_carp_get_info(i32*, i32, %struct.carpreq*, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
