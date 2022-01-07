; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_acl_list.c_acl_list_get_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_acl_list.c_acl_list_get_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acl_list = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @acl_list_get_mem(%struct.acl_list* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.acl_list*, align 8
  store %struct.acl_list* %0, %struct.acl_list** %3, align 8
  %4 = load %struct.acl_list*, %struct.acl_list** %3, align 8
  %5 = icmp ne %struct.acl_list* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %13

7:                                                ; preds = %1
  %8 = load %struct.acl_list*, %struct.acl_list** %3, align 8
  %9 = getelementptr inbounds %struct.acl_list, %struct.acl_list* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @regional_get_mem(i32 %10)
  %12 = add i64 4, %11
  store i64 %12, i64* %2, align 8
  br label %13

13:                                               ; preds = %7, %6
  %14 = load i64, i64* %2, align 8
  ret i64 %14
}

declare dso_local i64 @regional_get_mem(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
