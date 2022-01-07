; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_if.c_check_net_syn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_if.c_check_net_syn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_spare = type { i64, i32, i32, %struct.interface* }
%struct.interface = type { i64, i32, i32, i32, i32 }
%struct.rt_entry = type { i32, i64, %struct.interface* }

@check_net_syn.new = internal global %struct.rt_spare zeroinitializer, align 8
@have_ripv1_out = common dso_local global i64 0, align 8
@have_ripv1_in = common dso_local global i64 0, align 8
@IS_NEED_NET_SYN = common dso_local global i32 0, align 4
@RS_NO_NET_SYN = common dso_local global i32 0, align 4
@RS_NET_SYN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.interface*)* @check_net_syn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_net_syn(%struct.interface* %0) #0 {
  %2 = alloca %struct.interface*, align 8
  %3 = alloca %struct.rt_entry*, align 8
  store %struct.interface* %0, %struct.interface** %2, align 8
  %4 = load i64, i64* @have_ripv1_out, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i64, i64* @have_ripv1_in, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %72

9:                                                ; preds = %6, %1
  %10 = load i32, i32* @IS_NEED_NET_SYN, align 4
  %11 = load %struct.interface*, %struct.interface** %2, align 8
  %12 = getelementptr inbounds %struct.interface, %struct.interface* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 8
  %15 = load %struct.interface*, %struct.interface** %2, align 8
  %16 = getelementptr inbounds %struct.interface, %struct.interface* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.interface*, %struct.interface** %2, align 8
  %19 = getelementptr inbounds %struct.interface, %struct.interface* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.rt_entry* @rtget(i32 %17, i32 %20)
  store %struct.rt_entry* %21, %struct.rt_entry** %3, align 8
  %22 = load %struct.rt_entry*, %struct.rt_entry** %3, align 8
  %23 = icmp ne %struct.rt_entry* %22, null
  br i1 %23, label %24, label %49

24:                                               ; preds = %9
  %25 = load %struct.rt_entry*, %struct.rt_entry** %3, align 8
  %26 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @RS_NO_NET_SYN, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 0, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %24
  %32 = load %struct.rt_entry*, %struct.rt_entry** %3, align 8
  %33 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @RS_NET_SYN, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = load %struct.rt_entry*, %struct.rt_entry** %3, align 8
  %40 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.interface*, %struct.interface** %2, align 8
  %43 = getelementptr inbounds %struct.interface, %struct.interface* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %41, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %38, %31
  %47 = load %struct.rt_entry*, %struct.rt_entry** %3, align 8
  %48 = call i32 @rtdelete(%struct.rt_entry* %47)
  store %struct.rt_entry* null, %struct.rt_entry** %3, align 8
  br label %49

49:                                               ; preds = %46, %38, %24, %9
  %50 = load %struct.rt_entry*, %struct.rt_entry** %3, align 8
  %51 = icmp eq %struct.rt_entry* %50, null
  br i1 %51, label %52, label %71

52:                                               ; preds = %49
  %53 = load %struct.interface*, %struct.interface** %2, align 8
  store %struct.interface* %53, %struct.interface** getelementptr inbounds (%struct.rt_spare, %struct.rt_spare* @check_net_syn.new, i32 0, i32 3), align 8
  %54 = load %struct.interface*, %struct.interface** %2, align 8
  %55 = getelementptr inbounds %struct.interface, %struct.interface* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* getelementptr inbounds (%struct.rt_spare, %struct.rt_spare* @check_net_syn.new, i32 0, i32 2), align 4
  %57 = load %struct.interface*, %struct.interface** %2, align 8
  %58 = getelementptr inbounds %struct.interface, %struct.interface* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* getelementptr inbounds (%struct.rt_spare, %struct.rt_spare* @check_net_syn.new, i32 0, i32 1), align 8
  %60 = load %struct.interface*, %struct.interface** %2, align 8
  %61 = getelementptr inbounds %struct.interface, %struct.interface* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* getelementptr inbounds (%struct.rt_spare, %struct.rt_spare* @check_net_syn.new, i32 0, i32 0), align 8
  %63 = load %struct.interface*, %struct.interface** %2, align 8
  %64 = getelementptr inbounds %struct.interface, %struct.interface* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.interface*, %struct.interface** %2, align 8
  %67 = getelementptr inbounds %struct.interface, %struct.interface* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @RS_NET_SYN, align 4
  %70 = call i32 @rtadd(i32 %65, i32 %68, i32 %69, %struct.rt_spare* @check_net_syn.new)
  br label %71

71:                                               ; preds = %52, %49
  br label %105

72:                                               ; preds = %6
  %73 = load i32, i32* @IS_NEED_NET_SYN, align 4
  %74 = xor i32 %73, -1
  %75 = load %struct.interface*, %struct.interface** %2, align 8
  %76 = getelementptr inbounds %struct.interface, %struct.interface* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load %struct.interface*, %struct.interface** %2, align 8
  %80 = getelementptr inbounds %struct.interface, %struct.interface* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.interface*, %struct.interface** %2, align 8
  %83 = getelementptr inbounds %struct.interface, %struct.interface* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call %struct.rt_entry* @rtget(i32 %81, i32 %84)
  store %struct.rt_entry* %85, %struct.rt_entry** %3, align 8
  %86 = load %struct.rt_entry*, %struct.rt_entry** %3, align 8
  %87 = icmp ne %struct.rt_entry* %86, null
  br i1 %87, label %88, label %104

88:                                               ; preds = %72
  %89 = load %struct.rt_entry*, %struct.rt_entry** %3, align 8
  %90 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @RS_NET_SYN, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %88
  %96 = load %struct.rt_entry*, %struct.rt_entry** %3, align 8
  %97 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %96, i32 0, i32 2
  %98 = load %struct.interface*, %struct.interface** %97, align 8
  %99 = load %struct.interface*, %struct.interface** %2, align 8
  %100 = icmp eq %struct.interface* %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load %struct.rt_entry*, %struct.rt_entry** %3, align 8
  %103 = call i32 @rtbad_sub(%struct.rt_entry* %102)
  br label %104

104:                                              ; preds = %101, %95, %88, %72
  br label %105

105:                                              ; preds = %104, %71
  ret void
}

declare dso_local %struct.rt_entry* @rtget(i32, i32) #1

declare dso_local i32 @rtdelete(%struct.rt_entry*) #1

declare dso_local i32 @rtadd(i32, i32, i32, %struct.rt_spare*) #1

declare dso_local i32 @rtbad_sub(%struct.rt_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
