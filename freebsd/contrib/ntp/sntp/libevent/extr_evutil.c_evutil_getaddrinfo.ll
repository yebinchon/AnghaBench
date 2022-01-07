; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evutil.c_evutil_getaddrinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evutil.c_evutil_getaddrinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evutil_addrinfo = type { i64, i32, i32 }
%struct.hostent = type { i64, i64 }
%struct.hostent_data = type { i64, i32, i32 }

@PF_UNSPEC = common dso_local global i64 0, align 8
@EVUTIL_EAI_NEED_RESOLVE = common dso_local global i32 0, align 4
@h_errno = common dso_local global i32 0, align 4
@EVUTIL_EAI_AGAIN = common dso_local global i32 0, align 4
@EVUTIL_EAI_FAIL = common dso_local global i32 0, align 4
@EVUTIL_EAI_NONAME = common dso_local global i32 0, align 4
@EVUTIL_EAI_NODATA = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i64 0, align 8
@PF_INET6 = common dso_local global i64 0, align 8
@EVUTIL_EAI_FAMILY = common dso_local global i32 0, align 4
@EVUTIL_EAI_MEMORY = common dso_local global i32 0, align 4
@ALL_NATIVE_AI_FLAGS = common dso_local global i32 0, align 4
@ALL_NONNATIVE_AI_FLAGS = common dso_local global i32 0, align 4
@EVUTIL_AI_ADDRCONFIG = common dso_local global i32 0, align 4
@EVUTIL_AI_NUMERICSERV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evutil_getaddrinfo(i8* %0, i8* %1, %struct.evutil_addrinfo* %2, %struct.evutil_addrinfo** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.evutil_addrinfo*, align 8
  %9 = alloca %struct.evutil_addrinfo**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.hostent*, align 8
  %13 = alloca %struct.evutil_addrinfo, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.evutil_addrinfo* %2, %struct.evutil_addrinfo** %8, align 8
  store %struct.evutil_addrinfo** %3, %struct.evutil_addrinfo*** %9, align 8
  store i32 0, i32* %10, align 4
  store %struct.hostent* null, %struct.hostent** %12, align 8
  %14 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %8, align 8
  %15 = icmp ne %struct.evutil_addrinfo* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = bitcast %struct.evutil_addrinfo* %13 to %struct.hostent_data*
  %18 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %8, align 8
  %19 = bitcast %struct.evutil_addrinfo* %18 to %struct.hostent_data*
  %20 = call i32 @memcpy(%struct.hostent_data* %17, %struct.hostent_data* %19, i32 16)
  br label %26

21:                                               ; preds = %4
  %22 = bitcast %struct.evutil_addrinfo* %13 to %struct.hostent_data*
  %23 = call i32 @memset(%struct.hostent_data* %22, i32 0, i32 16)
  %24 = load i64, i64* @PF_UNSPEC, align 8
  %25 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %13, i32 0, i32 0
  store i64 %24, i64* %25, align 8
  br label %26

26:                                               ; preds = %21, %16
  %27 = bitcast %struct.evutil_addrinfo* %13 to %struct.hostent_data*
  %28 = call i32 @evutil_adjust_hints_for_addrconfig_(%struct.hostent_data* %27)
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = bitcast %struct.evutil_addrinfo* %13 to %struct.hostent_data*
  %32 = load %struct.evutil_addrinfo**, %struct.evutil_addrinfo*** %9, align 8
  %33 = bitcast %struct.evutil_addrinfo** %32 to %struct.hostent_data**
  %34 = call i32 @evutil_getaddrinfo_common_(i8* %29, i8* %30, %struct.hostent_data* %31, %struct.hostent_data** %33, i32* %10)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @EVUTIL_EAI_NEED_RESOLVE, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %5, align 4
  br label %105

40:                                               ; preds = %26
  store i32 0, i32* %11, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = call %struct.hostent* @gethostbyname(i8* %41)
  store %struct.hostent* %42, %struct.hostent** %12, align 8
  %43 = load i32, i32* @h_errno, align 4
  store i32 %43, i32* %11, align 4
  %44 = load %struct.hostent*, %struct.hostent** %12, align 8
  %45 = icmp ne %struct.hostent* %44, null
  br i1 %45, label %57, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* %11, align 4
  switch i32 %47, label %51 [
    i32 128, label %48
    i32 129, label %50
    i32 132, label %53
    i32 131, label %55
    i32 130, label %55
  ]

48:                                               ; preds = %46
  %49 = load i32, i32* @EVUTIL_EAI_AGAIN, align 4
  store i32 %49, i32* %5, align 4
  br label %105

50:                                               ; preds = %46
  br label %51

51:                                               ; preds = %46, %50
  %52 = load i32, i32* @EVUTIL_EAI_FAIL, align 4
  store i32 %52, i32* %5, align 4
  br label %105

53:                                               ; preds = %46
  %54 = load i32, i32* @EVUTIL_EAI_NONAME, align 4
  store i32 %54, i32* %5, align 4
  br label %105

55:                                               ; preds = %46, %46
  %56 = load i32, i32* @EVUTIL_EAI_NODATA, align 4
  store i32 %56, i32* %5, align 4
  br label %105

57:                                               ; preds = %40
  %58 = load %struct.hostent*, %struct.hostent** %12, align 8
  %59 = getelementptr inbounds %struct.hostent, %struct.hostent* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %13, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %60, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %13, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @PF_UNSPEC, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* @EVUTIL_EAI_NONAME, align 4
  store i32 %70, i32* %5, align 4
  br label %105

71:                                               ; preds = %64, %57
  %72 = load %struct.hostent*, %struct.hostent** %12, align 8
  %73 = getelementptr inbounds %struct.hostent, %struct.hostent* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32, i32* @EVUTIL_EAI_NODATA, align 4
  store i32 %77, i32* %5, align 4
  br label %105

78:                                               ; preds = %71
  %79 = load %struct.hostent*, %struct.hostent** %12, align 8
  %80 = getelementptr inbounds %struct.hostent, %struct.hostent* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @PF_INET, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %78
  %85 = load %struct.hostent*, %struct.hostent** %12, align 8
  %86 = getelementptr inbounds %struct.hostent, %struct.hostent* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @PF_INET6, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* @EVUTIL_EAI_FAMILY, align 4
  store i32 %91, i32* %5, align 4
  br label %105

92:                                               ; preds = %84, %78
  %93 = load %struct.hostent*, %struct.hostent** %12, align 8
  %94 = load i32, i32* %10, align 4
  %95 = bitcast %struct.evutil_addrinfo* %13 to %struct.hostent_data*
  %96 = call %struct.hostent_data* @addrinfo_from_hostent(%struct.hostent* %93, i32 %94, %struct.hostent_data* %95)
  %97 = bitcast %struct.hostent_data* %96 to %struct.evutil_addrinfo*
  %98 = load %struct.evutil_addrinfo**, %struct.evutil_addrinfo*** %9, align 8
  store %struct.evutil_addrinfo* %97, %struct.evutil_addrinfo** %98, align 8
  %99 = load %struct.evutil_addrinfo**, %struct.evutil_addrinfo*** %9, align 8
  %100 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %99, align 8
  %101 = icmp ne %struct.evutil_addrinfo* %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %92
  %103 = load i32, i32* @EVUTIL_EAI_MEMORY, align 4
  store i32 %103, i32* %5, align 4
  br label %105

104:                                              ; preds = %92
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %104, %102, %90, %76, %69, %55, %53, %51, %48, %38
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @memcpy(%struct.hostent_data*, %struct.hostent_data*, i32) #1

declare dso_local i32 @memset(%struct.hostent_data*, i32, i32) #1

declare dso_local i32 @evutil_adjust_hints_for_addrconfig_(%struct.hostent_data*) #1

declare dso_local i32 @evutil_getaddrinfo_common_(i8*, i8*, %struct.hostent_data*, %struct.hostent_data**, i32*) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local %struct.hostent_data* @addrinfo_from_hostent(%struct.hostent*, i32, %struct.hostent_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
