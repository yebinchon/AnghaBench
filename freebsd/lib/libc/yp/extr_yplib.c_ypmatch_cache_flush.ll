; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/yp/extr_yplib.c_ypmatch_cache_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/yp/extr_yplib.c_ypmatch_cache_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dom_binding = type { %struct.ypmatch_ent* }
%struct.ypmatch_ent = type { %struct.ypmatch_ent* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dom_binding*)* @ypmatch_cache_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ypmatch_cache_flush(%struct.dom_binding* %0) #0 {
  %2 = alloca %struct.dom_binding*, align 8
  %3 = alloca %struct.ypmatch_ent*, align 8
  %4 = alloca %struct.ypmatch_ent*, align 8
  store %struct.dom_binding* %0, %struct.dom_binding** %2, align 8
  %5 = load %struct.dom_binding*, %struct.dom_binding** %2, align 8
  %6 = getelementptr inbounds %struct.dom_binding, %struct.dom_binding* %5, i32 0, i32 0
  %7 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %6, align 8
  store %struct.ypmatch_ent* %7, %struct.ypmatch_ent** %4, align 8
  br label %8

8:                                                ; preds = %11, %1
  %9 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %4, align 8
  %10 = icmp ne %struct.ypmatch_ent* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  %12 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %4, align 8
  %13 = getelementptr inbounds %struct.ypmatch_ent, %struct.ypmatch_ent* %12, i32 0, i32 0
  %14 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %13, align 8
  store %struct.ypmatch_ent* %14, %struct.ypmatch_ent** %3, align 8
  %15 = load %struct.dom_binding*, %struct.dom_binding** %2, align 8
  %16 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %4, align 8
  %17 = call i32 @ypmatch_cache_delete(%struct.dom_binding* %15, i32* null, %struct.ypmatch_ent* %16)
  %18 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %3, align 8
  store %struct.ypmatch_ent* %18, %struct.ypmatch_ent** %4, align 8
  br label %8

19:                                               ; preds = %8
  ret void
}

declare dso_local i32 @ypmatch_cache_delete(%struct.dom_binding*, i32*, %struct.ypmatch_ent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
