; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_resolve.c_ib_resolve_portid_str_via.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_resolve.c_ib_resolve_portid_str_via.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.ibmad_port = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"bad dest_type %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_resolve_portid_str_via(%struct.TYPE_11__* %0, i8* %1, i32 %2, %struct.TYPE_11__* %3, %struct.ibmad_port* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.ibmad_port*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_11__, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %10, align 8
  store %struct.ibmad_port* %4, %struct.ibmad_port** %11, align 8
  %18 = bitcast %struct.TYPE_11__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 12, i1 false)
  store i32 0, i32* %17, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %20 = call i32 @memset(%struct.TYPE_11__* %19, i32 0, i32 12)
  %21 = load i32, i32* %9, align 4
  switch i32 %21, label %95 [
    i32 128, label %22
    i32 132, label %34
    i32 129, label %43
    i32 131, label %54
    i32 130, label %83
  ]

22:                                               ; preds = %5
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @strtol(i8* %23, i8** null, i32 0)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = call i32 @IB_LID_VALID(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* @errno, align 4
  store i32 -1, i32* %6, align 4
  br label %100

30:                                               ; preds = %22
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %32 = load i32, i32* %14, align 4
  %33 = call i32 @ib_portid_set(%struct.TYPE_11__* %31, i32 %32, i32 0, i32 0)
  store i32 %33, i32* %6, align 4
  br label %100

34:                                               ; preds = %5
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @str2drpath(i32* %36, i8* %37, i32 0, i32 0)
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* @errno, align 4
  store i32 -1, i32* %6, align 4
  br label %100

42:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %100

43:                                               ; preds = %5
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @strtoull(i8* %44, i32 0, i32 0)
  store i32 %45, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @EINVAL, align 4
  store i32 %48, i32* @errno, align 4
  store i32 -1, i32* %6, align 4
  br label %100

49:                                               ; preds = %43
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %52 = load %struct.ibmad_port*, %struct.ibmad_port** %11, align 8
  %53 = call i32 @ib_resolve_guid_via(%struct.TYPE_11__* %50, i32* %13, %struct.TYPE_11__* %51, i32 0, %struct.ibmad_port* %52)
  store i32 %53, i32* %6, align 4
  br label %100

54:                                               ; preds = %5
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @strtol(i8* %55, i8** %15, i32 0)
  store i32 %56, i32* %14, align 4
  %57 = load i8*, i8** %15, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %15, align 8
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @IB_LID_VALID(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %54
  %63 = load i32, i32* @EINVAL, align 4
  store i32 %63, i32* @errno, align 4
  store i32 -1, i32* %6, align 4
  br label %100

64:                                               ; preds = %54
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @ib_portid_set(%struct.TYPE_11__* %65, i32 %66, i32 0, i32 0)
  %68 = load %struct.ibmad_port*, %struct.ibmad_port** %11, align 8
  %69 = call i32 @ib_resolve_self_via(%struct.TYPE_11__* %16, i32* %17, i32 0, %struct.ibmad_port* %68)
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  store i32 -1, i32* %6, align 4
  br label %100

72:                                               ; preds = %64
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = load i8*, i8** %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @str2drpath(i32* %74, i8* %75, i32 %77, i32 0)
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %72
  %81 = load i32, i32* @EINVAL, align 4
  store i32 %81, i32* @errno, align 4
  store i32 -1, i32* %6, align 4
  br label %100

82:                                               ; preds = %72
  store i32 0, i32* %6, align 4
  br label %100

83:                                               ; preds = %5
  %84 = load i32, i32* @AF_INET6, align 4
  %85 = load i8*, i8** %8, align 8
  %86 = call i32 @inet_pton(i32 %84, i8* %85, i32* %12)
  %87 = icmp sle i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store i32 -1, i32* %6, align 4
  br label %100

89:                                               ; preds = %83
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %91 = load i32, i32* %12, align 4
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %93 = load %struct.ibmad_port*, %struct.ibmad_port** %11, align 8
  %94 = call i32 @ib_resolve_gid_via(%struct.TYPE_11__* %90, i32 %91, %struct.TYPE_11__* %92, i32 0, %struct.ibmad_port* %93)
  store i32 %94, i32* %6, align 4
  br label %100

95:                                               ; preds = %5
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @IBWARN(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* @EINVAL, align 4
  store i32 %98, i32* @errno, align 4
  br label %99

99:                                               ; preds = %95
  store i32 -1, i32* %6, align 4
  br label %100

100:                                              ; preds = %99, %89, %88, %82, %80, %71, %62, %49, %47, %42, %40, %30, %28
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #2

declare dso_local i32 @strtol(i8*, i8**, i32) #2

declare dso_local i32 @IB_LID_VALID(i32) #2

declare dso_local i32 @ib_portid_set(%struct.TYPE_11__*, i32, i32, i32) #2

declare dso_local i32 @str2drpath(i32*, i8*, i32, i32) #2

declare dso_local i32 @strtoull(i8*, i32, i32) #2

declare dso_local i32 @ib_resolve_guid_via(%struct.TYPE_11__*, i32*, %struct.TYPE_11__*, i32, %struct.ibmad_port*) #2

declare dso_local i32 @ib_resolve_self_via(%struct.TYPE_11__*, i32*, i32, %struct.ibmad_port*) #2

declare dso_local i32 @inet_pton(i32, i8*, i32*) #2

declare dso_local i32 @ib_resolve_gid_via(%struct.TYPE_11__*, i32, %struct.TYPE_11__*, i32, %struct.ibmad_port*) #2

declare dso_local i32 @IBWARN(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
