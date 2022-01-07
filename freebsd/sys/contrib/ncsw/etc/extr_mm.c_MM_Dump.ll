; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/etc/extr_mm.c_MM_Dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/etc/extr_mm.c_MM_Dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__**, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_6__*, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"List of busy blocks:\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"\090x%p: (%s: b=0x%llx, e=0x%llx)\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"\0ALists of free blocks according to alignment:\0A\00", align 1
@MM_MAX_ALIGNMENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"%d alignment:\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"\090x%p: (b=0x%llx, e=0x%llx)\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MM_Dump(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %3, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %5, align 8
  %12 = call i32 (i8*, ...) @XX_Print(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %16, %1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = icmp ne %struct.TYPE_6__* %14, null
  br i1 %15, label %16, label %31

16:                                               ; preds = %13
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i8*, ...) @XX_Print(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_6__* %17, i32 %20, i32 %23, i32 %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %5, align 8
  br label %13

31:                                               ; preds = %13
  %32 = call i32 (i8*, ...) @XX_Print(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %65, %31
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @MM_MAX_ALIGNMENT, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %68

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = shl i32 1, %38
  %40 = call i32 (i8*, ...) @XX_Print(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %43, i64 %45
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  store %struct.TYPE_5__* %47, %struct.TYPE_5__** %4, align 8
  br label %48

48:                                               ; preds = %51, %37
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = icmp ne %struct.TYPE_5__* %49, null
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (i8*, ...) @XX_Print(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_5__* %52, i32 %55, i32 %58)
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  store %struct.TYPE_5__* %62, %struct.TYPE_5__** %4, align 8
  br label %48

63:                                               ; preds = %48
  %64 = call i32 (i8*, ...) @XX_Print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %33

68:                                               ; preds = %33
  ret void
}

declare dso_local i32 @XX_Print(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
