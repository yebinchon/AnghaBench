; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_acm.c_ucma_resolve_af_ib.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_acm.c_ucma_resolve_af_ib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_addrinfo = type { i32, %struct.rdma_addrinfo*, i8*, i8*, i8*, i32, i32, i32, i32 }

@AF_IB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rdma_addrinfo**)* @ucma_resolve_af_ib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucma_resolve_af_ib(%struct.rdma_addrinfo** %0) #0 {
  %2 = alloca %struct.rdma_addrinfo**, align 8
  %3 = alloca %struct.rdma_addrinfo*, align 8
  store %struct.rdma_addrinfo** %0, %struct.rdma_addrinfo*** %2, align 8
  %4 = call i8* @calloc(i32 1, i32 56)
  %5 = bitcast i8* %4 to %struct.rdma_addrinfo*
  store %struct.rdma_addrinfo* %5, %struct.rdma_addrinfo** %3, align 8
  %6 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %3, align 8
  %7 = icmp ne %struct.rdma_addrinfo* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %125

9:                                                ; preds = %1
  %10 = load %struct.rdma_addrinfo**, %struct.rdma_addrinfo*** %2, align 8
  %11 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %10, align 8
  %12 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %11, i32 0, i32 8
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %3, align 8
  %15 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %14, i32 0, i32 8
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @AF_IB, align 4
  %17 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %3, align 8
  %18 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %17, i32 0, i32 7
  store i32 %16, i32* %18, align 8
  %19 = load %struct.rdma_addrinfo**, %struct.rdma_addrinfo*** %2, align 8
  %20 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %19, align 8
  %21 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %3, align 8
  %24 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 4
  %25 = load %struct.rdma_addrinfo**, %struct.rdma_addrinfo*** %2, align 8
  %26 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %25, align 8
  %27 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %3, align 8
  %30 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 8
  %31 = load %struct.rdma_addrinfo**, %struct.rdma_addrinfo*** %2, align 8
  %32 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %31, align 8
  %33 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i8* @calloc(i32 1, i32 %34)
  %36 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %3, align 8
  %37 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  %38 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %3, align 8
  %39 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %38, i32 0, i32 4
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %9
  br label %122

43:                                               ; preds = %9
  %44 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %3, align 8
  %45 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %44, i32 0, i32 4
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.rdma_addrinfo**, %struct.rdma_addrinfo*** %2, align 8
  %48 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %47, align 8
  %49 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %48, i32 0, i32 4
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.rdma_addrinfo**, %struct.rdma_addrinfo*** %2, align 8
  %52 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %51, align 8
  %53 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @memcpy(i8* %46, i8* %50, i32 %54)
  %56 = load %struct.rdma_addrinfo**, %struct.rdma_addrinfo*** %2, align 8
  %57 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %56, align 8
  %58 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %3, align 8
  %61 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.rdma_addrinfo**, %struct.rdma_addrinfo*** %2, align 8
  %63 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %62, align 8
  %64 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %63, i32 0, i32 3
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %81

67:                                               ; preds = %43
  %68 = load %struct.rdma_addrinfo**, %struct.rdma_addrinfo*** %2, align 8
  %69 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %68, align 8
  %70 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %69, i32 0, i32 3
  %71 = load i8*, i8** %70, align 8
  %72 = call i8* @strdup(i8* %71)
  %73 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %3, align 8
  %74 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %73, i32 0, i32 3
  store i8* %72, i8** %74, align 8
  %75 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %3, align 8
  %76 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %75, i32 0, i32 3
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %67
  br label %122

80:                                               ; preds = %67
  br label %81

81:                                               ; preds = %80, %43
  %82 = load %struct.rdma_addrinfo**, %struct.rdma_addrinfo*** %2, align 8
  %83 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %82, align 8
  %84 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %83, i32 0, i32 2
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %101

87:                                               ; preds = %81
  %88 = load %struct.rdma_addrinfo**, %struct.rdma_addrinfo*** %2, align 8
  %89 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %88, align 8
  %90 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %89, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  %92 = call i8* @strdup(i8* %91)
  %93 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %3, align 8
  %94 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %93, i32 0, i32 2
  store i8* %92, i8** %94, align 8
  %95 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %3, align 8
  %96 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %95, i32 0, i32 2
  %97 = load i8*, i8** %96, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %87
  br label %122

100:                                              ; preds = %87
  br label %101

101:                                              ; preds = %100, %81
  %102 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %3, align 8
  %103 = load %struct.rdma_addrinfo**, %struct.rdma_addrinfo*** %2, align 8
  %104 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %103, align 8
  %105 = call i64 @ucma_ib_set_connect(%struct.rdma_addrinfo* %102, %struct.rdma_addrinfo* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  br label %122

108:                                              ; preds = %101
  %109 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %3, align 8
  %110 = load %struct.rdma_addrinfo**, %struct.rdma_addrinfo*** %2, align 8
  %111 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %110, align 8
  %112 = call i64 @ucma_ib_set_addr(%struct.rdma_addrinfo* %109, %struct.rdma_addrinfo* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %122

115:                                              ; preds = %108
  %116 = load %struct.rdma_addrinfo**, %struct.rdma_addrinfo*** %2, align 8
  %117 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %116, align 8
  %118 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %3, align 8
  %119 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %118, i32 0, i32 1
  store %struct.rdma_addrinfo* %117, %struct.rdma_addrinfo** %119, align 8
  %120 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %3, align 8
  %121 = load %struct.rdma_addrinfo**, %struct.rdma_addrinfo*** %2, align 8
  store %struct.rdma_addrinfo* %120, %struct.rdma_addrinfo** %121, align 8
  br label %125

122:                                              ; preds = %114, %107, %99, %79, %42
  %123 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %3, align 8
  %124 = call i32 @rdma_freeaddrinfo(%struct.rdma_addrinfo* %123)
  br label %125

125:                                              ; preds = %122, %115, %8
  ret void
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @ucma_ib_set_connect(%struct.rdma_addrinfo*, %struct.rdma_addrinfo*) #1

declare dso_local i64 @ucma_ib_set_addr(%struct.rdma_addrinfo*, %struct.rdma_addrinfo*) #1

declare dso_local i32 @rdma_freeaddrinfo(%struct.rdma_addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
