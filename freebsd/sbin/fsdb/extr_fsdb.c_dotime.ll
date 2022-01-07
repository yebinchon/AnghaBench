; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsdb/extr_fsdb.c_dotime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsdb/extr_fsdb.c_dotime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"invalid nanoseconds\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"date format: YYYYMMDDHHMMSS[.nsec]\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"date/time out of range\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dotime(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.tm, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i8* @strchr(i8* %12, i8 signext 46)
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %38

16:                                               ; preds = %3
  %17 = load i8*, i8** %8, align 8
  store i8 0, i8* %17, align 1
  %18 = load i8*, i8** %8, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %8, align 8
  %20 = call i32 @strtoul(i8* %19, i8** %9, i32 0)
  store i32 %20, i32* %11, align 4
  %21 = load i8*, i8** %9, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = icmp eq i8* %21, %22
  br i1 %23, label %35, label %24

24:                                               ; preds = %16
  %25 = load i8*, i8** %9, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %11, align 4
  %31 = icmp sge i32 %30, 1000000000
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32, %29, %24, %16
  %36 = call i32 @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %44

37:                                               ; preds = %32
  br label %39

38:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %38, %37
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @strlen(i8* %40)
  %42 = icmp ne i32 %41, 14
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  br label %44

44:                                               ; preds = %64, %43, %35
  %45 = call i32 @warnx(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %198

46:                                               ; preds = %39
  %47 = load i32, i32* %11, align 4
  %48 = load i32*, i32** %7, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i8*, i8** %5, align 8
  store i8* %49, i8** %8, align 8
  br label %50

50:                                               ; preds = %66, %46
  %51 = load i8*, i8** %8, align 8
  %52 = load i8, i8* %51, align 1
  %53 = icmp ne i8 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %50
  %55 = load i8*, i8** %8, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp slt i32 %57, 48
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load i8*, i8** %8, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp sgt i32 %62, 57
  br i1 %63, label %64, label %65

64:                                               ; preds = %59, %54
  br label %44

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65
  %67 = load i8*, i8** %8, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %8, align 8
  br label %50

69:                                               ; preds = %50
  %70 = load i8*, i8** %5, align 8
  store i8* %70, i8** %8, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %8, align 8
  %73 = load i8, i8* %71, align 1
  %74 = sext i8 %73 to i32
  %75 = sub nsw i32 %74, 48
  %76 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 0
  store i32 %75, i32* %76, align 4
  %77 = load i8*, i8** %8, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %8, align 8
  %79 = load i8, i8* %77, align 1
  %80 = sext i8 %79 to i32
  %81 = sub nsw i32 %80, 48
  %82 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %83, 10
  %85 = add nsw i32 %81, %84
  %86 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 0
  store i32 %85, i32* %86, align 4
  %87 = load i8*, i8** %8, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %8, align 8
  %89 = load i8, i8* %87, align 1
  %90 = sext i8 %89 to i32
  %91 = sub nsw i32 %90, 48
  %92 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 %93, 10
  %95 = add nsw i32 %91, %94
  %96 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 0
  store i32 %95, i32* %96, align 4
  %97 = load i8*, i8** %8, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %8, align 8
  %99 = load i8, i8* %97, align 1
  %100 = sext i8 %99 to i32
  %101 = sub nsw i32 %100, 48
  %102 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 %103, 10
  %105 = add nsw i32 %101, %104
  %106 = sub nsw i32 %105, 1900
  %107 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 0
  store i32 %106, i32* %107, align 4
  %108 = load i8*, i8** %8, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %8, align 8
  %110 = load i8, i8* %108, align 1
  %111 = sext i8 %110 to i32
  %112 = sub nsw i32 %111, 48
  %113 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 1
  store i32 %112, i32* %113, align 4
  %114 = load i8*, i8** %8, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %8, align 8
  %116 = load i8, i8* %114, align 1
  %117 = sext i8 %116 to i32
  %118 = sub nsw i32 %117, 48
  %119 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = mul nsw i32 %120, 10
  %122 = add nsw i32 %118, %121
  %123 = sub nsw i32 %122, 1
  %124 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 1
  store i32 %123, i32* %124, align 4
  %125 = load i8*, i8** %8, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %8, align 8
  %127 = load i8, i8* %125, align 1
  %128 = sext i8 %127 to i32
  %129 = sub nsw i32 %128, 48
  %130 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 2
  store i32 %129, i32* %130, align 4
  %131 = load i8*, i8** %8, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %8, align 8
  %133 = load i8, i8* %131, align 1
  %134 = sext i8 %133 to i32
  %135 = sub nsw i32 %134, 48
  %136 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = mul nsw i32 %137, 10
  %139 = add nsw i32 %135, %138
  %140 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 2
  store i32 %139, i32* %140, align 4
  %141 = load i8*, i8** %8, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %8, align 8
  %143 = load i8, i8* %141, align 1
  %144 = sext i8 %143 to i32
  %145 = sub nsw i32 %144, 48
  %146 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 3
  store i32 %145, i32* %146, align 4
  %147 = load i8*, i8** %8, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %8, align 8
  %149 = load i8, i8* %147, align 1
  %150 = sext i8 %149 to i32
  %151 = sub nsw i32 %150, 48
  %152 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = mul nsw i32 %153, 10
  %155 = add nsw i32 %151, %154
  %156 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 3
  store i32 %155, i32* %156, align 4
  %157 = load i8*, i8** %8, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %8, align 8
  %159 = load i8, i8* %157, align 1
  %160 = sext i8 %159 to i32
  %161 = sub nsw i32 %160, 48
  %162 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 4
  store i32 %161, i32* %162, align 4
  %163 = load i8*, i8** %8, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %8, align 8
  %165 = load i8, i8* %163, align 1
  %166 = sext i8 %165 to i32
  %167 = sub nsw i32 %166, 48
  %168 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 4
  %169 = load i32, i32* %168, align 4
  %170 = mul nsw i32 %169, 10
  %171 = add nsw i32 %167, %170
  %172 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 4
  store i32 %171, i32* %172, align 4
  %173 = load i8*, i8** %8, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %8, align 8
  %175 = load i8, i8* %173, align 1
  %176 = sext i8 %175 to i32
  %177 = sub nsw i32 %176, 48
  %178 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 5
  store i32 %177, i32* %178, align 4
  %179 = load i8*, i8** %8, align 8
  %180 = getelementptr inbounds i8, i8* %179, i32 1
  store i8* %180, i8** %8, align 8
  %181 = load i8, i8* %179, align 1
  %182 = sext i8 %181 to i32
  %183 = sub nsw i32 %182, 48
  %184 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 5
  %185 = load i32, i32* %184, align 4
  %186 = mul nsw i32 %185, 10
  %187 = add nsw i32 %183, %186
  %188 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 5
  store i32 %187, i32* %188, align 4
  %189 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 6
  store i32 -1, i32* %189, align 4
  %190 = call i32 @mktime(%struct.tm* %10)
  %191 = load i32*, i32** %6, align 8
  store i32 %190, i32* %191, align 4
  %192 = load i32*, i32** %6, align 8
  %193 = load i32, i32* %192, align 4
  %194 = icmp eq i32 %193, -1
  br i1 %194, label %195, label %197

195:                                              ; preds = %69
  %196 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %198

197:                                              ; preds = %69
  store i32 0, i32* %4, align 4
  br label %198

198:                                              ; preds = %197, %195, %44
  %199 = load i32, i32* %4, align 4
  ret i32 %199
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @mktime(%struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
