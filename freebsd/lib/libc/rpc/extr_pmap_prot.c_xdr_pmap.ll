; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_pmap_prot.c_xdr_pmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_pmap_prot.c_xdr_pmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmap = type { i32, i32, i32, i32 }

@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xdr_pmap(i32* %0, %struct.pmap* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.pmap*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.pmap* %1, %struct.pmap** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = icmp ne i32* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.pmap*, %struct.pmap** %5, align 8
  %11 = icmp ne %struct.pmap* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.pmap*, %struct.pmap** %5, align 8
  %16 = getelementptr inbounds %struct.pmap, %struct.pmap* %15, i32 0, i32 3
  %17 = call i64 @xdr_u_long(i32* %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %2
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.pmap*, %struct.pmap** %5, align 8
  %22 = getelementptr inbounds %struct.pmap, %struct.pmap* %21, i32 0, i32 2
  %23 = call i64 @xdr_u_long(i32* %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %19
  %26 = load i32*, i32** %4, align 8
  %27 = load %struct.pmap*, %struct.pmap** %5, align 8
  %28 = getelementptr inbounds %struct.pmap, %struct.pmap* %27, i32 0, i32 1
  %29 = call i64 @xdr_u_long(i32* %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load i32*, i32** %4, align 8
  %33 = load %struct.pmap*, %struct.pmap** %5, align 8
  %34 = getelementptr inbounds %struct.pmap, %struct.pmap* %33, i32 0, i32 0
  %35 = call i64 @xdr_u_long(i32* %32, i32* %34)
  store i64 %35, i64* %3, align 8
  br label %38

36:                                               ; preds = %25, %19, %2
  %37 = load i64, i64* @FALSE, align 8
  store i64 %37, i64* %3, align 8
  br label %38

38:                                               ; preds = %36, %31
  %39 = load i64, i64* %3, align 8
  ret i64 %39
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @xdr_u_long(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
