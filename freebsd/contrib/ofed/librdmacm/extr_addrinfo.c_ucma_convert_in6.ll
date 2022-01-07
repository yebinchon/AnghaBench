; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_addrinfo.c_ucma_convert_in6.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_addrinfo.c_ucma_convert_in6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_ib = type { i32, i32, i32, i32, i32 }
%struct.sockaddr_in6 = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.sockaddr = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AF_IB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sockaddr_ib**, i32*, %struct.sockaddr_in6*, i32)* @ucma_convert_in6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucma_convert_in6(i32 %0, %struct.sockaddr_ib** %1, i32* %2, %struct.sockaddr_in6* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_ib**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.sockaddr_in6*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.sockaddr_ib** %1, %struct.sockaddr_ib*** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.sockaddr_in6* %3, %struct.sockaddr_in6** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = call %struct.sockaddr_ib* @calloc(i32 1, i32 20)
  %13 = load %struct.sockaddr_ib**, %struct.sockaddr_ib*** %8, align 8
  store %struct.sockaddr_ib* %12, %struct.sockaddr_ib** %13, align 8
  %14 = load %struct.sockaddr_ib**, %struct.sockaddr_ib*** %8, align 8
  %15 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %14, align 8
  %16 = icmp ne %struct.sockaddr_ib* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = call i32 @ERR(i32 %18)
  store i32 %19, i32* %6, align 4
  br label %76

20:                                               ; preds = %5
  %21 = load i32, i32* @AF_IB, align 4
  %22 = load %struct.sockaddr_ib**, %struct.sockaddr_ib*** %8, align 8
  %23 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %22, align 8
  %24 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %23, i32 0, i32 4
  store i32 %21, i32* %24, align 4
  %25 = call i32 @htobe16(i32 65535)
  %26 = load %struct.sockaddr_ib**, %struct.sockaddr_ib*** %8, align 8
  %27 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %26, align 8
  %28 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %27, i32 0, i32 3
  store i32 %25, i32* %28, align 4
  %29 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %30 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.sockaddr_ib**, %struct.sockaddr_ib*** %8, align 8
  %33 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %32, align 8
  %34 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %33, i32 0, i32 2
  store i32 %31, i32* %34, align 4
  %35 = load %struct.sockaddr_ib**, %struct.sockaddr_ib*** %8, align 8
  %36 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %35, align 8
  %37 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %36, i32 0, i32 1
  %38 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %39 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %45 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %51 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %57 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ib_addr_set(i32* %37, i32 %43, i32 %49, i32 %55, i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %65 = bitcast %struct.sockaddr_in6* %64 to %struct.sockaddr*
  %66 = load %struct.sockaddr_ib**, %struct.sockaddr_ib*** %8, align 8
  %67 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %66, align 8
  %68 = call i32 @ucma_set_sid(i32 %63, %struct.sockaddr* %65, %struct.sockaddr_ib* %67)
  %69 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %70 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.sockaddr_ib**, %struct.sockaddr_ib*** %8, align 8
  %73 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %72, align 8
  %74 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 4
  %75 = load i32*, i32** %9, align 8
  store i32 20, i32* %75, align 4
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %20, %17
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local %struct.sockaddr_ib* @calloc(i32, i32) #1

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @htobe16(i32) #1

declare dso_local i32 @ib_addr_set(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ucma_set_sid(i32, %struct.sockaddr*, %struct.sockaddr_ib*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
