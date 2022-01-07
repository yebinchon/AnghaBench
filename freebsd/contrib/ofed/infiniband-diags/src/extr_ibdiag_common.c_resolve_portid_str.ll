; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibdiag_common.c_resolve_portid_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibdiag_common.c_resolve_portid_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.ibmad_port = type { i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"bad dest_type %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @resolve_portid_str(i8* %0, i32 %1, %struct.TYPE_11__* %2, i8* %3, i32 %4, %struct.TYPE_11__* %5, %struct.ibmad_port* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca %struct.ibmad_port*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_11__, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.TYPE_11__* %5, %struct.TYPE_11__** %14, align 8
  store %struct.ibmad_port* %6, %struct.ibmad_port** %15, align 8
  %22 = bitcast %struct.TYPE_11__* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %22, i8 0, i64 12, i1 false)
  store i32 0, i32* %21, align 4
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %24 = call i32 @memset(%struct.TYPE_11__* %23, i32 0, i32 12)
  %25 = load i32, i32* %13, align 4
  switch i32 %25, label %99 [
    i32 128, label %26
    i32 132, label %37
    i32 129, label %45
    i32 131, label %57
    i32 130, label %85
  ]

26:                                               ; preds = %7
  %27 = load i8*, i8** %12, align 8
  %28 = call i32 @strtol(i8* %27, i8** null, i32 0)
  store i32 %28, i32* %18, align 4
  %29 = load i32, i32* %18, align 4
  %30 = call i32 @IB_LID_VALID(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  store i32 -1, i32* %8, align 4
  br label %103

33:                                               ; preds = %26
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %35 = load i32, i32* %18, align 4
  %36 = call i32 @ib_portid_set(%struct.TYPE_11__* %34, i32 %35, i32 0, i32 0)
  store i32 %36, i32* %8, align 4
  br label %103

37:                                               ; preds = %7
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  %40 = load i8*, i8** %12, align 8
  %41 = call i32 @str2drpath(i32* %39, i8* %40, i32 0, i32 0)
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 -1, i32* %8, align 4
  br label %103

44:                                               ; preds = %37
  store i32 0, i32* %8, align 4
  br label %103

45:                                               ; preds = %7
  %46 = load i8*, i8** %12, align 8
  %47 = call i32 @strtoull(i8* %46, i32 0, i32 0)
  store i32 %47, i32* %17, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  store i32 -1, i32* %8, align 4
  br label %103

50:                                               ; preds = %45
  %51 = load i8*, i8** %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %55 = load %struct.ibmad_port*, %struct.ibmad_port** %15, align 8
  %56 = call i32 @resolve_guid(i8* %51, i32 %52, %struct.TYPE_11__* %53, i32* %17, %struct.TYPE_11__* %54, %struct.ibmad_port* %55)
  store i32 %56, i32* %8, align 4
  br label %103

57:                                               ; preds = %7
  %58 = load i8*, i8** %12, align 8
  %59 = call i32 @strtol(i8* %58, i8** %19, i32 0)
  store i32 %59, i32* %18, align 4
  %60 = load i8*, i8** %19, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %19, align 8
  %62 = load i32, i32* %18, align 4
  %63 = call i32 @IB_LID_VALID(i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %57
  store i32 -1, i32* %8, align 4
  br label %103

66:                                               ; preds = %57
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %68 = load i32, i32* %18, align 4
  %69 = call i32 @ib_portid_set(%struct.TYPE_11__* %67, i32 %68, i32 0, i32 0)
  %70 = load i8*, i8** %9, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @resolve_self(i8* %70, i32 %71, %struct.TYPE_11__* %20, i32* %21, i32* null)
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  store i32 -1, i32* %8, align 4
  br label %103

75:                                               ; preds = %66
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load i8*, i8** %19, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @str2drpath(i32* %77, i8* %78, i32 %80, i32 0)
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  store i32 -1, i32* %8, align 4
  br label %103

84:                                               ; preds = %75
  store i32 0, i32* %8, align 4
  br label %103

85:                                               ; preds = %7
  %86 = load i32, i32* @AF_INET6, align 4
  %87 = load i8*, i8** %12, align 8
  %88 = call i32 @inet_pton(i32 %86, i8* %87, i32* %16)
  %89 = icmp sle i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  store i32 -1, i32* %8, align 4
  br label %103

91:                                               ; preds = %85
  %92 = load i8*, i8** %9, align 8
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %95 = load i32, i32* %16, align 4
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %97 = load %struct.ibmad_port*, %struct.ibmad_port** %15, align 8
  %98 = call i32 @resolve_gid(i8* %92, i32 %93, %struct.TYPE_11__* %94, i32 %95, %struct.TYPE_11__* %96, %struct.ibmad_port* %97)
  store i32 %98, i32* %8, align 4
  br label %103

99:                                               ; preds = %7
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @IBWARN(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %99
  store i32 -1, i32* %8, align 4
  br label %103

103:                                              ; preds = %102, %91, %90, %84, %83, %74, %65, %50, %49, %44, %43, %33, %32
  %104 = load i32, i32* %8, align 4
  ret i32 %104
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #2

declare dso_local i32 @strtol(i8*, i8**, i32) #2

declare dso_local i32 @IB_LID_VALID(i32) #2

declare dso_local i32 @ib_portid_set(%struct.TYPE_11__*, i32, i32, i32) #2

declare dso_local i32 @str2drpath(i32*, i8*, i32, i32) #2

declare dso_local i32 @strtoull(i8*, i32, i32) #2

declare dso_local i32 @resolve_guid(i8*, i32, %struct.TYPE_11__*, i32*, %struct.TYPE_11__*, %struct.ibmad_port*) #2

declare dso_local i32 @resolve_self(i8*, i32, %struct.TYPE_11__*, i32*, i32*) #2

declare dso_local i32 @inet_pton(i32, i8*, i32*) #2

declare dso_local i32 @resolve_gid(i8*, i32, %struct.TYPE_11__*, i32, %struct.TYPE_11__*, %struct.ibmad_port*) #2

declare dso_local i32 @IBWARN(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
