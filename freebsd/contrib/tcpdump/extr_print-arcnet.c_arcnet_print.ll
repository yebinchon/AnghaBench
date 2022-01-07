; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-arcnet.c_arcnet_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-arcnet.c_arcnet_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.arc_header = type { i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"%02x %02x %d: \00", align 1
@arctypemap = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"%02x %02x %s %d: \00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"%02x %02x %s seqid %04x %d: \00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"%02x %02x %s seqid %04x (first of %d fragments) %d: \00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"%02x %02x %s seqid %04x (fragment %d) %d: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*, i32, i32, i32, i32)* @arcnet_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcnet_print(%struct.TYPE_4__* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.arc_header*, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = bitcast i32* %15 to %struct.arc_header*
  store %struct.arc_header* %16, %struct.arc_header** %13, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %6
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %23 = load %struct.arc_header*, %struct.arc_header** %13, align 8
  %24 = getelementptr inbounds %struct.arc_header, %struct.arc_header* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.arc_header*, %struct.arc_header** %13, align 8
  %27 = getelementptr inbounds %struct.arc_header, %struct.arc_header* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to %struct.TYPE_4__*
  %32 = call i32 @ND_PRINT(%struct.TYPE_4__* %31)
  br label %109

33:                                               ; preds = %6
  %34 = load i32, i32* @arctypemap, align 4
  %35 = load %struct.arc_header*, %struct.arc_header** %13, align 8
  %36 = getelementptr inbounds %struct.arc_header, %struct.arc_header* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @tok2str(i32 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  store i8* %38, i8** %14, align 8
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %33
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %43 = load %struct.arc_header*, %struct.arc_header** %13, align 8
  %44 = getelementptr inbounds %struct.arc_header, %struct.arc_header* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.arc_header*, %struct.arc_header** %13, align 8
  %47 = getelementptr inbounds %struct.arc_header, %struct.arc_header* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %14, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to %struct.TYPE_4__*
  %53 = call i32 @ND_PRINT(%struct.TYPE_4__* %52)
  br label %109

54:                                               ; preds = %33
  %55 = load i32, i32* %11, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %54
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %59 = load %struct.arc_header*, %struct.arc_header** %13, align 8
  %60 = getelementptr inbounds %struct.arc_header, %struct.arc_header* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.arc_header*, %struct.arc_header** %13, align 8
  %63 = getelementptr inbounds %struct.arc_header, %struct.arc_header* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i8*, i8** %14, align 8
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to %struct.TYPE_4__*
  %70 = call i32 @ND_PRINT(%struct.TYPE_4__* %69)
  br label %109

71:                                               ; preds = %54
  %72 = load i32, i32* %11, align 4
  %73 = and i32 %72, 1
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %92

75:                                               ; preds = %71
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %77 = load %struct.arc_header*, %struct.arc_header** %13, align 8
  %78 = getelementptr inbounds %struct.arc_header, %struct.arc_header* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.arc_header*, %struct.arc_header** %13, align 8
  %81 = getelementptr inbounds %struct.arc_header, %struct.arc_header* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i8*, i8** %14, align 8
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, 3
  %87 = sdiv i32 %86, 2
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to %struct.TYPE_4__*
  %91 = call i32 @ND_PRINT(%struct.TYPE_4__* %90)
  br label %109

92:                                               ; preds = %71
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %94 = load %struct.arc_header*, %struct.arc_header** %13, align 8
  %95 = getelementptr inbounds %struct.arc_header, %struct.arc_header* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.arc_header*, %struct.arc_header** %13, align 8
  %98 = getelementptr inbounds %struct.arc_header, %struct.arc_header* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i8*, i8** %14, align 8
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %11, align 4
  %103 = sdiv i32 %102, 2
  %104 = add nsw i32 %103, 1
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = inttoptr i64 %106 to %struct.TYPE_4__*
  %108 = call i32 @ND_PRINT(%struct.TYPE_4__* %107)
  br label %109

109:                                              ; preds = %21, %41, %57, %92, %75
  ret void
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_4__*) #1

declare dso_local i8* @tok2str(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
