; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_softp11.c_reset_crypto_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_softp11.c_reset_crypto_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.session_state = type { i32, i32, i8*, i8* }

@NULL_PTR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.session_state*)* @reset_crypto_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_crypto_state(%struct.session_state* %0) #0 {
  %2 = alloca %struct.session_state*, align 8
  store %struct.session_state* %0, %struct.session_state** %2, align 8
  %3 = load %struct.session_state*, %struct.session_state** %2, align 8
  %4 = getelementptr inbounds %struct.session_state, %struct.session_state* %3, i32 0, i32 0
  store i32 -1, i32* %4, align 8
  %5 = load %struct.session_state*, %struct.session_state** %2, align 8
  %6 = getelementptr inbounds %struct.session_state, %struct.session_state* %5, i32 0, i32 3
  %7 = load i8*, i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.session_state*, %struct.session_state** %2, align 8
  %11 = getelementptr inbounds %struct.session_state, %struct.session_state* %10, i32 0, i32 3
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @free(i8* %12)
  br label %14

14:                                               ; preds = %9, %1
  %15 = load i8*, i8** @NULL_PTR, align 8
  %16 = load %struct.session_state*, %struct.session_state** %2, align 8
  %17 = getelementptr inbounds %struct.session_state, %struct.session_state* %16, i32 0, i32 3
  store i8* %15, i8** %17, align 8
  %18 = load %struct.session_state*, %struct.session_state** %2, align 8
  %19 = getelementptr inbounds %struct.session_state, %struct.session_state* %18, i32 0, i32 1
  store i32 -1, i32* %19, align 4
  %20 = load %struct.session_state*, %struct.session_state** %2, align 8
  %21 = getelementptr inbounds %struct.session_state, %struct.session_state* %20, i32 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %14
  %25 = load %struct.session_state*, %struct.session_state** %2, align 8
  %26 = getelementptr inbounds %struct.session_state, %struct.session_state* %25, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @free(i8* %27)
  br label %29

29:                                               ; preds = %24, %14
  %30 = load i8*, i8** @NULL_PTR, align 8
  %31 = load %struct.session_state*, %struct.session_state** %2, align 8
  %32 = getelementptr inbounds %struct.session_state, %struct.session_state* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  ret void
}

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
