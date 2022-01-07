; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_save_child_in_parent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_save_child_in_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varobj = type { %struct.varobj_child* }
%struct.varobj_child = type { %struct.varobj*, %struct.varobj_child* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.varobj*, %struct.varobj*)* @save_child_in_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @save_child_in_parent(%struct.varobj* %0, %struct.varobj* %1) #0 {
  %3 = alloca %struct.varobj*, align 8
  %4 = alloca %struct.varobj*, align 8
  %5 = alloca %struct.varobj_child*, align 8
  store %struct.varobj* %0, %struct.varobj** %3, align 8
  store %struct.varobj* %1, %struct.varobj** %4, align 8
  %6 = load %struct.varobj*, %struct.varobj** %3, align 8
  %7 = getelementptr inbounds %struct.varobj, %struct.varobj* %6, i32 0, i32 0
  %8 = load %struct.varobj_child*, %struct.varobj_child** %7, align 8
  store %struct.varobj_child* %8, %struct.varobj_child** %5, align 8
  %9 = call i64 @xmalloc(i32 16)
  %10 = inttoptr i64 %9 to %struct.varobj_child*
  %11 = load %struct.varobj*, %struct.varobj** %3, align 8
  %12 = getelementptr inbounds %struct.varobj, %struct.varobj* %11, i32 0, i32 0
  store %struct.varobj_child* %10, %struct.varobj_child** %12, align 8
  %13 = load %struct.varobj_child*, %struct.varobj_child** %5, align 8
  %14 = load %struct.varobj*, %struct.varobj** %3, align 8
  %15 = getelementptr inbounds %struct.varobj, %struct.varobj* %14, i32 0, i32 0
  %16 = load %struct.varobj_child*, %struct.varobj_child** %15, align 8
  %17 = getelementptr inbounds %struct.varobj_child, %struct.varobj_child* %16, i32 0, i32 1
  store %struct.varobj_child* %13, %struct.varobj_child** %17, align 8
  %18 = load %struct.varobj*, %struct.varobj** %4, align 8
  %19 = load %struct.varobj*, %struct.varobj** %3, align 8
  %20 = getelementptr inbounds %struct.varobj, %struct.varobj* %19, i32 0, i32 0
  %21 = load %struct.varobj_child*, %struct.varobj_child** %20, align 8
  %22 = getelementptr inbounds %struct.varobj_child, %struct.varobj_child* %21, i32 0, i32 0
  store %struct.varobj* %18, %struct.varobj** %22, align 8
  ret void
}

declare dso_local i64 @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
