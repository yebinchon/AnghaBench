; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_trace.c_trace_if.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_trace.c_trace_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interface = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TRACEACTIONS = common dso_local global i32 0, align 4
@ftrace = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"%-3s interface %-4s \00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%-15s-->%-15s \00", align 1
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"metric=%d \00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"adj_inmetric=%u \00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"adj_outmetric=%u \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"fake_default=%u \00", align 1
@if_bits = common dso_local global i32 0, align 4
@is_bits = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trace_if(i8* %0, %struct.interface* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.interface*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.interface* %1, %struct.interface** %4, align 8
  %5 = load i32, i32* @TRACEACTIONS, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i32*, i32** @ftrace, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %2
  br label %108

11:                                               ; preds = %7
  %12 = call i32 (...) @lastlog()
  %13 = load i32*, i32** @ftrace, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = load %struct.interface*, %struct.interface** %4, align 8
  %16 = getelementptr inbounds %struct.interface, %struct.interface* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 (i32*, i8*, ...) @fprintf(i32* %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %14, i8* %17)
  %19 = load i32*, i32** @ftrace, align 8
  %20 = load %struct.interface*, %struct.interface** %4, align 8
  %21 = getelementptr inbounds %struct.interface, %struct.interface* %20, i32 0, i32 10
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @naddr_ntoa(i32 %22)
  %24 = load %struct.interface*, %struct.interface** %4, align 8
  %25 = getelementptr inbounds %struct.interface, %struct.interface* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @IFF_POINTOPOINT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %11
  %31 = load %struct.interface*, %struct.interface** %4, align 8
  %32 = getelementptr inbounds %struct.interface, %struct.interface* %31, i32 0, i32 9
  %33 = load i32, i32* %32, align 8
  br label %39

34:                                               ; preds = %11
  %35 = load %struct.interface*, %struct.interface** %4, align 8
  %36 = getelementptr inbounds %struct.interface, %struct.interface* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @htonl(i32 %37)
  br label %39

39:                                               ; preds = %34, %30
  %40 = phi i32 [ %33, %30 ], [ %38, %34 ]
  %41 = load %struct.interface*, %struct.interface** %4, align 8
  %42 = getelementptr inbounds %struct.interface, %struct.interface* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 8
  %44 = call i8* @addrname(i32 %40, i32 %43, i32 1)
  %45 = call i32 (i32*, i8*, ...) @fprintf(i32* %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %23, i8* %44)
  %46 = load %struct.interface*, %struct.interface** %4, align 8
  %47 = getelementptr inbounds %struct.interface, %struct.interface* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %39
  %51 = load i32*, i32** @ftrace, align 8
  %52 = load %struct.interface*, %struct.interface** %4, align 8
  %53 = getelementptr inbounds %struct.interface, %struct.interface* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i32*, i8*, ...) @fprintf(i32* %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %50, %39
  %57 = load %struct.interface*, %struct.interface** %4, align 8
  %58 = getelementptr inbounds %struct.interface, %struct.interface* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load i32*, i32** @ftrace, align 8
  %63 = load %struct.interface*, %struct.interface** %4, align 8
  %64 = getelementptr inbounds %struct.interface, %struct.interface* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (i32*, i8*, ...) @fprintf(i32* %62, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %61, %56
  %68 = load %struct.interface*, %struct.interface** %4, align 8
  %69 = getelementptr inbounds %struct.interface, %struct.interface* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load i32*, i32** @ftrace, align 8
  %74 = load %struct.interface*, %struct.interface** %4, align 8
  %75 = getelementptr inbounds %struct.interface, %struct.interface* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i32*, i8*, ...) @fprintf(i32* %73, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %72, %67
  %79 = load %struct.interface*, %struct.interface** %4, align 8
  %80 = getelementptr inbounds %struct.interface, %struct.interface* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @IS_RIP_OUT_OFF(i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %95, label %84

84:                                               ; preds = %78
  %85 = load %struct.interface*, %struct.interface** %4, align 8
  %86 = getelementptr inbounds %struct.interface, %struct.interface* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load i32*, i32** @ftrace, align 8
  %91 = load %struct.interface*, %struct.interface** %4, align 8
  %92 = getelementptr inbounds %struct.interface, %struct.interface* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (i32*, i8*, ...) @fprintf(i32* %90, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %89, %84, %78
  %96 = load i32, i32* @if_bits, align 4
  %97 = load %struct.interface*, %struct.interface** %4, align 8
  %98 = getelementptr inbounds %struct.interface, %struct.interface* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @trace_bits(i32 %96, i32 %99, i32 0)
  %101 = load i32, i32* @is_bits, align 4
  %102 = load %struct.interface*, %struct.interface** %4, align 8
  %103 = getelementptr inbounds %struct.interface, %struct.interface* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @trace_bits(i32 %101, i32 %104, i32 0)
  %106 = load i32*, i32** @ftrace, align 8
  %107 = call i32 @fputc(i8 signext 10, i32* %106)
  br label %108

108:                                              ; preds = %95, %10
  ret void
}

declare dso_local i32 @lastlog(...) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @naddr_ntoa(i32) #1

declare dso_local i8* @addrname(i32, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @IS_RIP_OUT_OFF(i32) #1

declare dso_local i32 @trace_bits(i32, i32, i32) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
