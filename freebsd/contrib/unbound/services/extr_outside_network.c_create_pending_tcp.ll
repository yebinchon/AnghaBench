; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_create_pending_tcp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_create_pending_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.outside_network = type { i32, %struct.pending_tcp**, i32, %struct.pending_tcp* }
%struct.pending_tcp = type { i32, %struct.pending_tcp* }

@outnet_tcp_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.outside_network*, i64)* @create_pending_tcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_pending_tcp(%struct.outside_network* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.outside_network*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.outside_network* %0, %struct.outside_network** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.outside_network*, %struct.outside_network** %4, align 8
  %8 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %93

12:                                               ; preds = %2
  %13 = load %struct.outside_network*, %struct.outside_network** %4, align 8
  %14 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @calloc(i32 %15, i32 8)
  %17 = inttoptr i64 %16 to %struct.pending_tcp**
  %18 = load %struct.outside_network*, %struct.outside_network** %4, align 8
  %19 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %18, i32 0, i32 1
  store %struct.pending_tcp** %17, %struct.pending_tcp*** %19, align 8
  %20 = icmp ne %struct.pending_tcp** %17, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %93

22:                                               ; preds = %12
  store i64 0, i64* %6, align 8
  br label %23

23:                                               ; preds = %89, %22
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.outside_network*, %struct.outside_network** %4, align 8
  %26 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = icmp ult i64 %24, %28
  br i1 %29, label %30, label %92

30:                                               ; preds = %23
  %31 = call i64 @calloc(i32 1, i32 16)
  %32 = inttoptr i64 %31 to %struct.pending_tcp*
  %33 = load %struct.outside_network*, %struct.outside_network** %4, align 8
  %34 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %33, i32 0, i32 1
  %35 = load %struct.pending_tcp**, %struct.pending_tcp*** %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds %struct.pending_tcp*, %struct.pending_tcp** %35, i64 %36
  store %struct.pending_tcp* %32, %struct.pending_tcp** %37, align 8
  %38 = icmp ne %struct.pending_tcp* %32, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %93

40:                                               ; preds = %30
  %41 = load %struct.outside_network*, %struct.outside_network** %4, align 8
  %42 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %41, i32 0, i32 3
  %43 = load %struct.pending_tcp*, %struct.pending_tcp** %42, align 8
  %44 = load %struct.outside_network*, %struct.outside_network** %4, align 8
  %45 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %44, i32 0, i32 1
  %46 = load %struct.pending_tcp**, %struct.pending_tcp*** %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = getelementptr inbounds %struct.pending_tcp*, %struct.pending_tcp** %46, i64 %47
  %49 = load %struct.pending_tcp*, %struct.pending_tcp** %48, align 8
  %50 = getelementptr inbounds %struct.pending_tcp, %struct.pending_tcp* %49, i32 0, i32 1
  store %struct.pending_tcp* %43, %struct.pending_tcp** %50, align 8
  %51 = load %struct.outside_network*, %struct.outside_network** %4, align 8
  %52 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %51, i32 0, i32 1
  %53 = load %struct.pending_tcp**, %struct.pending_tcp*** %52, align 8
  %54 = load i64, i64* %6, align 8
  %55 = getelementptr inbounds %struct.pending_tcp*, %struct.pending_tcp** %53, i64 %54
  %56 = load %struct.pending_tcp*, %struct.pending_tcp** %55, align 8
  %57 = load %struct.outside_network*, %struct.outside_network** %4, align 8
  %58 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %57, i32 0, i32 3
  store %struct.pending_tcp* %56, %struct.pending_tcp** %58, align 8
  %59 = load %struct.outside_network*, %struct.outside_network** %4, align 8
  %60 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i64, i64* %5, align 8
  %63 = load i32, i32* @outnet_tcp_cb, align 4
  %64 = load %struct.outside_network*, %struct.outside_network** %4, align 8
  %65 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %64, i32 0, i32 1
  %66 = load %struct.pending_tcp**, %struct.pending_tcp*** %65, align 8
  %67 = load i64, i64* %6, align 8
  %68 = getelementptr inbounds %struct.pending_tcp*, %struct.pending_tcp** %66, i64 %67
  %69 = load %struct.pending_tcp*, %struct.pending_tcp** %68, align 8
  %70 = call i32 @comm_point_create_tcp_out(i32 %61, i64 %62, i32 %63, %struct.pending_tcp* %69)
  %71 = load %struct.outside_network*, %struct.outside_network** %4, align 8
  %72 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %71, i32 0, i32 1
  %73 = load %struct.pending_tcp**, %struct.pending_tcp*** %72, align 8
  %74 = load i64, i64* %6, align 8
  %75 = getelementptr inbounds %struct.pending_tcp*, %struct.pending_tcp** %73, i64 %74
  %76 = load %struct.pending_tcp*, %struct.pending_tcp** %75, align 8
  %77 = getelementptr inbounds %struct.pending_tcp, %struct.pending_tcp* %76, i32 0, i32 0
  store i32 %70, i32* %77, align 8
  %78 = load %struct.outside_network*, %struct.outside_network** %4, align 8
  %79 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %78, i32 0, i32 1
  %80 = load %struct.pending_tcp**, %struct.pending_tcp*** %79, align 8
  %81 = load i64, i64* %6, align 8
  %82 = getelementptr inbounds %struct.pending_tcp*, %struct.pending_tcp** %80, i64 %81
  %83 = load %struct.pending_tcp*, %struct.pending_tcp** %82, align 8
  %84 = getelementptr inbounds %struct.pending_tcp, %struct.pending_tcp* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %93

88:                                               ; preds = %40
  br label %89

89:                                               ; preds = %88
  %90 = load i64, i64* %6, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %6, align 8
  br label %23

92:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %87, %39, %21, %11
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @comm_point_create_tcp_out(i32, i64, i32, %struct.pending_tcp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
