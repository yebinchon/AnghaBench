; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_sourcefilter.c___inaddr_to_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_sourcefilter.c___inaddr_to_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddrs = type { i8*, i64, %struct.ifaddrs* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@AF_INET = common dso_local global i64 0, align 8
@AF_LINK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @__inaddr_to_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__inaddr_to_index(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.ifaddrs*, align 8
  %5 = alloca %struct.ifaddrs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  store i64 %0, i64* %3, align 8
  %9 = call i64 @getifaddrs(%struct.ifaddrs** %5)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %96

12:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  store i8* null, i8** %6, align 8
  %13 = load %struct.ifaddrs*, %struct.ifaddrs** %5, align 8
  store %struct.ifaddrs* %13, %struct.ifaddrs** %4, align 8
  br label %14

14:                                               ; preds = %44, %12
  %15 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %16 = icmp ne %struct.ifaddrs* %15, null
  br i1 %16, label %17, label %48

17:                                               ; preds = %14
  %18 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %19 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %8, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %23 = icmp ne %struct.TYPE_8__* %22, null
  br i1 %23, label %24, label %43

24:                                               ; preds = %17
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AF_INET, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %24
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %3, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %41 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %6, align 8
  br label %48

43:                                               ; preds = %31, %24, %17
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %46 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %45, i32 0, i32 2
  %47 = load %struct.ifaddrs*, %struct.ifaddrs** %46, align 8
  store %struct.ifaddrs* %47, %struct.ifaddrs** %4, align 8
  br label %14

48:                                               ; preds = %39, %14
  %49 = load i8*, i8** %6, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %92

52:                                               ; preds = %48
  %53 = load %struct.ifaddrs*, %struct.ifaddrs** %5, align 8
  store %struct.ifaddrs* %53, %struct.ifaddrs** %4, align 8
  br label %54

54:                                               ; preds = %83, %52
  %55 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %56 = icmp ne %struct.ifaddrs* %55, null
  br i1 %56, label %57, label %87

57:                                               ; preds = %54
  %58 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %59 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %61, %struct.TYPE_8__** %8, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %63 = icmp ne %struct.TYPE_8__* %62, null
  br i1 %63, label %64, label %82

64:                                               ; preds = %57
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @AF_LINK, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %64
  %72 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %73 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = call i64 @strcmp(i8* %74, i8* %75)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = call i32 @LLINDEX(i32* %80)
  store i32 %81, i32* %7, align 4
  br label %87

82:                                               ; preds = %71, %64, %57
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %85 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %84, i32 0, i32 2
  %86 = load %struct.ifaddrs*, %struct.ifaddrs** %85, align 8
  store %struct.ifaddrs* %86, %struct.ifaddrs** %4, align 8
  br label %54

87:                                               ; preds = %78, %54
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  br label %92

92:                                               ; preds = %87, %51
  %93 = load %struct.ifaddrs*, %struct.ifaddrs** %5, align 8
  %94 = call i32 @freeifaddrs(%struct.ifaddrs* %93)
  %95 = load i32, i32* %7, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %92, %11
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i64 @getifaddrs(%struct.ifaddrs**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @LLINDEX(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @freeifaddrs(%struct.ifaddrs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
