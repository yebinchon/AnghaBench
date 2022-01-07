; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asllisting.c_LsTreeWriteWalk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asllisting.c_LsTreeWriteWalk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@ASL_TREE_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Open: %s\0A\00", align 1
@AE_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"Close: %s\0A\00", align 1
@ASL_PARSE_TREE_DEBUG1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, i8*)* @LsTreeWriteWalk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LsTreeWriteWalk(%struct.TYPE_10__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %49 [
    i32 136, label %12
    i32 135, label %12
    i32 137, label %12
    i32 130, label %12
    i32 143, label %16
    i32 129, label %20
    i32 132, label %20
    i32 142, label %24
    i32 141, label %24
    i32 131, label %28
    i32 138, label %28
    i32 134, label %28
    i32 128, label %28
    i32 133, label %28
    i32 140, label %32
    i32 139, label %41
  ]

12:                                               ; preds = %3, %3, %3, %3
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @UtDumpStringOp(%struct.TYPE_10__* %13, i32 %14)
  br label %53

16:                                               ; preds = %3
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @UtDumpIntegerOp(%struct.TYPE_10__* %17, i32 %18, i32 2)
  br label %53

20:                                               ; preds = %3, %3
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @UtDumpIntegerOp(%struct.TYPE_10__* %21, i32 %22, i32 4)
  br label %53

24:                                               ; preds = %3, %3
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @UtDumpIntegerOp(%struct.TYPE_10__* %25, i32 %26, i32 8)
  br label %53

28:                                               ; preds = %3, %3, %3, %3, %3
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @UtDumpIntegerOp(%struct.TYPE_10__* %29, i32 %30, i32 16)
  br label %53

32:                                               ; preds = %3
  %33 = load i32, i32* @ASL_TREE_OUTPUT, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 7
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, ...) @DbgPrint(i32 %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @AE_OK, align 4
  store i32 %40, i32* %4, align 4
  br label %92

41:                                               ; preds = %3
  %42 = load i32, i32* @ASL_TREE_OUTPUT, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32, i8*, ...) @DbgPrint(i32 %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @AE_OK, align 4
  store i32 %48, i32* %4, align 4
  br label %92

49:                                               ; preds = %3
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @UtDumpBasicOp(%struct.TYPE_10__* %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %28, %24, %20, %16, %12
  %54 = load i32, i32* @ASL_TREE_OUTPUT, align 4
  %55 = load i32, i32* @ASL_PARSE_TREE_DEBUG1, align 4
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i8*
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i32, i8*, ...) @DbgPrint(i32 %54, i8* %57, i32 %61, i32 %65, i32 %69, i32 %73, i32 %77, i32 %81)
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @ASL_TREE_OUTPUT, align 4
  %88 = call i32 @TrPrintOpFlags(i32 %86, i32 %87)
  %89 = load i32, i32* @ASL_TREE_OUTPUT, align 4
  %90 = call i32 (i32, i8*, ...) @DbgPrint(i32 %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %91 = load i32, i32* @AE_OK, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %53, %41, %32
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @UtDumpStringOp(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @UtDumpIntegerOp(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @DbgPrint(i32, i8*, ...) #1

declare dso_local i32 @UtDumpBasicOp(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @TrPrintOpFlags(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
