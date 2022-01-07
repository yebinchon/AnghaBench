; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dump/extr_tape.c_trewind.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dump/extr_tape.c_trewind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.stat = type { i32 }

@SLAVES = common dso_local global i32 0, align 4
@slaves = common dso_local global %struct.TYPE_2__* null, align 8
@read = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"  DUMP: error reading command pipe in master\00", align 1
@writesize = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"EOT detected in last 2 tape records!\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Use a longer tape, decrease the size estimate\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"or use no size estimate at all.\0A\00", align 1
@pipeout = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"Closing %s\0A\00", align 1
@tape = common dso_local global i32 0, align 4
@popenout = common dso_local global i64 0, align 8
@tapefd = common dso_local global i32 0, align 4
@popenfp = common dso_local global i32* null, align 8
@host = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trewind() #0 {
  %1 = alloca %struct.stat, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %53, %0
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @SLAVES, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %56

8:                                                ; preds = %4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @slaves, align 8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %45

16:                                               ; preds = %8
  %17 = load i32, i32* @read, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @slaves, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = bitcast i32* %3 to i8*
  %25 = call i32 @atomic(i32 %17, i32 %23, i8* %24, i32 4)
  %26 = sext i32 %25 to i64
  %27 = icmp ne i64 %26, 4
  br i1 %27, label %28, label %31

28:                                               ; preds = %16
  %29 = call i32 @perror(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %30 = call i32 @dumpabort(i32 0)
  br label %31

31:                                               ; preds = %28, %16
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @slaves, align 8
  %33 = load i32, i32* %2, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @writesize, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = call i32 (i8*, ...) @msg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %42 = call i32 (i8*, ...) @msg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %43 = call i32 @quit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %44

44:                                               ; preds = %40, %31
  br label %45

45:                                               ; preds = %44, %8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @slaves, align 8
  %47 = load i32, i32* %2, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @close(i32 %51)
  br label %53

53:                                               ; preds = %45
  %54 = load i32, i32* %2, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %2, align 4
  br label %4

56:                                               ; preds = %4
  br label %57

57:                                               ; preds = %60, %56
  %58 = call i64 @wait(i32* null)
  %59 = icmp sge i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %57

61:                                               ; preds = %57
  %62 = load i64, i64* @pipeout, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %97

65:                                               ; preds = %61
  %66 = load i32, i32* @tape, align 4
  %67 = call i32 (i8*, ...) @msg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %66)
  %68 = load i64, i64* @popenout, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  store i32 -1, i32* @tapefd, align 4
  %71 = load i32*, i32** @popenfp, align 8
  %72 = call i32 @pclose(i32* %71)
  store i32* null, i32** @popenfp, align 8
  br label %97

73:                                               ; preds = %65
  %74 = load i32, i32* @tapefd, align 4
  %75 = call i64 @fstat(i32 %74, %struct.stat* %1)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @S_ISFIFO(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i32, i32* @tapefd, align 4
  %84 = call i32 @close(i32 %83)
  br label %97

85:                                               ; preds = %77, %73
  %86 = load i32, i32* @tapefd, align 4
  %87 = call i32 @close(i32 %86)
  br label %88

88:                                               ; preds = %92, %85
  %89 = load i32, i32* @tape, align 4
  %90 = call i32 @open(i32 %89, i32 0)
  store i32 %90, i32* %2, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = call i32 @sleep(i32 10)
  br label %88

94:                                               ; preds = %88
  %95 = load i32, i32* %2, align 4
  %96 = call i32 @close(i32 %95)
  br label %97

97:                                               ; preds = %94, %82, %70, %64
  ret void
}

declare dso_local i32 @atomic(i32, i32, i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @dumpabort(i32) #1

declare dso_local i32 @msg(i8*, ...) #1

declare dso_local i32 @quit(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @wait(i32*) #1

declare dso_local i32 @pclose(i32*) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @S_ISFIFO(i32) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
