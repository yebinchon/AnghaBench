; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_readconf.c_add_local_forward.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_readconf.c_add_local_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.Forward* }
%struct.Forward = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_local_forward(%struct.TYPE_3__* %0, %struct.Forward* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.Forward*, align 8
  %5 = alloca %struct.Forward*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.Forward* %1, %struct.Forward** %4, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %26, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %8
  %15 = load %struct.Forward*, %struct.Forward** %4, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load %struct.Forward*, %struct.Forward** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.Forward, %struct.Forward* %18, i64 %20
  %22 = call i64 @forward_equals(%struct.Forward* %15, %struct.Forward* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  br label %79

25:                                               ; preds = %14
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %8

29:                                               ; preds = %8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load %struct.Forward*, %struct.Forward** %31, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  %37 = call %struct.Forward* @xreallocarray(%struct.Forward* %32, i32 %36, i32 24)
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store %struct.Forward* %37, %struct.Forward** %39, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load %struct.Forward*, %struct.Forward** %41, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds %struct.Forward, %struct.Forward* %42, i64 %47
  store %struct.Forward* %48, %struct.Forward** %5, align 8
  %49 = load %struct.Forward*, %struct.Forward** %4, align 8
  %50 = getelementptr inbounds %struct.Forward, %struct.Forward* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.Forward*, %struct.Forward** %5, align 8
  %53 = getelementptr inbounds %struct.Forward, %struct.Forward* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 4
  %54 = load %struct.Forward*, %struct.Forward** %4, align 8
  %55 = getelementptr inbounds %struct.Forward, %struct.Forward* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.Forward*, %struct.Forward** %5, align 8
  %58 = getelementptr inbounds %struct.Forward, %struct.Forward* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 4
  %59 = load %struct.Forward*, %struct.Forward** %4, align 8
  %60 = getelementptr inbounds %struct.Forward, %struct.Forward* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.Forward*, %struct.Forward** %5, align 8
  %63 = getelementptr inbounds %struct.Forward, %struct.Forward* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load %struct.Forward*, %struct.Forward** %4, align 8
  %65 = getelementptr inbounds %struct.Forward, %struct.Forward* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.Forward*, %struct.Forward** %5, align 8
  %68 = getelementptr inbounds %struct.Forward, %struct.Forward* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load %struct.Forward*, %struct.Forward** %4, align 8
  %70 = getelementptr inbounds %struct.Forward, %struct.Forward* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.Forward*, %struct.Forward** %5, align 8
  %73 = getelementptr inbounds %struct.Forward, %struct.Forward* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.Forward*, %struct.Forward** %4, align 8
  %75 = getelementptr inbounds %struct.Forward, %struct.Forward* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.Forward*, %struct.Forward** %5, align 8
  %78 = getelementptr inbounds %struct.Forward, %struct.Forward* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %29, %24
  ret void
}

declare dso_local i64 @forward_equals(%struct.Forward*, %struct.Forward*) #1

declare dso_local %struct.Forward* @xreallocarray(%struct.Forward*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
