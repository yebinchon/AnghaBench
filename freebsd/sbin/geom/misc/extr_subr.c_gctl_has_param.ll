; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/geom/misc/extr_subr.c_gctl_has_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/geom/misc/extr_subr.c_gctl_has_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32, %struct.gctl_req_arg*, i32* }
%struct.gctl_req_arg = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gctl_has_param(%struct.gctl_req* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gctl_req*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.gctl_req_arg*, align 8
  %7 = alloca i32, align 4
  store %struct.gctl_req* %0, %struct.gctl_req** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %9 = icmp eq %struct.gctl_req* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %12 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %2
  store i32 0, i32* %3, align 4
  br label %42

16:                                               ; preds = %10
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %38, %16
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %20 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %17
  %24 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %25 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %24, i32 0, i32 1
  %26 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %26, i64 %28
  store %struct.gctl_req_arg* %29, %struct.gctl_req_arg** %6, align 8
  %30 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %6, align 8
  %31 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %5, align 8
  %34 = call i64 @strcmp(i32 %32, i8* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %42

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %7, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %17

41:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %36, %15
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
