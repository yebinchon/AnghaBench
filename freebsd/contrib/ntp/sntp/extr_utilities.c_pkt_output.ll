; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/extr_utilities.c_pkt_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/extr_utilities.c_pkt_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkt = type { i32 }

@HLINE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%3d: %02x  \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pkt_output(%struct.pkt* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.pkt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.pkt* %0, %struct.pkt** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.pkt*, %struct.pkt** %4, align 8
  %10 = bitcast %struct.pkt* %9 to i32*
  store i32* %10, i32** %8, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i8*, i8** @HLINE, align 8
  %13 = call i32 (i32*, i8*, ...) @fprintf(i32* %11, i8* %12)
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %37, %3
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %14
  %19 = load i32, i32* %7, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = srem i32 %22, 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 (i32*, i8*, ...) @fprintf(i32* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %21, %18
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32*, i8*, ...) @fprintf(i32* %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %35)
  br label %37

37:                                               ; preds = %28
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %14

40:                                               ; preds = %14
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 (i32*, i8*, ...) @fprintf(i32* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %43 = load i32*, i32** %6, align 8
  %44 = load i8*, i8** @HLINE, align 8
  %45 = call i32 (i32*, i8*, ...) @fprintf(i32* %43, i8* %44)
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
