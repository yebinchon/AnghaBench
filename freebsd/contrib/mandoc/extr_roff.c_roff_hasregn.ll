; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_hasregn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_hasregn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff = type { %struct.roffreg* }
%struct.roffreg = type { %struct.TYPE_2__, %struct.roffreg* }
%struct.TYPE_2__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.roff*, i8*, i64)* @roff_hasregn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @roff_hasregn(%struct.roff* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.roff*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.roffreg*, align 8
  %9 = alloca i32, align 4
  store %struct.roff* %0, %struct.roff** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 46, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %3
  %16 = load i64, i64* %7, align 8
  %17 = icmp eq i64 2, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = load %struct.roff*, %struct.roff** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = call i32 @roff_getregro(%struct.roff* %19, i8* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 -1, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 1, i32* %4, align 4
  br label %57

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %15, %3
  %28 = load %struct.roff*, %struct.roff** %5, align 8
  %29 = getelementptr inbounds %struct.roff, %struct.roff* %28, i32 0, i32 0
  %30 = load %struct.roffreg*, %struct.roffreg** %29, align 8
  store %struct.roffreg* %30, %struct.roffreg** %8, align 8
  br label %31

31:                                               ; preds = %52, %27
  %32 = load %struct.roffreg*, %struct.roffreg** %8, align 8
  %33 = icmp ne %struct.roffreg* %32, null
  br i1 %33, label %34, label %56

34:                                               ; preds = %31
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.roffreg*, %struct.roffreg** %8, align 8
  %37 = getelementptr inbounds %struct.roffreg, %struct.roffreg* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %35, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %34
  %42 = load i8*, i8** %6, align 8
  %43 = load %struct.roffreg*, %struct.roffreg** %8, align 8
  %44 = getelementptr inbounds %struct.roffreg, %struct.roffreg* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i64 @strncmp(i8* %42, i32 %46, i64 %47)
  %49 = icmp eq i64 0, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  store i32 1, i32* %4, align 4
  br label %57

51:                                               ; preds = %41, %34
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.roffreg*, %struct.roffreg** %8, align 8
  %54 = getelementptr inbounds %struct.roffreg, %struct.roffreg* %53, i32 0, i32 1
  %55 = load %struct.roffreg*, %struct.roffreg** %54, align 8
  store %struct.roffreg* %55, %struct.roffreg** %8, align 8
  br label %31

56:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %50, %25
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @roff_getregro(%struct.roff*, i8*) #1

declare dso_local i64 @strncmp(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
