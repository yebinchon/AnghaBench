; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_use_free_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_use_free_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.outside_network = type { %struct.waiting_tcp*, %struct.waiting_tcp*, i32, i64 }
%struct.waiting_tcp = type { i8*, i32 (i32*, i8*, i32, i32*)*, i32, i32, %struct.waiting_tcp* }

@NETEVENT_CLOSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.outside_network*)* @use_free_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @use_free_buffer(%struct.outside_network* %0) #0 {
  %2 = alloca %struct.outside_network*, align 8
  %3 = alloca %struct.waiting_tcp*, align 8
  %4 = alloca i32 (i32*, i8*, i32, i32*)**, align 8
  %5 = alloca i8*, align 8
  store %struct.outside_network* %0, %struct.outside_network** %2, align 8
  br label %6

6:                                                ; preds = %70, %1
  %7 = load %struct.outside_network*, %struct.outside_network** %2, align 8
  %8 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %6
  %12 = load %struct.outside_network*, %struct.outside_network** %2, align 8
  %13 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %12, i32 0, i32 1
  %14 = load %struct.waiting_tcp*, %struct.waiting_tcp** %13, align 8
  %15 = icmp ne %struct.waiting_tcp* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load %struct.outside_network*, %struct.outside_network** %2, align 8
  %18 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %16, %11, %6
  %23 = phi i1 [ false, %11 ], [ false, %6 ], [ %21, %16 ]
  br i1 %23, label %24, label %71

24:                                               ; preds = %22
  %25 = load %struct.outside_network*, %struct.outside_network** %2, align 8
  %26 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %25, i32 0, i32 1
  %27 = load %struct.waiting_tcp*, %struct.waiting_tcp** %26, align 8
  store %struct.waiting_tcp* %27, %struct.waiting_tcp** %3, align 8
  %28 = load %struct.waiting_tcp*, %struct.waiting_tcp** %3, align 8
  %29 = getelementptr inbounds %struct.waiting_tcp, %struct.waiting_tcp* %28, i32 0, i32 4
  %30 = load %struct.waiting_tcp*, %struct.waiting_tcp** %29, align 8
  %31 = load %struct.outside_network*, %struct.outside_network** %2, align 8
  %32 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %31, i32 0, i32 1
  store %struct.waiting_tcp* %30, %struct.waiting_tcp** %32, align 8
  %33 = load %struct.outside_network*, %struct.outside_network** %2, align 8
  %34 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %33, i32 0, i32 0
  %35 = load %struct.waiting_tcp*, %struct.waiting_tcp** %34, align 8
  %36 = load %struct.waiting_tcp*, %struct.waiting_tcp** %3, align 8
  %37 = icmp eq %struct.waiting_tcp* %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %24
  %39 = load %struct.outside_network*, %struct.outside_network** %2, align 8
  %40 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %39, i32 0, i32 0
  store %struct.waiting_tcp* null, %struct.waiting_tcp** %40, align 8
  br label %41

41:                                               ; preds = %38, %24
  %42 = load %struct.waiting_tcp*, %struct.waiting_tcp** %3, align 8
  %43 = load %struct.waiting_tcp*, %struct.waiting_tcp** %3, align 8
  %44 = getelementptr inbounds %struct.waiting_tcp, %struct.waiting_tcp* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.waiting_tcp*, %struct.waiting_tcp** %3, align 8
  %47 = getelementptr inbounds %struct.waiting_tcp, %struct.waiting_tcp* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @outnet_tcp_take_into_use(%struct.waiting_tcp* %42, i32 %45, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %70, label %51

51:                                               ; preds = %41
  %52 = load %struct.waiting_tcp*, %struct.waiting_tcp** %3, align 8
  %53 = getelementptr inbounds %struct.waiting_tcp, %struct.waiting_tcp* %52, i32 0, i32 1
  %54 = load i32 (i32*, i8*, i32, i32*)*, i32 (i32*, i8*, i32, i32*)** %53, align 8
  %55 = bitcast i32 (i32*, i8*, i32, i32*)* %54 to i32 (i32*, i8*, i32, i32*)**
  store i32 (i32*, i8*, i32, i32*)** %55, i32 (i32*, i8*, i32, i32*)*** %4, align 8
  %56 = load %struct.waiting_tcp*, %struct.waiting_tcp** %3, align 8
  %57 = getelementptr inbounds %struct.waiting_tcp, %struct.waiting_tcp* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %5, align 8
  %59 = load %struct.waiting_tcp*, %struct.waiting_tcp** %3, align 8
  %60 = call i32 @waiting_tcp_delete(%struct.waiting_tcp* %59)
  %61 = load i32 (i32*, i8*, i32, i32*)**, i32 (i32*, i8*, i32, i32*)*** %4, align 8
  %62 = bitcast i32 (i32*, i8*, i32, i32*)** %61 to i32 (i32*, i8*, i32, i32*)*
  %63 = call i32 @fptr_whitelist_pending_tcp(i32 (i32*, i8*, i32, i32*)* %62)
  %64 = call i32 @fptr_ok(i32 %63)
  %65 = load i32 (i32*, i8*, i32, i32*)**, i32 (i32*, i8*, i32, i32*)*** %4, align 8
  %66 = load i32 (i32*, i8*, i32, i32*)*, i32 (i32*, i8*, i32, i32*)** %65, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = load i32, i32* @NETEVENT_CLOSED, align 4
  %69 = call i32 %66(i32* null, i8* %67, i32 %68, i32* null)
  br label %70

70:                                               ; preds = %51, %41
  br label %6

71:                                               ; preds = %22
  ret void
}

declare dso_local i32 @outnet_tcp_take_into_use(%struct.waiting_tcp*, i32, i32) #1

declare dso_local i32 @waiting_tcp_delete(%struct.waiting_tcp*) #1

declare dso_local i32 @fptr_ok(i32) #1

declare dso_local i32 @fptr_whitelist_pending_tcp(i32 (i32*, i8*, i32, i32*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
