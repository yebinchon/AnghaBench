; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_svc_grow_sets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_svc_grow_sets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rs_svc = type { i32, i32, i32, i8*, %struct.rsocket** }
%struct.rsocket = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rs_svc*, i32)* @rs_svc_grow_sets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_svc_grow_sets(%struct.rs_svc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rs_svc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rsocket**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.rs_svc* %0, %struct.rs_svc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %10 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = add nsw i32 %11, %12
  %14 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %15 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = add i64 8, %17
  %19 = trunc i64 %18 to i32
  %20 = call i8* @calloc(i32 %13, i32 %19)
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  store i32 %24, i32* %3, align 4
  br label %83

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %28 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = bitcast i8* %31 to %struct.rsocket**
  store %struct.rsocket** %32, %struct.rsocket*** %6, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %35 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = mul i64 8, %37
  %39 = getelementptr i8, i8* %33, i64 %38
  store i8* %39, i8** %8, align 8
  %40 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %41 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %72

44:                                               ; preds = %25
  %45 = load %struct.rsocket**, %struct.rsocket*** %6, align 8
  %46 = bitcast %struct.rsocket** %45 to i8*
  %47 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %48 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %47, i32 0, i32 4
  %49 = load %struct.rsocket**, %struct.rsocket*** %48, align 8
  %50 = bitcast %struct.rsocket** %49 to i8*
  %51 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %52 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = mul i64 8, %55
  %57 = trunc i64 %56 to i32
  %58 = call i32 @memcpy(i8* %46, i8* %50, i32 %57)
  %59 = load i8*, i8** %8, align 8
  %60 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %61 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %60, i32 0, i32 3
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %64 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %67 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  %70 = mul nsw i32 %65, %69
  %71 = call i32 @memcpy(i8* %59, i8* %62, i32 %70)
  br label %72

72:                                               ; preds = %44, %25
  %73 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %74 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %73, i32 0, i32 4
  %75 = load %struct.rsocket**, %struct.rsocket*** %74, align 8
  %76 = call i32 @free(%struct.rsocket** %75)
  %77 = load %struct.rsocket**, %struct.rsocket*** %6, align 8
  %78 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %79 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %78, i32 0, i32 4
  store %struct.rsocket** %77, %struct.rsocket*** %79, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %82 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %81, i32 0, i32 3
  store i8* %80, i8** %82, align 8
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %72, %23
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @free(%struct.rsocket**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
