; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_parse.c_p2p_get_go_dev_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_parse.c_p2p_get_go_dev_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.p2p_message = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @p2p_get_go_dev_addr(%struct.wpabuf* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.p2p_message, align 8
  store %struct.wpabuf* %0, %struct.wpabuf** %3, align 8
  %5 = call i32 @os_memset(%struct.p2p_message* %4, i32 0, i32 16)
  %6 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %7 = call i64 @p2p_parse_p2p_ie(%struct.wpabuf* %6, %struct.p2p_message* %4)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %25

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %4, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %4, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %2, align 8
  br label %25

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %4, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.p2p_message, %struct.p2p_message* %4, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %2, align 8
  br label %25

24:                                               ; preds = %17
  store i32* null, i32** %2, align 8
  br label %25

25:                                               ; preds = %24, %21, %14, %9
  %26 = load i32*, i32** %2, align 8
  ret i32* %26
}

declare dso_local i32 @os_memset(%struct.p2p_message*, i32, i32) #1

declare dso_local i64 @p2p_parse_p2p_ie(%struct.wpabuf*, %struct.p2p_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
