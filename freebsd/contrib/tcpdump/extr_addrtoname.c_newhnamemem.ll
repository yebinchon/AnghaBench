; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_addrtoname.c_newhnamemem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_addrtoname.c_newhnamemem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnamemem = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i8*)* }

@newhnamemem.ptr = internal global %struct.hnamemem* null, align 8
@newhnamemem.num = internal global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"newhnamemem: calloc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hnamemem* @newhnamemem(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.hnamemem*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load i32, i32* @newhnamemem.num, align 4
  %5 = icmp sle i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  store i32 64, i32* @newhnamemem.num, align 4
  %7 = load i32, i32* @newhnamemem.num, align 4
  %8 = call i64 @calloc(i32 %7, i32 4)
  %9 = inttoptr i64 %8 to %struct.hnamemem*
  store %struct.hnamemem* %9, %struct.hnamemem** @newhnamemem.ptr, align 8
  %10 = load %struct.hnamemem*, %struct.hnamemem** @newhnamemem.ptr, align 8
  %11 = icmp eq %struct.hnamemem* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %6
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32 (%struct.TYPE_4__*, i8*)*, i32 (%struct.TYPE_4__*, i8*)** %14, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %17 = call i32 %15(%struct.TYPE_4__* %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %12, %6
  br label %19

19:                                               ; preds = %18, %1
  %20 = load i32, i32* @newhnamemem.num, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* @newhnamemem.num, align 4
  %22 = load %struct.hnamemem*, %struct.hnamemem** @newhnamemem.ptr, align 8
  %23 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %22, i32 1
  store %struct.hnamemem* %23, %struct.hnamemem** @newhnamemem.ptr, align 8
  store %struct.hnamemem* %22, %struct.hnamemem** %3, align 8
  %24 = load %struct.hnamemem*, %struct.hnamemem** %3, align 8
  ret %struct.hnamemem* %24
}

declare dso_local i64 @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
