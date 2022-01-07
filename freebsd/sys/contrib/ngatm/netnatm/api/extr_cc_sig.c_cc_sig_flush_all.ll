; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_sig.c_cc_sig_flush_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_sig.c_cc_sig_flush_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccdata = type { i32, i32, i32 }
%struct.ccsig = type { i64, i64 }
%struct.uni_msg = type { i32 }

@link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cc_sig_flush_all(%struct.ccdata* %0) #0 {
  %2 = alloca %struct.ccdata*, align 8
  %3 = alloca %struct.ccsig*, align 8
  store %struct.ccdata* %0, %struct.ccdata** %2, align 8
  br label %4

4:                                                ; preds = %20, %1
  %5 = load %struct.ccdata*, %struct.ccdata** %2, align 8
  %6 = getelementptr inbounds %struct.ccdata, %struct.ccdata* %5, i32 0, i32 2
  %7 = call %struct.ccsig* @TAILQ_FIRST(i32* %6)
  store %struct.ccsig* %7, %struct.ccsig** %3, align 8
  %8 = icmp ne %struct.ccsig* %7, null
  br i1 %8, label %9, label %28

9:                                                ; preds = %4
  %10 = load %struct.ccsig*, %struct.ccsig** %3, align 8
  %11 = getelementptr inbounds %struct.ccsig, %struct.ccsig* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load %struct.ccsig*, %struct.ccsig** %3, align 8
  %16 = getelementptr inbounds %struct.ccsig, %struct.ccsig* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.uni_msg*
  %19 = call i32 @uni_msg_destroy(%struct.uni_msg* %18)
  br label %20

20:                                               ; preds = %14, %9
  %21 = load %struct.ccdata*, %struct.ccdata** %2, align 8
  %22 = getelementptr inbounds %struct.ccdata, %struct.ccdata* %21, i32 0, i32 2
  %23 = load %struct.ccsig*, %struct.ccsig** %3, align 8
  %24 = load i32, i32* @link, align 4
  %25 = call i32 @TAILQ_REMOVE(i32* %22, %struct.ccsig* %23, i32 %24)
  %26 = load %struct.ccsig*, %struct.ccsig** %3, align 8
  %27 = call i32 @CCFREE(%struct.ccsig* %26)
  br label %4

28:                                               ; preds = %4
  br label %29

29:                                               ; preds = %45, %28
  %30 = load %struct.ccdata*, %struct.ccdata** %2, align 8
  %31 = getelementptr inbounds %struct.ccdata, %struct.ccdata* %30, i32 0, i32 1
  %32 = call %struct.ccsig* @TAILQ_FIRST(i32* %31)
  store %struct.ccsig* %32, %struct.ccsig** %3, align 8
  %33 = icmp ne %struct.ccsig* %32, null
  br i1 %33, label %34, label %53

34:                                               ; preds = %29
  %35 = load %struct.ccsig*, %struct.ccsig** %3, align 8
  %36 = getelementptr inbounds %struct.ccsig, %struct.ccsig* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.ccsig*, %struct.ccsig** %3, align 8
  %41 = getelementptr inbounds %struct.ccsig, %struct.ccsig* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.uni_msg*
  %44 = call i32 @uni_msg_destroy(%struct.uni_msg* %43)
  br label %45

45:                                               ; preds = %39, %34
  %46 = load %struct.ccdata*, %struct.ccdata** %2, align 8
  %47 = getelementptr inbounds %struct.ccdata, %struct.ccdata* %46, i32 0, i32 1
  %48 = load %struct.ccsig*, %struct.ccsig** %3, align 8
  %49 = load i32, i32* @link, align 4
  %50 = call i32 @TAILQ_REMOVE(i32* %47, %struct.ccsig* %48, i32 %49)
  %51 = load %struct.ccsig*, %struct.ccsig** %3, align 8
  %52 = call i32 @CCFREE(%struct.ccsig* %51)
  br label %29

53:                                               ; preds = %29
  br label %54

54:                                               ; preds = %59, %53
  %55 = load %struct.ccdata*, %struct.ccdata** %2, align 8
  %56 = getelementptr inbounds %struct.ccdata, %struct.ccdata* %55, i32 0, i32 0
  %57 = call %struct.ccsig* @TAILQ_FIRST(i32* %56)
  store %struct.ccsig* %57, %struct.ccsig** %3, align 8
  %58 = icmp ne %struct.ccsig* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load %struct.ccdata*, %struct.ccdata** %2, align 8
  %61 = getelementptr inbounds %struct.ccdata, %struct.ccdata* %60, i32 0, i32 0
  %62 = load %struct.ccsig*, %struct.ccsig** %3, align 8
  %63 = load i32, i32* @link, align 4
  %64 = call i32 @TAILQ_REMOVE(i32* %61, %struct.ccsig* %62, i32 %63)
  %65 = load %struct.ccsig*, %struct.ccsig** %3, align 8
  %66 = call i32 @CCFREE(%struct.ccsig* %65)
  br label %54

67:                                               ; preds = %54
  ret void
}

declare dso_local %struct.ccsig* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @uni_msg_destroy(%struct.uni_msg*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.ccsig*, i32) #1

declare dso_local i32 @CCFREE(%struct.ccsig*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
