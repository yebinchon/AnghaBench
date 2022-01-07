; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netcat/extr_netcat.c_build_ports.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netcat/extr_netcat.c_build_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PORT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"port number %s: %s\00", align 1
@PORT_MAX_LEN = common dso_local global i32 0, align 4
@portlist = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@rflag = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @build_ports(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %8, align 4
  %11 = load i8*, i8** %2, align 8
  %12 = call i8* @strchr(i8* %11, i8 signext 45)
  store i8* %12, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %121

14:                                               ; preds = %1
  %15 = load i8*, i8** %4, align 8
  store i8 0, i8* %15, align 1
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %4, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* @PORT_MAX, align 4
  %20 = call i32 @strtonum(i8* %18, i32 1, i32 %19, i8** %3)
  store i32 %20, i32* %5, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %14
  %24 = load i8*, i8** %3, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %24, i8* %25)
  br label %27

27:                                               ; preds = %23, %14
  %28 = load i8*, i8** %2, align 8
  %29 = load i32, i32* @PORT_MAX, align 4
  %30 = call i32 @strtonum(i8* %28, i32 1, i32 %29, i8** %3)
  store i32 %30, i32* %6, align 4
  %31 = load i8*, i8** %3, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i8*, i8** %3, align 8
  %35 = load i8*, i8** %2, align 8
  %36 = call i32 @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %34, i8* %35)
  br label %37

37:                                               ; preds = %33, %27
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %41, %37
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %77, %45
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp sle i32 %48, %49
  br i1 %50, label %51, label %80

51:                                               ; preds = %47
  %52 = load i32, i32* @PORT_MAX_LEN, align 4
  %53 = call i8* @calloc(i32 1, i32 %52)
  %54 = load i8**, i8*** @portlist, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  store i8* %53, i8** %57, align 8
  %58 = load i8**, i8*** @portlist, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %51
  %65 = call i32 @err(i32 1, i32* null)
  br label %66

66:                                               ; preds = %64, %51
  %67 = load i8**, i8*** @portlist, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = load i32, i32* @PORT_MAX_LEN, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @snprintf(i8* %71, i32 %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %66
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %47

80:                                               ; preds = %47
  %81 = load i64, i64* @rflag, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %120

83:                                               ; preds = %80
  store i32 0, i32* %8, align 4
  br label %84

84:                                               ; preds = %116, %83
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %6, align 4
  %88 = sub nsw i32 %86, %87
  %89 = icmp sle i32 %85, %88
  br i1 %89, label %90, label %119

90:                                               ; preds = %84
  %91 = call i32 (...) @arc4random()
  %92 = and i32 %91, 65535
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %6, align 4
  %95 = sub nsw i32 %93, %94
  %96 = srem i32 %92, %95
  store i32 %96, i32* %9, align 4
  %97 = load i8**, i8*** @portlist, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %97, i64 %99
  %101 = load i8*, i8** %100, align 8
  store i8* %101, i8** %10, align 8
  %102 = load i8**, i8*** @portlist, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = load i8**, i8*** @portlist, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  store i8* %106, i8** %110, align 8
  %111 = load i8*, i8** %10, align 8
  %112 = load i8**, i8*** @portlist, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %112, i64 %114
  store i8* %111, i8** %115, align 8
  br label %116

116:                                              ; preds = %90
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %8, align 4
  br label %84

119:                                              ; preds = %84
  br label %120

120:                                              ; preds = %119, %80
  br label %143

121:                                              ; preds = %1
  %122 = load i8*, i8** %2, align 8
  %123 = load i32, i32* @PORT_MAX, align 4
  %124 = call i32 @strtonum(i8* %122, i32 1, i32 %123, i8** %3)
  store i32 %124, i32* %5, align 4
  %125 = load i8*, i8** %3, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %131

127:                                              ; preds = %121
  %128 = load i8*, i8** %3, align 8
  %129 = load i8*, i8** %2, align 8
  %130 = call i32 @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %128, i8* %129)
  br label %131

131:                                              ; preds = %127, %121
  %132 = load i8*, i8** %2, align 8
  %133 = call i8* @strdup(i8* %132)
  %134 = load i8**, i8*** @portlist, align 8
  %135 = getelementptr inbounds i8*, i8** %134, i64 0
  store i8* %133, i8** %135, align 8
  %136 = load i8**, i8*** @portlist, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i64 0
  %138 = load i8*, i8** %137, align 8
  %139 = icmp eq i8* %138, null
  br i1 %139, label %140, label %142

140:                                              ; preds = %131
  %141 = call i32 @err(i32 1, i32* null)
  br label %142

142:                                              ; preds = %140, %131
  br label %143

143:                                              ; preds = %142, %120
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strtonum(i8*, i32, i32, i8**) #1

declare dso_local i32 @errx(i32, i8*, i8*, i8*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @err(i32, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @arc4random(...) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
