; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/adjtimed/extr_adjtimed.c_InitClockRate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/adjtimed/extr_adjtimed.c_InitClockRate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c"/dev/kmem\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@kmem = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"open(/dev/kmem): %m\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"adjtimed: open(/dev/kmem)\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"/hp-ux\00", align 1
@nl = common dso_local global %struct.TYPE_3__* null, align 8
@.str.4 = private unnamed_addr constant [38 x i8] c"adjtimed: /hp-ux has no symbol table\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"/hp-ux has no symbol table\00", align 1
@default_rate = common dso_local global i32 0, align 4
@UNKNOWN_RATE = common dso_local global i32 0, align 4
@DEFAULT_RATE = common dso_local global i32 0, align 4
@MILLION = common dso_local global i32 0, align 4
@tick_rate = common dso_local global i32 0, align 4
@TICK_ADJ = common dso_local global i32 0, align 4
@slew_rate = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [48 x i8] c"default_rate=%ld, tick_rate=%ld, slew_rate=%ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InitClockRate() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @O_RDWR, align 4
  %3 = call i32 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %2)
  store i32 %3, i32* @kmem, align 4
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = load i32, i32* @LOG_ERR, align 4
  %7 = call i32 @msyslog(i32 %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %8 = call i32 @perror(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %41

9:                                                ; preds = %0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nl, align 8
  %11 = call i32 @nlist(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_3__* %10)
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nl, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %9
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 @fputs(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @LOG_ERR, align 4
  %21 = call i32 @msyslog(i32 %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %41

22:                                               ; preds = %9
  %23 = call i32 (...) @GetClockRate()
  store i32 %23, i32* @default_rate, align 4
  %24 = load i32, i32* @default_rate, align 4
  %25 = load i32, i32* @UNKNOWN_RATE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @DEFAULT_RATE, align 4
  store i32 %28, i32* @default_rate, align 4
  br label %29

29:                                               ; preds = %27, %22
  %30 = load i32, i32* @MILLION, align 4
  %31 = load i32, i32* @default_rate, align 4
  %32 = sdiv i32 %30, %31
  store i32 %32, i32* @tick_rate, align 4
  %33 = load i32, i32* @TICK_ADJ, align 4
  %34 = load i32, i32* @tick_rate, align 4
  %35 = mul nsw i32 %33, %34
  store i32 %35, i32* @slew_rate, align 4
  %36 = load i32, i32* @stderr, align 4
  %37 = load i32, i32* @default_rate, align 4
  %38 = load i32, i32* @tick_rate, align 4
  %39 = load i32, i32* @slew_rate, align 4
  %40 = call i32 @fprintf(i32 %36, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %37, i32 %38, i32 %39)
  store i32 0, i32* %1, align 4
  br label %41

41:                                               ; preds = %29, %17, %5
  %42 = load i32, i32* %1, align 4
  ret i32 %42
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @msyslog(i32, i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @nlist(i8*, %struct.TYPE_3__*) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @GetClockRate(...) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
