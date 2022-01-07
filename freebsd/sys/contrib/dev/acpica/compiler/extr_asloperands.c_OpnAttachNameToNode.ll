; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asloperands.c_OpnAttachNameToNode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asloperands.c_OpnAttachNameToNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @OpnAttachNameToNode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @OpnAttachNameToNode(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  %4 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %21 [
    i32 141, label %8
    i32 140, label %8
    i32 139, label %8
    i32 138, label %8
    i32 135, label %8
    i32 134, label %8
    i32 130, label %8
    i32 132, label %8
    i32 131, label %8
    i32 128, label %8
    i32 133, label %8
    i32 129, label %8
    i32 149, label %11
    i32 147, label %14
    i32 146, label %14
    i32 142, label %14
    i32 145, label %14
    i32 143, label %14
    i32 144, label %17
    i32 148, label %20
    i32 136, label %20
    i32 137, label %20
  ]

8:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %10 = call %struct.TYPE_9__* @UtGetArg(%struct.TYPE_9__* %9, i32 0)
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %3, align 8
  br label %22

11:                                               ; preds = %1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %13 = call %struct.TYPE_9__* @UtGetArg(%struct.TYPE_9__* %12, i32 1)
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %3, align 8
  br label %22

14:                                               ; preds = %1, %1, %1, %1, %1
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %16 = call %struct.TYPE_9__* @UtGetArg(%struct.TYPE_9__* %15, i32 2)
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %3, align 8
  br label %22

17:                                               ; preds = %1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %19 = call %struct.TYPE_9__* @UtGetArg(%struct.TYPE_9__* %18, i32 3)
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %3, align 8
  br label %22

20:                                               ; preds = %1, %1, %1
  br label %29

21:                                               ; preds = %1
  br label %29

22:                                               ; preds = %17, %14, %11, %8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = icmp ne %struct.TYPE_9__* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = call i32 @UtAttachNamepathToOwner(%struct.TYPE_9__* %26, %struct.TYPE_9__* %27)
  br label %29

29:                                               ; preds = %20, %21, %25, %22
  ret void
}

declare dso_local %struct.TYPE_9__* @UtGetArg(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @UtAttachNamepathToOwner(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
