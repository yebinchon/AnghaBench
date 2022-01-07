; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_outnet_send_wait_udp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_outnet_send_wait_udp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.outside_network = type { %struct.TYPE_2__*, i32, i32*, %struct.pending*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.pending = type { i32, i32 (i32, i32, i32, i32*)*, i32, i64, i32*, %struct.pending* }

@NETEVENT_CLOSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.outside_network*)* @outnet_send_wait_udp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @outnet_send_wait_udp(%struct.outside_network* %0) #0 {
  %2 = alloca %struct.outside_network*, align 8
  %3 = alloca %struct.pending*, align 8
  store %struct.outside_network* %0, %struct.outside_network** %2, align 8
  br label %4

4:                                                ; preds = %102, %1
  %5 = load %struct.outside_network*, %struct.outside_network** %2, align 8
  %6 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %5, i32 0, i32 3
  %7 = load %struct.pending*, %struct.pending** %6, align 8
  %8 = icmp ne %struct.pending* %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %4
  %10 = load %struct.outside_network*, %struct.outside_network** %2, align 8
  %11 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load %struct.outside_network*, %struct.outside_network** %2, align 8
  %16 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %14, %9, %4
  %21 = phi i1 [ false, %9 ], [ false, %4 ], [ %19, %14 ]
  br i1 %21, label %22, label %103

22:                                               ; preds = %20
  %23 = load %struct.outside_network*, %struct.outside_network** %2, align 8
  %24 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %23, i32 0, i32 3
  %25 = load %struct.pending*, %struct.pending** %24, align 8
  store %struct.pending* %25, %struct.pending** %3, align 8
  %26 = load %struct.pending*, %struct.pending** %3, align 8
  %27 = getelementptr inbounds %struct.pending, %struct.pending* %26, i32 0, i32 5
  %28 = load %struct.pending*, %struct.pending** %27, align 8
  %29 = load %struct.outside_network*, %struct.outside_network** %2, align 8
  %30 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %29, i32 0, i32 3
  store %struct.pending* %28, %struct.pending** %30, align 8
  %31 = load %struct.pending*, %struct.pending** %3, align 8
  %32 = getelementptr inbounds %struct.pending, %struct.pending* %31, i32 0, i32 5
  %33 = load %struct.pending*, %struct.pending** %32, align 8
  %34 = icmp ne %struct.pending* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %22
  %36 = load %struct.outside_network*, %struct.outside_network** %2, align 8
  %37 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %36, i32 0, i32 2
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %35, %22
  %39 = load %struct.outside_network*, %struct.outside_network** %2, align 8
  %40 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @sldns_buffer_clear(i32 %41)
  %43 = load %struct.outside_network*, %struct.outside_network** %2, align 8
  %44 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.pending*, %struct.pending** %3, align 8
  %47 = getelementptr inbounds %struct.pending, %struct.pending* %46, i32 0, i32 4
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.pending*, %struct.pending** %3, align 8
  %50 = getelementptr inbounds %struct.pending, %struct.pending* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @sldns_buffer_write(i32 %45, i32* %48, i64 %51)
  %53 = load %struct.outside_network*, %struct.outside_network** %2, align 8
  %54 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @sldns_buffer_flip(i32 %55)
  %57 = load %struct.pending*, %struct.pending** %3, align 8
  %58 = getelementptr inbounds %struct.pending, %struct.pending* %57, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @free(i32* %59)
  %61 = load %struct.pending*, %struct.pending** %3, align 8
  %62 = getelementptr inbounds %struct.pending, %struct.pending* %61, i32 0, i32 4
  store i32* null, i32** %62, align 8
  %63 = load %struct.pending*, %struct.pending** %3, align 8
  %64 = getelementptr inbounds %struct.pending, %struct.pending* %63, i32 0, i32 3
  store i64 0, i64* %64, align 8
  %65 = load %struct.pending*, %struct.pending** %3, align 8
  %66 = load %struct.outside_network*, %struct.outside_network** %2, align 8
  %67 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.pending*, %struct.pending** %3, align 8
  %70 = getelementptr inbounds %struct.pending, %struct.pending* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @randomize_and_send_udp(%struct.pending* %65, i32 %68, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %102, label %74

74:                                               ; preds = %38
  %75 = load %struct.pending*, %struct.pending** %3, align 8
  %76 = getelementptr inbounds %struct.pending, %struct.pending* %75, i32 0, i32 1
  %77 = load i32 (i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32*)** %76, align 8
  %78 = icmp ne i32 (i32, i32, i32, i32*)* %77, null
  br i1 %78, label %79, label %98

79:                                               ; preds = %74
  %80 = load %struct.pending*, %struct.pending** %3, align 8
  %81 = getelementptr inbounds %struct.pending, %struct.pending* %80, i32 0, i32 1
  %82 = load i32 (i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32*)** %81, align 8
  %83 = call i32 @fptr_whitelist_pending_udp(i32 (i32, i32, i32, i32*)* %82)
  %84 = call i32 @fptr_ok(i32 %83)
  %85 = load %struct.pending*, %struct.pending** %3, align 8
  %86 = getelementptr inbounds %struct.pending, %struct.pending* %85, i32 0, i32 1
  %87 = load i32 (i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32*)** %86, align 8
  %88 = load %struct.outside_network*, %struct.outside_network** %2, align 8
  %89 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.pending*, %struct.pending** %3, align 8
  %94 = getelementptr inbounds %struct.pending, %struct.pending* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @NETEVENT_CLOSED, align 4
  %97 = call i32 %87(i32 %92, i32 %95, i32 %96, i32* null)
  br label %98

98:                                               ; preds = %79, %74
  %99 = load %struct.outside_network*, %struct.outside_network** %2, align 8
  %100 = load %struct.pending*, %struct.pending** %3, align 8
  %101 = call i32 @pending_delete(%struct.outside_network* %99, %struct.pending* %100)
  br label %102

102:                                              ; preds = %98, %38
  br label %4

103:                                              ; preds = %20
  ret void
}

declare dso_local i32 @sldns_buffer_clear(i32) #1

declare dso_local i32 @sldns_buffer_write(i32, i32*, i64) #1

declare dso_local i32 @sldns_buffer_flip(i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @randomize_and_send_udp(%struct.pending*, i32, i32) #1

declare dso_local i32 @fptr_ok(i32) #1

declare dso_local i32 @fptr_whitelist_pending_udp(i32 (i32, i32, i32, i32*)*) #1

declare dso_local i32 @pending_delete(%struct.outside_network*, %struct.pending*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
