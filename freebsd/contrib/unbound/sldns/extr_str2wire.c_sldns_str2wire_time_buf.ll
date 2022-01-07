; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_str2wire_time_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_str2wire.c_sldns_str2wire_time_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32 }

@LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%4d%2d%2d%2d%2d%2d\00", align 1
@LDNS_WIREPARSE_ERR_SYNTAX_TIME = common dso_local global i32 0, align 4
@LDNS_WIREPARSE_ERR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_str2wire_time_buf(i8* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.tm, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load i64*, i64** %7, align 8
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %12, 4
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL, align 4
  store i32 %15, i32* %4, align 4
  br label %122

16:                                               ; preds = %3
  %17 = call i32 @memset(%struct.tm* %8, i32 0, i32 24)
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = icmp eq i32 %19, 14
  br i1 %20, label %21, label %98

21:                                               ; preds = %16
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 0
  %24 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 1
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 2
  %26 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 3
  %27 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 4
  %28 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 5
  %29 = call i32 @sscanf(i8* %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %23, i32* %24, i32* %25, i32* %26, i32* %27, i32* %28)
  %30 = icmp eq i32 %29, 6
  br i1 %30, label %31, label %98

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %33, 1900
  store i32 %34, i32* %32, align 4
  %35 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %35, align 4
  %38 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %39, 70
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i32, i32* @LDNS_WIREPARSE_ERR_SYNTAX_TIME, align 4
  store i32 %42, i32* %4, align 4
  br label %122

43:                                               ; preds = %31
  %44 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %49, 11
  br i1 %50, label %51, label %53

51:                                               ; preds = %47, %43
  %52 = load i32, i32* @LDNS_WIREPARSE_ERR_SYNTAX_TIME, align 4
  store i32 %52, i32* %4, align 4
  br label %122

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %55, 1
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = icmp sgt i32 %59, 31
  br i1 %60, label %61, label %63

61:                                               ; preds = %57, %53
  %62 = load i32, i32* @LDNS_WIREPARSE_ERR_SYNTAX_TIME, align 4
  store i32 %62, i32* %4, align 4
  br label %122

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = icmp sgt i32 %69, 23
  br i1 %70, label %71, label %73

71:                                               ; preds = %67, %63
  %72 = load i32, i32* @LDNS_WIREPARSE_ERR_SYNTAX_TIME, align 4
  store i32 %72, i32* %4, align 4
  br label %122

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = icmp sgt i32 %79, 59
  br i1 %80, label %81, label %83

81:                                               ; preds = %77, %73
  %82 = load i32, i32* @LDNS_WIREPARSE_ERR_SYNTAX_TIME, align 4
  store i32 %82, i32* %4, align 4
  br label %122

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = icmp sgt i32 %89, 59
  br i1 %90, label %91, label %93

91:                                               ; preds = %87, %83
  %92 = load i32, i32* @LDNS_WIREPARSE_ERR_SYNTAX_TIME, align 4
  store i32 %92, i32* %4, align 4
  br label %122

93:                                               ; preds = %87
  %94 = load i32*, i32** %6, align 8
  %95 = call i64 @sldns_mktime_from_utc(%struct.tm* %8)
  %96 = trunc i64 %95 to i32
  %97 = call i32 @sldns_write_uint32(i32* %94, i32 %96)
  br label %119

98:                                               ; preds = %21, %16
  %99 = load i8*, i8** %5, align 8
  %100 = call i64 @strtol(i8* %99, i8** %9, i32 10)
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %10, align 4
  %102 = load i8*, i8** %9, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %98
  %107 = load i32, i32* @LDNS_WIREPARSE_ERR_SYNTAX_TIME, align 4
  %108 = load i8*, i8** %9, align 8
  %109 = load i8*, i8** %5, align 8
  %110 = ptrtoint i8* %108 to i64
  %111 = ptrtoint i8* %109 to i64
  %112 = sub i64 %110, %111
  %113 = trunc i64 %112 to i32
  %114 = call i32 @RET_ERR(i32 %107, i32 %113)
  store i32 %114, i32* %4, align 4
  br label %122

115:                                              ; preds = %98
  %116 = load i32*, i32** %6, align 8
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @sldns_write_uint32(i32* %116, i32 %117)
  br label %119

119:                                              ; preds = %115, %93
  %120 = load i64*, i64** %7, align 8
  store i64 4, i64* %120, align 8
  %121 = load i32, i32* @LDNS_WIREPARSE_ERR_OK, align 4
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %119, %106, %91, %81, %71, %61, %51, %41, %14
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32 @memset(%struct.tm*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @sldns_write_uint32(i32*, i32) #1

declare dso_local i64 @sldns_mktime_from_utc(%struct.tm*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @RET_ERR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
