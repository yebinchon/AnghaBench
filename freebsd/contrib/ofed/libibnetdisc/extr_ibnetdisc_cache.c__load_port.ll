; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibnetdisc/extr_ibnetdisc_cache.c__load_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibnetdisc/extr_ibnetdisc_cache.c__load_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i8*, %struct.TYPE_7__, i32, i32, i32, i8*, i8*, i32, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i8*, i32 }

@IBND_FABRIC_CACHE_BUFLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"OOM: port_cache\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"OOM: port\0A\00", align 1
@IBND_PORT_CACHE_LEN = common dso_local global i32 0, align 4
@IB_SMP_DATA_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @_load_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_load_port(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %13 = load i32, i32* @IBND_FABRIC_CACHE_BUFLEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i8*, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %9, align 8
  store i64 0, i64* %10, align 8
  %17 = call i64 @malloc(i32 80)
  %18 = inttoptr i64 %17 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %8, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %20 = icmp ne %struct.TYPE_8__* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = call i32 @IBND_DEBUG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %130

23:                                               ; preds = %2
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %25 = call i32 @memset(%struct.TYPE_8__* %24, i8 signext 0, i32 80)
  %26 = call i64 @malloc(i32 80)
  %27 = inttoptr i64 %26 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %9, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %29 = icmp ne %struct.TYPE_8__* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %23
  %31 = call i32 @IBND_DEBUG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %33 = call i32 @free(%struct.TYPE_8__* %32)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %130

34:                                               ; preds = %23
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %36 = call i32 @memset(%struct.TYPE_8__* %35, i8 signext 0, i32 80)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 9
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %39, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @IBND_PORT_CACHE_LEN, align 4
  %42 = call i64 @ibnd_read(i32 %40, i8** %16, i32 %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %125

45:                                               ; preds = %34
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr inbounds i8*, i8** %16, i64 %46
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 8
  %50 = call i64 @_unmarshall64(i8** %47, i32* %49)
  %51 = load i64, i64* %10, align 8
  %52 = add i64 %51, %50
  store i64 %52, i64* %10, align 8
  %53 = load i64, i64* %10, align 8
  %54 = getelementptr inbounds i8*, i8** %16, i64 %53
  %55 = call i64 @_unmarshall8(i8** %54, i8** %11)
  %56 = load i64, i64* %10, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %10, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 7
  store i8* %58, i8** %60, align 8
  %61 = load i64, i64* %10, align 8
  %62 = getelementptr inbounds i8*, i8** %16, i64 %61
  %63 = call i64 @_unmarshall8(i8** %62, i8** %11)
  %64 = load i64, i64* %10, align 8
  %65 = add i64 %64, %63
  store i64 %65, i64* %10, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 6
  store i8* %66, i8** %68, align 8
  %69 = load i64, i64* %10, align 8
  %70 = getelementptr inbounds i8*, i8** %16, i64 %69
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 5
  %73 = call i64 @_unmarshall16(i8** %70, i32* %72)
  %74 = load i64, i64* %10, align 8
  %75 = add i64 %74, %73
  store i64 %75, i64* %10, align 8
  %76 = load i64, i64* %10, align 8
  %77 = getelementptr inbounds i8*, i8** %16, i64 %76
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = call i64 @_unmarshall8(i8** %77, i8** %79)
  %81 = load i64, i64* %10, align 8
  %82 = add i64 %81, %80
  store i64 %82, i64* %10, align 8
  %83 = load i64, i64* %10, align 8
  %84 = getelementptr inbounds i8*, i8** %16, i64 %83
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @IB_SMP_DATA_SIZE, align 4
  %89 = call i64 @_unmarshall_buf(i8** %84, i32 %87, i32 %88)
  %90 = load i64, i64* %10, align 8
  %91 = add i64 %90, %89
  store i64 %91, i64* %10, align 8
  %92 = load i64, i64* %10, align 8
  %93 = getelementptr inbounds i8*, i8** %16, i64 %92
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 3
  %96 = call i64 @_unmarshall64(i8** %93, i32* %95)
  %97 = load i64, i64* %10, align 8
  %98 = add i64 %97, %96
  store i64 %98, i64* %10, align 8
  %99 = load i64, i64* %10, align 8
  %100 = getelementptr inbounds i8*, i8** %16, i64 %99
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = call i64 @_unmarshall8(i8** %100, i8** %102)
  %104 = load i64, i64* %10, align 8
  %105 = add i64 %104, %103
  store i64 %105, i64* %10, align 8
  %106 = load i64, i64* %10, align 8
  %107 = getelementptr inbounds i8*, i8** %16, i64 %106
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = call i64 @_unmarshall64(i8** %107, i32* %110)
  %112 = load i64, i64* %10, align 8
  %113 = add i64 %112, %111
  store i64 %113, i64* %10, align 8
  %114 = load i64, i64* %10, align 8
  %115 = getelementptr inbounds i8*, i8** %16, i64 %114
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = call i64 @_unmarshall8(i8** %115, i8** %118)
  %120 = load i64, i64* %10, align 8
  %121 = add i64 %120, %119
  store i64 %121, i64* %10, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %123 = load i32*, i32** %5, align 8
  %124 = call i32 @store_port_cache(%struct.TYPE_8__* %122, i32* %123)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %130

125:                                              ; preds = %44
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %127 = call i32 @free(%struct.TYPE_8__* %126)
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %129 = call i32 @free(%struct.TYPE_8__* %128)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %130

130:                                              ; preds = %125, %45, %30, %21
  %131 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %131)
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @malloc(i32) #2

declare dso_local i32 @IBND_DEBUG(i8*) #2

declare dso_local i32 @memset(%struct.TYPE_8__*, i8 signext, i32) #2

declare dso_local i32 @free(%struct.TYPE_8__*) #2

declare dso_local i64 @ibnd_read(i32, i8**, i32) #2

declare dso_local i64 @_unmarshall64(i8**, i32*) #2

declare dso_local i64 @_unmarshall8(i8**, i8**) #2

declare dso_local i64 @_unmarshall16(i8**, i32*) #2

declare dso_local i64 @_unmarshall_buf(i8**, i32, i32) #2

declare dso_local i32 @store_port_cache(%struct.TYPE_8__*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
