; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ipfilter/tools/extr_ippool.c_setnodeaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ipfilter/tools/extr_ippool.c_setnodeaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_32__, %struct.TYPE_29__ }
%struct.TYPE_32__ = type { %struct.TYPE_31__, i8* }
%struct.TYPE_31__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_29__ = type { i64, i8*, %struct.TYPE_28__ }
%struct.TYPE_28__ = type { %struct.TYPE_27__, %struct.TYPE_26__ }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { i8* }
%struct.TYPE_24__ = type { i64, i32, %struct.TYPE_23__, %struct.TYPE_20__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__, %struct.TYPE_34__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32* }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_33__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_33__ = type { i8* }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i8* null, align 8
@IPLT_POOL = common dso_local global i32 0, align 4
@addrfamily_t = common dso_local global i32 0, align 4
@adf_addr = common dso_local global i32 0, align 4
@IPLT_HASH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setnodeaddr(i32 %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.in_addr, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_25__*, align 8
  %14 = alloca %struct.TYPE_24__*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = call i8* @strchr(i8* %15, i8 signext 58)
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %54

18:                                               ; preds = %4
  %19 = load i64, i64* @AF_INET, align 8
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %11, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = call i8* @strchr(i8* %21, i8 signext 47)
  store i8* %22, i8** %12, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %10, i32 0, i32 0
  store i32 -1, i32* %26, align 4
  br label %48

27:                                               ; preds = %18
  %28 = load i8*, i8** %12, align 8
  %29 = call i8* @strchr(i8* %28, i8 signext 46)
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load i64, i64* @AF_INET, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = call i32 @atoi(i8* %34)
  %36 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %10, i32 0, i32 0
  %37 = call i64 @ntomask(i64 %32, i32 %35, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 -1, i32* %5, align 4
  br label %135

40:                                               ; preds = %31
  br label %47

41:                                               ; preds = %27
  %42 = load i8*, i8** %12, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = call i8* @inet_addr(i8* %43)
  %45 = ptrtoint i8* %44 to i32
  %46 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %10, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %41, %40
  br label %48

48:                                               ; preds = %47, %25
  %49 = load i8*, i8** %12, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i8*, i8** %12, align 8
  store i8 0, i8* %52, align 1
  br label %53

53:                                               ; preds = %51, %48
  br label %67

54:                                               ; preds = %4
  %55 = load i8*, i8** @AF_INET6, align 8
  store i8* %55, i8** %11, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = call i8* @strchr(i8* %56, i8 signext 47)
  store i8* %57, i8** %12, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %10, i32 0, i32 0
  store i32 128, i32* %60, align 4
  br label %66

61:                                               ; preds = %54
  %62 = load i8*, i8** %12, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = call i32 @atoi(i8* %63)
  %65 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %10, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %61, %59
  br label %67

67:                                               ; preds = %66, %53
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @IPLT_POOL, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %107

71:                                               ; preds = %67
  %72 = load i8*, i8** %8, align 8
  %73 = bitcast i8* %72 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %73, %struct.TYPE_25__** %13, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = ptrtoint i8* %74 to i64
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %77, i32 0, i32 0
  store i64 %75, i64* %78, align 8
  %79 = load i32, i32* @addrfamily_t, align 4
  %80 = load i32, i32* @adf_addr, align 4
  %81 = call i8* @offsetof(i32 %79, i32 %80)
  %82 = getelementptr i8, i8* %81, i64 4
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %84, i32 0, i32 1
  store i8* %82, i8** %85, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = call i8* @inet_addr(i8* %86)
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %91, i32 0, i32 0
  store i8* %87, i8** %92, align 8
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %98, i32 0, i32 1
  store i8* %96, i8** %99, align 8
  %100 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %10, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %105, i32 0, i32 0
  store i32 %101, i32* %106, align 8
  br label %134

107:                                              ; preds = %67
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @IPLT_HASH, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %133

111:                                              ; preds = %107
  %112 = load i8*, i8** %8, align 8
  %113 = bitcast i8* %112 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %113, %struct.TYPE_24__** %14, align 8
  %114 = load i8*, i8** %11, align 8
  %115 = ptrtoint i8* %114 to i64
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 8
  %121 = load i8*, i8** %9, align 8
  %122 = call i8* @inet_addr(i8* %121)
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %125, i32 0, i32 0
  store i8* %122, i8** %126, align 8
  %127 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %10, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %131, i32 0, i32 0
  store i32 %128, i32* %132, align 8
  br label %133

133:                                              ; preds = %111, %107
  br label %134

134:                                              ; preds = %133, %71
  store i32 0, i32* %5, align 4
  br label %135

135:                                              ; preds = %134, %39
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @ntomask(i64, i32, i32*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8* @inet_addr(i8*) #1

declare dso_local i8* @offsetof(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
