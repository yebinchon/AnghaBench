; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/adjtimed/extr_adjtimed.c_Cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/adjtimed/extr_adjtimed.c_Cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msqid_ds = type { i32 }

@mqid = common dso_local global i32 0, align 4
@IPC_RMID = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"remove message queue: %m\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"adjtimed: remove message queue\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cleanup() #0 {
  %1 = call i32 (...) @ResetClockRate()
  %2 = load i32, i32* @mqid, align 4
  %3 = load i32, i32* @IPC_RMID, align 4
  %4 = call i32 @msgctl(i32 %2, i32 %3, %struct.msqid_ds* null)
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %15

6:                                                ; preds = %0
  %7 = load i64, i64* @errno, align 8
  %8 = load i64, i64* @EINVAL, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = load i32, i32* @LOG_ERR, align 4
  %12 = call i32 @msyslog(i32 %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @perror(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %10, %6
  br label %15

15:                                               ; preds = %14, %0
  %16 = call i32 @Exit(i32 2)
  ret void
}

declare dso_local i32 @ResetClockRate(...) #1

declare dso_local i32 @msgctl(i32, i32, %struct.msqid_ds*) #1

declare dso_local i32 @msyslog(i32, i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @Exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
