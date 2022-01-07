; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/via/extr_padlock_hash.c_padlock_hash_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/via/extr_padlock_hash.c_padlock_hash_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.padlock_session = type { i32*, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }

@M_PADLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @padlock_hash_free(%struct.padlock_session* %0) #0 {
  %2 = alloca %struct.padlock_session*, align 8
  store %struct.padlock_session* %0, %struct.padlock_session** %2, align 8
  %3 = load %struct.padlock_session*, %struct.padlock_session** %2, align 8
  %4 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %3, i32 0, i32 2
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %31

7:                                                ; preds = %1
  %8 = load %struct.padlock_session*, %struct.padlock_session** %2, align 8
  %9 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = load %struct.padlock_session*, %struct.padlock_session** %2, align 8
  %12 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @padlock_free_ctx(%struct.TYPE_2__* %10, i32* %13)
  %15 = load %struct.padlock_session*, %struct.padlock_session** %2, align 8
  %16 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.padlock_session*, %struct.padlock_session** %2, align 8
  %19 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @bzero(i32* %17, i32 %22)
  %24 = load %struct.padlock_session*, %struct.padlock_session** %2, align 8
  %25 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* @M_PADLOCK, align 4
  %28 = call i32 @free(i32* %26, i32 %27)
  %29 = load %struct.padlock_session*, %struct.padlock_session** %2, align 8
  %30 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %29, i32 0, i32 2
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %7, %1
  %32 = load %struct.padlock_session*, %struct.padlock_session** %2, align 8
  %33 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %60

36:                                               ; preds = %31
  %37 = load %struct.padlock_session*, %struct.padlock_session** %2, align 8
  %38 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load %struct.padlock_session*, %struct.padlock_session** %2, align 8
  %41 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @padlock_free_ctx(%struct.TYPE_2__* %39, i32* %42)
  %44 = load %struct.padlock_session*, %struct.padlock_session** %2, align 8
  %45 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.padlock_session*, %struct.padlock_session** %2, align 8
  %48 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @bzero(i32* %46, i32 %51)
  %53 = load %struct.padlock_session*, %struct.padlock_session** %2, align 8
  %54 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* @M_PADLOCK, align 4
  %57 = call i32 @free(i32* %55, i32 %56)
  %58 = load %struct.padlock_session*, %struct.padlock_session** %2, align 8
  %59 = getelementptr inbounds %struct.padlock_session, %struct.padlock_session* %58, i32 0, i32 0
  store i32* null, i32** %59, align 8
  br label %60

60:                                               ; preds = %36, %31
  ret void
}

declare dso_local i32 @padlock_free_ctx(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
