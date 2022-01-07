; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_rthdr.c_inet6_rth_reverse.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_rthdr.c_inet6_rth_reverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_rthdr = type { i32 }
%struct.ip6_rthdr0 = type { i32, i32 }
%struct.in6_addr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet6_rth_reverse(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ip6_rthdr*, align 8
  %7 = alloca %struct.ip6_rthdr0*, align 8
  %8 = alloca %struct.ip6_rthdr0*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.in6_addr, align 4
  %12 = alloca %struct.in6_addr*, align 8
  %13 = alloca %struct.in6_addr*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.ip6_rthdr*
  store %struct.ip6_rthdr* %15, %struct.ip6_rthdr** %6, align 8
  %16 = load %struct.ip6_rthdr*, %struct.ip6_rthdr** %6, align 8
  %17 = getelementptr inbounds %struct.ip6_rthdr, %struct.ip6_rthdr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %83 [
    i32 128, label %19
  ]

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  %21 = bitcast i8* %20 to %struct.ip6_rthdr0*
  store %struct.ip6_rthdr0* %21, %struct.ip6_rthdr0** %7, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = bitcast i8* %22 to %struct.ip6_rthdr0*
  store %struct.ip6_rthdr0* %23, %struct.ip6_rthdr0** %8, align 8
  %24 = load %struct.ip6_rthdr0*, %struct.ip6_rthdr0** %7, align 8
  %25 = getelementptr inbounds %struct.ip6_rthdr0, %struct.ip6_rthdr0* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = srem i32 %26, 2
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  store i32 -1, i32* %3, align 4
  br label %85

30:                                               ; preds = %19
  %31 = load %struct.ip6_rthdr0*, %struct.ip6_rthdr0** %7, align 8
  %32 = getelementptr inbounds %struct.ip6_rthdr0, %struct.ip6_rthdr0* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sdiv i32 %33, 2
  store i32 %34, i32* %10, align 4
  %35 = load %struct.ip6_rthdr0*, %struct.ip6_rthdr0** %8, align 8
  %36 = bitcast %struct.ip6_rthdr0* %35 to i8*
  %37 = load %struct.ip6_rthdr0*, %struct.ip6_rthdr0** %7, align 8
  %38 = bitcast %struct.ip6_rthdr0* %37 to i8*
  %39 = load %struct.ip6_rthdr0*, %struct.ip6_rthdr0** %7, align 8
  %40 = getelementptr inbounds %struct.ip6_rthdr0, %struct.ip6_rthdr0* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  %43 = shl i32 %42, 3
  %44 = call i32 @memmove(i8* %36, i8* %38, i32 %43)
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.ip6_rthdr0*, %struct.ip6_rthdr0** %8, align 8
  %47 = getelementptr inbounds %struct.ip6_rthdr0, %struct.ip6_rthdr0* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %79, %30
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = sdiv i32 %50, 2
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %82

53:                                               ; preds = %48
  %54 = load %struct.ip6_rthdr0*, %struct.ip6_rthdr0** %8, align 8
  %55 = getelementptr inbounds %struct.ip6_rthdr0, %struct.ip6_rthdr0* %54, i64 1
  %56 = bitcast %struct.ip6_rthdr0* %55 to %struct.in6_addr*
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %56, i64 %58
  store %struct.in6_addr* %59, %struct.in6_addr** %12, align 8
  %60 = load %struct.ip6_rthdr0*, %struct.ip6_rthdr0** %8, align 8
  %61 = getelementptr inbounds %struct.ip6_rthdr0, %struct.ip6_rthdr0* %60, i64 1
  %62 = bitcast %struct.ip6_rthdr0* %61 to %struct.in6_addr*
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %9, align 4
  %65 = sub nsw i32 %63, %64
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %62, i64 %67
  store %struct.in6_addr* %68, %struct.in6_addr** %13, align 8
  %69 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %70 = bitcast %struct.in6_addr* %11 to i8*
  %71 = bitcast %struct.in6_addr* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 4 %71, i64 4, i1 false)
  %72 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %73 = load %struct.in6_addr*, %struct.in6_addr** %13, align 8
  %74 = bitcast %struct.in6_addr* %72 to i8*
  %75 = bitcast %struct.in6_addr* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %74, i8* align 4 %75, i64 4, i1 false)
  %76 = load %struct.in6_addr*, %struct.in6_addr** %13, align 8
  %77 = bitcast %struct.in6_addr* %76 to i8*
  %78 = bitcast %struct.in6_addr* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %77, i8* align 4 %78, i64 4, i1 false)
  br label %79

79:                                               ; preds = %53
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %48

82:                                               ; preds = %48
  br label %84

83:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %85

84:                                               ; preds = %82
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %83, %29
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @memmove(i8*, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
