; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/clockstuff/extr_chutest.c_process_ldisc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/clockstuff/extr_chutest.c_process_ldisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chucode = type { i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.timeval = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Expected %d, got %d\0A\00", align 1
@doprocess = common dso_local global i64 0, align 8
@NCHUCHARS = common dso_local global i32 0, align 4
@JAN_1970 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"%x%x\09%lu.%06lu\09%lu.%06lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"%s: zero returned on read\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"read()\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_ldisc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.chucode, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.timeval, align 8
  %8 = alloca %struct.TYPE_4__, align 4
  store i32 %0, i32* %3, align 4
  br label %9

9:                                                ; preds = %135, %18, %1
  %10 = load i32, i32* %3, align 4
  %11 = bitcast %struct.chucode* %4 to i8*
  %12 = call i32 @read(i32 %10, i8* %11, i32 16)
  store i32 %12, i32* %5, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %136

14:                                               ; preds = %9
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ne i64 %16, 16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* @stderr, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 16, i32 %20)
  br label %9

22:                                               ; preds = %14
  %23 = load i64, i64* @doprocess, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.chucode, %struct.chucode* %4, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = load i32, i32* @NCHUCHARS, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %30
  %32 = call i32 @TVTOTS(%struct.TYPE_5__* %31, %struct.TYPE_4__* %8)
  %33 = load i64, i64* @JAN_1970, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %33
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %34, align 4
  call void (%struct.chucode*, %struct.TYPE_4__*, ...) bitcast (void (...)* @chufilter to void (%struct.chucode*, %struct.TYPE_4__*, ...)*)(%struct.chucode* %4, %struct.TYPE_4__* %8)
  br label %135

39:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %131, %39
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @NCHUCHARS, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %134

44:                                               ; preds = %40
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i64 0, i64* %49, align 8
  br label %96

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.chucode, %struct.chucode* %4, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.chucode, %struct.chucode* %4, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %57, %65
  %67 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i64 %66, i64* %67, align 8
  %68 = getelementptr inbounds %struct.chucode, %struct.chucode* %4, i32 0, i32 1
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.chucode, %struct.chucode* %4, i32 0, i32 1
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = sub nsw i64 %74, %82
  %84 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  store i64 %83, i64* %84, align 8
  %85 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %50
  %89 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, -1
  store i64 %91, i64* %89, align 8
  %92 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, 1000000
  store i64 %94, i64* %92, align 8
  br label %95

95:                                               ; preds = %88, %50
  br label %96

96:                                               ; preds = %95, %47
  %97 = getelementptr inbounds %struct.chucode, %struct.chucode* %4, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, 15
  %104 = getelementptr inbounds %struct.chucode, %struct.chucode* %4, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = ashr i32 %109, 4
  %111 = and i32 %110, 15
  %112 = getelementptr inbounds %struct.chucode, %struct.chucode* %4, i32 0, i32 1
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds %struct.chucode, %struct.chucode* %4, i32 0, i32 1
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %103, i32 %111, i64 %118, i64 %125, i64 %127, i64 %129)
  br label %131

131:                                              ; preds = %96
  %132 = load i32, i32* %6, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %6, align 4
  br label %40

134:                                              ; preds = %40
  br label %135

135:                                              ; preds = %134, %25
  br label %9

136:                                              ; preds = %9
  %137 = load i32, i32* %5, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %136
  %140 = load i32, i32* @stderr, align 4
  %141 = load i8*, i8** @progname, align 8
  %142 = call i32 (i32, i8*, ...) @fprintf(i32 %140, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %141)
  %143 = call i32 @exit(i32 1) #3
  unreachable

144:                                              ; preds = %136
  %145 = call i32 @error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  br label %146

146:                                              ; preds = %144
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @TVTOTS(%struct.TYPE_5__*, %struct.TYPE_4__*) #1

declare dso_local void @chufilter(...) #1

declare dso_local i32 @printf(i8*, i32, i32, i64, i64, i64, i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @error(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
