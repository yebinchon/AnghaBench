; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libgeom/extr_geom_ctl.c_gctl_param_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libgeom/extr_geom_ctl.c_gctl_param_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32* }
%struct.gctl_req_arg = type { i8*, i32, i32, i8*, i8* }

@GCTL_PARAM_ASCII = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*, i8*, i32, i8*, i32)* @gctl_param_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gctl_param_add(%struct.gctl_req* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.gctl_req*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.gctl_req_arg*, align 8
  store %struct.gctl_req* %0, %struct.gctl_req** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.gctl_req*, %struct.gctl_req** %6, align 8
  %13 = icmp eq %struct.gctl_req* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %5
  %15 = load %struct.gctl_req*, %struct.gctl_req** %6, align 8
  %16 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %5
  br label %77

20:                                               ; preds = %14
  %21 = load %struct.gctl_req*, %struct.gctl_req** %6, align 8
  %22 = call %struct.gctl_req_arg* @gctl_new_arg(%struct.gctl_req* %21)
  store %struct.gctl_req_arg* %22, %struct.gctl_req_arg** %11, align 8
  %23 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %11, align 8
  %24 = icmp eq %struct.gctl_req_arg* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %77

26:                                               ; preds = %20
  %27 = load i8*, i8** %7, align 8
  %28 = call i8* @strdup(i8* %27)
  %29 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %11, align 8
  %30 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load %struct.gctl_req*, %struct.gctl_req** %6, align 8
  %32 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %11, align 8
  %33 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @gctl_check_alloc(%struct.gctl_req* %31, i8* %34)
  %36 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %11, align 8
  %37 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  br label %77

41:                                               ; preds = %26
  %42 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %11, align 8
  %43 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i8* @strlen(i8* %44)
  %46 = getelementptr i8, i8* %45, i64 1
  %47 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %11, align 8
  %48 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %47, i32 0, i32 4
  store i8* %46, i8** %48, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %11, align 8
  %51 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %50, i32 0, i32 3
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %11, align 8
  %54 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %8, align 4
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %41
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %11, align 8
  %60 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  br label %77

61:                                               ; preds = %41
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %61
  %65 = load i32, i32* @GCTL_PARAM_ASCII, align 4
  %66 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %11, align 8
  %67 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = call i8* @strlen(i8* %70)
  %72 = getelementptr i8, i8* %71, i64 1
  %73 = ptrtoint i8* %72 to i32
  %74 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %11, align 8
  %75 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %64, %61
  br label %77

77:                                               ; preds = %19, %25, %40, %76, %57
  ret void
}

declare dso_local %struct.gctl_req_arg* @gctl_new_arg(%struct.gctl_req*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @gctl_check_alloc(%struct.gctl_req*, i8*) #1

declare dso_local i8* @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
