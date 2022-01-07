; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_x509v3.c_x509_name_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_x509v3.c_x509_name_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_name = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"%s=%s, \00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"/emailAddress=%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @x509_name_string(%struct.x509_name* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.x509_name*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.x509_name* %0, %struct.x509_name** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %133

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  store i8* %18, i8** %8, align 8
  store i64 0, i64* %10, align 8
  br label %19

19:                                               ; preds = %64, %14
  %20 = load i64, i64* %10, align 8
  %21 = load %struct.x509_name*, %struct.x509_name** %4, align 8
  %22 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %20, %23
  br i1 %24, label %25, label %67

25:                                               ; preds = %19
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = ptrtoint i8* %27 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  %32 = trunc i64 %31 to i32
  %33 = load %struct.x509_name*, %struct.x509_name** %4, align 8
  %34 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i64, i64* %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @x509_name_attr_str(i32 %39)
  %41 = load %struct.x509_name*, %struct.x509_name** %4, align 8
  %42 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, i32, i8*, i32, ...) @os_snprintf(i8* %26, i32 %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i8*, i8** %8, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = ptrtoint i8* %49 to i64
  %52 = ptrtoint i8* %50 to i64
  %53 = sub i64 %51, %52
  %54 = trunc i64 %53 to i32
  %55 = load i32, i32* %9, align 4
  %56 = call i64 @os_snprintf_error(i32 %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %25
  br label %124

59:                                               ; preds = %25
  %60 = load i32, i32* %9, align 4
  %61 = load i8*, i8** %7, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8* %63, i8** %7, align 8
  br label %64

64:                                               ; preds = %59
  %65 = load i64, i64* %10, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %10, align 8
  br label %19

67:                                               ; preds = %19
  %68 = load i8*, i8** %7, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = icmp ugt i8* %68, %70
  br i1 %71, label %72, label %91

72:                                               ; preds = %67
  %73 = load i8*, i8** %7, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 -1
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 32
  br i1 %77, label %78, label %91

78:                                               ; preds = %72
  %79 = load i8*, i8** %7, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 -2
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 44
  br i1 %83, label %84, label %91

84:                                               ; preds = %78
  %85 = load i8*, i8** %7, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 -1
  store i8* %86, i8** %7, align 8
  %87 = load i8*, i8** %7, align 8
  store i8 0, i8* %87, align 1
  %88 = load i8*, i8** %7, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 -1
  store i8* %89, i8** %7, align 8
  %90 = load i8*, i8** %7, align 8
  store i8 0, i8* %90, align 1
  br label %91

91:                                               ; preds = %84, %78, %72, %67
  %92 = load %struct.x509_name*, %struct.x509_name** %4, align 8
  %93 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %123

96:                                               ; preds = %91
  %97 = load i8*, i8** %7, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = ptrtoint i8* %98 to i64
  %101 = ptrtoint i8* %99 to i64
  %102 = sub i64 %100, %101
  %103 = trunc i64 %102 to i32
  %104 = load %struct.x509_name*, %struct.x509_name** %4, align 8
  %105 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 (i8*, i32, i8*, i32, ...) @os_snprintf(i8* %97, i32 %103, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  store i32 %107, i32* %9, align 4
  %108 = load i8*, i8** %8, align 8
  %109 = load i8*, i8** %7, align 8
  %110 = ptrtoint i8* %108 to i64
  %111 = ptrtoint i8* %109 to i64
  %112 = sub i64 %110, %111
  %113 = trunc i64 %112 to i32
  %114 = load i32, i32* %9, align 4
  %115 = call i64 @os_snprintf_error(i32 %113, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %96
  br label %124

118:                                              ; preds = %96
  %119 = load i32, i32* %9, align 4
  %120 = load i8*, i8** %7, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  store i8* %122, i8** %7, align 8
  br label %123

123:                                              ; preds = %118, %91
  br label %124

124:                                              ; preds = %123, %117, %58
  %125 = load i8*, i8** %7, align 8
  %126 = load i8*, i8** %8, align 8
  %127 = icmp ult i8* %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = load i8*, i8** %7, align 8
  store i8 0, i8* %129, align 1
  br label %130

130:                                              ; preds = %128, %124
  %131 = load i8*, i8** %8, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 -1
  store i8 0, i8* %132, align 1
  br label %133

133:                                              ; preds = %130, %13
  ret void
}

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @x509_name_attr_str(i32) #1

declare dso_local i64 @os_snprintf_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
