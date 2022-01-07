; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getrpc_test.c_rpcent_read_snapshot_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getrpc_test.c_rpcent_read_snapshot_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcent = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"1 line read from snapshot:\0A%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"noaliases\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpcent*, i8*)* @rpcent_read_snapshot_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcent_read_snapshot_func(%struct.rpcent* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpcent*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.rpcent* %0, %struct.rpcent** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %11)
  store i32 0, i32* %10, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %6, align 8
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %8, align 8
  %14 = load %struct.rpcent*, %struct.rpcent** %4, align 8
  %15 = call i32 @memset(%struct.rpcent* %14, i32 0, i32 16)
  br label %16

16:                                               ; preds = %88, %2
  %17 = call i8* @strsep(i8** %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %17, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %91

19:                                               ; preds = %16
  %20 = load i32, i32* %10, align 4
  switch i32 %20, label %49 [
    i32 0, label %21
    i32 1, label %33
  ]

21:                                               ; preds = %19
  %22 = load i8*, i8** %7, align 8
  %23 = call i8* @strdup(i8* %22)
  %24 = bitcast i8* %23 to %struct.TYPE_5__*
  %25 = load %struct.rpcent*, %struct.rpcent** %4, align 8
  %26 = getelementptr inbounds %struct.rpcent, %struct.rpcent* %25, i32 0, i32 2
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %26, align 8
  %27 = load %struct.rpcent*, %struct.rpcent** %4, align 8
  %28 = getelementptr inbounds %struct.rpcent, %struct.rpcent* %27, i32 0, i32 2
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = icmp ne %struct.TYPE_5__* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @ATF_REQUIRE(i32 %31)
  br label %88

33:                                               ; preds = %19
  %34 = load i8*, i8** %7, align 8
  %35 = call i64 @strtol(i8* %34, i8** %9, i32 10)
  %36 = trunc i64 %35 to i32
  %37 = load %struct.rpcent*, %struct.rpcent** %4, align 8
  %38 = getelementptr inbounds %struct.rpcent, %struct.rpcent* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %33
  %44 = load %struct.rpcent*, %struct.rpcent** %4, align 8
  %45 = getelementptr inbounds %struct.rpcent, %struct.rpcent* %44, i32 0, i32 2
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = call i32 @free(%struct.TYPE_5__* %46)
  store i32 -1, i32* %3, align 4
  br label %111

48:                                               ; preds = %33
  br label %88

49:                                               ; preds = %19
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %51 = icmp eq %struct.TYPE_5__* %50, null
  br i1 %51, label %52, label %77

52:                                               ; preds = %49
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @strcmp(i8* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %111

57:                                               ; preds = %52
  %58 = call %struct.TYPE_5__* (...) @sl_init()
  store %struct.TYPE_5__* %58, %struct.TYPE_5__** %6, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %60 = icmp ne %struct.TYPE_5__* %59, null
  %61 = zext i1 %60 to i32
  %62 = call i32 @ATF_REQUIRE(i32 %61)
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %57
  %67 = load i8*, i8** %7, align 8
  %68 = call i8* @strdup(i8* %67)
  store i8* %68, i8** %9, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = icmp ne i8* %69, null
  %71 = zext i1 %70 to i32
  %72 = call i32 @ATF_REQUIRE(i32 %71)
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = call i32 @sl_add(%struct.TYPE_5__* %73, i8* %74)
  br label %76

76:                                               ; preds = %66, %57
  br label %87

77:                                               ; preds = %49
  %78 = load i8*, i8** %7, align 8
  %79 = call i8* @strdup(i8* %78)
  store i8* %79, i8** %9, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = icmp ne i8* %80, null
  %82 = zext i1 %81 to i32
  %83 = call i32 @ATF_REQUIRE(i32 %82)
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = call i32 @sl_add(%struct.TYPE_5__* %84, i8* %85)
  br label %87

87:                                               ; preds = %77, %76
  br label %88

88:                                               ; preds = %87, %48, %21
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %16

91:                                               ; preds = %16
  %92 = load i32, i32* %10, align 4
  %93 = icmp slt i32 %92, 3
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = load %struct.rpcent*, %struct.rpcent** %4, align 8
  %96 = getelementptr inbounds %struct.rpcent, %struct.rpcent* %95, i32 0, i32 2
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = call i32 @free(%struct.TYPE_5__* %97)
  %99 = load %struct.rpcent*, %struct.rpcent** %4, align 8
  %100 = call i32 @memset(%struct.rpcent* %99, i32 0, i32 16)
  store i32 -1, i32* %3, align 4
  br label %111

101:                                              ; preds = %91
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %103 = call i32 @sl_add(%struct.TYPE_5__* %102, i8* null)
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.rpcent*, %struct.rpcent** %4, align 8
  %108 = getelementptr inbounds %struct.rpcent, %struct.rpcent* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %110 = call i32 @free(%struct.TYPE_5__* %109)
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %101, %94, %56, %43
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @memset(%struct.rpcent*, i32, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_5__* @sl_init(...) #1

declare dso_local i32 @sl_add(%struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
