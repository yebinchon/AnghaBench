; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ficl/extr_words.c_compareInternal.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ficl/extr_words.c_compareInternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32)* @compareInternal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compareInternal(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = call i32 @vmCheckStack(%struct.TYPE_4__* %13, i32 4, i32 1)
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @stackPopUNS(i32 %17)
  store i64 %18, i64* %8, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @stackPopPtr(i32 %21)
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** %6, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @stackPopUNS(i32 %26)
  store i64 %27, i64* %7, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @stackPopPtr(i32 %30)
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %5, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %2
  %37 = load i64, i64* %7, align 8
  br label %40

38:                                               ; preds = %2
  %39 = load i64, i64* %8, align 8
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i64 [ %37, %36 ], [ %39, %38 ]
  store i64 %41, i64* %9, align 8
  br label %42

42:                                               ; preds = %72, %40
  %43 = load i64, i64* %9, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %46, 0
  br label %48

48:                                               ; preds = %45, %42
  %49 = phi i1 [ false, %42 ], [ %47, %45 ]
  br i1 %49, label %50, label %75

50:                                               ; preds = %48
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %5, align 8
  %53 = load i8, i8* %51, align 1
  store i8 %53, i8* %11, align 1
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %6, align 8
  %56 = load i8, i8* %54, align 1
  store i8 %56, i8* %12, align 1
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %50
  %60 = load i8, i8* %11, align 1
  %61 = call i64 @tolower(i8 signext %60)
  %62 = trunc i64 %61 to i8
  store i8 %62, i8* %11, align 1
  %63 = load i8, i8* %12, align 1
  %64 = call i64 @tolower(i8 signext %63)
  %65 = trunc i64 %64 to i8
  store i8 %65, i8* %12, align 1
  br label %66

66:                                               ; preds = %59, %50
  %67 = load i8, i8* %11, align 1
  %68 = sext i8 %67 to i32
  %69 = load i8, i8* %12, align 1
  %70 = sext i8 %69 to i32
  %71 = sub nsw i32 %68, %70
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %66
  %73 = load i64, i64* %9, align 8
  %74 = add nsw i64 %73, -1
  store i64 %74, i64* %9, align 8
  br label %42

75:                                               ; preds = %48
  %76 = load i32, i32* %10, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load i64, i64* %7, align 8
  %80 = load i64, i64* %8, align 8
  %81 = sub nsw i64 %79, %80
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %10, align 4
  br label %83

83:                                               ; preds = %78, %75
  %84 = load i32, i32* %10, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i32 -1, i32* %10, align 4
  br label %92

87:                                               ; preds = %83
  %88 = load i32, i32* %10, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i32 1, i32* %10, align 4
  br label %91

91:                                               ; preds = %90, %87
  br label %92

92:                                               ; preds = %91, %86
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @PUSHINT(i32 %93)
  ret void
}

declare dso_local i32 @vmCheckStack(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @stackPopUNS(i32) #1

declare dso_local i64 @stackPopPtr(i32) #1

declare dso_local i64 @tolower(i8 signext) #1

declare dso_local i32 @PUSHINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
