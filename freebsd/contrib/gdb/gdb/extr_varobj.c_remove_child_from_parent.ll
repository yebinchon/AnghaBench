; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_remove_child_from_parent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_remove_child_from_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varobj = type { %struct.varobj_child* }
%struct.varobj_child = type { %struct.varobj_child*, %struct.varobj* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.varobj*, %struct.varobj*)* @remove_child_from_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_child_from_parent(%struct.varobj* %0, %struct.varobj* %1) #0 {
  %3 = alloca %struct.varobj*, align 8
  %4 = alloca %struct.varobj*, align 8
  %5 = alloca %struct.varobj_child*, align 8
  %6 = alloca %struct.varobj_child*, align 8
  store %struct.varobj* %0, %struct.varobj** %3, align 8
  store %struct.varobj* %1, %struct.varobj** %4, align 8
  store %struct.varobj_child* null, %struct.varobj_child** %6, align 8
  %7 = load %struct.varobj*, %struct.varobj** %3, align 8
  %8 = getelementptr inbounds %struct.varobj, %struct.varobj* %7, i32 0, i32 0
  %9 = load %struct.varobj_child*, %struct.varobj_child** %8, align 8
  store %struct.varobj_child* %9, %struct.varobj_child** %5, align 8
  br label %10

10:                                               ; preds = %20, %2
  %11 = load %struct.varobj_child*, %struct.varobj_child** %5, align 8
  %12 = icmp ne %struct.varobj_child* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = load %struct.varobj_child*, %struct.varobj_child** %5, align 8
  %15 = getelementptr inbounds %struct.varobj_child, %struct.varobj_child* %14, i32 0, i32 1
  %16 = load %struct.varobj*, %struct.varobj** %15, align 8
  %17 = load %struct.varobj*, %struct.varobj** %4, align 8
  %18 = icmp eq %struct.varobj* %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %25

20:                                               ; preds = %13
  %21 = load %struct.varobj_child*, %struct.varobj_child** %5, align 8
  store %struct.varobj_child* %21, %struct.varobj_child** %6, align 8
  %22 = load %struct.varobj_child*, %struct.varobj_child** %5, align 8
  %23 = getelementptr inbounds %struct.varobj_child, %struct.varobj_child* %22, i32 0, i32 0
  %24 = load %struct.varobj_child*, %struct.varobj_child** %23, align 8
  store %struct.varobj_child* %24, %struct.varobj_child** %5, align 8
  br label %10

25:                                               ; preds = %19, %10
  %26 = load %struct.varobj_child*, %struct.varobj_child** %6, align 8
  %27 = icmp eq %struct.varobj_child* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load %struct.varobj_child*, %struct.varobj_child** %5, align 8
  %30 = getelementptr inbounds %struct.varobj_child, %struct.varobj_child* %29, i32 0, i32 0
  %31 = load %struct.varobj_child*, %struct.varobj_child** %30, align 8
  %32 = load %struct.varobj*, %struct.varobj** %3, align 8
  %33 = getelementptr inbounds %struct.varobj, %struct.varobj* %32, i32 0, i32 0
  store %struct.varobj_child* %31, %struct.varobj_child** %33, align 8
  br label %40

34:                                               ; preds = %25
  %35 = load %struct.varobj_child*, %struct.varobj_child** %5, align 8
  %36 = getelementptr inbounds %struct.varobj_child, %struct.varobj_child* %35, i32 0, i32 0
  %37 = load %struct.varobj_child*, %struct.varobj_child** %36, align 8
  %38 = load %struct.varobj_child*, %struct.varobj_child** %6, align 8
  %39 = getelementptr inbounds %struct.varobj_child, %struct.varobj_child* %38, i32 0, i32 0
  store %struct.varobj_child* %37, %struct.varobj_child** %39, align 8
  br label %40

40:                                               ; preds = %34, %28
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
