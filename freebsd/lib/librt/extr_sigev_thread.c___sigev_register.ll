; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librt/extr_sigev_thread.c___sigev_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librt/extr_sigev_thread.c___sigev_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigev_node = type { i32, i32 }

@sigev_hash = common dso_local global i32* null, align 8
@sn_link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__sigev_register(%struct.sigev_node* %0) #0 {
  %2 = alloca %struct.sigev_node*, align 8
  %3 = alloca i32, align 4
  store %struct.sigev_node* %0, %struct.sigev_node** %2, align 8
  %4 = load %struct.sigev_node*, %struct.sigev_node** %2, align 8
  %5 = getelementptr inbounds %struct.sigev_node, %struct.sigev_node* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.sigev_node*, %struct.sigev_node** %2, align 8
  %8 = getelementptr inbounds %struct.sigev_node, %struct.sigev_node* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @HASH(i32 %6, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32*, i32** @sigev_hash, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load %struct.sigev_node*, %struct.sigev_node** %2, align 8
  %16 = load i32, i32* @sn_link, align 4
  %17 = call i32 @LIST_INSERT_HEAD(i32* %14, %struct.sigev_node* %15, i32 %16)
  ret i32 0
}

declare dso_local i32 @HASH(i32, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.sigev_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
