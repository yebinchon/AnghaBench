; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dhclient.c_script_flush_env.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dhclient.c_script_flush_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client_state = type { i64, i32** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @script_flush_env(%struct.client_state* %0) #0 {
  %2 = alloca %struct.client_state*, align 8
  %3 = alloca i32, align 4
  store %struct.client_state* %0, %struct.client_state** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %28, %1
  %5 = load %struct.client_state*, %struct.client_state** %2, align 8
  %6 = getelementptr inbounds %struct.client_state, %struct.client_state* %5, i32 0, i32 1
  %7 = load i32**, i32*** %6, align 8
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32*, i32** %7, i64 %9
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %31

13:                                               ; preds = %4
  %14 = load %struct.client_state*, %struct.client_state** %2, align 8
  %15 = getelementptr inbounds %struct.client_state, %struct.client_state* %14, i32 0, i32 1
  %16 = load i32**, i32*** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32*, i32** %16, i64 %18
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @free(i32* %20)
  %22 = load %struct.client_state*, %struct.client_state** %2, align 8
  %23 = getelementptr inbounds %struct.client_state, %struct.client_state* %22, i32 0, i32 1
  %24 = load i32**, i32*** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %24, i64 %26
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %13
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %4

31:                                               ; preds = %4
  %32 = load %struct.client_state*, %struct.client_state** %2, align 8
  %33 = getelementptr inbounds %struct.client_state, %struct.client_state* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  ret void
}

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
