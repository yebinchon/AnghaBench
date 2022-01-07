; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_sig.c_cc_work.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_sig.c_cc_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccdata = type { i32, i32 }
%struct.ccsig = type { i64, i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"start %s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"work\00", align 1
@link = common dso_local global i32 0, align 4
@SIG_USER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"end %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cc_work(%struct.ccdata* %0) #0 {
  %2 = alloca %struct.ccdata*, align 8
  %3 = alloca %struct.ccsig*, align 8
  store %struct.ccdata* %0, %struct.ccdata** %2, align 8
  %4 = load %struct.ccdata*, %struct.ccdata** %2, align 8
  %5 = call i32 @cc_sig_log(%struct.ccdata* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %6

6:                                                ; preds = %60, %1
  %7 = load %struct.ccdata*, %struct.ccdata** %2, align 8
  %8 = getelementptr inbounds %struct.ccdata, %struct.ccdata* %7, i32 0, i32 1
  %9 = call %struct.ccsig* @TAILQ_FIRST(i32* %8)
  store %struct.ccsig* %9, %struct.ccsig** %3, align 8
  %10 = icmp ne %struct.ccsig* %9, null
  br i1 %10, label %11, label %66

11:                                               ; preds = %6
  %12 = load %struct.ccdata*, %struct.ccdata** %2, align 8
  %13 = getelementptr inbounds %struct.ccdata, %struct.ccdata* %12, i32 0, i32 1
  %14 = load %struct.ccsig*, %struct.ccsig** %3, align 8
  %15 = load i32, i32* @link, align 4
  %16 = call i32 @TAILQ_REMOVE(i32* %13, %struct.ccsig* %14, i32 %15)
  %17 = load %struct.ccsig*, %struct.ccsig** %3, align 8
  %18 = getelementptr inbounds %struct.ccsig, %struct.ccsig* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SIG_USER, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %11
  %23 = load %struct.ccsig*, %struct.ccsig** %3, align 8
  %24 = getelementptr inbounds %struct.ccsig, %struct.ccsig* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ccsig*, %struct.ccsig** %3, align 8
  %27 = getelementptr inbounds %struct.ccsig, %struct.ccsig* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ccsig*, %struct.ccsig** %3, align 8
  %30 = getelementptr inbounds %struct.ccsig, %struct.ccsig* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ccsig*, %struct.ccsig** %3, align 8
  %33 = getelementptr inbounds %struct.ccsig, %struct.ccsig* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @cc_user_sig_handle(i32 %25, i32 %28, i32 %31, i32 %34)
  br label %60

36:                                               ; preds = %11
  %37 = load %struct.ccsig*, %struct.ccsig** %3, align 8
  %38 = getelementptr inbounds %struct.ccsig, %struct.ccsig* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ccsig*, %struct.ccsig** %3, align 8
  %41 = getelementptr inbounds %struct.ccsig, %struct.ccsig* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ccsig*, %struct.ccsig** %3, align 8
  %44 = getelementptr inbounds %struct.ccsig, %struct.ccsig* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ccsig*, %struct.ccsig** %3, align 8
  %47 = getelementptr inbounds %struct.ccsig, %struct.ccsig* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @cc_conn_sig_handle(i32 %39, i32 %42, i32 %45, i32 %48)
  %50 = load %struct.ccsig*, %struct.ccsig** %3, align 8
  %51 = getelementptr inbounds %struct.ccsig, %struct.ccsig* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %36
  %55 = load %struct.ccsig*, %struct.ccsig** %3, align 8
  %56 = getelementptr inbounds %struct.ccsig, %struct.ccsig* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @uni_msg_destroy(i32 %57)
  br label %59

59:                                               ; preds = %54, %36
  br label %60

60:                                               ; preds = %59, %22
  %61 = load %struct.ccdata*, %struct.ccdata** %2, align 8
  %62 = getelementptr inbounds %struct.ccdata, %struct.ccdata* %61, i32 0, i32 0
  %63 = load %struct.ccsig*, %struct.ccsig** %3, align 8
  %64 = load i32, i32* @link, align 4
  %65 = call i32 @TAILQ_INSERT_HEAD(i32* %62, %struct.ccsig* %63, i32 %64)
  br label %6

66:                                               ; preds = %6
  %67 = load %struct.ccdata*, %struct.ccdata** %2, align 8
  %68 = call i32 @cc_sig_log(%struct.ccdata* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @cc_sig_log(%struct.ccdata*, i8*, i8*) #1

declare dso_local %struct.ccsig* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.ccsig*, i32) #1

declare dso_local i32 @cc_user_sig_handle(i32, i32, i32, i32) #1

declare dso_local i32 @cc_conn_sig_handle(i32, i32, i32, i32) #1

declare dso_local i32 @uni_msg_destroy(i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.ccsig*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
