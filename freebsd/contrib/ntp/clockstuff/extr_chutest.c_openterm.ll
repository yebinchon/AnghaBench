; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/clockstuff/extr_chutest.c_openterm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/clockstuff/extr_chutest.c_openterm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sgttyb = type { i32, i64, i64, i32, i32 }

@debug = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Doing open...\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"open(%s)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"open okay\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Setting exclusive use...\00", align 1
@TIOCEXCL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"ioctl(TIOCEXCL)\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@B300 = common dso_local global i32 0, align 4
@EVENP = common dso_local global i32 0, align 4
@ODDP = common dso_local global i32 0, align 4
@RAW = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"Setting baud rate et al...\00", align 1
@TIOCSETP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"ioctl(TIOCSETP, raw)\00", align 1
@CHULDISC = common dso_local global i32 0, align 4
@I_POP = common dso_local global i32 0, align 4
@I_PUSH = common dso_local global i32 0, align 4
@TIOCSETD = common dso_local global i32 0, align 4
@usechuldisc = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @openterm(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sgttyb, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i64, i64* @debug, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @stderr, align 4
  %9 = call i32 @fprintf(i32 %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %7, %1
  %11 = load i8*, i8** %2, align 8
  %12 = load i32, i32* @O_RDONLY, align 4
  %13 = call i32 @open(i8* %11, i32 %12, i32 511)
  store i32 %13, i32* %3, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 @error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %10
  %19 = load i64, i64* @debug, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @stderr, align 4
  %23 = call i32 @fprintf(i32 %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i64, i64* @debug, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @stderr, align 4
  %29 = call i32 @fprintf(i32 %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @TIOCEXCL, align 4
  %33 = call i64 @ioctl(i32 %31, i32 %32, i8* null)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = call i32 @error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %30
  %38 = load i64, i64* @debug, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* @stderr, align 4
  %42 = call i32 @fprintf(i32 %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* @B300, align 4
  %45 = getelementptr inbounds %struct.sgttyb, %struct.sgttyb* %4, i32 0, i32 3
  store i32 %44, i32* %45, align 8
  %46 = getelementptr inbounds %struct.sgttyb, %struct.sgttyb* %4, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = getelementptr inbounds %struct.sgttyb, %struct.sgttyb* %4, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = getelementptr inbounds %struct.sgttyb, %struct.sgttyb* %4, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = load i32, i32* @EVENP, align 4
  %50 = load i32, i32* @ODDP, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @RAW, align 4
  %53 = or i32 %51, %52
  %54 = getelementptr inbounds %struct.sgttyb, %struct.sgttyb* %4, i32 0, i32 0
  store i32 %53, i32* %54, align 8
  %55 = load i64, i64* @debug, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %43
  %58 = load i32, i32* @stderr, align 4
  %59 = call i32 @fprintf(i32 %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %43
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @TIOCSETP, align 4
  %63 = bitcast %struct.sgttyb* %4 to i8*
  %64 = call i64 @ioctl(i32 %61, i32 %62, i8* %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = call i32 @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %60
  %69 = load i64, i64* @debug, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* @stderr, align 4
  %73 = call i32 @fprintf(i32 %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @error(i8*, i8*, i8*) #1

declare dso_local i64 @ioctl(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
