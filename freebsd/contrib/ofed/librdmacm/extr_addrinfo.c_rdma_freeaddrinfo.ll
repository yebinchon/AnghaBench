; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_addrinfo.c_rdma_freeaddrinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_addrinfo.c_rdma_freeaddrinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_addrinfo = type { %struct.rdma_addrinfo*, %struct.rdma_addrinfo*, %struct.rdma_addrinfo*, %struct.rdma_addrinfo*, %struct.rdma_addrinfo*, %struct.rdma_addrinfo*, %struct.rdma_addrinfo* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rdma_freeaddrinfo(%struct.rdma_addrinfo* %0) #0 {
  %2 = alloca %struct.rdma_addrinfo*, align 8
  %3 = alloca %struct.rdma_addrinfo*, align 8
  store %struct.rdma_addrinfo* %0, %struct.rdma_addrinfo** %2, align 8
  br label %4

4:                                                ; preds = %71, %1
  %5 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %2, align 8
  %6 = icmp ne %struct.rdma_addrinfo* %5, null
  br i1 %6, label %7, label %74

7:                                                ; preds = %4
  %8 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %2, align 8
  store %struct.rdma_addrinfo* %8, %struct.rdma_addrinfo** %3, align 8
  %9 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %2, align 8
  %10 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %9, i32 0, i32 6
  %11 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %10, align 8
  store %struct.rdma_addrinfo* %11, %struct.rdma_addrinfo** %2, align 8
  %12 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %3, align 8
  %13 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %12, i32 0, i32 5
  %14 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %13, align 8
  %15 = icmp ne %struct.rdma_addrinfo* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %7
  %17 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %3, align 8
  %18 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %17, i32 0, i32 5
  %19 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %18, align 8
  %20 = call i32 @free(%struct.rdma_addrinfo* %19)
  br label %21

21:                                               ; preds = %16, %7
  %22 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %3, align 8
  %23 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %22, i32 0, i32 4
  %24 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %23, align 8
  %25 = icmp ne %struct.rdma_addrinfo* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %3, align 8
  %28 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %27, i32 0, i32 4
  %29 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %28, align 8
  %30 = call i32 @free(%struct.rdma_addrinfo* %29)
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %3, align 8
  %33 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %32, i32 0, i32 3
  %34 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %33, align 8
  %35 = icmp ne %struct.rdma_addrinfo* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %3, align 8
  %38 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %37, i32 0, i32 3
  %39 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %38, align 8
  %40 = call i32 @free(%struct.rdma_addrinfo* %39)
  br label %41

41:                                               ; preds = %36, %31
  %42 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %3, align 8
  %43 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %42, i32 0, i32 2
  %44 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %43, align 8
  %45 = icmp ne %struct.rdma_addrinfo* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %3, align 8
  %48 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %47, i32 0, i32 2
  %49 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %48, align 8
  %50 = call i32 @free(%struct.rdma_addrinfo* %49)
  br label %51

51:                                               ; preds = %46, %41
  %52 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %3, align 8
  %53 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %52, i32 0, i32 1
  %54 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %53, align 8
  %55 = icmp ne %struct.rdma_addrinfo* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %3, align 8
  %58 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %57, i32 0, i32 1
  %59 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %58, align 8
  %60 = call i32 @free(%struct.rdma_addrinfo* %59)
  br label %61

61:                                               ; preds = %56, %51
  %62 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %3, align 8
  %63 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %62, i32 0, i32 0
  %64 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %63, align 8
  %65 = icmp ne %struct.rdma_addrinfo* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %3, align 8
  %68 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %67, i32 0, i32 0
  %69 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %68, align 8
  %70 = call i32 @free(%struct.rdma_addrinfo* %69)
  br label %71

71:                                               ; preds = %66, %61
  %72 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %3, align 8
  %73 = call i32 @free(%struct.rdma_addrinfo* %72)
  br label %4

74:                                               ; preds = %4
  ret void
}

declare dso_local i32 @free(%struct.rdma_addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
