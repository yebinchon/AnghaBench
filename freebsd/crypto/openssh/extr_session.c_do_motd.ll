; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_session.c_do_motd.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_session.c_do_motd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@options = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [10 x i8] c"/etc/motd\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdout = common dso_local global i32 0, align 4
@lc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_motd() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [256 x i8], align 16
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %23

5:                                                ; preds = %0
  %6 = call i32* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %6, i32** %1, align 8
  %7 = load i32*, i32** %1, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %5
  br label %10

10:                                               ; preds = %15, %9
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %12 = load i32*, i32** %1, align 8
  %13 = call i64 @fgets(i8* %11, i32 256, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %17 = load i32, i32* @stdout, align 4
  %18 = call i32 @fputs(i8* %16, i32 %17)
  br label %10

19:                                               ; preds = %10
  %20 = load i32*, i32** %1, align 8
  %21 = call i32 @fclose(i32* %20)
  br label %22

22:                                               ; preds = %19, %5
  br label %23

23:                                               ; preds = %22, %0
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
