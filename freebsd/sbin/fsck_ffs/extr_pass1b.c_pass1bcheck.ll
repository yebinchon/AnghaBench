; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_pass1b.c_pass1bcheck.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_pass1b.c_pass1bcheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dups = type { i64, %struct.dups* }
%struct.inodesc = type { i64, i32, i32 }

@KEEPON = common dso_local global i32 0, align 4
@SKIP = common dso_local global i32 0, align 4
@duphead = common dso_local global %struct.dups* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"DUP\00", align 1
@muldup = common dso_local global %struct.dups* null, align 8
@rerun = common dso_local global i32 0, align 4
@STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inodesc*)* @pass1bcheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pass1bcheck(%struct.inodesc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inodesc*, align 8
  %4 = alloca %struct.dups*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.inodesc* %0, %struct.inodesc** %3, align 8
  %8 = load i32, i32* @KEEPON, align 4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %10 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %7, align 8
  %12 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %13 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %74, %1
  %16 = load i32, i32* %5, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %79

18:                                               ; preds = %15
  %19 = load i64, i64* %7, align 8
  %20 = call i64 @chkrange(i64 %19, i32 1)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @SKIP, align 4
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %22, %18
  %25 = load %struct.dups*, %struct.dups** @duphead, align 8
  store %struct.dups* %25, %struct.dups** %4, align 8
  br label %26

26:                                               ; preds = %58, %24
  %27 = load %struct.dups*, %struct.dups** %4, align 8
  %28 = icmp ne %struct.dups* %27, null
  br i1 %28, label %29, label %62

29:                                               ; preds = %26
  %30 = load %struct.dups*, %struct.dups** %4, align 8
  %31 = getelementptr inbounds %struct.dups, %struct.dups* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %29
  %36 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %37 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @blkerror(i32 %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %39)
  %41 = load %struct.dups*, %struct.dups** @duphead, align 8
  %42 = getelementptr inbounds %struct.dups, %struct.dups* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.dups*, %struct.dups** %4, align 8
  %45 = getelementptr inbounds %struct.dups, %struct.dups* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.dups*, %struct.dups** @duphead, align 8
  %48 = getelementptr inbounds %struct.dups, %struct.dups* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.dups*, %struct.dups** @duphead, align 8
  %50 = getelementptr inbounds %struct.dups, %struct.dups* %49, i32 0, i32 1
  %51 = load %struct.dups*, %struct.dups** %50, align 8
  store %struct.dups* %51, %struct.dups** @duphead, align 8
  br label %52

52:                                               ; preds = %35, %29
  %53 = load %struct.dups*, %struct.dups** %4, align 8
  %54 = load %struct.dups*, %struct.dups** @muldup, align 8
  %55 = icmp eq %struct.dups* %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %62

57:                                               ; preds = %52
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.dups*, %struct.dups** %4, align 8
  %60 = getelementptr inbounds %struct.dups, %struct.dups* %59, i32 0, i32 1
  %61 = load %struct.dups*, %struct.dups** %60, align 8
  store %struct.dups* %61, %struct.dups** %4, align 8
  br label %26

62:                                               ; preds = %56, %26
  %63 = load %struct.dups*, %struct.dups** @muldup, align 8
  %64 = icmp eq %struct.dups* %63, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %62
  %66 = load %struct.dups*, %struct.dups** @duphead, align 8
  %67 = load %struct.dups*, %struct.dups** @muldup, align 8
  %68 = getelementptr inbounds %struct.dups, %struct.dups* %67, i32 0, i32 1
  %69 = load %struct.dups*, %struct.dups** %68, align 8
  %70 = icmp eq %struct.dups* %66, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %65, %62
  store i32 1, i32* @rerun, align 4
  %72 = load i32, i32* @STOP, align 4
  store i32 %72, i32* %2, align 4
  br label %81

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %7, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %7, align 8
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %5, align 4
  br label %15

79:                                               ; preds = %15
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %79, %71
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i64 @chkrange(i64, i32) #1

declare dso_local i32 @blkerror(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
