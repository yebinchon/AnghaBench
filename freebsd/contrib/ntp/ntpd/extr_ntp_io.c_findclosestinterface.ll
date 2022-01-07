; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_io.c_findclosestinterface.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_io.c_findclosestinterface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i64, %struct.TYPE_4__* }

@ep_list = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"findclosestinterface(%s) failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"findclosestinterface(%s) -> %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @findclosestinterface(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = call i32 @ZERO_SOCK(i32* %8)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %6, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ep_list, align 8
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %5, align 8
  br label %11

11:                                               ; preds = %48, %2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %52

14:                                               ; preds = %11
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %33, label %19

19:                                               ; preds = %14
  %20 = load i32*, i32** %3, align 8
  %21 = call i64 @AF(i32* %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %33, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26, %19, %14
  br label %48

34:                                               ; preds = %26
  %35 = load i32*, i32** %3, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = call i32 @calc_addr_distance(i32* %7, i32* %35, i32* %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %40 = icmp eq %struct.TYPE_4__* null, %39
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = call i32 @cmp_addr_distance(i32* %7, i32* %8)
  %43 = icmp eq i32 -1, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %41, %34
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %8, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %46, %struct.TYPE_4__** %6, align 8
  br label %47

47:                                               ; preds = %44, %41
  br label %48

48:                                               ; preds = %47, %33
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  store %struct.TYPE_4__* %51, %struct.TYPE_4__** %5, align 8
  br label %11

52:                                               ; preds = %11
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %54 = icmp eq %struct.TYPE_4__* null, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @stoa(i32* %56)
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = call i32 @DPRINTF(i32 4, i8* %59)
  br label %70

61:                                               ; preds = %52
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @stoa(i32* %62)
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = call i32 @stoa(i32* %65)
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i8*
  %69 = call i32 @DPRINTF(i32 4, i8* %68)
  br label %70

70:                                               ; preds = %61, %55
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  ret %struct.TYPE_4__* %71
}

declare dso_local i32 @ZERO_SOCK(i32*) #1

declare dso_local i64 @AF(i32*) #1

declare dso_local i32 @calc_addr_distance(i32*, i32*, i32*) #1

declare dso_local i32 @cmp_addr_distance(i32*, i32*) #1

declare dso_local i32 @DPRINTF(i32, i8*) #1

declare dso_local i32 @stoa(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
