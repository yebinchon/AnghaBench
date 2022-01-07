; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ui-out.c_clear_header_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ui-out.c_clear_header_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_out = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__*, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_4__*, %struct.TYPE_4__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ui_out*)* @clear_header_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_header_list(%struct.ui_out* %0) #0 {
  %2 = alloca %struct.ui_out*, align 8
  store %struct.ui_out* %0, %struct.ui_out** %2, align 8
  br label %3

3:                                                ; preds = %41, %1
  %4 = load %struct.ui_out*, %struct.ui_out** %2, align 8
  %5 = getelementptr inbounds %struct.ui_out, %struct.ui_out* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %47

9:                                                ; preds = %3
  %10 = load %struct.ui_out*, %struct.ui_out** %2, align 8
  %11 = getelementptr inbounds %struct.ui_out, %struct.ui_out* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = load %struct.ui_out*, %struct.ui_out** %2, align 8
  %15 = getelementptr inbounds %struct.ui_out, %struct.ui_out* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %16, align 8
  %17 = load %struct.ui_out*, %struct.ui_out** %2, align 8
  %18 = getelementptr inbounds %struct.ui_out, %struct.ui_out* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load %struct.ui_out*, %struct.ui_out** %2, align 8
  %24 = getelementptr inbounds %struct.ui_out, %struct.ui_out* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %25, align 8
  %26 = load %struct.ui_out*, %struct.ui_out** %2, align 8
  %27 = getelementptr inbounds %struct.ui_out, %struct.ui_out* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = icmp ne %struct.TYPE_4__* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %9
  %34 = load %struct.ui_out*, %struct.ui_out** %2, align 8
  %35 = getelementptr inbounds %struct.ui_out, %struct.ui_out* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = call i32 @xfree(%struct.TYPE_4__* %39)
  br label %41

41:                                               ; preds = %33, %9
  %42 = load %struct.ui_out*, %struct.ui_out** %2, align 8
  %43 = getelementptr inbounds %struct.ui_out, %struct.ui_out* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = call i32 @xfree(%struct.TYPE_4__* %45)
  br label %3

47:                                               ; preds = %3
  %48 = load %struct.ui_out*, %struct.ui_out** %2, align 8
  %49 = getelementptr inbounds %struct.ui_out, %struct.ui_out* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = icmp eq %struct.TYPE_4__* %51, null
  %53 = zext i1 %52 to i32
  %54 = call i32 @gdb_assert(i32 %53)
  %55 = load %struct.ui_out*, %struct.ui_out** %2, align 8
  %56 = getelementptr inbounds %struct.ui_out, %struct.ui_out* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  store i32* null, i32** %57, align 8
  %58 = load %struct.ui_out*, %struct.ui_out** %2, align 8
  %59 = getelementptr inbounds %struct.ui_out, %struct.ui_out* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %60, align 8
  ret void
}

declare dso_local i32 @xfree(%struct.TYPE_4__*) #1

declare dso_local i32 @gdb_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
