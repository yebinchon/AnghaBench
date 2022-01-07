; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/getty/extr_subr.c_gendefaults.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/getty/extr_subr.c_gendefaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gettystrs = type { i64, i32, i64 }
%struct.gettynums = type { i32, i32, i64, i64 }
%struct.gettyflags = type { i32, i32, i32, i64, i64 }

@gettystrs = common dso_local global %struct.gettystrs* null, align 8
@gettynums = common dso_local global %struct.gettynums* null, align 8
@gettyflags = common dso_local global %struct.gettyflags* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gendefaults() #0 {
  %1 = alloca %struct.gettystrs*, align 8
  %2 = alloca %struct.gettynums*, align 8
  %3 = alloca %struct.gettyflags*, align 8
  %4 = load %struct.gettystrs*, %struct.gettystrs** @gettystrs, align 8
  store %struct.gettystrs* %4, %struct.gettystrs** %1, align 8
  br label %5

5:                                                ; preds = %23, %0
  %6 = load %struct.gettystrs*, %struct.gettystrs** %1, align 8
  %7 = getelementptr inbounds %struct.gettystrs, %struct.gettystrs* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %5
  %11 = load %struct.gettystrs*, %struct.gettystrs** %1, align 8
  %12 = getelementptr inbounds %struct.gettystrs, %struct.gettystrs* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load %struct.gettystrs*, %struct.gettystrs** %1, align 8
  %17 = getelementptr inbounds %struct.gettystrs, %struct.gettystrs* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @strdup(i64 %18)
  %20 = load %struct.gettystrs*, %struct.gettystrs** %1, align 8
  %21 = getelementptr inbounds %struct.gettystrs, %struct.gettystrs* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  br label %22

22:                                               ; preds = %15, %10
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.gettystrs*, %struct.gettystrs** %1, align 8
  %25 = getelementptr inbounds %struct.gettystrs, %struct.gettystrs* %24, i32 1
  store %struct.gettystrs* %25, %struct.gettystrs** %1, align 8
  br label %5

26:                                               ; preds = %5
  %27 = load %struct.gettynums*, %struct.gettynums** @gettynums, align 8
  store %struct.gettynums* %27, %struct.gettynums** %2, align 8
  br label %28

28:                                               ; preds = %45, %26
  %29 = load %struct.gettynums*, %struct.gettynums** %2, align 8
  %30 = getelementptr inbounds %struct.gettynums, %struct.gettynums* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %28
  %34 = load %struct.gettynums*, %struct.gettynums** %2, align 8
  %35 = getelementptr inbounds %struct.gettynums, %struct.gettynums* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.gettynums*, %struct.gettynums** %2, align 8
  %40 = getelementptr inbounds %struct.gettynums, %struct.gettynums* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.gettynums*, %struct.gettynums** %2, align 8
  %43 = getelementptr inbounds %struct.gettynums, %struct.gettynums* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %38, %33
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.gettynums*, %struct.gettynums** %2, align 8
  %47 = getelementptr inbounds %struct.gettynums, %struct.gettynums* %46, i32 1
  store %struct.gettynums* %47, %struct.gettynums** %2, align 8
  br label %28

48:                                               ; preds = %28
  %49 = load %struct.gettyflags*, %struct.gettyflags** @gettyflags, align 8
  store %struct.gettyflags* %49, %struct.gettyflags** %3, align 8
  br label %50

50:                                               ; preds = %73, %48
  %51 = load %struct.gettyflags*, %struct.gettyflags** %3, align 8
  %52 = getelementptr inbounds %struct.gettyflags, %struct.gettyflags* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %76

55:                                               ; preds = %50
  %56 = load %struct.gettyflags*, %struct.gettyflags** %3, align 8
  %57 = getelementptr inbounds %struct.gettyflags, %struct.gettyflags* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.gettyflags*, %struct.gettyflags** %3, align 8
  %62 = getelementptr inbounds %struct.gettyflags, %struct.gettyflags* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.gettyflags*, %struct.gettyflags** %3, align 8
  %65 = getelementptr inbounds %struct.gettyflags, %struct.gettyflags* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  br label %72

66:                                               ; preds = %55
  %67 = load %struct.gettyflags*, %struct.gettyflags** %3, align 8
  %68 = getelementptr inbounds %struct.gettyflags, %struct.gettyflags* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.gettyflags*, %struct.gettyflags** %3, align 8
  %71 = getelementptr inbounds %struct.gettyflags, %struct.gettyflags* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %66, %60
  br label %73

73:                                               ; preds = %72
  %74 = load %struct.gettyflags*, %struct.gettyflags** %3, align 8
  %75 = getelementptr inbounds %struct.gettyflags, %struct.gettyflags* %74, i32 1
  store %struct.gettyflags* %75, %struct.gettyflags** %3, align 8
  br label %50

76:                                               ; preds = %50
  ret void
}

declare dso_local i32 @strdup(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
