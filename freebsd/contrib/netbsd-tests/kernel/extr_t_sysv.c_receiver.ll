; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/kernel/extr_t_sysv.c_receiver.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/kernel/extr_t_sysv.c_receiver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.testmsg = type { i8*, i32 }

@msgkey = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"receiver: msgget\00", align 1
@maxloop = common dso_local global i32 0, align 4
@MESSAGE_TEXT_LEN = common dso_local global i64 0, align 8
@MTYPE_1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"receiver: msgrcv 1\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@m1_str = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"receiver: message 1 data isn't correct\00", align 1
@MTYPE_1_ACK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"receiver: msgsnd ack 1\00", align 1
@MTYPE_2 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"receiver: msgrcv 2\00", align 1
@m2_str = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"receiver: message 2 data isn't correct\00", align 1
@MTYPE_2_ACK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"receiver: msgsnd ack 2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @receiver() #0 {
  %1 = alloca %struct.testmsg, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @msgkey, align 4
  %5 = call i32 @msgget(i32 %4, i32 0)
  store i32 %5, i32* %2, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %0
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %73, %9
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @maxloop, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %76

14:                                               ; preds = %10
  %15 = load i32, i32* %2, align 4
  %16 = load i64, i64* @MESSAGE_TEXT_LEN, align 8
  %17 = load i32, i32* @MTYPE_1, align 4
  %18 = call i64 @msgrcv(i32 %15, %struct.testmsg* %1, i64 %16, i32 %17, i32 0)
  %19 = load i64, i64* @MESSAGE_TEXT_LEN, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = call i32 @err(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %14
  %24 = getelementptr inbounds %struct.testmsg, %struct.testmsg* %1, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %25)
  %27 = getelementptr inbounds %struct.testmsg, %struct.testmsg* %1, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i32, i32* @m1_str, align 4
  %30 = call i64 @strcmp(i8* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = call i32 @err(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %23
  %35 = load i32, i32* @MTYPE_1_ACK, align 4
  %36 = getelementptr inbounds %struct.testmsg, %struct.testmsg* %1, i32 0, i32 1
  store i32 %35, i32* %36, align 8
  %37 = load i32, i32* %2, align 4
  %38 = load i64, i64* @MESSAGE_TEXT_LEN, align 8
  %39 = call i32 @msgsnd(i32 %37, %struct.testmsg* %1, i64 %38, i32 0)
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = call i32 @err(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %34
  %44 = load i32, i32* %2, align 4
  %45 = load i64, i64* @MESSAGE_TEXT_LEN, align 8
  %46 = load i32, i32* @MTYPE_2, align 4
  %47 = call i64 @msgrcv(i32 %44, %struct.testmsg* %1, i64 %45, i32 %46, i32 0)
  %48 = load i64, i64* @MESSAGE_TEXT_LEN, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = call i32 @err(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %43
  %53 = getelementptr inbounds %struct.testmsg, %struct.testmsg* %1, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %54)
  %56 = getelementptr inbounds %struct.testmsg, %struct.testmsg* %1, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* @m2_str, align 4
  %59 = call i64 @strcmp(i8* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = call i32 @err(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %52
  %64 = load i32, i32* @MTYPE_2_ACK, align 4
  %65 = getelementptr inbounds %struct.testmsg, %struct.testmsg* %1, i32 0, i32 1
  store i32 %64, i32* %65, align 8
  %66 = load i32, i32* %2, align 4
  %67 = load i64, i64* @MESSAGE_TEXT_LEN, align 8
  %68 = call i32 @msgsnd(i32 %66, %struct.testmsg* %1, i64 %67, i32 0)
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = call i32 @err(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %63
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %3, align 4
  br label %10

76:                                               ; preds = %10
  %77 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @msgget(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @msgrcv(i32, %struct.testmsg*, i64, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @msgsnd(i32, %struct.testmsg*, i64, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
