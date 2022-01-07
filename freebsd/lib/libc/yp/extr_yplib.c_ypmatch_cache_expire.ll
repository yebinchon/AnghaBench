; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/yp/extr_yplib.c_ypmatch_cache_expire.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/yp/extr_yplib.c_ypmatch_cache_expire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dom_binding = type { %struct.ypmatch_ent* }
%struct.ypmatch_ent = type { i64, %struct.ypmatch_ent* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dom_binding*)* @ypmatch_cache_expire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ypmatch_cache_expire(%struct.dom_binding* %0) #0 {
  %2 = alloca %struct.dom_binding*, align 8
  %3 = alloca %struct.ypmatch_ent*, align 8
  %4 = alloca %struct.ypmatch_ent*, align 8
  %5 = alloca %struct.ypmatch_ent*, align 8
  %6 = alloca i64, align 8
  store %struct.dom_binding* %0, %struct.dom_binding** %2, align 8
  %7 = load %struct.dom_binding*, %struct.dom_binding** %2, align 8
  %8 = getelementptr inbounds %struct.dom_binding, %struct.dom_binding* %7, i32 0, i32 0
  %9 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %8, align 8
  store %struct.ypmatch_ent* %9, %struct.ypmatch_ent** %3, align 8
  store %struct.ypmatch_ent* null, %struct.ypmatch_ent** %5, align 8
  %10 = call i32 @time(i64* %6)
  br label %11

11:                                               ; preds = %34, %1
  %12 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %3, align 8
  %13 = icmp ne %struct.ypmatch_ent* %12, null
  br i1 %13, label %14, label %35

14:                                               ; preds = %11
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %3, align 8
  %17 = getelementptr inbounds %struct.ypmatch_ent, %struct.ypmatch_ent* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %15, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %3, align 8
  %22 = getelementptr inbounds %struct.ypmatch_ent, %struct.ypmatch_ent* %21, i32 0, i32 1
  %23 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %22, align 8
  store %struct.ypmatch_ent* %23, %struct.ypmatch_ent** %4, align 8
  %24 = load %struct.dom_binding*, %struct.dom_binding** %2, align 8
  %25 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %5, align 8
  %26 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %3, align 8
  %27 = call i32 @ypmatch_cache_delete(%struct.dom_binding* %24, %struct.ypmatch_ent* %25, %struct.ypmatch_ent* %26)
  %28 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %4, align 8
  store %struct.ypmatch_ent* %28, %struct.ypmatch_ent** %3, align 8
  br label %34

29:                                               ; preds = %14
  %30 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %3, align 8
  store %struct.ypmatch_ent* %30, %struct.ypmatch_ent** %5, align 8
  %31 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %3, align 8
  %32 = getelementptr inbounds %struct.ypmatch_ent, %struct.ypmatch_ent* %31, i32 0, i32 1
  %33 = load %struct.ypmatch_ent*, %struct.ypmatch_ent** %32, align 8
  store %struct.ypmatch_ent* %33, %struct.ypmatch_ent** %3, align 8
  br label %34

34:                                               ; preds = %29, %20
  br label %11

35:                                               ; preds = %11
  ret void
}

declare dso_local i32 @time(i64*) #1

declare dso_local i32 @ypmatch_cache_delete(%struct.dom_binding*, %struct.ypmatch_ent*, %struct.ypmatch_ent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
