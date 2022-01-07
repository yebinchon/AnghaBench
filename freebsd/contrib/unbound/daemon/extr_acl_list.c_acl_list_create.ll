; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_acl_list.c_acl_list_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_acl_list.c_acl_list_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acl_list = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.acl_list* @acl_list_create() #0 {
  %1 = alloca %struct.acl_list*, align 8
  %2 = alloca %struct.acl_list*, align 8
  %3 = call i64 @calloc(i32 1, i32 4)
  %4 = inttoptr i64 %3 to %struct.acl_list*
  store %struct.acl_list* %4, %struct.acl_list** %2, align 8
  %5 = load %struct.acl_list*, %struct.acl_list** %2, align 8
  %6 = icmp ne %struct.acl_list* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.acl_list* null, %struct.acl_list** %1, align 8
  br label %21

8:                                                ; preds = %0
  %9 = call i32 (...) @regional_create()
  %10 = load %struct.acl_list*, %struct.acl_list** %2, align 8
  %11 = getelementptr inbounds %struct.acl_list, %struct.acl_list* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.acl_list*, %struct.acl_list** %2, align 8
  %13 = getelementptr inbounds %struct.acl_list, %struct.acl_list* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %8
  %17 = load %struct.acl_list*, %struct.acl_list** %2, align 8
  %18 = call i32 @acl_list_delete(%struct.acl_list* %17)
  store %struct.acl_list* null, %struct.acl_list** %1, align 8
  br label %21

19:                                               ; preds = %8
  %20 = load %struct.acl_list*, %struct.acl_list** %2, align 8
  store %struct.acl_list* %20, %struct.acl_list** %1, align 8
  br label %21

21:                                               ; preds = %19, %16, %7
  %22 = load %struct.acl_list*, %struct.acl_list** %1, align 8
  ret %struct.acl_list* %22
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @regional_create(...) #1

declare dso_local i32 @acl_list_delete(%struct.acl_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
