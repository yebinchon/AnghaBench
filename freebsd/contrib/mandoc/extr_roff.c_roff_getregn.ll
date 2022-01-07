; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_getregn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_getregn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff = type { %struct.roffreg* }
%struct.roffreg = type { i32, i32, %struct.TYPE_2__, %struct.roffreg* }
%struct.TYPE_2__ = type { i64, i32 }

@INT_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.roff*, i8*, i64, i8)* @roff_getregn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @roff_getregn(%struct.roff* %0, i8* %1, i64 %2, i8 signext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.roff*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.roffreg*, align 8
  %11 = alloca i32, align 4
  store %struct.roff* %0, %struct.roff** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8 %3, i8* %9, align 1
  %12 = load i8*, i8** %7, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 46, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %4
  %18 = load i64, i64* %8, align 8
  %19 = icmp eq i64 2, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load %struct.roff*, %struct.roff** %6, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = call i32 @roff_getregro(%struct.roff* %21, i8* %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 -1, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %5, align 4
  br label %88

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29, %17, %4
  %31 = load %struct.roff*, %struct.roff** %6, align 8
  %32 = getelementptr inbounds %struct.roff, %struct.roff* %31, i32 0, i32 0
  %33 = load %struct.roffreg*, %struct.roffreg** %32, align 8
  store %struct.roffreg* %33, %struct.roffreg** %10, align 8
  br label %34

34:                                               ; preds = %78, %30
  %35 = load %struct.roffreg*, %struct.roffreg** %10, align 8
  %36 = icmp ne %struct.roffreg* %35, null
  br i1 %36, label %37, label %82

37:                                               ; preds = %34
  %38 = load i64, i64* %8, align 8
  %39 = load %struct.roffreg*, %struct.roffreg** %10, align 8
  %40 = getelementptr inbounds %struct.roffreg, %struct.roffreg* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %38, %42
  br i1 %43, label %44, label %77

44:                                               ; preds = %37
  %45 = load i8*, i8** %7, align 8
  %46 = load %struct.roffreg*, %struct.roffreg** %10, align 8
  %47 = getelementptr inbounds %struct.roffreg, %struct.roffreg* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i64, i64* %8, align 8
  %51 = call i64 @strncmp(i8* %45, i32 %49, i64 %50)
  %52 = icmp eq i64 0, %51
  br i1 %52, label %53, label %77

53:                                               ; preds = %44
  %54 = load i8, i8* %9, align 1
  %55 = sext i8 %54 to i32
  switch i32 %55, label %72 [
    i32 43, label %56
    i32 45, label %64
  ]

56:                                               ; preds = %53
  %57 = load %struct.roffreg*, %struct.roffreg** %10, align 8
  %58 = getelementptr inbounds %struct.roffreg, %struct.roffreg* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.roffreg*, %struct.roffreg** %10, align 8
  %61 = getelementptr inbounds %struct.roffreg, %struct.roffreg* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %73

64:                                               ; preds = %53
  %65 = load %struct.roffreg*, %struct.roffreg** %10, align 8
  %66 = getelementptr inbounds %struct.roffreg, %struct.roffreg* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.roffreg*, %struct.roffreg** %10, align 8
  %69 = getelementptr inbounds %struct.roffreg, %struct.roffreg* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %73

72:                                               ; preds = %53
  br label %73

73:                                               ; preds = %72, %64, %56
  %74 = load %struct.roffreg*, %struct.roffreg** %10, align 8
  %75 = getelementptr inbounds %struct.roffreg, %struct.roffreg* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %5, align 4
  br label %88

77:                                               ; preds = %44, %37
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.roffreg*, %struct.roffreg** %10, align 8
  %80 = getelementptr inbounds %struct.roffreg, %struct.roffreg* %79, i32 0, i32 3
  %81 = load %struct.roffreg*, %struct.roffreg** %80, align 8
  store %struct.roffreg* %81, %struct.roffreg** %10, align 8
  br label %34

82:                                               ; preds = %34
  %83 = load %struct.roff*, %struct.roff** %6, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = load i64, i64* %8, align 8
  %86 = load i32, i32* @INT_MIN, align 4
  %87 = call i32 @roff_setregn(%struct.roff* %83, i8* %84, i64 %85, i32 0, i8 signext 0, i32 %86)
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %82, %73, %27
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @roff_getregro(%struct.roff*, i8*) #1

declare dso_local i64 @strncmp(i8*, i32, i64) #1

declare dso_local i32 @roff_setregn(%struct.roff*, i8*, i64, i32, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
