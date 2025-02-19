; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_readconf.c_add_remote_forward.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_readconf.c_add_remote_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.Forward* }
%struct.Forward = type { i64, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_remote_forward(%struct.TYPE_3__* %0, %struct.Forward* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.Forward*, align 8
  %5 = alloca %struct.Forward*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.Forward* %1, %struct.Forward** %4, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %25, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %7
  %14 = load %struct.Forward*, %struct.Forward** %4, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load %struct.Forward*, %struct.Forward** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.Forward, %struct.Forward* %17, i64 %19
  %21 = call i64 @forward_equals(%struct.Forward* %14, %struct.Forward* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  br label %85

24:                                               ; preds = %13
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %7

28:                                               ; preds = %7
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load %struct.Forward*, %struct.Forward** %30, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  %36 = call %struct.Forward* @xreallocarray(%struct.Forward* %31, i32 %35, i32 40)
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store %struct.Forward* %36, %struct.Forward** %38, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load %struct.Forward*, %struct.Forward** %40, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds %struct.Forward, %struct.Forward* %41, i64 %46
  store %struct.Forward* %47, %struct.Forward** %5, align 8
  %48 = load %struct.Forward*, %struct.Forward** %4, align 8
  %49 = getelementptr inbounds %struct.Forward, %struct.Forward* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.Forward*, %struct.Forward** %5, align 8
  %52 = getelementptr inbounds %struct.Forward, %struct.Forward* %51, i32 0, i32 7
  store i32 %50, i32* %52, align 8
  %53 = load %struct.Forward*, %struct.Forward** %4, align 8
  %54 = getelementptr inbounds %struct.Forward, %struct.Forward* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.Forward*, %struct.Forward** %5, align 8
  %57 = getelementptr inbounds %struct.Forward, %struct.Forward* %56, i32 0, i32 6
  store i32 %55, i32* %57, align 4
  %58 = load %struct.Forward*, %struct.Forward** %4, align 8
  %59 = getelementptr inbounds %struct.Forward, %struct.Forward* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.Forward*, %struct.Forward** %5, align 8
  %62 = getelementptr inbounds %struct.Forward, %struct.Forward* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 8
  %63 = load %struct.Forward*, %struct.Forward** %4, align 8
  %64 = getelementptr inbounds %struct.Forward, %struct.Forward* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.Forward*, %struct.Forward** %5, align 8
  %67 = getelementptr inbounds %struct.Forward, %struct.Forward* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 4
  %68 = load %struct.Forward*, %struct.Forward** %4, align 8
  %69 = getelementptr inbounds %struct.Forward, %struct.Forward* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.Forward*, %struct.Forward** %5, align 8
  %72 = getelementptr inbounds %struct.Forward, %struct.Forward* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 8
  %73 = load %struct.Forward*, %struct.Forward** %4, align 8
  %74 = getelementptr inbounds %struct.Forward, %struct.Forward* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.Forward*, %struct.Forward** %5, align 8
  %77 = getelementptr inbounds %struct.Forward, %struct.Forward* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = load %struct.Forward*, %struct.Forward** %4, align 8
  %79 = getelementptr inbounds %struct.Forward, %struct.Forward* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.Forward*, %struct.Forward** %5, align 8
  %82 = getelementptr inbounds %struct.Forward, %struct.Forward* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  %83 = load %struct.Forward*, %struct.Forward** %5, align 8
  %84 = getelementptr inbounds %struct.Forward, %struct.Forward* %83, i32 0, i32 0
  store i64 0, i64* %84, align 8
  br label %85

85:                                               ; preds = %28, %23
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
