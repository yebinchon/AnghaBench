; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_ipfw_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_ipfw_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.TYPE_5__ = type { i64, i32 }

@co = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [20 x i8] c"Are you sure? [yn] \00", align 1
@stdout = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@IPFW_RCFLAG_SET = common dso_local global i32 0, align 4
@IPFW_RCFLAG_ALL = common dso_local global i32 0, align 4
@IP_FW_XDEL = common dso_local global i32 0, align 4
@EX_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"setsockopt(IP_FW_XDEL)\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Flushed all %s.\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"pipes\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"rules\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipfw_flush(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %49, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @co, i32 0, i32 2), align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %49, label %10

10:                                               ; preds = %7
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @stdout, align 4
  %13 = call i32 @fflush(i32 %12)
  br label %14

14:                                               ; preds = %41, %10
  %15 = load i32, i32* @stdin, align 4
  %16 = call signext i8 @getc(i32 %15)
  %17 = call i32 @toupper(i8 signext %16)
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %33, %14
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 10
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32, i32* @stdin, align 4
  %23 = call signext i8 @getc(i32 %22)
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 10
  br label %26

26:                                               ; preds = %21, %18
  %27 = phi i1 [ false, %18 ], [ %25, %21 ]
  br i1 %27, label %28, label %34

28:                                               ; preds = %26
  %29 = load i32, i32* @stdin, align 4
  %30 = call i64 @feof(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %83

33:                                               ; preds = %28
  br label %18

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 89
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 78
  br label %41

41:                                               ; preds = %38, %35
  %42 = phi i1 [ false, %35 ], [ %40, %38 ]
  br i1 %42, label %14, label %43

43:                                               ; preds = %41
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* %4, align 4
  %46 = icmp eq i32 %45, 78
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %83

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %48, %7, %1
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @co, i32 0, i32 1), align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = call i32 (...) @dummynet_flush()
  br label %83

54:                                               ; preds = %49
  %55 = call i32 @memset(%struct.TYPE_5__* %3, i32 0, i32 16)
  %56 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @co, i32 0, i32 0), align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @co, i32 0, i32 0), align 8
  %60 = sub nsw i64 %59, 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i64 %60, i64* %61, align 8
  %62 = load i32, i32* @IPFW_RCFLAG_SET, align 4
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  store i32 %62, i32* %63, align 8
  br label %67

64:                                               ; preds = %54
  %65 = load i32, i32* @IPFW_RCFLAG_ALL, align 4
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  store i32 %65, i32* %66, align 8
  br label %67

67:                                               ; preds = %64, %58
  %68 = load i32, i32* @IP_FW_XDEL, align 4
  %69 = call i64 @do_range_cmd(i32 %68, %struct.TYPE_5__* %3)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i32, i32* @EX_UNAVAILABLE, align 4
  %73 = call i32 @err(i32 %72, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %67
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @co, i32 0, i32 2), align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %74
  %78 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @co, i32 0, i32 1), align 8
  %79 = icmp ne i64 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %81)
  br label %83

83:                                               ; preds = %32, %47, %52, %77, %74
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @toupper(i8 signext) #1

declare dso_local signext i8 @getc(i32) #1

declare dso_local i64 @feof(i32) #1

declare dso_local i32 @dummynet_flush(...) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i64 @do_range_cmd(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
