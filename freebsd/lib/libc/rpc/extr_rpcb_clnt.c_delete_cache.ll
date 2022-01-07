; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rpcb_clnt.c_delete_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rpcb_clnt.c_delete_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_cache = type { %struct.address_cache*, %struct.address_cache*, %struct.address_cache*, %struct.address_cache*, %struct.address_cache*, %struct.address_cache* }
%struct.netbuf = type { i32, i32 }

@front = common dso_local global %struct.address_cache* null, align 8
@cachesize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netbuf*)* @delete_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_cache(%struct.netbuf* %0) #0 {
  %2 = alloca %struct.netbuf*, align 8
  %3 = alloca %struct.address_cache*, align 8
  %4 = alloca %struct.address_cache*, align 8
  store %struct.netbuf* %0, %struct.netbuf** %2, align 8
  store %struct.address_cache* null, %struct.address_cache** %4, align 8
  %5 = load %struct.address_cache*, %struct.address_cache** @front, align 8
  store %struct.address_cache* %5, %struct.address_cache** %3, align 8
  br label %6

6:                                                ; preds = %65, %1
  %7 = load %struct.address_cache*, %struct.address_cache** %3, align 8
  %8 = icmp ne %struct.address_cache* %7, null
  br i1 %8, label %9, label %69

9:                                                ; preds = %6
  %10 = load %struct.address_cache*, %struct.address_cache** %3, align 8
  %11 = getelementptr inbounds %struct.address_cache, %struct.address_cache* %10, i32 0, i32 2
  %12 = load %struct.address_cache*, %struct.address_cache** %11, align 8
  %13 = getelementptr inbounds %struct.address_cache, %struct.address_cache* %12, i32 0, i32 3
  %14 = load %struct.address_cache*, %struct.address_cache** %13, align 8
  %15 = load %struct.netbuf*, %struct.netbuf** %2, align 8
  %16 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.netbuf*, %struct.netbuf** %2, align 8
  %19 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @memcmp(%struct.address_cache* %14, i32 %17, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %63, label %23

23:                                               ; preds = %9
  %24 = load %struct.address_cache*, %struct.address_cache** %3, align 8
  %25 = getelementptr inbounds %struct.address_cache, %struct.address_cache* %24, i32 0, i32 5
  %26 = load %struct.address_cache*, %struct.address_cache** %25, align 8
  %27 = call i32 @free(%struct.address_cache* %26)
  %28 = load %struct.address_cache*, %struct.address_cache** %3, align 8
  %29 = getelementptr inbounds %struct.address_cache, %struct.address_cache* %28, i32 0, i32 4
  %30 = load %struct.address_cache*, %struct.address_cache** %29, align 8
  %31 = call i32 @free(%struct.address_cache* %30)
  %32 = load %struct.address_cache*, %struct.address_cache** %3, align 8
  %33 = getelementptr inbounds %struct.address_cache, %struct.address_cache* %32, i32 0, i32 2
  %34 = load %struct.address_cache*, %struct.address_cache** %33, align 8
  %35 = getelementptr inbounds %struct.address_cache, %struct.address_cache* %34, i32 0, i32 3
  %36 = load %struct.address_cache*, %struct.address_cache** %35, align 8
  %37 = call i32 @free(%struct.address_cache* %36)
  %38 = load %struct.address_cache*, %struct.address_cache** %3, align 8
  %39 = getelementptr inbounds %struct.address_cache, %struct.address_cache* %38, i32 0, i32 2
  %40 = load %struct.address_cache*, %struct.address_cache** %39, align 8
  %41 = call i32 @free(%struct.address_cache* %40)
  %42 = load %struct.address_cache*, %struct.address_cache** %3, align 8
  %43 = getelementptr inbounds %struct.address_cache, %struct.address_cache* %42, i32 0, i32 1
  %44 = load %struct.address_cache*, %struct.address_cache** %43, align 8
  %45 = call i32 @free(%struct.address_cache* %44)
  %46 = load %struct.address_cache*, %struct.address_cache** %4, align 8
  %47 = icmp ne %struct.address_cache* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %23
  %49 = load %struct.address_cache*, %struct.address_cache** %3, align 8
  %50 = getelementptr inbounds %struct.address_cache, %struct.address_cache* %49, i32 0, i32 0
  %51 = load %struct.address_cache*, %struct.address_cache** %50, align 8
  %52 = load %struct.address_cache*, %struct.address_cache** %4, align 8
  %53 = getelementptr inbounds %struct.address_cache, %struct.address_cache* %52, i32 0, i32 0
  store %struct.address_cache* %51, %struct.address_cache** %53, align 8
  br label %58

54:                                               ; preds = %23
  %55 = load %struct.address_cache*, %struct.address_cache** %3, align 8
  %56 = getelementptr inbounds %struct.address_cache, %struct.address_cache* %55, i32 0, i32 0
  %57 = load %struct.address_cache*, %struct.address_cache** %56, align 8
  store %struct.address_cache* %57, %struct.address_cache** @front, align 8
  br label %58

58:                                               ; preds = %54, %48
  %59 = load %struct.address_cache*, %struct.address_cache** %3, align 8
  %60 = call i32 @free(%struct.address_cache* %59)
  %61 = load i32, i32* @cachesize, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* @cachesize, align 4
  br label %69

63:                                               ; preds = %9
  %64 = load %struct.address_cache*, %struct.address_cache** %3, align 8
  store %struct.address_cache* %64, %struct.address_cache** %4, align 8
  br label %65

65:                                               ; preds = %63
  %66 = load %struct.address_cache*, %struct.address_cache** %3, align 8
  %67 = getelementptr inbounds %struct.address_cache, %struct.address_cache* %66, i32 0, i32 0
  %68 = load %struct.address_cache*, %struct.address_cache** %67, align 8
  store %struct.address_cache* %68, %struct.address_cache** %3, align 8
  br label %6

69:                                               ; preds = %58, %6
  ret void
}

declare dso_local i32 @memcmp(%struct.address_cache*, i32, i32) #1

declare dso_local i32 @free(%struct.address_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
