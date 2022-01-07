; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_output.c_find_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_output.c_find_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.auth = type { i64, i64, i64 }
%struct.interface = type { %struct.auth* }

@MAX_AUTH_KEYS = common dso_local global i32 0, align 4
@RIP_AUTH_NONE = common dso_local global i64 0, align 8
@clk = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.auth* @find_auth(%struct.interface* %0) #0 {
  %2 = alloca %struct.auth*, align 8
  %3 = alloca %struct.interface*, align 8
  %4 = alloca %struct.auth*, align 8
  %5 = alloca %struct.auth*, align 8
  %6 = alloca i32, align 4
  store %struct.interface* %0, %struct.interface** %3, align 8
  %7 = load %struct.interface*, %struct.interface** %3, align 8
  %8 = icmp eq %struct.interface* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.auth* null, %struct.auth** %2, align 8
  br label %73

10:                                               ; preds = %1
  store %struct.auth* null, %struct.auth** %5, align 8
  %11 = load %struct.interface*, %struct.interface** %3, align 8
  %12 = getelementptr inbounds %struct.interface, %struct.interface* %11, i32 0, i32 0
  %13 = load %struct.auth*, %struct.auth** %12, align 8
  store %struct.auth* %13, %struct.auth** %4, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %66, %10
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @MAX_AUTH_KEYS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %71

18:                                               ; preds = %14
  %19 = load %struct.auth*, %struct.auth** %4, align 8
  %20 = getelementptr inbounds %struct.auth, %struct.auth* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @RIP_AUTH_NONE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %71

25:                                               ; preds = %18
  %26 = load %struct.auth*, %struct.auth** %4, align 8
  %27 = getelementptr inbounds %struct.auth, %struct.auth* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clk, i32 0, i32 0), align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %66

32:                                               ; preds = %25
  %33 = load %struct.auth*, %struct.auth** %4, align 8
  %34 = getelementptr inbounds %struct.auth, %struct.auth* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clk, i32 0, i32 0), align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %32
  %39 = load %struct.auth*, %struct.auth** %5, align 8
  %40 = icmp eq %struct.auth* %39, null
  br i1 %40, label %49, label %41

41:                                               ; preds = %38
  %42 = load %struct.auth*, %struct.auth** %4, align 8
  %43 = getelementptr inbounds %struct.auth, %struct.auth* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.auth*, %struct.auth** %5, align 8
  %46 = getelementptr inbounds %struct.auth, %struct.auth* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %44, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %41, %38
  %50 = load %struct.auth*, %struct.auth** %4, align 8
  store %struct.auth* %50, %struct.auth** %5, align 8
  br label %51

51:                                               ; preds = %49, %41
  br label %66

52:                                               ; preds = %32
  %53 = load %struct.auth*, %struct.auth** %5, align 8
  %54 = icmp eq %struct.auth* %53, null
  br i1 %54, label %63, label %55

55:                                               ; preds = %52
  %56 = load %struct.auth*, %struct.auth** %5, align 8
  %57 = getelementptr inbounds %struct.auth, %struct.auth* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.auth*, %struct.auth** %4, align 8
  %60 = getelementptr inbounds %struct.auth, %struct.auth* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %58, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %55, %52
  %64 = load %struct.auth*, %struct.auth** %4, align 8
  store %struct.auth* %64, %struct.auth** %5, align 8
  br label %65

65:                                               ; preds = %63, %55
  br label %66

66:                                               ; preds = %65, %51, %31
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  %69 = load %struct.auth*, %struct.auth** %4, align 8
  %70 = getelementptr inbounds %struct.auth, %struct.auth* %69, i32 1
  store %struct.auth* %70, %struct.auth** %4, align 8
  br label %14

71:                                               ; preds = %24, %14
  %72 = load %struct.auth*, %struct.auth** %5, align 8
  store %struct.auth* %72, %struct.auth** %2, align 8
  br label %73

73:                                               ; preds = %71, %9
  %74 = load %struct.auth*, %struct.auth** %2, align 8
  ret %struct.auth* %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
