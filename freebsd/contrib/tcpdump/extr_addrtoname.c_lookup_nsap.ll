; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_addrtoname.c_lookup_nsap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_addrtoname.c_lookup_nsap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enamemem = type { i32*, i32, i32, i32, %struct.enamemem* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, i8*)* }

@nsaptable = common dso_local global %struct.enamemem* null, align 8
@HASHNAMESIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"lookup_nsap: malloc\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"lookup_nsap: calloc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.enamemem* (%struct.TYPE_5__*, i32*, i32)* @lookup_nsap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.enamemem* @lookup_nsap(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.enamemem*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.enamemem*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp sgt i32 %13, 6
  br i1 %14, label %15, label %45

15:                                               ; preds = %3
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = getelementptr inbounds i32, i32* %19, i64 -6
  store i32* %20, i32** %12, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 8
  %25 = load i32*, i32** %12, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %24, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32*, i32** %12, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 8
  %33 = load i32*, i32** %12, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %32, %35
  store i32 %36, i32* %9, align 4
  %37 = load i32*, i32** %12, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 4
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 8
  %41 = load i32*, i32** %12, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 5
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %40, %43
  store i32 %44, i32* %8, align 4
  br label %46

45:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %45, %15
  %47 = load %struct.enamemem*, %struct.enamemem** @nsaptable, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = xor i32 %48, %49
  %51 = load i32, i32* @HASHNAMESIZE, align 4
  %52 = sub nsw i32 %51, 1
  %53 = and i32 %50, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.enamemem, %struct.enamemem* %47, i64 %54
  store %struct.enamemem* %55, %struct.enamemem** %11, align 8
  br label %56

56:                                               ; preds = %104, %46
  %57 = load %struct.enamemem*, %struct.enamemem** %11, align 8
  %58 = getelementptr inbounds %struct.enamemem, %struct.enamemem* %57, i32 0, i32 4
  %59 = load %struct.enamemem*, %struct.enamemem** %58, align 8
  %60 = icmp ne %struct.enamemem* %59, null
  br i1 %60, label %61, label %105

61:                                               ; preds = %56
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.enamemem*, %struct.enamemem** %11, align 8
  %64 = getelementptr inbounds %struct.enamemem, %struct.enamemem* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %62, %67
  br i1 %68, label %69, label %100

69:                                               ; preds = %61
  %70 = load %struct.enamemem*, %struct.enamemem** %11, align 8
  %71 = getelementptr inbounds %struct.enamemem, %struct.enamemem* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %100

75:                                               ; preds = %69
  %76 = load %struct.enamemem*, %struct.enamemem** %11, align 8
  %77 = getelementptr inbounds %struct.enamemem, %struct.enamemem* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %100

81:                                               ; preds = %75
  %82 = load %struct.enamemem*, %struct.enamemem** %11, align 8
  %83 = getelementptr inbounds %struct.enamemem, %struct.enamemem* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %100

87:                                               ; preds = %81
  %88 = load i32*, i32** %6, align 8
  %89 = bitcast i32* %88 to i8*
  %90 = load %struct.enamemem*, %struct.enamemem** %11, align 8
  %91 = getelementptr inbounds %struct.enamemem, %struct.enamemem* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = bitcast i32* %93 to i8*
  %95 = load i32, i32* %7, align 4
  %96 = call i64 @memcmp(i8* %89, i8* %94, i32 %95)
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %87
  %99 = load %struct.enamemem*, %struct.enamemem** %11, align 8
  store %struct.enamemem* %99, %struct.enamemem** %4, align 8
  br label %162

100:                                              ; preds = %87, %81, %75, %69, %61
  %101 = load %struct.enamemem*, %struct.enamemem** %11, align 8
  %102 = getelementptr inbounds %struct.enamemem, %struct.enamemem* %101, i32 0, i32 4
  %103 = load %struct.enamemem*, %struct.enamemem** %102, align 8
  store %struct.enamemem* %103, %struct.enamemem** %11, align 8
  br label %104

104:                                              ; preds = %100
  br label %56

105:                                              ; preds = %56
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.enamemem*, %struct.enamemem** %11, align 8
  %108 = getelementptr inbounds %struct.enamemem, %struct.enamemem* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* %9, align 4
  %110 = load %struct.enamemem*, %struct.enamemem** %11, align 8
  %111 = getelementptr inbounds %struct.enamemem, %struct.enamemem* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %10, align 4
  %113 = load %struct.enamemem*, %struct.enamemem** %11, align 8
  %114 = getelementptr inbounds %struct.enamemem, %struct.enamemem* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 1
  %117 = call i64 @malloc(i32 %116)
  %118 = inttoptr i64 %117 to i32*
  %119 = load %struct.enamemem*, %struct.enamemem** %11, align 8
  %120 = getelementptr inbounds %struct.enamemem, %struct.enamemem* %119, i32 0, i32 0
  store i32* %118, i32** %120, align 8
  %121 = load %struct.enamemem*, %struct.enamemem** %11, align 8
  %122 = getelementptr inbounds %struct.enamemem, %struct.enamemem* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = icmp eq i32* %123, null
  br i1 %124, label %125, label %131

125:                                              ; preds = %105
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i32 (%struct.TYPE_5__*, i8*)*, i32 (%struct.TYPE_5__*, i8*)** %127, align 8
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %130 = call i32 %128(%struct.TYPE_5__* %129, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %131

131:                                              ; preds = %125, %105
  %132 = load i32, i32* %7, align 4
  %133 = load %struct.enamemem*, %struct.enamemem** %11, align 8
  %134 = getelementptr inbounds %struct.enamemem, %struct.enamemem* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  store i32 %132, i32* %136, align 4
  %137 = load %struct.enamemem*, %struct.enamemem** %11, align 8
  %138 = getelementptr inbounds %struct.enamemem, %struct.enamemem* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  %141 = bitcast i32* %140 to i8*
  %142 = load i32*, i32** %6, align 8
  %143 = bitcast i32* %142 to i8*
  %144 = load i32, i32* %7, align 4
  %145 = call i32 @memcpy(i8* %141, i8* %143, i32 %144)
  %146 = call i64 @calloc(i32 1, i32 32)
  %147 = inttoptr i64 %146 to %struct.enamemem*
  %148 = load %struct.enamemem*, %struct.enamemem** %11, align 8
  %149 = getelementptr inbounds %struct.enamemem, %struct.enamemem* %148, i32 0, i32 4
  store %struct.enamemem* %147, %struct.enamemem** %149, align 8
  %150 = load %struct.enamemem*, %struct.enamemem** %11, align 8
  %151 = getelementptr inbounds %struct.enamemem, %struct.enamemem* %150, i32 0, i32 4
  %152 = load %struct.enamemem*, %struct.enamemem** %151, align 8
  %153 = icmp eq %struct.enamemem* %152, null
  br i1 %153, label %154, label %160

154:                                              ; preds = %131
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  %157 = load i32 (%struct.TYPE_5__*, i8*)*, i32 (%struct.TYPE_5__*, i8*)** %156, align 8
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %159 = call i32 %157(%struct.TYPE_5__* %158, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %160

160:                                              ; preds = %154, %131
  %161 = load %struct.enamemem*, %struct.enamemem** %11, align 8
  store %struct.enamemem* %161, %struct.enamemem** %4, align 8
  br label %162

162:                                              ; preds = %160, %98
  %163 = load %struct.enamemem*, %struct.enamemem** %4, align 8
  ret %struct.enamemem* %163
}

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
