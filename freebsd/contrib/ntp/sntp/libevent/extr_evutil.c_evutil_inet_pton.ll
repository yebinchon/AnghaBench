; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evutil.c_evutil_inet_pton.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evutil.c_evutil_inet_pton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%u.%u.%u.%u%c\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evutil_inet_pton(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca %struct.in_addr*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @AF_INET, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %54

17:                                               ; preds = %3
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.in_addr*
  store %struct.in_addr* %19, %struct.in_addr** %13, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @sscanf(i8* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %8, i32* %9, i32* %10, i32* %11, i8* %12)
  %22 = icmp ne i32 %21, 4
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %55

24:                                               ; preds = %17
  %25 = load i32, i32* %8, align 4
  %26 = icmp ugt i32 %25, 255
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %55

28:                                               ; preds = %24
  %29 = load i32, i32* %9, align 4
  %30 = icmp ugt i32 %29, 255
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %55

32:                                               ; preds = %28
  %33 = load i32, i32* %10, align 4
  %34 = icmp ugt i32 %33, 255
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %55

36:                                               ; preds = %32
  %37 = load i32, i32* %11, align 4
  %38 = icmp ugt i32 %37, 255
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %55

40:                                               ; preds = %36
  %41 = load i32, i32* %8, align 4
  %42 = shl i32 %41, 24
  %43 = load i32, i32* %9, align 4
  %44 = shl i32 %43, 16
  %45 = or i32 %42, %44
  %46 = load i32, i32* %10, align 4
  %47 = shl i32 %46, 8
  %48 = or i32 %45, %47
  %49 = load i32, i32* %11, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @htonl(i32 %50)
  %52 = load %struct.in_addr*, %struct.in_addr** %13, align 8
  %53 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  store i32 1, i32* %4, align 4
  br label %55

54:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %40, %39, %35, %31, %27, %23
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i8*) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
