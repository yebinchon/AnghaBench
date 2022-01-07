; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.comp.c_tw_prlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.comp.c_tw_prlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varent = type { %struct.varent*, %struct.varent*, i64, i32, %struct.varent* }

@setintr = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\09\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.varent*)* @tw_prlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tw_prlist(%struct.varent* %0) #0 {
  %2 = alloca %struct.varent*, align 8
  %3 = alloca %struct.varent*, align 8
  %4 = alloca i32, align 4
  store %struct.varent* %0, %struct.varent** %2, align 8
  br label %5

5:                                                ; preds = %49, %1
  br label %6

6:                                                ; preds = %11, %5
  %7 = load %struct.varent*, %struct.varent** %2, align 8
  %8 = getelementptr inbounds %struct.varent, %struct.varent* %7, i32 0, i32 4
  %9 = load %struct.varent*, %struct.varent** %8, align 8
  %10 = icmp ne %struct.varent* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = load %struct.varent*, %struct.varent** %2, align 8
  %13 = getelementptr inbounds %struct.varent, %struct.varent* %12, i32 0, i32 4
  %14 = load %struct.varent*, %struct.varent** %13, align 8
  store %struct.varent* %14, %struct.varent** %2, align 8
  br label %6

15:                                               ; preds = %6
  br label %16

16:                                               ; preds = %65, %15
  %17 = load %struct.varent*, %struct.varent** %2, align 8
  %18 = getelementptr inbounds %struct.varent, %struct.varent* %17, i32 0, i32 0
  %19 = load %struct.varent*, %struct.varent** %18, align 8
  %20 = icmp eq %struct.varent* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %66

22:                                               ; preds = %16
  %23 = load i64, i64* @setintr, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = call i32 @pintr_push_enable(i32* %4)
  %27 = call i32 @cleanup_until(i32* %4)
  br label %28

28:                                               ; preds = %25, %22
  %29 = load %struct.varent*, %struct.varent** %2, align 8
  %30 = getelementptr inbounds %struct.varent, %struct.varent* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @short2str(i32 %31)
  %33 = call i32 @xprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.varent*, %struct.varent** %2, align 8
  %35 = getelementptr inbounds %struct.varent, %struct.varent* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %28
  %39 = load %struct.varent*, %struct.varent** %2, align 8
  %40 = getelementptr inbounds %struct.varent, %struct.varent* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @tw_pr(i64 %41)
  br label %43

43:                                               ; preds = %38, %28
  %44 = call i32 @xputchar(i8 signext 10)
  %45 = load %struct.varent*, %struct.varent** %2, align 8
  %46 = getelementptr inbounds %struct.varent, %struct.varent* %45, i32 0, i32 1
  %47 = load %struct.varent*, %struct.varent** %46, align 8
  %48 = icmp ne %struct.varent* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct.varent*, %struct.varent** %2, align 8
  %51 = getelementptr inbounds %struct.varent, %struct.varent* %50, i32 0, i32 1
  %52 = load %struct.varent*, %struct.varent** %51, align 8
  store %struct.varent* %52, %struct.varent** %2, align 8
  br label %5

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %59, %53
  %55 = load %struct.varent*, %struct.varent** %2, align 8
  store %struct.varent* %55, %struct.varent** %3, align 8
  %56 = load %struct.varent*, %struct.varent** %2, align 8
  %57 = getelementptr inbounds %struct.varent, %struct.varent* %56, i32 0, i32 0
  %58 = load %struct.varent*, %struct.varent** %57, align 8
  store %struct.varent* %58, %struct.varent** %2, align 8
  br label %59

59:                                               ; preds = %54
  %60 = load %struct.varent*, %struct.varent** %2, align 8
  %61 = getelementptr inbounds %struct.varent, %struct.varent* %60, i32 0, i32 1
  %62 = load %struct.varent*, %struct.varent** %61, align 8
  %63 = load %struct.varent*, %struct.varent** %3, align 8
  %64 = icmp eq %struct.varent* %62, %63
  br i1 %64, label %54, label %65

65:                                               ; preds = %59
  br label %16

66:                                               ; preds = %21
  ret void
}

declare dso_local i32 @pintr_push_enable(i32*) #1

declare dso_local i32 @cleanup_until(i32*) #1

declare dso_local i32 @xprintf(i8*, i32) #1

declare dso_local i32 @short2str(i32) #1

declare dso_local i32 @tw_pr(i64) #1

declare dso_local i32 @xputchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
