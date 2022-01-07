; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_chunks_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_chunks_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_transfer = type { i32*, %struct.auth_chunk* }
%struct.auth_chunk = type { %struct.auth_chunk*, %struct.auth_chunk* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.auth_transfer*)* @auth_chunks_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @auth_chunks_delete(%struct.auth_transfer* %0) #0 {
  %2 = alloca %struct.auth_transfer*, align 8
  %3 = alloca %struct.auth_chunk*, align 8
  %4 = alloca %struct.auth_chunk*, align 8
  store %struct.auth_transfer* %0, %struct.auth_transfer** %2, align 8
  %5 = load %struct.auth_transfer*, %struct.auth_transfer** %2, align 8
  %6 = getelementptr inbounds %struct.auth_transfer, %struct.auth_transfer* %5, i32 0, i32 1
  %7 = load %struct.auth_chunk*, %struct.auth_chunk** %6, align 8
  %8 = icmp ne %struct.auth_chunk* %7, null
  br i1 %8, label %9, label %28

9:                                                ; preds = %1
  %10 = load %struct.auth_transfer*, %struct.auth_transfer** %2, align 8
  %11 = getelementptr inbounds %struct.auth_transfer, %struct.auth_transfer* %10, i32 0, i32 1
  %12 = load %struct.auth_chunk*, %struct.auth_chunk** %11, align 8
  store %struct.auth_chunk* %12, %struct.auth_chunk** %3, align 8
  br label %13

13:                                               ; preds = %16, %9
  %14 = load %struct.auth_chunk*, %struct.auth_chunk** %3, align 8
  %15 = icmp ne %struct.auth_chunk* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = load %struct.auth_chunk*, %struct.auth_chunk** %3, align 8
  %18 = getelementptr inbounds %struct.auth_chunk, %struct.auth_chunk* %17, i32 0, i32 1
  %19 = load %struct.auth_chunk*, %struct.auth_chunk** %18, align 8
  store %struct.auth_chunk* %19, %struct.auth_chunk** %4, align 8
  %20 = load %struct.auth_chunk*, %struct.auth_chunk** %3, align 8
  %21 = getelementptr inbounds %struct.auth_chunk, %struct.auth_chunk* %20, i32 0, i32 0
  %22 = load %struct.auth_chunk*, %struct.auth_chunk** %21, align 8
  %23 = call i32 @free(%struct.auth_chunk* %22)
  %24 = load %struct.auth_chunk*, %struct.auth_chunk** %3, align 8
  %25 = call i32 @free(%struct.auth_chunk* %24)
  %26 = load %struct.auth_chunk*, %struct.auth_chunk** %4, align 8
  store %struct.auth_chunk* %26, %struct.auth_chunk** %3, align 8
  br label %13

27:                                               ; preds = %13
  br label %28

28:                                               ; preds = %27, %1
  %29 = load %struct.auth_transfer*, %struct.auth_transfer** %2, align 8
  %30 = getelementptr inbounds %struct.auth_transfer, %struct.auth_transfer* %29, i32 0, i32 1
  store %struct.auth_chunk* null, %struct.auth_chunk** %30, align 8
  %31 = load %struct.auth_transfer*, %struct.auth_transfer** %2, align 8
  %32 = getelementptr inbounds %struct.auth_transfer, %struct.auth_transfer* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  ret void
}

declare dso_local i32 @free(%struct.auth_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
