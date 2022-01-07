; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/uuid/extr_uuid_compare.c_uuid_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/uuid/extr_uuid_compare.c_uuid_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@uuid_s_ok = common dso_local global i32 0, align 4
@time_low = common dso_local global i32 0, align 4
@time_mid = common dso_local global i32 0, align 4
@time_hi_and_version = common dso_local global i32 0, align 4
@clock_seq_hi_and_reserved = common dso_local global i32 0, align 4
@clock_seq_low = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uuid_compare(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* @uuid_s_ok, align 4
  %13 = load i32*, i32** %7, align 8
  store i32 %12, i32* %13, align 4
  br label %14

14:                                               ; preds = %11, %3
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = icmp eq %struct.TYPE_7__* %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %73

19:                                               ; preds = %14
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = icmp eq %struct.TYPE_7__* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = call i64 @uuid_is_nil(%struct.TYPE_7__* %23, i32* null)
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 0, i32 -1
  store i32 %27, i32* %4, align 4
  br label %73

28:                                               ; preds = %19
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %30 = icmp eq %struct.TYPE_7__* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = call i64 @uuid_is_nil(%struct.TYPE_7__* %32, i32* null)
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 0, i32 1
  store i32 %36, i32* %4, align 4
  br label %73

37:                                               ; preds = %28
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %40 = load i32, i32* @time_low, align 4
  %41 = call i32 @DIFF_RETURN(%struct.TYPE_7__* %38, %struct.TYPE_7__* %39, i32 %40)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %44 = load i32, i32* @time_mid, align 4
  %45 = call i32 @DIFF_RETURN(%struct.TYPE_7__* %42, %struct.TYPE_7__* %43, i32 %44)
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %48 = load i32, i32* @time_hi_and_version, align 4
  %49 = call i32 @DIFF_RETURN(%struct.TYPE_7__* %46, %struct.TYPE_7__* %47, i32 %48)
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %52 = load i32, i32* @clock_seq_hi_and_reserved, align 4
  %53 = call i32 @DIFF_RETURN(%struct.TYPE_7__* %50, %struct.TYPE_7__* %51, i32 %52)
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %56 = load i32, i32* @clock_seq_low, align 4
  %57 = call i32 @DIFF_RETURN(%struct.TYPE_7__* %54, %struct.TYPE_7__* %55, i32 %56)
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @memcmp(i32 %60, i32 %63, i32 4)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %37
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 -1, i32 1
  store i32 %71, i32* %4, align 4
  br label %73

72:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %72, %67, %31, %22, %18
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i64 @uuid_is_nil(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @DIFF_RETURN(%struct.TYPE_7__*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
