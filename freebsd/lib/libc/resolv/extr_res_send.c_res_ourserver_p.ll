; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_send.c_res_ourserver_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_send.c_res_ourserver_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.sockaddr_in6 = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32* }

@INADDR_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @res_ourserver_p(%struct.TYPE_8__* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca %struct.sockaddr_in6*, align 8
  %9 = alloca %struct.sockaddr_in6*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  %12 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %13 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %122 [
    i32 129, label %15
    i32 128, label %67
  ]

15:                                               ; preds = %2
  %16 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %17 = bitcast %struct.sockaddr* %16 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %17, %struct.sockaddr_in** %6, align 8
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %63, %15
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %66

24:                                               ; preds = %18
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i64 @get_nsaddr(%struct.TYPE_8__* %25, i32 %26)
  %28 = inttoptr i64 %27 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %28, %struct.sockaddr_in** %7, align 8
  %29 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %31, %34
  br i1 %35, label %36, label %62

36:                                               ; preds = %24
  %37 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %41 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %39, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %36
  %45 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %46 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @INADDR_ANY, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %61, label %51

51:                                               ; preds = %44
  %52 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %53 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %57 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %55, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %51, %44
  store i32 1, i32* %3, align 4
  br label %124

62:                                               ; preds = %51, %36, %24
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %10, align 4
  br label %18

66:                                               ; preds = %18
  br label %123

67:                                               ; preds = %2
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %69 = call i32* @EXT(%struct.TYPE_8__* %68)
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  store i32* %69, i32** %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %123

75:                                               ; preds = %67
  %76 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %77 = bitcast %struct.sockaddr* %76 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %77, %struct.sockaddr_in6** %8, align 8
  store i32 0, i32* %10, align 4
  br label %78

78:                                               ; preds = %118, %75
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %121

84:                                               ; preds = %78
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i64 @get_nsaddr(%struct.TYPE_8__* %85, i32 %86)
  %88 = inttoptr i64 %87 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %88, %struct.sockaddr_in6** %9, align 8
  %89 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %90 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %93 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %91, %94
  br i1 %95, label %96, label %117

96:                                               ; preds = %84
  %97 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %98 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %101 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %99, %102
  br i1 %103, label %104, label %117

104:                                              ; preds = %96
  %105 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %106 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %105, i32 0, i32 0
  %107 = call i32 @IN6_IS_ADDR_UNSPECIFIED(i32* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %116, label %109

109:                                              ; preds = %104
  %110 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %111 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %110, i32 0, i32 0
  %112 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %113 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %112, i32 0, i32 0
  %114 = call i32 @IN6_ARE_ADDR_EQUAL(i32* %111, i32* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %109, %104
  store i32 1, i32* %3, align 4
  br label %124

117:                                              ; preds = %109, %96, %84
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %10, align 4
  br label %78

121:                                              ; preds = %78
  br label %123

122:                                              ; preds = %2
  br label %123

123:                                              ; preds = %122, %121, %74, %66
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %123, %116, %61
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i64 @get_nsaddr(%struct.TYPE_8__*, i32) #1

declare dso_local i32* @EXT(%struct.TYPE_8__*) #1

declare dso_local i32 @IN6_IS_ADDR_UNSPECIFIED(i32*) #1

declare dso_local i32 @IN6_ARE_ADDR_EQUAL(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
