; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibdiag_common.c_resolve_self.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibdiag_common.c_resolve_self.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }

@IB_GID_PREFIX_F = common dso_local global i32 0, align 4
@IB_GID_GUID_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @resolve_self(i8* %0, i32 %1, %struct.TYPE_11__* %2, i32* %3, %struct.TYPE_11__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_10__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_11__* %4, %struct.TYPE_11__** %11, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %17 = icmp ne %struct.TYPE_11__* %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %5
  %19 = load i32*, i32** %10, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %23 = icmp ne %struct.TYPE_11__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store i32 -1, i32* %6, align 4
  br label %77

25:                                               ; preds = %21, %18, %5
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @umad_get_port(i8* %26, i32 %27, %struct.TYPE_10__* %12)
  store i32 %28, i32* %15, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %15, align 4
  store i32 %31, i32* %6, align 4
  br label %77

32:                                               ; preds = %25
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %34 = icmp ne %struct.TYPE_11__* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %37 = call i32 @memset(%struct.TYPE_11__* %36, i32 0, i32 8)
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %35, %32
  %47 = load i32*, i32** %10, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %10, align 8
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %49, %46
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %55 = icmp ne %struct.TYPE_11__* %54, null
  br i1 %55, label %56, label %75

56:                                               ; preds = %53
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %58 = call i32 @memset(%struct.TYPE_11__* %57, i32 0, i32 8)
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @cl_ntoh64(i32 %60)
  store i32 %61, i32* %13, align 4
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @cl_ntoh64(i32 %63)
  store i32 %64, i32* %14, align 4
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %66 = load i32, i32* @IB_GID_PREFIX_F, align 4
  %67 = bitcast %struct.TYPE_11__* %65 to i64*
  %68 = load i64, i64* %67, align 4
  %69 = call i32 @mad_encode_field(i64 %68, i32 %66, i32* %13)
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %71 = load i32, i32* @IB_GID_GUID_F, align 4
  %72 = bitcast %struct.TYPE_11__* %70 to i64*
  %73 = load i64, i64* %72, align 4
  %74 = call i32 @mad_encode_field(i64 %73, i32 %71, i32* %14)
  br label %75

75:                                               ; preds = %56, %53
  %76 = call i32 @umad_release_port(%struct.TYPE_10__* %12)
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %75, %30, %24
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i32 @umad_get_port(i8*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @cl_ntoh64(i32) #1

declare dso_local i32 @mad_encode_field(i64, i32, i32*) #1

declare dso_local i32 @umad_release_port(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
