; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/net/in_cksum/extr_in_cksum.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/net/in_cksum/extr_in_cksum.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rusage = type { %struct.timeval }
%struct.timeval = type { double, i64 }
%struct.mbuf = type { i32 }

@random_aligned = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"i:l:u:v\00", align 1
@optarg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"%s [-l <loops>] [-u <unalign> [-i <iterations> [<mbuf-size> ...]\00", align 1
@RUSAGE_SELF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"portable version: %jd.%06jd\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.rusage, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = alloca %struct.timeval, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.mbuf*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 16, i32* %9, align 4
  store i32 0, i32* %17, align 4
  store i8* null, i8** @random_aligned, align 8
  store i64 100000, i64* %14, align 8
  br label %19

19:                                               ; preds = %41, %2
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = call i32 @getopt(i32 %20, i8** %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %18, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %42

24:                                               ; preds = %19
  %25 = load i32, i32* %18, align 4
  switch i32 %25, label %38 [
    i32 105, label %26
    i32 108, label %30
    i32 117, label %34
    i32 118, label %37
  ]

26:                                               ; preds = %24
  %27 = load i32, i32* @optarg, align 4
  %28 = call i8* @atoi(i32 %27)
  %29 = ptrtoint i8* %28 to i64
  store i64 %29, i64* %14, align 8
  br label %41

30:                                               ; preds = %24
  %31 = load i32, i32* @optarg, align 4
  %32 = call i8* @atoi(i32 %31)
  %33 = ptrtoint i8* %32 to i32
  store i32 %33, i32* %9, align 4
  br label %41

34:                                               ; preds = %24
  %35 = load i32, i32* @optarg, align 4
  %36 = call i8* @atoi(i32 %35)
  store i8* %36, i8** @random_aligned, align 8
  br label %41

37:                                               ; preds = %24
  store i32 1, i32* %17, align 4
  br label %41

38:                                               ; preds = %24
  %39 = call i32 (...) @getprogname()
  %40 = call i32 (i32, i8*, i32, ...) @errx(i32 1, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %38, %37, %34, %30, %26
  br label %19

42:                                               ; preds = %19
  br label %43

43:                                               ; preds = %122, %42
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %125

46:                                               ; preds = %43
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 4
  %49 = call %struct.mbuf* @allocate_mbuf_chain(i8** %48)
  store %struct.mbuf* %49, %struct.mbuf** %16, align 8
  %50 = icmp eq %struct.mbuf* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %122

52:                                               ; preds = %46
  %53 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %54 = call i32 @randomise_mbuf_chain(%struct.mbuf* %53)
  %55 = call i32 (...) @rand()
  store i32 %55, i32* %15, align 4
  %56 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %57 = call i32 @mbuf_len(%struct.mbuf* %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  store i32 0, i32* %11, align 4
  br label %71

61:                                               ; preds = %52
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = call i32 (...) @rand()
  %66 = load i32, i32* %12, align 4
  %67 = srem i32 %65, %66
  br label %69

68:                                               ; preds = %61
  br label %69

69:                                               ; preds = %68, %64
  %70 = phi i32 [ %67, %64 ], [ 0, %68 ]
  store i32 %70, i32* %11, align 4
  br label %71

71:                                               ; preds = %69, %60
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = sub nsw i32 %73, %72
  store i32 %74, i32* %12, align 4
  %75 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %15, align 4
  %79 = call i32 @portable_cpu_in_cksum(%struct.mbuf* %75, i32 %76, i32 %77, i32 %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @__USE(i32 %80)
  %82 = load i64, i64* %14, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %71
  br label %122

85:                                               ; preds = %71
  %86 = load i32, i32* @RUSAGE_SELF, align 4
  %87 = call i32 @getrusage(i32 %86, %struct.rusage* %6)
  %88 = getelementptr inbounds %struct.rusage, %struct.rusage* %6, i32 0, i32 0
  %89 = bitcast %struct.timeval* %7 to i8*
  %90 = bitcast %struct.timeval* %88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %89, i8* align 8 %90, i64 16, i1 false)
  %91 = load i64, i64* %14, align 8
  store i64 %91, i64* %13, align 8
  br label %92

92:                                               ; preds = %101, %85
  %93 = load i64, i64* %13, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %92
  %96 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %15, align 4
  %100 = call i32 @portable_cpu_in_cksum(%struct.mbuf* %96, i32 %97, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %95
  %102 = load i64, i64* %13, align 8
  %103 = add nsw i64 %102, -1
  store i64 %103, i64* %13, align 8
  br label %92

104:                                              ; preds = %92
  %105 = load i32, i32* @RUSAGE_SELF, align 4
  %106 = call i32 @getrusage(i32 %105, %struct.rusage* %6)
  %107 = getelementptr inbounds %struct.rusage, %struct.rusage* %6, i32 0, i32 0
  %108 = call i32 @timersub(%struct.timeval* %107, %struct.timeval* %7, %struct.timeval* %8)
  %109 = load i32, i32* %17, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %104
  %112 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = trunc i64 %113 to i32
  %115 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %116 = load double, double* %115, align 8
  %117 = fptosi double %116 to i32
  %118 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %114, i32 %117)
  br label %119

119:                                              ; preds = %111, %104
  %120 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %121 = call i32 @free_mbuf_chain(%struct.mbuf* %120)
  br label %122

122:                                              ; preds = %119, %84, %51
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %9, align 4
  br label %43

125:                                              ; preds = %43
  ret i32 0
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @atoi(i32) #1

declare dso_local i32 @errx(i32, i8*, i32, ...) #1

declare dso_local i32 @getprogname(...) #1

declare dso_local %struct.mbuf* @allocate_mbuf_chain(i8**) #1

declare dso_local i32 @randomise_mbuf_chain(%struct.mbuf*) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @mbuf_len(%struct.mbuf*) #1

declare dso_local i32 @portable_cpu_in_cksum(%struct.mbuf*, i32, i32, i32) #1

declare dso_local i32 @__USE(i32) #1

declare dso_local i32 @getrusage(i32, %struct.rusage*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @timersub(%struct.timeval*, %struct.timeval*, %struct.timeval*) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @free_mbuf_chain(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
