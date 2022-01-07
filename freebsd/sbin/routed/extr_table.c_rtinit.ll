; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_table.c_rtinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_table.c_rtinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag_info = type { %struct.ag_info* }

@max_keylen = common dso_local global i32 0, align 4
@rhead = common dso_local global i32 0, align 4
@ag_slots = common dso_local global i8* null, align 8
@ag_avail = common dso_local global i8* null, align 8
@NUM_AG_SLOTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtinit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.ag_info*, align 8
  store i32 4, i32* @max_keylen, align 4
  %3 = call i32 (...) @rn_init()
  %4 = call i32 @rn_inithead(i32* @rhead, i32 32)
  %5 = load i8*, i8** @ag_slots, align 8
  store i8* %5, i8** @ag_avail, align 8
  %6 = load i8*, i8** @ag_slots, align 8
  %7 = bitcast i8* %6 to %struct.ag_info*
  store %struct.ag_info* %7, %struct.ag_info** %2, align 8
  store i32 1, i32* %1, align 4
  br label %8

8:                                                ; preds = %19, %0
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @NUM_AG_SLOTS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %8
  %13 = load %struct.ag_info*, %struct.ag_info** %2, align 8
  %14 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %13, i64 1
  %15 = load %struct.ag_info*, %struct.ag_info** %2, align 8
  %16 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %15, i32 0, i32 0
  store %struct.ag_info* %14, %struct.ag_info** %16, align 8
  %17 = load %struct.ag_info*, %struct.ag_info** %2, align 8
  %18 = getelementptr inbounds %struct.ag_info, %struct.ag_info* %17, i32 1
  store %struct.ag_info* %18, %struct.ag_info** %2, align 8
  br label %19

19:                                               ; preds = %12
  %20 = load i32, i32* %1, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %1, align 4
  br label %8

22:                                               ; preds = %8
  ret void
}

declare dso_local i32 @rn_init(...) #1

declare dso_local i32 @rn_inithead(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
