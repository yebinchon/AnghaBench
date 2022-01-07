; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_entropy.c_isc_entropy_createfilesource.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_entropy.c_isc_entropy_createfilesource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, i32, i32, i64, %struct.TYPE_14__*, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@PROV_RSA_FULL = common dso_local global i32 0, align 4
@CRYPT_VERIFYCONTEXT = common dso_local global i32 0, align 4
@ISC_R_IOERROR = common dso_local global i32 0, align 4
@ISC_R_NOMEMORY = common dso_local global i32 0, align 4
@SOURCE_MAGIC = common dso_local global i32 0, align 4
@ENTROPY_SOURCETYPE_FILE = common dso_local global i32 0, align 4
@ISC_FALSE = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@ISC_R_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isc_entropy_createfilesource(%struct.TYPE_14__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %12 = call i32 @VALID_ENTROPY(%struct.TYPE_14__* %11)
  %13 = call i32 @REQUIRE(i32 %12)
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @REQUIRE(i32 %16)
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = call i32 @LOCK(i32* %19)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %7, align 8
  %21 = load i32, i32* @PROV_RSA_FULL, align 4
  %22 = load i32, i32* @CRYPT_VERIFYCONTEXT, align 4
  %23 = call i32 @CryptAcquireContext(i32* %8, i32* null, i32* null, i32 %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = call i32 (...) @GetLastError()
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* @ISC_R_IOERROR, align 4
  store i32 %28, i32* %6, align 4
  br label %82

29:                                               ; preds = %2
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.TYPE_13__* @isc_mem_get(i32 %32, i32 40)
  store %struct.TYPE_13__* %33, %struct.TYPE_13__** %7, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %35 = icmp eq %struct.TYPE_13__* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @ISC_R_NOMEMORY, align 4
  store i32 %37, i32* %6, align 4
  br label %79

38:                                               ; preds = %29
  %39 = load i32, i32* @SOURCE_MAGIC, align 4
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @ENTROPY_SOURCETYPE_FILE, align 4
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 4
  store %struct.TYPE_14__* %45, %struct.TYPE_14__** %47, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 3
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* @ISC_FALSE, align 4
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @memset(i32 %55, i32 0, i32 4)
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %58 = load i32, i32* @link, align 4
  %59 = call i32 @ISC_LINK_INIT(%struct.TYPE_13__* %57, i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  store i32 %60, i32* %64, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %69 = load i32, i32* @link, align 4
  %70 = call i32 @ISC_LIST_APPEND(i32 %67, %struct.TYPE_13__* %68, i32 %69)
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = call i32 @UNLOCK(i32* %76)
  %78 = load i32, i32* @ISC_R_SUCCESS, align 4
  store i32 %78, i32* %3, align 4
  br label %96

79:                                               ; preds = %36
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @CryptReleaseContext(i32 %80, i32 0)
  br label %82

82:                                               ; preds = %79, %26
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %84 = icmp ne %struct.TYPE_13__* %83, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %90 = call i32 @isc_mem_put(i32 %88, %struct.TYPE_13__* %89, i32 40)
  br label %91

91:                                               ; preds = %85, %82
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = call i32 @UNLOCK(i32* %93)
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %91, %38
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @VALID_ENTROPY(%struct.TYPE_14__*) #1

declare dso_local i32 @LOCK(i32*) #1

declare dso_local i32 @CryptAcquireContext(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local %struct.TYPE_13__* @isc_mem_get(i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ISC_LINK_INIT(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @ISC_LIST_APPEND(i32, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @UNLOCK(i32*) #1

declare dso_local i32 @CryptReleaseContext(i32, i32) #1

declare dso_local i32 @isc_mem_put(i32, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
