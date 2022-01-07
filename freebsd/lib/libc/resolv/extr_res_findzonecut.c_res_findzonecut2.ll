; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_findzonecut.c_res_findzonecut2.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_findzonecut.c_res_findzonecut2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%union.res_sockaddr_union = type { i32 }

@NS_MAXDNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"START dname='%s' class=%s, zsize=%ld, naddrs=%d\00", align 1
@RES_PRF_HEAD2 = common dso_local global i32 0, align 4
@RES_PRF_HEAD1 = common dso_local global i32 0, align 4
@RES_PRF_HEADX = common dso_local global i32 0, align 4
@RES_PRF_QUES = common dso_local global i32 0, align 4
@RES_PRF_ANS = common dso_local global i32 0, align 4
@RES_PRF_AUTH = common dso_local global i32 0, align 4
@RES_PRF_ADD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"get the soa, and see if it has enough glue\00", align 1
@RES_EXHAUSTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"get the ns rrset and see if it has enough glue\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"get the missing glue and see if it's finally enough\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"FINISH n=%d (%s)\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"OK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @res_findzonecut2(%struct.TYPE_7__* %0, i8* %1, i32 %2, i32 %3, i8* %4, i64 %5, %union.res_sockaddr_union* %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %union.res_sockaddr_union*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store %union.res_sockaddr_union* %6, %union.res_sockaddr_union** %15, align 8
  store i32 %7, i32* %16, align 4
  %22 = load i32, i32* @NS_MAXDNAME, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %17, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %18, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @p_class(i32 %27)
  %29 = load i64, i64* %14, align 8
  %30 = load i32, i32* %16, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @DPRINTF(i8* %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %19, align 4
  %37 = load i32, i32* @RES_PRF_HEAD2, align 4
  %38 = load i32, i32* @RES_PRF_HEAD1, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @RES_PRF_HEADX, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @RES_PRF_QUES, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @RES_PRF_ANS, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @RES_PRF_AUTH, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @RES_PRF_ADD, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* %20, align 4
  %55 = call i32 @INIT_LIST(i32 %54)
  %56 = call i32 @DPRINTF(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i8*, i8** %13, align 8
  %62 = load i64, i64* %14, align 8
  %63 = trunc i64 %23 to i32
  %64 = call i32 @get_soa(%struct.TYPE_7__* %57, i8* %58, i32 %59, i32 %60, i8* %61, i64 %62, i8* %25, i32 %63, i32* %20)
  store i32 %64, i32* %21, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %77, label %66

66:                                               ; preds = %8
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @RES_EXHAUSTIVE, align 4
  %69 = and i32 %67, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %73 = load %union.res_sockaddr_union*, %union.res_sockaddr_union** %15, align 8
  %74 = load i32, i32* %16, align 4
  %75 = call i32 @satisfy(%struct.TYPE_7__* %72, i8* %25, i32* %20, %union.res_sockaddr_union* %73, i32 %74)
  store i32 %75, i32* %21, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71, %8
  br label %111

78:                                               ; preds = %71, %66
  %79 = call i32 @DPRINTF(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %81 = load i8*, i8** %13, align 8
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @get_ns(%struct.TYPE_7__* %80, i8* %81, i32 %82, i32 %83, i32* %20)
  store i32 %84, i32* %21, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %97, label %86

86:                                               ; preds = %78
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @RES_EXHAUSTIVE, align 4
  %89 = and i32 %87, %88
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %93 = load %union.res_sockaddr_union*, %union.res_sockaddr_union** %15, align 8
  %94 = load i32, i32* %16, align 4
  %95 = call i32 @satisfy(%struct.TYPE_7__* %92, i8* %25, i32* %20, %union.res_sockaddr_union* %93, i32 %94)
  store i32 %95, i32* %21, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %91, %78
  br label %111

98:                                               ; preds = %91, %86
  %99 = call i32 @DPRINTF(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @get_glue(%struct.TYPE_7__* %100, i32 %101, i32 %102, i32* %20)
  store i32 %103, i32* %21, align 4
  %104 = icmp sge i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %98
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %107 = load %union.res_sockaddr_union*, %union.res_sockaddr_union** %15, align 8
  %108 = load i32, i32* %16, align 4
  %109 = call i32 @satisfy(%struct.TYPE_7__* %106, i8* %25, i32* %20, %union.res_sockaddr_union* %107, i32 %108)
  store i32 %109, i32* %21, align 4
  br label %110

110:                                              ; preds = %105, %98
  br label %111

111:                                              ; preds = %110, %97, %77
  %112 = load i32, i32* %21, align 4
  %113 = load i32, i32* %21, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = load i32, i32* @errno, align 4
  %117 = call i8* @strerror(i32 %116)
  br label %119

118:                                              ; preds = %111
  br label %119

119:                                              ; preds = %118, %115
  %120 = phi i8* [ %117, %115 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %118 ]
  %121 = call i32 @DPRINTF(i8* %120)
  %122 = call i32 @free_nsrrset(i32* %20)
  %123 = load i32, i32* %19, align 4
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* %21, align 4
  %127 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %127)
  ret i32 %126
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DPRINTF(i8*) #2

declare dso_local i32 @p_class(i32) #2

declare dso_local i32 @INIT_LIST(i32) #2

declare dso_local i32 @get_soa(%struct.TYPE_7__*, i8*, i32, i32, i8*, i64, i8*, i32, i32*) #2

declare dso_local i32 @satisfy(%struct.TYPE_7__*, i8*, i32*, %union.res_sockaddr_union*, i32) #2

declare dso_local i32 @get_ns(%struct.TYPE_7__*, i8*, i32, i32, i32*) #2

declare dso_local i32 @get_glue(%struct.TYPE_7__*, i32, i32, i32*) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i32 @free_nsrrset(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
