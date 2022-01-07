; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince-stub.c_skip_message.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince-stub.c_skip_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skipper = type { i32, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@curproc = common dso_local global i32 0, align 4
@skippy = common dso_local global %struct.skipper* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @skip_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skip_message(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca [80 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca %struct.skipper*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ugt i64 %14, 80
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 80, i32* %7, align 4
  br label %17

17:                                               ; preds = %16, %1
  %18 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %19 = call i32 @memset(i8* %18, i32 0, i32 80)
  %20 = load i32, i32* @curproc, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @ReadProcessMemory(i32 %20, i32 %25, i8* %26, i32 %27, i32* %5)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %59

31:                                               ; preds = %17
  %32 = load %struct.skipper*, %struct.skipper** @skippy, align 8
  store %struct.skipper* %32, %struct.skipper** %6, align 8
  br label %33

33:                                               ; preds = %55, %31
  %34 = load %struct.skipper*, %struct.skipper** %6, align 8
  %35 = getelementptr inbounds %struct.skipper, %struct.skipper* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %58

38:                                               ; preds = %33
  %39 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %40 = bitcast i8* %39 to i32*
  %41 = load %struct.skipper*, %struct.skipper** %6, align 8
  %42 = getelementptr inbounds %struct.skipper, %struct.skipper* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.skipper*, %struct.skipper** %6, align 8
  %45 = getelementptr inbounds %struct.skipper, %struct.skipper* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @wcslen(i32* %46)
  %48 = call i64 @wcsncmp(i32* %40, i32* %43, i32 %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %38
  %51 = load %struct.skipper*, %struct.skipper** %6, align 8
  %52 = getelementptr inbounds %struct.skipper, %struct.skipper* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %2, align 4
  br label %59

54:                                               ; preds = %38
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.skipper*, %struct.skipper** %6, align 8
  %57 = getelementptr inbounds %struct.skipper, %struct.skipper* %56, i32 1
  store %struct.skipper* %57, %struct.skipper** %6, align 8
  br label %33

58:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %50, %30
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @ReadProcessMemory(i32, i32, i8*, i32, i32*) #1

declare dso_local i64 @wcsncmp(i32*, i32*, i32) #1

declare dso_local i32 @wcslen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
