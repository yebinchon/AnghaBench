; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_bprint_uint_arg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_bprint_uint_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf_pr = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@IP_FW_TARG = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"tablearg\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bprint_uint_arg(%struct.buf_pr* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.buf_pr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.buf_pr* %0, %struct.buf_pr** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = load %struct.buf_pr*, %struct.buf_pr** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %11)
  br label %13

13:                                               ; preds = %9, %3
  %14 = load i8*, i8** %6, align 8
  %15 = load i8*, i8** @IP_FW_TARG, align 8
  %16 = icmp eq i8* %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load %struct.buf_pr*, %struct.buf_pr** %4, align 8
  %19 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %24

20:                                               ; preds = %13
  %21 = load %struct.buf_pr*, %struct.buf_pr** %4, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 (%struct.buf_pr*, i8*, ...) @bprintf(%struct.buf_pr* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %22)
  br label %24

24:                                               ; preds = %20, %17
  ret void
}

declare dso_local i32 @bprintf(%struct.buf_pr*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
