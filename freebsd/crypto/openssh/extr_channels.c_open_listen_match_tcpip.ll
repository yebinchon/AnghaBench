; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_open_listen_match_tcpip.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_open_listen_match_tcpip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.permission = type { i64, i8*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.permission*, i8*, i64, i32)* @open_listen_match_tcpip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_listen_match_tcpip(%struct.permission* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.permission*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.permission* %0, %struct.permission** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.permission*, %struct.permission** %6, align 8
  %12 = getelementptr inbounds %struct.permission, %struct.permission* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %61

16:                                               ; preds = %4
  %17 = load %struct.permission*, %struct.permission** %6, align 8
  %18 = getelementptr inbounds %struct.permission, %struct.permission* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %61

23:                                               ; preds = %16
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %23
  %27 = load %struct.permission*, %struct.permission** %6, align 8
  %28 = getelementptr inbounds %struct.permission, %struct.permission* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i8*, i8** %7, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 1, i32* %5, align 4
  br label %61

35:                                               ; preds = %31, %26, %23
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load %struct.permission*, %struct.permission** %6, align 8
  %40 = getelementptr inbounds %struct.permission, %struct.permission* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i8* @channel_rfwd_bind_host(i8* %41)
  br label %47

43:                                               ; preds = %35
  %44 = load %struct.permission*, %struct.permission** %6, align 8
  %45 = getelementptr inbounds %struct.permission, %struct.permission* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  br label %47

47:                                               ; preds = %43, %38
  %48 = phi i8* [ %42, %38 ], [ %46, %43 ]
  store i8* %48, i8** %10, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  %52 = load i8*, i8** %7, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = load i8*, i8** %10, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = call i64 @strcmp(i8* %55, i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54, %51, %47
  store i32 0, i32* %5, align 4
  br label %61

60:                                               ; preds = %54
  store i32 1, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %59, %34, %22, %15
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i8* @channel_rfwd_bind_host(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
