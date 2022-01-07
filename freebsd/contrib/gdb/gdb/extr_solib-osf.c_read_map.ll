; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-osf.c_read_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_solib-osf.c_read_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.read_map_ctxt = type { i64, i64, i32 }
%struct.so_list = type { i32 }
%struct.TYPE_6__ = type { i8*, i32, i32, i64, i32, i32, i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i64, i64, i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@LDR_NULL_MODULE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.read_map_ctxt*, %struct.so_list*)* @read_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_map(%struct.read_map_ctxt* %0, %struct.so_list* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.read_map_ctxt*, align 8
  %5 = alloca %struct.so_list*, align 8
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.read_map_ctxt* %0, %struct.read_map_ctxt** %4, align 8
  store %struct.so_list* %1, %struct.so_list** %5, align 8
  %11 = load %struct.read_map_ctxt*, %struct.read_map_ctxt** %4, align 8
  %12 = getelementptr inbounds %struct.read_map_ctxt, %struct.read_map_ctxt* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %94

16:                                               ; preds = %2
  %17 = load %struct.read_map_ctxt*, %struct.read_map_ctxt** %4, align 8
  %18 = getelementptr inbounds %struct.read_map_ctxt, %struct.read_map_ctxt* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = bitcast %struct.TYPE_6__* %6 to i8*
  %21 = call i64 @target_read_memory(i64 %19, i8* %20, i32 40)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %94

24:                                               ; preds = %16
  %25 = load %struct.read_map_ctxt*, %struct.read_map_ctxt** %4, align 8
  %26 = getelementptr inbounds %struct.read_map_ctxt, %struct.read_map_ctxt* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.read_map_ctxt*, %struct.read_map_ctxt** %4, align 8
  %29 = getelementptr inbounds %struct.read_map_ctxt, %struct.read_map_ctxt* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load %struct.read_map_ctxt*, %struct.read_map_ctxt** %4, align 8
  %34 = getelementptr inbounds %struct.read_map_ctxt, %struct.read_map_ctxt* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  br label %40

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 6
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.read_map_ctxt*, %struct.read_map_ctxt** %4, align 8
  %39 = getelementptr inbounds %struct.read_map_ctxt, %struct.read_map_ctxt* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %35, %32
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @PATH_MAX, align 4
  %44 = call i32 @target_read_string(i32 %42, i8** %8, i32 %43, i32* %9)
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %94

48:                                               ; preds = %40
  %49 = load %struct.so_list*, %struct.so_list** %5, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @init_so(%struct.so_list* %49, i8* %50, i32 %55, i32 %57)
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @xfree(i8* %59)
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %87, %48
  %62 = load i32, i32* %10, align 4
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %66, label %90

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 40
  %72 = add i64 %68, %71
  %73 = bitcast %struct.TYPE_5__* %7 to i8*
  %74 = call i64 @target_read_memory(i64 %72, i8* %73, i32 40)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  br label %91

77:                                               ; preds = %66
  %78 = load %struct.so_list*, %struct.so_list** %5, align 8
  %79 = load i32, i32* %10, align 4
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @init_sec(%struct.so_list* %78, i32 %79, i32 %81, i32* null, i32 %83, i32 %85)
  br label %87

87:                                               ; preds = %77
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %10, align 4
  br label %61

90:                                               ; preds = %61
  store i32 1, i32* %3, align 4
  br label %94

91:                                               ; preds = %76
  %92 = load %struct.so_list*, %struct.so_list** %5, align 8
  %93 = call i32 @osf_free_so(%struct.so_list* %92)
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %91, %90, %47, %23, %15
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i64 @target_read_memory(i64, i8*, i32) #1

declare dso_local i32 @target_read_string(i32, i8**, i32, i32*) #1

declare dso_local i32 @init_so(%struct.so_list*, i8*, i32, i32) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i32 @init_sec(%struct.so_list*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @osf_free_so(%struct.so_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
