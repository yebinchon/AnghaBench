; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_tape.c_printdumpinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_tape.c_printdumpinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i8*, i8*, i32, i32, i64 }

@spcl = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Dump   date: %s\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Dumped from: %s\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"the epoch\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Level %jd dump of %s on %s:%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Label: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printdumpinfo() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @spcl, i32 0, i32 0), align 8
  %3 = call i32 @_time64_to_time(i64 %2)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* @stdout, align 4
  %5 = call i8* @ctime(i32* %1)
  %6 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %5)
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @spcl, i32 0, i32 1), align 8
  %8 = call i32 @_time64_to_time(i64 %7)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* @stdout, align 4
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @spcl, i32 0, i32 1), align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  br label %15

13:                                               ; preds = %0
  %14 = call i8* @ctime(i32* %1)
  br label %15

15:                                               ; preds = %13, %12
  %16 = phi i8* [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %12 ], [ %14, %13 ]
  %17 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  %18 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @spcl, i32 0, i32 2), align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %37

24:                                               ; preds = %15
  %25 = load i32, i32* @stderr, align 4
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @spcl, i32 0, i32 6), align 8
  %27 = trunc i64 %26 to i32
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @spcl, i32 0, i32 5), align 4
  %31 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @spcl, i32 0, i32 2), align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @spcl, i32 0, i32 4), align 8
  %33 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %29, i32 %30, i8* %31, i32 %32)
  %34 = load i32, i32* @stderr, align 4
  %35 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @spcl, i32 0, i32 3), align 8
  %36 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %24, %23
  ret void
}

declare dso_local i32 @_time64_to_time(i64) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i8* @ctime(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
