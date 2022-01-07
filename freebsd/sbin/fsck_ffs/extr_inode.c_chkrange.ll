; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_inode.c_chkrange.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_inode.c_chkrange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 }

@maxfsblock = common dso_local global i64 0, align 8
@sblock = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"bad size: blk %ld, offset %i, size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"blk %ld < cgdmin %ld;\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c" blk + cnt %ld > cgsbase %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"blk %ld >= cgdmin %ld;\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c" blk + cnt %ld > sblock.fs_fpg %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chkrange(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp sle i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = icmp sle i64 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %9
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @maxfsblock, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* @maxfsblock, align 8
  %21 = load i64, i64* %4, align 8
  %22 = sub nsw i64 %20, %21
  %23 = icmp sgt i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16, %12, %9, %2
  store i32 1, i32* %3, align 4
  br label %105

25:                                               ; preds = %16
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sblock, i32 0, i32 0), align 8
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @fragnum(%struct.TYPE_7__* @sblock, i64 %30)
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %31, %32
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sblock, i32 0, i32 0), align 8
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %29, %25
  %37 = load i64, i64* @debug, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load i64, i64* %4, align 8
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @fragnum(%struct.TYPE_7__* @sblock, i64 %41)
  %43 = sext i32 %42 to i64
  %44 = load i32, i32* %5, align 4
  %45 = call i32 (i8*, i64, i64, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %40, i64 %43, i32 %44)
  br label %46

46:                                               ; preds = %39, %36
  store i32 1, i32* %3, align 4
  br label %105

47:                                               ; preds = %29
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @dtog(%struct.TYPE_7__* @sblock, i64 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i64, i64* %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i64 @cgdmin(%struct.TYPE_7__* @sblock, i32 %51)
  %53 = icmp slt i64 %50, %52
  br i1 %53, label %54, label %79

54:                                               ; preds = %47
  %55 = load i64, i64* %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %55, %57
  %59 = load i32, i32* %6, align 4
  %60 = call i64 @cgsblock(%struct.TYPE_7__* @sblock, i32 %59)
  %61 = icmp sgt i64 %58, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %54
  %63 = load i64, i64* @debug, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %62
  %66 = load i64, i64* %4, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i64 @cgdmin(%struct.TYPE_7__* @sblock, i32 %67)
  %69 = call i32 (i8*, i64, i64, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %66, i64 %68)
  %70 = load i64, i64* %4, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %70, %72
  %74 = load i32, i32* %6, align 4
  %75 = call i64 @cgsblock(%struct.TYPE_7__* @sblock, i32 %74)
  %76 = call i32 (i8*, i64, i64, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %73, i64 %75)
  br label %77

77:                                               ; preds = %65, %62
  store i32 1, i32* %3, align 4
  br label %105

78:                                               ; preds = %54
  br label %104

79:                                               ; preds = %47
  %80 = load i64, i64* %4, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %80, %82
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  %86 = call i64 @cgbase(%struct.TYPE_7__* @sblock, i32 %85)
  %87 = icmp sgt i64 %83, %86
  br i1 %87, label %88, label %103

88:                                               ; preds = %79
  %89 = load i64, i64* @debug, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %88
  %92 = load i64, i64* %4, align 8
  %93 = load i32, i32* %6, align 4
  %94 = call i64 @cgdmin(%struct.TYPE_7__* @sblock, i32 %93)
  %95 = call i32 (i8*, i64, i64, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64 %92, i64 %94)
  %96 = load i64, i64* %4, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %96, %98
  %100 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sblock, i32 0, i32 1), align 8
  %101 = call i32 (i8*, i64, i64, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i64 %99, i64 %100)
  br label %102

102:                                              ; preds = %91, %88
  store i32 1, i32* %3, align 4
  br label %105

103:                                              ; preds = %79
  br label %104

104:                                              ; preds = %103, %78
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %104, %102, %77, %46, %24
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @fragnum(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @printf(i8*, i64, i64, ...) #1

declare dso_local i32 @dtog(%struct.TYPE_7__*, i64) #1

declare dso_local i64 @cgdmin(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @cgsblock(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @cgbase(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
