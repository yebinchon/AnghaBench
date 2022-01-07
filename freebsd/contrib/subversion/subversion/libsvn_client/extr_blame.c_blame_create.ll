; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_blame.c_blame_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_blame.c_blame_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame = type { %struct.blame*, i32, %struct.rev* }
%struct.blame_chain = type { i32, %struct.blame* }
%struct.rev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.blame* (%struct.blame_chain*, %struct.rev*, i32)* @blame_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.blame* @blame_create(%struct.blame_chain* %0, %struct.rev* %1, i32 %2) #0 {
  %4 = alloca %struct.blame_chain*, align 8
  %5 = alloca %struct.rev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.blame*, align 8
  store %struct.blame_chain* %0, %struct.blame_chain** %4, align 8
  store %struct.rev* %1, %struct.rev** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.blame_chain*, %struct.blame_chain** %4, align 8
  %9 = getelementptr inbounds %struct.blame_chain, %struct.blame_chain* %8, i32 0, i32 1
  %10 = load %struct.blame*, %struct.blame** %9, align 8
  %11 = icmp ne %struct.blame* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load %struct.blame_chain*, %struct.blame_chain** %4, align 8
  %14 = getelementptr inbounds %struct.blame_chain, %struct.blame_chain* %13, i32 0, i32 1
  %15 = load %struct.blame*, %struct.blame** %14, align 8
  store %struct.blame* %15, %struct.blame** %7, align 8
  %16 = load %struct.blame*, %struct.blame** %7, align 8
  %17 = getelementptr inbounds %struct.blame, %struct.blame* %16, i32 0, i32 0
  %18 = load %struct.blame*, %struct.blame** %17, align 8
  %19 = load %struct.blame_chain*, %struct.blame_chain** %4, align 8
  %20 = getelementptr inbounds %struct.blame_chain, %struct.blame_chain* %19, i32 0, i32 1
  store %struct.blame* %18, %struct.blame** %20, align 8
  br label %26

21:                                               ; preds = %3
  %22 = load %struct.blame_chain*, %struct.blame_chain** %4, align 8
  %23 = getelementptr inbounds %struct.blame_chain, %struct.blame_chain* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.blame* @apr_palloc(i32 %24, i32 24)
  store %struct.blame* %25, %struct.blame** %7, align 8
  br label %26

26:                                               ; preds = %21, %12
  %27 = load %struct.rev*, %struct.rev** %5, align 8
  %28 = load %struct.blame*, %struct.blame** %7, align 8
  %29 = getelementptr inbounds %struct.blame, %struct.blame* %28, i32 0, i32 2
  store %struct.rev* %27, %struct.rev** %29, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.blame*, %struct.blame** %7, align 8
  %32 = getelementptr inbounds %struct.blame, %struct.blame* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.blame*, %struct.blame** %7, align 8
  %34 = getelementptr inbounds %struct.blame, %struct.blame* %33, i32 0, i32 0
  store %struct.blame* null, %struct.blame** %34, align 8
  %35 = load %struct.blame*, %struct.blame** %7, align 8
  ret %struct.blame* %35
}

declare dso_local %struct.blame* @apr_palloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
