; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getmntinfo.c_getmntinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getmntinfo.c_getmntinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statfs = type { i32 }

@getmntinfo.mntbuf = internal global %struct.statfs* null, align 8
@getmntinfo.mntsize = internal global i32 0, align 4
@getmntinfo.bufsize = internal global i64 0, align 8
@MNT_NOWAIT = common dso_local global i32 0, align 4
@MAX_TRIES = common dso_local global i32 0, align 4
@SCALING_FACTOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getmntinfo(%struct.statfs** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.statfs**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.statfs** %0, %struct.statfs*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @getmntinfo.mntsize, align 4
  %8 = icmp sle i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32, i32* @MNT_NOWAIT, align 4
  %11 = call i32 @getfsstat(%struct.statfs* null, i64 0, i32 %10)
  store i32 %11, i32* @getmntinfo.mntsize, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %71

14:                                               ; preds = %9, %2
  %15 = load i64, i64* @getmntinfo.bufsize, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load %struct.statfs*, %struct.statfs** @getmntinfo.mntbuf, align 8
  %19 = load i64, i64* @getmntinfo.bufsize, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @getfsstat(%struct.statfs* %18, i64 %19, i32 %20)
  store i32 %21, i32* @getmntinfo.mntsize, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %71

24:                                               ; preds = %17, %14
  br label %25

25:                                               ; preds = %56, %24
  %26 = load i32, i32* %6, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @MAX_TRIES, align 4
  %29 = icmp ult i32 %26, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load i64, i64* @getmntinfo.bufsize, align 8
  %32 = load i32, i32* @getmntinfo.mntsize, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = icmp ule i64 %31, %34
  br label %36

36:                                               ; preds = %30, %25
  %37 = phi i1 [ false, %25 ], [ %35, %30 ]
  br i1 %37, label %38, label %57

38:                                               ; preds = %36
  %39 = load i32, i32* @getmntinfo.mntsize, align 4
  %40 = load i32, i32* @SCALING_FACTOR, align 4
  %41 = mul nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 4
  store i64 %43, i64* @getmntinfo.bufsize, align 8
  %44 = load %struct.statfs*, %struct.statfs** @getmntinfo.mntbuf, align 8
  %45 = load i64, i64* @getmntinfo.bufsize, align 8
  %46 = call %struct.statfs* @reallocf(%struct.statfs* %44, i64 %45)
  store %struct.statfs* %46, %struct.statfs** @getmntinfo.mntbuf, align 8
  %47 = icmp eq %struct.statfs* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %71

49:                                               ; preds = %38
  %50 = load %struct.statfs*, %struct.statfs** @getmntinfo.mntbuf, align 8
  %51 = load i64, i64* @getmntinfo.bufsize, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @getfsstat(%struct.statfs* %50, i64 %51, i32 %52)
  store i32 %53, i32* @getmntinfo.mntsize, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %71

56:                                               ; preds = %49
  br label %25

57:                                               ; preds = %36
  %58 = load %struct.statfs*, %struct.statfs** @getmntinfo.mntbuf, align 8
  %59 = load %struct.statfs**, %struct.statfs*** %4, align 8
  store %struct.statfs* %58, %struct.statfs** %59, align 8
  %60 = load i32, i32* @getmntinfo.mntsize, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* @getmntinfo.bufsize, align 8
  %63 = udiv i64 %62, 4
  %64 = icmp ugt i64 %61, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %57
  %66 = load i64, i64* @getmntinfo.bufsize, align 8
  %67 = udiv i64 %66, 4
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %3, align 4
  br label %71

69:                                               ; preds = %57
  %70 = load i32, i32* @getmntinfo.mntsize, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %65, %55, %48, %23, %13
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @getfsstat(%struct.statfs*, i64, i32) #1

declare dso_local %struct.statfs* @reallocf(%struct.statfs*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
