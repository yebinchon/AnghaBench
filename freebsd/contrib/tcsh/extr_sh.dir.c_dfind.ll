; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.dir.c_dfind.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.dir.c_dfind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.directory = type { %struct.directory* }

@dcwd = common dso_local global %struct.directory* null, align 8
@dhead = common dso_local global %struct.directory zeroinitializer, align 8
@ERR_NAME = common dso_local global i32 0, align 4
@ERR_DEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.directory* (i64*)* @dfind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.directory* @dfind(i64* %0) #0 {
  %2 = alloca %struct.directory*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca %struct.directory*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  store i64* %0, i64** %3, align 8
  %7 = load i64*, i64** %3, align 8
  %8 = getelementptr inbounds i64, i64* %7, i32 1
  store i64* %8, i64** %3, align 8
  %9 = load i64, i64* %7, align 8
  %10 = icmp ne i64 %9, 43
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.directory* null, %struct.directory** %2, align 8
  br label %63

12:                                               ; preds = %1
  %13 = load i64*, i64** %3, align 8
  store i64* %13, i64** %6, align 8
  br label %14

14:                                               ; preds = %20, %12
  %15 = load i64*, i64** %6, align 8
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @Isdigit(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %19
  %21 = load i64*, i64** %6, align 8
  %22 = getelementptr inbounds i64, i64* %21, i32 1
  store i64* %22, i64** %6, align 8
  br label %14

23:                                               ; preds = %14
  %24 = load i64*, i64** %6, align 8
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store %struct.directory* null, %struct.directory** %2, align 8
  br label %63

28:                                               ; preds = %23
  %29 = load i64*, i64** %3, align 8
  %30 = call i32 @getn(i64* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store %struct.directory* null, %struct.directory** %2, align 8
  br label %63

34:                                               ; preds = %28
  %35 = load %struct.directory*, %struct.directory** @dcwd, align 8
  store %struct.directory* %35, %struct.directory** %4, align 8
  br label %36

36:                                               ; preds = %58, %34
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %61

39:                                               ; preds = %36
  %40 = load %struct.directory*, %struct.directory** %4, align 8
  %41 = getelementptr inbounds %struct.directory, %struct.directory* %40, i32 0, i32 0
  %42 = load %struct.directory*, %struct.directory** %41, align 8
  store %struct.directory* %42, %struct.directory** %4, align 8
  %43 = icmp eq %struct.directory* %42, @dhead
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.directory*, %struct.directory** %4, align 8
  %46 = getelementptr inbounds %struct.directory, %struct.directory* %45, i32 0, i32 0
  %47 = load %struct.directory*, %struct.directory** %46, align 8
  store %struct.directory* %47, %struct.directory** %4, align 8
  br label %48

48:                                               ; preds = %44, %39
  %49 = load %struct.directory*, %struct.directory** %4, align 8
  %50 = load %struct.directory*, %struct.directory** @dcwd, align 8
  %51 = icmp eq %struct.directory* %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load i32, i32* @ERR_NAME, align 4
  %54 = load i32, i32* @ERR_DEEP, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @stderror(i32 %55)
  br label %57

57:                                               ; preds = %52, %48
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %5, align 4
  br label %36

61:                                               ; preds = %36
  %62 = load %struct.directory*, %struct.directory** %4, align 8
  store %struct.directory* %62, %struct.directory** %2, align 8
  br label %63

63:                                               ; preds = %61, %33, %27, %11
  %64 = load %struct.directory*, %struct.directory** %2, align 8
  ret %struct.directory* %64
}

declare dso_local i64 @Isdigit(i64) #1

declare dso_local i32 @getn(i64*) #1

declare dso_local i32 @stderror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
