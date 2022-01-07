; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_common.c_get_rdma_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_common.c_get_rdma_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_addrinfo = type { i32, i32, i32 }

@RAI_PASSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_rdma_addr(i8* %0, i8* %1, i8* %2, %struct.rdma_addrinfo* %3, %struct.rdma_addrinfo** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.rdma_addrinfo*, align 8
  %11 = alloca %struct.rdma_addrinfo**, align 8
  %12 = alloca %struct.rdma_addrinfo, align 4
  %13 = alloca %struct.rdma_addrinfo*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.rdma_addrinfo* %3, %struct.rdma_addrinfo** %10, align 8
  store %struct.rdma_addrinfo** %4, %struct.rdma_addrinfo*** %11, align 8
  %15 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %10, align 8
  %16 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @RAI_PASSIVE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %5
  %22 = load i8*, i8** %7, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %10, align 8
  %25 = load %struct.rdma_addrinfo**, %struct.rdma_addrinfo*** %11, align 8
  %26 = call i32 @rdma_getaddrinfo(i8* %22, i8* %23, %struct.rdma_addrinfo* %24, %struct.rdma_addrinfo** %25)
  store i32 %26, i32* %6, align 4
  br label %70

27:                                               ; preds = %5
  %28 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %10, align 8
  %29 = bitcast %struct.rdma_addrinfo* %12 to i8*
  %30 = bitcast %struct.rdma_addrinfo* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 12, i1 false)
  %31 = load i8*, i8** %7, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %58

33:                                               ; preds = %27
  %34 = load i32, i32* @RAI_PASSIVE, align 4
  %35 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %12, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %34
  store i32 %37, i32* %35, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @rdma_getaddrinfo(i8* %38, i8* null, %struct.rdma_addrinfo* %12, %struct.rdma_addrinfo** %13)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* %14, align 4
  store i32 %43, i32* %6, align 4
  br label %70

44:                                               ; preds = %33
  %45 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %13, align 8
  %46 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %12, i32 0, i32 2
  store i32 %47, i32* %48, align 4
  %49 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %13, align 8
  %50 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %12, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @RAI_PASSIVE, align 4
  %54 = xor i32 %53, -1
  %55 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %12, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %54
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %44, %27
  %59 = load i8*, i8** %8, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = load %struct.rdma_addrinfo**, %struct.rdma_addrinfo*** %11, align 8
  %62 = call i32 @rdma_getaddrinfo(i8* %59, i8* %60, %struct.rdma_addrinfo* %12, %struct.rdma_addrinfo** %61)
  store i32 %62, i32* %14, align 4
  %63 = load i8*, i8** %7, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %13, align 8
  %67 = call i32 @rdma_freeaddrinfo(%struct.rdma_addrinfo* %66)
  br label %68

68:                                               ; preds = %65, %58
  %69 = load i32, i32* %14, align 4
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %68, %42, %21
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i32 @rdma_getaddrinfo(i8*, i8*, %struct.rdma_addrinfo*, %struct.rdma_addrinfo**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rdma_freeaddrinfo(%struct.rdma_addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
