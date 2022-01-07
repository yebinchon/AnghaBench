; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/iscontrol/extr_fsm.c_startSession.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/iscontrol/extr_fsm.c_startSession.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i64 }

@SESS_CONNECTED = common dso_local global i32 0, align 4
@T2 = common dso_local global i32 0, align 4
@iscsidev = common dso_local global i8* null, align 8
@O_RDWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"net.iscsi_initiator.isid\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"sysctlbyname\00", align 1
@ISCSISETSES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"ISCSISETSES\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@ISCSISETSOC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"ISCSISETSOC\00", align 1
@T4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @startSession to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @startSession(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %9 = call i32 @debug_called(i32 3)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @SESS_CONNECTED, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @T2, align 4
  store i32 %17, i32* %2, align 4
  br label %88

18:                                               ; preds = %1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %75

23:                                               ; preds = %18
  %24 = load i8*, i8** @iscsidev, align 8
  %25 = load i32, i32* @O_RDWR, align 4
  %26 = call i32 @open(i8* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i8*, i8** @iscsidev, align 8
  %31 = call i32 @perror(i8* %30)
  store i32 0, i32* %2, align 4
  br label %88

32:                                               ; preds = %23
  store i64 8, i64* %8, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = call i64 @sysctlbyname(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %36, i64* %8, i32 0, i32 0)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %32
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @ISCSISETSES, align 4
  %44 = call i64 @ioctl(i32 %42, i32 %43, i32* %4)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %88

48:                                               ; preds = %41
  %49 = load i8*, i8** @iscsidev, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @asprintf(i8** %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %49, i32 %50)
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* @O_RDWR, align 4
  %54 = call i32 @open(i8* %52, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %48
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @perror(i8* %58)
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @free(i8* %60)
  store i32 0, i32* %2, align 4
  br label %88

62:                                               ; preds = %48
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @free(i8* %63)
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @close(i32 %65)
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %71 = call i64 @setOptions(%struct.TYPE_4__* %70, i32 0)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %62
  store i32 -1, i32* %2, align 4
  br label %88

74:                                               ; preds = %62
  br label %75

75:                                               ; preds = %74, %18
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @ISCSISETSOC, align 4
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = call i64 @ioctl(i32 %78, i32 %79, i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %75
  %85 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %88

86:                                               ; preds = %75
  %87 = load i32, i32* @T4, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %86, %84, %73, %57, %46, %29, %16
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @sysctlbyname(i8*, i8*, i64*, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @setOptions(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
