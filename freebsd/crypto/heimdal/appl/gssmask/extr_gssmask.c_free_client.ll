; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/gssmask/extr_gssmask.c_free_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/gssmask/extr_gssmask.c_free_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i64, i64, %struct.client*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.client*)* @free_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_client(%struct.client* %0) #0 {
  %2 = alloca %struct.client*, align 8
  store %struct.client* %0, %struct.client** %2, align 8
  br label %3

3:                                                ; preds = %8, %1
  %4 = load %struct.client*, %struct.client** %2, align 8
  %5 = getelementptr inbounds %struct.client, %struct.client* %4, i32 0, i32 3
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = load %struct.client*, %struct.client** %2, align 8
  %10 = getelementptr inbounds %struct.client, %struct.client* %9, i32 0, i32 3
  %11 = load %struct.client*, %struct.client** %2, align 8
  %12 = getelementptr inbounds %struct.client, %struct.client* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @del_handle(%struct.TYPE_2__** %10, i32 %15)
  br label %3

17:                                               ; preds = %3
  %18 = load %struct.client*, %struct.client** %2, align 8
  %19 = getelementptr inbounds %struct.client, %struct.client* %18, i32 0, i32 2
  %20 = load %struct.client*, %struct.client** %19, align 8
  %21 = call i32 @free(%struct.client* %20)
  %22 = load %struct.client*, %struct.client** %2, align 8
  %23 = getelementptr inbounds %struct.client, %struct.client* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @krb5_storage_free(i64 %24)
  %26 = load %struct.client*, %struct.client** %2, align 8
  %27 = getelementptr inbounds %struct.client, %struct.client* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %17
  %31 = load %struct.client*, %struct.client** %2, align 8
  %32 = getelementptr inbounds %struct.client, %struct.client* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @krb5_storage_free(i64 %33)
  br label %35

35:                                               ; preds = %30, %17
  %36 = load %struct.client*, %struct.client** %2, align 8
  %37 = call i32 @free(%struct.client* %36)
  ret void
}

declare dso_local i32 @del_handle(%struct.TYPE_2__**, i32) #1

declare dso_local i32 @free(%struct.client*) #1

declare dso_local i32 @krb5_storage_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
