; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_posix_spawn.c_process_file_actions_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_posix_spawn.c_process_file_actions_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@errno = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@F_SETFD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @process_file_actions_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_file_actions_entry(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %90 [
    i32 128, label %9
    i32 129, label %64
    i32 130, label %85
  ]

9:                                                ; preds = %1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @_open(i32 %12, i32 %15, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %9
  %23 = load i32, i32* @errno, align 4
  store i32 %23, i32* %2, align 4
  br label %91

24:                                               ; preds = %9
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %25, %28
  br i1 %29, label %30, label %54

30:                                               ; preds = %24
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @_dup2(i32 %31, i32 %34)
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load i32, i32* @errno, align 4
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @_close(i32 %39)
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %91

42:                                               ; preds = %30
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @_close(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load i32, i32* @errno, align 4
  %48 = load i32, i32* @EBADF, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @EBADF, align 4
  store i32 %51, i32* %2, align 4
  br label %91

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52, %42
  br label %54

54:                                               ; preds = %53, %24
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @F_SETFD, align 4
  %59 = call i32 @_fcntl(i32 %57, i32 %58, i32 0)
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* @errno, align 4
  store i32 %62, i32* %2, align 4
  br label %91

63:                                               ; preds = %54
  br label %90

64:                                               ; preds = %1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @_dup2(i32 %67, i32 %70)
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %75

73:                                               ; preds = %64
  %74 = load i32, i32* @errno, align 4
  store i32 %74, i32* %2, align 4
  br label %91

75:                                               ; preds = %64
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @F_SETFD, align 4
  %80 = call i32 @_fcntl(i32 %78, i32 %79, i32 0)
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i32, i32* @errno, align 4
  store i32 %83, i32* %2, align 4
  br label %91

84:                                               ; preds = %75
  br label %90

85:                                               ; preds = %1
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @_close(i32 %88)
  br label %90

90:                                               ; preds = %1, %85, %84, %63
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %90, %82, %73, %61, %50, %37, %22
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @_open(i32, i32, i32) #1

declare dso_local i32 @_dup2(i32, i32) #1

declare dso_local i32 @_close(i32) #1

declare dso_local i32 @_fcntl(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
