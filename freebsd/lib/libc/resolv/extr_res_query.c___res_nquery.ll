; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_query.c___res_nquery.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_query.c___res_nquery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@MAXPACKET = common dso_local global i32 0, align 4
@QUERY = common dso_local global i32 0, align 4
@NO_RECOVERY = common dso_local global i32 0, align 4
@TRY_AGAIN = common dso_local global i32 0, align 4
@HOST_NOT_FOUND = common dso_local global i32 0, align 4
@NO_DATA = common dso_local global i32 0, align 4
@NS_OPT_NSID = common dso_local global i32 0, align 4
@RES_DEBUG = common dso_local global i32 0, align 4
@RES_F_EDNS0ERR = common dso_local global i32 0, align 4
@RES_NSID = common dso_local global i32 0, align 4
@RES_USE_DNSSEC = common dso_local global i32 0, align 4
@RES_USE_EDNS0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @res_nquery(%struct.TYPE_9__* %0, i8* %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %21 = load i32, i32* @MAXPACKET, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %14, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %15, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = bitcast i32* %25 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %16, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %17, align 4
  br label %30

30:                                               ; preds = %6
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  store i32 132, i32* %32, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %34 = load i32, i32* @QUERY, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = mul nuw i64 4, %22
  %39 = trunc i64 %38 to i32
  %40 = call i32 @res_nmkquery(%struct.TYPE_9__* %33, i32 %34, i8* %35, i32 %36, i32 %37, i32* null, i32 0, i32* null, i32* %24, i32 %39)
  store i32 %40, i32* %19, align 4
  %41 = load i32, i32* %19, align 4
  %42 = icmp sle i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %30
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %45 = load i32, i32* @NO_RECOVERY, align 4
  %46 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_9__* %44, i32 %45)
  %47 = load i32, i32* %19, align 4
  store i32 %47, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %96

48:                                               ; preds = %30
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %50 = load i32, i32* %19, align 4
  %51 = load i32*, i32** %12, align 8
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @res_nsend(%struct.TYPE_9__* %49, i32* %24, i32 %50, i32* %51, i32 %52)
  store i32 %53, i32* %19, align 4
  %54 = load i32, i32* %19, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %48
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %58 = load i32, i32* @TRY_AGAIN, align 4
  %59 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_9__* %57, i32 %58)
  %60 = load i32, i32* %19, align 4
  store i32 %60, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %96

61:                                               ; preds = %48
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 132
  br i1 %65, label %72, label %66

66:                                               ; preds = %61
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ntohs(i32 %69)
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %94

72:                                               ; preds = %66, %61
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  switch i32 %75, label %89 [
    i32 130, label %76
    i32 128, label %80
    i32 132, label %84
    i32 133, label %88
    i32 131, label %88
    i32 129, label %88
  ]

76:                                               ; preds = %72
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %78 = load i32, i32* @HOST_NOT_FOUND, align 4
  %79 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_9__* %77, i32 %78)
  br label %93

80:                                               ; preds = %72
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %82 = load i32, i32* @TRY_AGAIN, align 4
  %83 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_9__* %81, i32 %82)
  br label %93

84:                                               ; preds = %72
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %86 = load i32, i32* @NO_DATA, align 4
  %87 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_9__* %85, i32 %86)
  br label %93

88:                                               ; preds = %72, %72, %72
  br label %89

89:                                               ; preds = %72, %88
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %91 = load i32, i32* @NO_RECOVERY, align 4
  %92 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_9__* %90, i32 %91)
  br label %93

93:                                               ; preds = %89, %84, %80, %76
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %96

94:                                               ; preds = %66
  %95 = load i32, i32* %19, align 4
  store i32 %95, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %96

96:                                               ; preds = %94, %93, %56, %43
  %97 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %97)
  %98 = load i32, i32* %7, align 4
  ret i32 %98
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @res_nmkquery(%struct.TYPE_9__*, i32, i8*, i32, i32, i32*, i32, i32*, i32*, i32) #2

declare dso_local i32 @RES_SET_H_ERRNO(%struct.TYPE_9__*, i32) #2

declare dso_local i32 @res_nsend(%struct.TYPE_9__*, i32*, i32, i32*, i32) #2

declare dso_local i32 @ntohs(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
