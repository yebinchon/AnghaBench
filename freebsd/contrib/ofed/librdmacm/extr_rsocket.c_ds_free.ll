; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_ds_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_ds_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsocket = type { i64, i64, i64, i32, i32, i32, i32, i32, i32, %struct.rsocket*, %struct.ds_qp*, %struct.rsocket* }
%struct.ds_qp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsocket*)* @ds_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds_free(%struct.rsocket* %0) #0 {
  %2 = alloca %struct.rsocket*, align 8
  %3 = alloca %struct.ds_qp*, align 8
  store %struct.rsocket* %0, %struct.rsocket** %2, align 8
  %4 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %5 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp sge i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %10 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @close(i64 %11)
  br label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %15 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp sge i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %20 = call i32 @rs_remove(%struct.rsocket* %19)
  br label %21

21:                                               ; preds = %18, %13
  %22 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %23 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %22, i32 0, i32 11
  %24 = load %struct.rsocket*, %struct.rsocket** %23, align 8
  %25 = icmp ne %struct.rsocket* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %28 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %27, i32 0, i32 11
  %29 = load %struct.rsocket*, %struct.rsocket** %28, align 8
  %30 = call i32 @free(%struct.rsocket* %29)
  br label %31

31:                                               ; preds = %26, %21
  br label %32

32:                                               ; preds = %37, %31
  %33 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %34 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %33, i32 0, i32 10
  %35 = load %struct.ds_qp*, %struct.ds_qp** %34, align 8
  store %struct.ds_qp* %35, %struct.ds_qp** %3, align 8
  %36 = icmp ne %struct.ds_qp* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %39 = load %struct.ds_qp*, %struct.ds_qp** %3, align 8
  %40 = call i32 @ds_remove_qp(%struct.rsocket* %38, %struct.ds_qp* %39)
  %41 = load %struct.ds_qp*, %struct.ds_qp** %3, align 8
  %42 = call i32 @ds_free_qp(%struct.ds_qp* %41)
  br label %32

43:                                               ; preds = %32
  %44 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %45 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp sge i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %50 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @close(i64 %51)
  br label %53

53:                                               ; preds = %48, %43
  %54 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %55 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %54, i32 0, i32 9
  %56 = load %struct.rsocket*, %struct.rsocket** %55, align 8
  %57 = icmp ne %struct.rsocket* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %60 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %59, i32 0, i32 9
  %61 = load %struct.rsocket*, %struct.rsocket** %60, align 8
  %62 = call i32 @free(%struct.rsocket* %61)
  br label %63

63:                                               ; preds = %58, %53
  %64 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %65 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %64, i32 0, i32 8
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @tdestroy(i32 %66, i32 (%struct.rsocket*)* @free)
  %68 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %69 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %68, i32 0, i32 7
  %70 = call i32 @fastlock_destroy(i32* %69)
  %71 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %72 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %71, i32 0, i32 6
  %73 = call i32 @fastlock_destroy(i32* %72)
  %74 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %75 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %74, i32 0, i32 5
  %76 = call i32 @fastlock_destroy(i32* %75)
  %77 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %78 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %77, i32 0, i32 4
  %79 = call i32 @fastlock_destroy(i32* %78)
  %80 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %81 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %80, i32 0, i32 3
  %82 = call i32 @fastlock_destroy(i32* %81)
  %83 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %84 = call i32 @free(%struct.rsocket* %83)
  ret void
}

declare dso_local i32 @close(i64) #1

declare dso_local i32 @rs_remove(%struct.rsocket*) #1

declare dso_local i32 @free(%struct.rsocket*) #1

declare dso_local i32 @ds_remove_qp(%struct.rsocket*, %struct.ds_qp*) #1

declare dso_local i32 @ds_free_qp(%struct.ds_qp*) #1

declare dso_local i32 @tdestroy(i32, i32 (%struct.rsocket*)*) #1

declare dso_local i32 @fastlock_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
