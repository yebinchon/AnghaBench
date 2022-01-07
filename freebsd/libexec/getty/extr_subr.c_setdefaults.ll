; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/getty/extr_subr.c_setdefaults.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/getty/extr_subr.c_setdefaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gettystrs = type { i64, i64, i64 }
%struct.gettynums = type { i32, i32, i32, i64 }
%struct.gettyflags = type { i32, i32, i32, i64 }

@gettystrs = common dso_local global %struct.gettystrs* null, align 8
@gettynums = common dso_local global %struct.gettynums* null, align 8
@gettyflags = common dso_local global %struct.gettyflags* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setdefaults() #0 {
  %1 = alloca %struct.gettystrs*, align 8
  %2 = alloca %struct.gettynums*, align 8
  %3 = alloca %struct.gettyflags*, align 8
  %4 = load %struct.gettystrs*, %struct.gettystrs** @gettystrs, align 8
  store %struct.gettystrs* %4, %struct.gettystrs** %1, align 8
  br label %5

5:                                                ; preds = %34, %0
  %6 = load %struct.gettystrs*, %struct.gettystrs** %1, align 8
  %7 = getelementptr inbounds %struct.gettystrs, %struct.gettystrs* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %37

10:                                               ; preds = %5
  %11 = load %struct.gettystrs*, %struct.gettystrs** %1, align 8
  %12 = getelementptr inbounds %struct.gettystrs, %struct.gettystrs* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %33, label %15

15:                                               ; preds = %10
  %16 = load %struct.gettystrs*, %struct.gettystrs** %1, align 8
  %17 = getelementptr inbounds %struct.gettystrs, %struct.gettystrs* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load %struct.gettystrs*, %struct.gettystrs** %1, align 8
  %22 = getelementptr inbounds %struct.gettystrs, %struct.gettystrs* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  br label %29

24:                                               ; preds = %15
  %25 = load %struct.gettystrs*, %struct.gettystrs** %1, align 8
  %26 = getelementptr inbounds %struct.gettystrs, %struct.gettystrs* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @strdup(i64 %27)
  br label %29

29:                                               ; preds = %24, %20
  %30 = phi i64 [ %23, %20 ], [ %28, %24 ]
  %31 = load %struct.gettystrs*, %struct.gettystrs** %1, align 8
  %32 = getelementptr inbounds %struct.gettystrs, %struct.gettystrs* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  br label %33

33:                                               ; preds = %29, %10
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.gettystrs*, %struct.gettystrs** %1, align 8
  %36 = getelementptr inbounds %struct.gettystrs, %struct.gettystrs* %35, i32 1
  store %struct.gettystrs* %36, %struct.gettystrs** %1, align 8
  br label %5

37:                                               ; preds = %5
  %38 = load %struct.gettynums*, %struct.gettynums** @gettynums, align 8
  store %struct.gettynums* %38, %struct.gettynums** %2, align 8
  br label %39

39:                                               ; preds = %56, %37
  %40 = load %struct.gettynums*, %struct.gettynums** %2, align 8
  %41 = getelementptr inbounds %struct.gettynums, %struct.gettynums* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %39
  %45 = load %struct.gettynums*, %struct.gettynums** %2, align 8
  %46 = getelementptr inbounds %struct.gettynums, %struct.gettynums* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %44
  %50 = load %struct.gettynums*, %struct.gettynums** %2, align 8
  %51 = getelementptr inbounds %struct.gettynums, %struct.gettynums* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.gettynums*, %struct.gettynums** %2, align 8
  %54 = getelementptr inbounds %struct.gettynums, %struct.gettynums* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %49, %44
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.gettynums*, %struct.gettynums** %2, align 8
  %58 = getelementptr inbounds %struct.gettynums, %struct.gettynums* %57, i32 1
  store %struct.gettynums* %58, %struct.gettynums** %2, align 8
  br label %39

59:                                               ; preds = %39
  %60 = load %struct.gettyflags*, %struct.gettyflags** @gettyflags, align 8
  store %struct.gettyflags* %60, %struct.gettyflags** %3, align 8
  br label %61

61:                                               ; preds = %78, %59
  %62 = load %struct.gettyflags*, %struct.gettyflags** %3, align 8
  %63 = getelementptr inbounds %struct.gettyflags, %struct.gettyflags* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %61
  %67 = load %struct.gettyflags*, %struct.gettyflags** %3, align 8
  %68 = getelementptr inbounds %struct.gettyflags, %struct.gettyflags* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %66
  %72 = load %struct.gettyflags*, %struct.gettyflags** %3, align 8
  %73 = getelementptr inbounds %struct.gettyflags, %struct.gettyflags* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.gettyflags*, %struct.gettyflags** %3, align 8
  %76 = getelementptr inbounds %struct.gettyflags, %struct.gettyflags* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %71, %66
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.gettyflags*, %struct.gettyflags** %3, align 8
  %80 = getelementptr inbounds %struct.gettyflags, %struct.gettyflags* %79, i32 1
  store %struct.gettyflags* %80, %struct.gettyflags** %3, align 8
  br label %61

81:                                               ; preds = %61
  ret void
}

declare dso_local i64 @strdup(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
