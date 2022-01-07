; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_data.c_cc_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_data.c_cc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccdata = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"user list not empty\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"still orphaned conns\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cc_reset(%struct.ccdata* %0) #0 {
  %2 = alloca %struct.ccdata*, align 8
  store %struct.ccdata* %0, %struct.ccdata** %2, align 8
  br label %3

3:                                                ; preds = %9, %1
  %4 = load %struct.ccdata*, %struct.ccdata** %2, align 8
  %5 = getelementptr inbounds %struct.ccdata, %struct.ccdata* %4, i32 0, i32 2
  %6 = call i32 @LIST_EMPTY(i32* %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = load %struct.ccdata*, %struct.ccdata** %2, align 8
  %11 = getelementptr inbounds %struct.ccdata, %struct.ccdata* %10, i32 0, i32 2
  %12 = call i32 @LIST_FIRST(i32* %11)
  %13 = call i32 @cc_user_destroy(i32 %12)
  br label %3

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %21, %14
  %16 = load %struct.ccdata*, %struct.ccdata** %2, align 8
  %17 = getelementptr inbounds %struct.ccdata, %struct.ccdata* %16, i32 0, i32 3
  %18 = call i32 @TAILQ_EMPTY(i32* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.ccdata*, %struct.ccdata** %2, align 8
  %23 = getelementptr inbounds %struct.ccdata, %struct.ccdata* %22, i32 0, i32 3
  %24 = call i32 @TAILQ_FIRST(i32* %23)
  %25 = call i32 @cc_port_destroy(i32 %24, i32 1)
  br label %15

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %33, %26
  %28 = load %struct.ccdata*, %struct.ccdata** %2, align 8
  %29 = getelementptr inbounds %struct.ccdata, %struct.ccdata* %28, i32 0, i32 1
  %30 = call i32 @LIST_EMPTY(i32* %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.ccdata*, %struct.ccdata** %2, align 8
  %35 = getelementptr inbounds %struct.ccdata, %struct.ccdata* %34, i32 0, i32 1
  %36 = call i32 @LIST_FIRST(i32* %35)
  %37 = call i32 @cc_conn_destroy(i32 %36)
  br label %27

38:                                               ; preds = %27
  %39 = load %struct.ccdata*, %struct.ccdata** %2, align 8
  %40 = getelementptr inbounds %struct.ccdata, %struct.ccdata* %39, i32 0, i32 2
  %41 = call i32 @LIST_EMPTY(i32* %40)
  %42 = call i32 @CCASSERT(i32 %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.ccdata*, %struct.ccdata** %2, align 8
  %44 = getelementptr inbounds %struct.ccdata, %struct.ccdata* %43, i32 0, i32 1
  %45 = call i32 @LIST_EMPTY(i32* %44)
  %46 = call i32 @CCASSERT(i32 %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.ccdata*, %struct.ccdata** %2, align 8
  %48 = call i32 @cc_sig_flush_all(%struct.ccdata* %47)
  %49 = load %struct.ccdata*, %struct.ccdata** %2, align 8
  %50 = getelementptr inbounds %struct.ccdata, %struct.ccdata* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  ret void
}

declare dso_local i32 @LIST_EMPTY(i32*) #1

declare dso_local i32 @cc_user_destroy(i32) #1

declare dso_local i32 @LIST_FIRST(i32*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @cc_port_destroy(i32, i32) #1

declare dso_local i32 @TAILQ_FIRST(i32*) #1

declare dso_local i32 @cc_conn_destroy(i32) #1

declare dso_local i32 @CCASSERT(i32, i8*) #1

declare dso_local i32 @cc_sig_flush_all(%struct.ccdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
