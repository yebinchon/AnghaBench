; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-osf.c_osf_current_sos.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-osf.c_osf_current_sos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.so_list = type { %struct.so_list*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.read_map_ctxt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.so_list* ()* @osf_current_sos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.so_list* @osf_current_sos() #0 {
  %1 = alloca %struct.so_list*, align 8
  %2 = alloca %struct.so_list*, align 8
  %3 = alloca %struct.so_list*, align 8
  %4 = alloca %struct.so_list*, align 8
  %5 = alloca %struct.so_list, align 8
  %6 = alloca %struct.read_map_ctxt, align 4
  %7 = alloca i32, align 4
  store %struct.so_list* null, %struct.so_list** %2, align 8
  %8 = call i32 @open_map(%struct.read_map_ctxt* %6)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  store %struct.so_list* null, %struct.so_list** %1, align 8
  br label %47

11:                                               ; preds = %0
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %37, %25, %11
  %13 = call i32 @read_map(%struct.read_map_ctxt* %6, %struct.so_list* %5)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  br label %43

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.so_list, %struct.so_list* %5, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = call i32 @osf_free_so(%struct.so_list* %5)
  store i32 1, i32* %7, align 4
  br label %12

27:                                               ; preds = %22, %16
  %28 = call %struct.so_list* @xmalloc(i32 16)
  store %struct.so_list* %28, %struct.so_list** %4, align 8
  %29 = load %struct.so_list*, %struct.so_list** %2, align 8
  %30 = icmp ne %struct.so_list* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load %struct.so_list*, %struct.so_list** %4, align 8
  store %struct.so_list* %32, %struct.so_list** %2, align 8
  br label %37

33:                                               ; preds = %27
  %34 = load %struct.so_list*, %struct.so_list** %4, align 8
  %35 = load %struct.so_list*, %struct.so_list** %3, align 8
  %36 = getelementptr inbounds %struct.so_list, %struct.so_list* %35, i32 0, i32 0
  store %struct.so_list* %34, %struct.so_list** %36, align 8
  br label %37

37:                                               ; preds = %33, %31
  %38 = load %struct.so_list*, %struct.so_list** %4, align 8
  store %struct.so_list* %38, %struct.so_list** %3, align 8
  %39 = load %struct.so_list*, %struct.so_list** %3, align 8
  %40 = call i32 @memcpy(%struct.so_list* %39, %struct.so_list* %5, i32 16)
  %41 = load %struct.so_list*, %struct.so_list** %3, align 8
  %42 = getelementptr inbounds %struct.so_list, %struct.so_list* %41, i32 0, i32 0
  store %struct.so_list* null, %struct.so_list** %42, align 8
  br label %12

43:                                               ; preds = %15
  br label %44

44:                                               ; preds = %43
  %45 = call i32 @close_map(%struct.read_map_ctxt* %6)
  %46 = load %struct.so_list*, %struct.so_list** %2, align 8
  store %struct.so_list* %46, %struct.so_list** %1, align 8
  br label %47

47:                                               ; preds = %44, %10
  %48 = load %struct.so_list*, %struct.so_list** %1, align 8
  ret %struct.so_list* %48
}

declare dso_local i32 @open_map(%struct.read_map_ctxt*) #1

declare dso_local i32 @read_map(%struct.read_map_ctxt*, %struct.so_list*) #1

declare dso_local i32 @osf_free_so(%struct.so_list*) #1

declare dso_local %struct.so_list* @xmalloc(i32) #1

declare dso_local i32 @memcpy(%struct.so_list*, %struct.so_list*, i32) #1

declare dso_local i32 @close_map(%struct.read_map_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
