; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ipc/extr_client.c_common_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ipc/extr_client.c_common_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path_ctx = type { i64, %struct.path_ctx* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @common_release(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.path_ctx*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.path_ctx*
  store %struct.path_ctx* %5, %struct.path_ctx** %3, align 8
  %6 = load %struct.path_ctx*, %struct.path_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.path_ctx, %struct.path_ctx* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sge i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.path_ctx*, %struct.path_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.path_ctx, %struct.path_ctx* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @close(i64 %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.path_ctx*, %struct.path_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.path_ctx, %struct.path_ctx* %16, i32 0, i32 1
  %18 = load %struct.path_ctx*, %struct.path_ctx** %17, align 8
  %19 = call i32 @free(%struct.path_ctx* %18)
  %20 = load %struct.path_ctx*, %struct.path_ctx** %3, align 8
  %21 = call i32 @free(%struct.path_ctx* %20)
  ret i32 0
}

declare dso_local i32 @close(i64) #1

declare dso_local i32 @free(%struct.path_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
