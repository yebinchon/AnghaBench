; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/saal/extr_saal_sscop.c_handle_sigs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/saal/extr_saal_sscop.c_handle_sigs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sscop = type { i32, i32 }
%struct.sscop_sig = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sscop*)* @handle_sigs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_sigs(%struct.sscop* %0) #0 {
  %2 = alloca %struct.sscop*, align 8
  %3 = alloca %struct.sscop_sig*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sscop* %0, %struct.sscop** %2, align 8
  %7 = load %struct.sscop*, %struct.sscop** %2, align 8
  %8 = getelementptr inbounds %struct.sscop, %struct.sscop* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %8, align 4
  %11 = call i32 @SIGQ_INIT(i32* %5)
  %12 = call i32 @SIGQ_INIT(i32* %4)
  br label %13

13:                                               ; preds = %41, %1
  store i32 0, i32* %6, align 4
  %14 = load %struct.sscop*, %struct.sscop** %2, align 8
  %15 = getelementptr inbounds %struct.sscop, %struct.sscop* %14, i32 0, i32 1
  %16 = call i32 @SIGQ_MOVE(i32* %15, i32* %5)
  br label %17

17:                                               ; preds = %36, %13
  %18 = call %struct.sscop_sig* @SIGQ_GET(i32* %5)
  store %struct.sscop_sig* %18, %struct.sscop_sig** %3, align 8
  %19 = icmp ne %struct.sscop_sig* %18, null
  br i1 %19, label %20, label %37

20:                                               ; preds = %17
  %21 = load %struct.sscop*, %struct.sscop** %2, align 8
  %22 = load %struct.sscop_sig*, %struct.sscop_sig** %3, align 8
  %23 = getelementptr inbounds %struct.sscop_sig, %struct.sscop_sig* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.sscop_sig*, %struct.sscop_sig** %3, align 8
  %26 = getelementptr inbounds %struct.sscop_sig, %struct.sscop_sig* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @sig_exec(%struct.sscop* %21, i32 %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  store i32 1, i32* %6, align 4
  %31 = load %struct.sscop_sig*, %struct.sscop_sig** %3, align 8
  %32 = call i32 @SIG_FREE(%struct.sscop_sig* %31)
  br label %36

33:                                               ; preds = %20
  %34 = load %struct.sscop_sig*, %struct.sscop_sig** %3, align 8
  %35 = call i32 @SIGQ_APPEND(i32* %4, %struct.sscop_sig* %34)
  br label %36

36:                                               ; preds = %33, %30
  br label %17

37:                                               ; preds = %17
  %38 = load %struct.sscop*, %struct.sscop** %2, align 8
  %39 = getelementptr inbounds %struct.sscop, %struct.sscop* %38, i32 0, i32 1
  %40 = call i32 @SIGQ_PREPEND(i32* %4, i32* %39)
  br label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %13, label %44

44:                                               ; preds = %41
  %45 = load %struct.sscop*, %struct.sscop** %2, align 8
  %46 = getelementptr inbounds %struct.sscop, %struct.sscop* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %46, align 4
  ret void
}

declare dso_local i32 @SIGQ_INIT(i32*) #1

declare dso_local i32 @SIGQ_MOVE(i32*, i32*) #1

declare dso_local %struct.sscop_sig* @SIGQ_GET(i32*) #1

declare dso_local i64 @sig_exec(%struct.sscop*, i32, i32) #1

declare dso_local i32 @SIG_FREE(%struct.sscop_sig*) #1

declare dso_local i32 @SIGQ_APPEND(i32*, %struct.sscop_sig*) #1

declare dso_local i32 @SIGQ_PREPEND(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
