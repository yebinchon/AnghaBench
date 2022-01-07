; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_data.c_cc_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_data.c_cc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccdata = type { i64, %struct.cc_funcs*, i32, i32, i32, i32, i32, i32 }
%struct.cc_funcs = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ccdata* @cc_create(%struct.cc_funcs* %0) #0 {
  %2 = alloca %struct.ccdata*, align 8
  %3 = alloca %struct.cc_funcs*, align 8
  %4 = alloca %struct.ccdata*, align 8
  store %struct.cc_funcs* %0, %struct.cc_funcs** %3, align 8
  %5 = call %struct.ccdata* @CCMALLOC(i32 40)
  store %struct.ccdata* %5, %struct.ccdata** %4, align 8
  %6 = load %struct.ccdata*, %struct.ccdata** %4, align 8
  %7 = icmp eq %struct.ccdata* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.ccdata* null, %struct.ccdata** %2, align 8
  br label %34

9:                                                ; preds = %1
  %10 = load %struct.ccdata*, %struct.ccdata** %4, align 8
  %11 = getelementptr inbounds %struct.ccdata, %struct.ccdata* %10, i32 0, i32 7
  %12 = call i32 @LIST_INIT(i32* %11)
  %13 = load %struct.ccdata*, %struct.ccdata** %4, align 8
  %14 = getelementptr inbounds %struct.ccdata, %struct.ccdata* %13, i32 0, i32 6
  %15 = call i32 @TAILQ_INIT(i32* %14)
  %16 = load %struct.ccdata*, %struct.ccdata** %4, align 8
  %17 = getelementptr inbounds %struct.ccdata, %struct.ccdata* %16, i32 0, i32 5
  %18 = call i32 @LIST_INIT(i32* %17)
  %19 = load %struct.ccdata*, %struct.ccdata** %4, align 8
  %20 = getelementptr inbounds %struct.ccdata, %struct.ccdata* %19, i32 0, i32 4
  %21 = call i32 @TAILQ_INIT(i32* %20)
  %22 = load %struct.ccdata*, %struct.ccdata** %4, align 8
  %23 = getelementptr inbounds %struct.ccdata, %struct.ccdata* %22, i32 0, i32 3
  %24 = call i32 @TAILQ_INIT(i32* %23)
  %25 = load %struct.ccdata*, %struct.ccdata** %4, align 8
  %26 = getelementptr inbounds %struct.ccdata, %struct.ccdata* %25, i32 0, i32 2
  %27 = call i32 @TAILQ_INIT(i32* %26)
  %28 = load %struct.cc_funcs*, %struct.cc_funcs** %3, align 8
  %29 = load %struct.ccdata*, %struct.ccdata** %4, align 8
  %30 = getelementptr inbounds %struct.ccdata, %struct.ccdata* %29, i32 0, i32 1
  store %struct.cc_funcs* %28, %struct.cc_funcs** %30, align 8
  %31 = load %struct.ccdata*, %struct.ccdata** %4, align 8
  %32 = getelementptr inbounds %struct.ccdata, %struct.ccdata* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load %struct.ccdata*, %struct.ccdata** %4, align 8
  store %struct.ccdata* %33, %struct.ccdata** %2, align 8
  br label %34

34:                                               ; preds = %9, %8
  %35 = load %struct.ccdata*, %struct.ccdata** %2, align 8
  ret %struct.ccdata* %35
}

declare dso_local %struct.ccdata* @CCMALLOC(i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
