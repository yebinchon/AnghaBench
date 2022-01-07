; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_if_nameindex.c_if_nameindex.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_if_nameindex.c_if_nameindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_nameindex = type { i8*, i64 }
%struct.ifaddrs = type { i8*, %struct.TYPE_2__*, %struct.ifaddrs* }
%struct.TYPE_2__ = type { i64 }
%struct.sockaddr_dl = type { i32 }

@AF_LINK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.if_nameindex* @if_nameindex() #0 {
  %1 = alloca %struct.if_nameindex*, align 8
  %2 = alloca %struct.ifaddrs*, align 8
  %3 = alloca %struct.ifaddrs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.if_nameindex*, align 8
  %7 = alloca %struct.if_nameindex*, align 8
  %8 = alloca i8*, align 8
  %9 = call i64 @getifaddrs(%struct.ifaddrs** %2)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  store %struct.if_nameindex* null, %struct.if_nameindex** %1, align 8
  br label %124

12:                                               ; preds = %0
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %13 = load %struct.ifaddrs*, %struct.ifaddrs** %2, align 8
  store %struct.ifaddrs* %13, %struct.ifaddrs** %3, align 8
  br label %14

14:                                               ; preds = %43, %12
  %15 = load %struct.ifaddrs*, %struct.ifaddrs** %3, align 8
  %16 = icmp ne %struct.ifaddrs* %15, null
  br i1 %16, label %17, label %47

17:                                               ; preds = %14
  %18 = load %struct.ifaddrs*, %struct.ifaddrs** %3, align 8
  %19 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %42

22:                                               ; preds = %17
  %23 = load %struct.ifaddrs*, %struct.ifaddrs** %3, align 8
  %24 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @AF_LINK, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %22
  %31 = load %struct.ifaddrs*, %struct.ifaddrs** %3, align 8
  %32 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @strlen(i8* %33)
  %35 = add nsw i64 %34, 1
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %4, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %30, %22, %17
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.ifaddrs*, %struct.ifaddrs** %3, align 8
  %45 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %44, i32 0, i32 2
  %46 = load %struct.ifaddrs*, %struct.ifaddrs** %45, align 8
  store %struct.ifaddrs* %46, %struct.ifaddrs** %3, align 8
  br label %14

47:                                               ; preds = %14
  %48 = load i32, i32* %4, align 4
  %49 = add i32 %48, 1
  %50 = zext i32 %49 to i64
  %51 = mul i64 %50, 16
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = add i64 %51, %53
  %55 = trunc i64 %54 to i32
  %56 = call i8* @malloc(i32 %55)
  store i8* %56, i8** %8, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = bitcast i8* %57 to %struct.if_nameindex*
  store %struct.if_nameindex* %58, %struct.if_nameindex** %6, align 8
  %59 = load %struct.if_nameindex*, %struct.if_nameindex** %6, align 8
  %60 = icmp eq %struct.if_nameindex* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %47
  br label %120

62:                                               ; preds = %47
  %63 = load i32, i32* %4, align 4
  %64 = add i32 %63, 1
  %65 = zext i32 %64 to i64
  %66 = mul i64 %65, 16
  %67 = load i8*, i8** %8, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 %66
  store i8* %68, i8** %8, align 8
  %69 = load %struct.if_nameindex*, %struct.if_nameindex** %6, align 8
  store %struct.if_nameindex* %69, %struct.if_nameindex** %7, align 8
  %70 = load %struct.ifaddrs*, %struct.ifaddrs** %2, align 8
  store %struct.ifaddrs* %70, %struct.ifaddrs** %3, align 8
  br label %71

71:                                               ; preds = %111, %62
  %72 = load %struct.ifaddrs*, %struct.ifaddrs** %3, align 8
  %73 = icmp ne %struct.ifaddrs* %72, null
  br i1 %73, label %74, label %115

74:                                               ; preds = %71
  %75 = load %struct.ifaddrs*, %struct.ifaddrs** %3, align 8
  %76 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = icmp ne %struct.TYPE_2__* %77, null
  br i1 %78, label %79, label %110

79:                                               ; preds = %74
  %80 = load %struct.ifaddrs*, %struct.ifaddrs** %3, align 8
  %81 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %80, i32 0, i32 1
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @AF_LINK, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %110

87:                                               ; preds = %79
  %88 = load %struct.ifaddrs*, %struct.ifaddrs** %3, align 8
  %89 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %88, i32 0, i32 1
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = bitcast %struct.TYPE_2__* %90 to %struct.sockaddr_dl*
  %92 = call i64 @LLINDEX(%struct.sockaddr_dl* %91)
  %93 = load %struct.if_nameindex*, %struct.if_nameindex** %7, align 8
  %94 = getelementptr inbounds %struct.if_nameindex, %struct.if_nameindex* %93, i32 0, i32 1
  store i64 %92, i64* %94, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = load %struct.if_nameindex*, %struct.if_nameindex** %7, align 8
  %97 = getelementptr inbounds %struct.if_nameindex, %struct.if_nameindex* %96, i32 0, i32 0
  store i8* %95, i8** %97, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = load %struct.ifaddrs*, %struct.ifaddrs** %3, align 8
  %100 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @strcpy(i8* %98, i8* %101)
  %103 = load %struct.if_nameindex*, %struct.if_nameindex** %7, align 8
  %104 = getelementptr inbounds %struct.if_nameindex, %struct.if_nameindex* %103, i32 1
  store %struct.if_nameindex* %104, %struct.if_nameindex** %7, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = call i64 @strlen(i8* %105)
  %107 = add nsw i64 %106, 1
  %108 = load i8*, i8** %8, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 %107
  store i8* %109, i8** %8, align 8
  br label %110

110:                                              ; preds = %87, %79, %74
  br label %111

111:                                              ; preds = %110
  %112 = load %struct.ifaddrs*, %struct.ifaddrs** %3, align 8
  %113 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %112, i32 0, i32 2
  %114 = load %struct.ifaddrs*, %struct.ifaddrs** %113, align 8
  store %struct.ifaddrs* %114, %struct.ifaddrs** %3, align 8
  br label %71

115:                                              ; preds = %71
  %116 = load %struct.if_nameindex*, %struct.if_nameindex** %7, align 8
  %117 = getelementptr inbounds %struct.if_nameindex, %struct.if_nameindex* %116, i32 0, i32 1
  store i64 0, i64* %117, align 8
  %118 = load %struct.if_nameindex*, %struct.if_nameindex** %7, align 8
  %119 = getelementptr inbounds %struct.if_nameindex, %struct.if_nameindex* %118, i32 0, i32 0
  store i8* null, i8** %119, align 8
  br label %120

120:                                              ; preds = %115, %61
  %121 = load %struct.ifaddrs*, %struct.ifaddrs** %2, align 8
  %122 = call i32 @freeifaddrs(%struct.ifaddrs* %121)
  %123 = load %struct.if_nameindex*, %struct.if_nameindex** %6, align 8
  store %struct.if_nameindex* %123, %struct.if_nameindex** %1, align 8
  br label %124

124:                                              ; preds = %120, %11
  %125 = load %struct.if_nameindex*, %struct.if_nameindex** %1, align 8
  ret %struct.if_nameindex* %125
}

declare dso_local i64 @getifaddrs(%struct.ifaddrs**) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @LLINDEX(%struct.sockaddr_dl*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @freeifaddrs(%struct.ifaddrs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
