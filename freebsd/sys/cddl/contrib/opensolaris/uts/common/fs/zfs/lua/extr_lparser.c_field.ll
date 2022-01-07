; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lparser.c_field.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lparser.c_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.ConsControl = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.ConsControl*)* @field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @field(%struct.TYPE_8__* %0, %struct.ConsControl* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.ConsControl*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.ConsControl* %1, %struct.ConsControl** %4, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %27 [
    i32 128, label %9
    i32 91, label %23
  ]

9:                                                ; preds = %2
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = call signext i8 @luaX_lookahead(%struct.TYPE_8__* %10)
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 61
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %17 = call i32 @listfield(%struct.TYPE_8__* %15, %struct.ConsControl* %16)
  br label %22

18:                                               ; preds = %9
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %21 = call i32 @recfield(%struct.TYPE_8__* %19, %struct.ConsControl* %20)
  br label %22

22:                                               ; preds = %18, %14
  br label %31

23:                                               ; preds = %2
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %26 = call i32 @recfield(%struct.TYPE_8__* %24, %struct.ConsControl* %25)
  br label %31

27:                                               ; preds = %2
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %30 = call i32 @listfield(%struct.TYPE_8__* %28, %struct.ConsControl* %29)
  br label %31

31:                                               ; preds = %27, %23, %22
  ret void
}

declare dso_local signext i8 @luaX_lookahead(%struct.TYPE_8__*) #1

declare dso_local i32 @listfield(%struct.TYPE_8__*, %struct.ConsControl*) #1

declare dso_local i32 @recfield(%struct.TYPE_8__*, %struct.ConsControl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
