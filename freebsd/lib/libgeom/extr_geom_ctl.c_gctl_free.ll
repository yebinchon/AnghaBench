; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libgeom/extr_geom_ctl.c_gctl_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libgeom/extr_geom_ctl.c_gctl_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32, %struct.gctl_req*, %struct.gctl_req*, %struct.gctl_req* }

@nomemmsg = common dso_local global %struct.gctl_req* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gctl_free(%struct.gctl_req* %0) #0 {
  %2 = alloca %struct.gctl_req*, align 8
  %3 = alloca i32, align 4
  store %struct.gctl_req* %0, %struct.gctl_req** %2, align 8
  %4 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %5 = icmp eq %struct.gctl_req* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %61

7:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %35, %7
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %11 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ult i32 %9, %12
  br i1 %13, label %14, label %38

14:                                               ; preds = %8
  %15 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %16 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %15, i32 0, i32 2
  %17 = load %struct.gctl_req*, %struct.gctl_req** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %17, i64 %19
  %21 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %20, i32 0, i32 3
  %22 = load %struct.gctl_req*, %struct.gctl_req** %21, align 8
  %23 = icmp ne %struct.gctl_req* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %14
  %25 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %26 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %25, i32 0, i32 2
  %27 = load %struct.gctl_req*, %struct.gctl_req** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %27, i64 %29
  %31 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %30, i32 0, i32 3
  %32 = load %struct.gctl_req*, %struct.gctl_req** %31, align 8
  %33 = call i32 @free(%struct.gctl_req* %32)
  br label %34

34:                                               ; preds = %24, %14
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %3, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %8

38:                                               ; preds = %8
  %39 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %40 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %39, i32 0, i32 2
  %41 = load %struct.gctl_req*, %struct.gctl_req** %40, align 8
  %42 = call i32 @free(%struct.gctl_req* %41)
  %43 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %44 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %43, i32 0, i32 1
  %45 = load %struct.gctl_req*, %struct.gctl_req** %44, align 8
  %46 = icmp ne %struct.gctl_req* %45, null
  br i1 %46, label %47, label %58

47:                                               ; preds = %38
  %48 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %49 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %48, i32 0, i32 1
  %50 = load %struct.gctl_req*, %struct.gctl_req** %49, align 8
  %51 = load %struct.gctl_req*, %struct.gctl_req** @nomemmsg, align 8
  %52 = icmp ne %struct.gctl_req* %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %55 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %54, i32 0, i32 1
  %56 = load %struct.gctl_req*, %struct.gctl_req** %55, align 8
  %57 = call i32 @free(%struct.gctl_req* %56)
  br label %58

58:                                               ; preds = %53, %47, %38
  %59 = load %struct.gctl_req*, %struct.gctl_req** %2, align 8
  %60 = call i32 @free(%struct.gctl_req* %59)
  br label %61

61:                                               ; preds = %58, %6
  ret void
}

declare dso_local i32 @free(%struct.gctl_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
