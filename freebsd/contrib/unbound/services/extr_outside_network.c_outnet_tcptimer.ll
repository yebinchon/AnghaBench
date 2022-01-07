; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_outnet_tcptimer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_outnet_tcptimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waiting_tcp = type { i8*, i32 (i32*, i8*, i32, i32*)*, i64, i64, %struct.outside_network* }
%struct.outside_network = type { %struct.pending_tcp* }
%struct.pending_tcp = type { %struct.pending_tcp*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@NETEVENT_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @outnet_tcptimer(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.waiting_tcp*, align 8
  %4 = alloca %struct.outside_network*, align 8
  %5 = alloca i32 (i32*, i8*, i32, i32*)**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pending_tcp*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.waiting_tcp*
  store %struct.waiting_tcp* %9, %struct.waiting_tcp** %3, align 8
  %10 = load %struct.waiting_tcp*, %struct.waiting_tcp** %3, align 8
  %11 = getelementptr inbounds %struct.waiting_tcp, %struct.waiting_tcp* %10, i32 0, i32 4
  %12 = load %struct.outside_network*, %struct.outside_network** %11, align 8
  store %struct.outside_network* %12, %struct.outside_network** %4, align 8
  %13 = load %struct.waiting_tcp*, %struct.waiting_tcp** %3, align 8
  %14 = getelementptr inbounds %struct.waiting_tcp, %struct.waiting_tcp* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.outside_network*, %struct.outside_network** %4, align 8
  %19 = load %struct.waiting_tcp*, %struct.waiting_tcp** %3, align 8
  %20 = call i32 @waiting_list_remove(%struct.outside_network* %18, %struct.waiting_tcp* %19)
  br label %48

21:                                               ; preds = %1
  %22 = load %struct.waiting_tcp*, %struct.waiting_tcp** %3, align 8
  %23 = getelementptr inbounds %struct.waiting_tcp, %struct.waiting_tcp* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.pending_tcp*
  store %struct.pending_tcp* %25, %struct.pending_tcp** %7, align 8
  %26 = load %struct.pending_tcp*, %struct.pending_tcp** %7, align 8
  %27 = getelementptr inbounds %struct.pending_tcp, %struct.pending_tcp* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32, %21
  %34 = load %struct.pending_tcp*, %struct.pending_tcp** %7, align 8
  %35 = getelementptr inbounds %struct.pending_tcp, %struct.pending_tcp* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = call i32 @comm_point_close(%struct.TYPE_2__* %36)
  %38 = load %struct.pending_tcp*, %struct.pending_tcp** %7, align 8
  %39 = getelementptr inbounds %struct.pending_tcp, %struct.pending_tcp* %38, i32 0, i32 1
  store i32* null, i32** %39, align 8
  %40 = load %struct.outside_network*, %struct.outside_network** %4, align 8
  %41 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %40, i32 0, i32 0
  %42 = load %struct.pending_tcp*, %struct.pending_tcp** %41, align 8
  %43 = load %struct.pending_tcp*, %struct.pending_tcp** %7, align 8
  %44 = getelementptr inbounds %struct.pending_tcp, %struct.pending_tcp* %43, i32 0, i32 0
  store %struct.pending_tcp* %42, %struct.pending_tcp** %44, align 8
  %45 = load %struct.pending_tcp*, %struct.pending_tcp** %7, align 8
  %46 = load %struct.outside_network*, %struct.outside_network** %4, align 8
  %47 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %46, i32 0, i32 0
  store %struct.pending_tcp* %45, %struct.pending_tcp** %47, align 8
  br label %48

48:                                               ; preds = %33, %17
  %49 = load %struct.waiting_tcp*, %struct.waiting_tcp** %3, align 8
  %50 = getelementptr inbounds %struct.waiting_tcp, %struct.waiting_tcp* %49, i32 0, i32 1
  %51 = load i32 (i32*, i8*, i32, i32*)*, i32 (i32*, i8*, i32, i32*)** %50, align 8
  %52 = bitcast i32 (i32*, i8*, i32, i32*)* %51 to i32 (i32*, i8*, i32, i32*)**
  store i32 (i32*, i8*, i32, i32*)** %52, i32 (i32*, i8*, i32, i32*)*** %5, align 8
  %53 = load %struct.waiting_tcp*, %struct.waiting_tcp** %3, align 8
  %54 = getelementptr inbounds %struct.waiting_tcp, %struct.waiting_tcp* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %6, align 8
  %56 = load %struct.waiting_tcp*, %struct.waiting_tcp** %3, align 8
  %57 = call i32 @waiting_tcp_delete(%struct.waiting_tcp* %56)
  %58 = load i32 (i32*, i8*, i32, i32*)**, i32 (i32*, i8*, i32, i32*)*** %5, align 8
  %59 = bitcast i32 (i32*, i8*, i32, i32*)** %58 to i32 (i32*, i8*, i32, i32*)*
  %60 = call i32 @fptr_whitelist_pending_tcp(i32 (i32*, i8*, i32, i32*)* %59)
  %61 = call i32 @fptr_ok(i32 %60)
  %62 = load i32 (i32*, i8*, i32, i32*)**, i32 (i32*, i8*, i32, i32*)*** %5, align 8
  %63 = load i32 (i32*, i8*, i32, i32*)*, i32 (i32*, i8*, i32, i32*)** %62, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = load i32, i32* @NETEVENT_TIMEOUT, align 4
  %66 = call i32 %63(i32* null, i8* %64, i32 %65, i32* null)
  %67 = load %struct.outside_network*, %struct.outside_network** %4, align 8
  %68 = call i32 @use_free_buffer(%struct.outside_network* %67)
  ret void
}

declare dso_local i32 @waiting_list_remove(%struct.outside_network*, %struct.waiting_tcp*) #1

declare dso_local i32 @comm_point_close(%struct.TYPE_2__*) #1

declare dso_local i32 @waiting_tcp_delete(%struct.waiting_tcp*) #1

declare dso_local i32 @fptr_ok(i32) #1

declare dso_local i32 @fptr_whitelist_pending_tcp(i32 (i32*, i8*, i32, i32*)*) #1

declare dso_local i32 @use_free_buffer(%struct.outside_network*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
