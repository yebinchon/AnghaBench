; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/wind/extr_idn-lookup.c_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/wind/extr_idn-lookup.c_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i8*, i32 }

@.str = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"utf8 conversion failed\00", align 1
@WIND_PROFILE_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"stringprep failed\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"punycode failed\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Converted \22%s\22 into \22%s\22\0A\00", align 1
@AI_CANONNAME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"getaddrinfo failed: %s\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"canonical-name: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lookup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [1024 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.addrinfo, align 8
  %8 = alloca %struct.addrinfo*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = call i64 @strlen(i8* %15)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = mul i64 %17, 4
  %19 = call i32* @malloc(i64 %18)
  store i32* %19, i32** %10, align 8
  %20 = load i64, i64* %9, align 8
  %21 = mul i64 %20, 2
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %11, align 8
  %23 = mul i64 %22, 4
  %24 = call i32* @malloc(i64 %23)
  store i32* %24, i32** %12, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load i64, i64* %9, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %27, %1
  %33 = load i32*, i32** %12, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i64, i64* %11, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %35, %32
  %41 = load i8*, i8** %2, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = call i32 @wind_utf8ucs4(i8* %41, i32* %42, i64* %9)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %40
  %49 = load i32*, i32** %10, align 8
  %50 = load i64, i64* %9, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = load i32, i32* @WIND_PROFILE_NAME, align 4
  %53 = call i32 @wind_stringprep(i32* %49, i64 %50, i32* %51, i64* %11, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %48
  %59 = load i32*, i32** %10, align 8
  %60 = call i32 @free(i32* %59)
  %61 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  store i8* %61, i8** %5, align 8
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %116, %58
  %63 = load i32, i32* %3, align 4
  %64 = zext i32 %63 to i64
  %65 = load i64, i64* %11, align 8
  %66 = icmp ult i64 %64, %65
  br i1 %66, label %67, label %119

67:                                               ; preds = %62
  %68 = load i32, i32* %3, align 4
  store i32 %68, i32* %13, align 4
  br label %69

69:                                               ; preds = %86, %67
  %70 = load i32, i32* %13, align 4
  %71 = zext i32 %70 to i64
  %72 = load i64, i64* %11, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %69
  %75 = load i32*, i32** %12, align 8
  %76 = load i32, i32* %13, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @is_separator(i32 %79)
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  br label %83

83:                                               ; preds = %74, %69
  %84 = phi i1 [ false, %69 ], [ %82, %74 ]
  br i1 %84, label %85, label %89

85:                                               ; preds = %83
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %13, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %13, align 4
  br label %69

89:                                               ; preds = %83
  %90 = load i8*, i8** %5, align 8
  %91 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %92 = ptrtoint i8* %90 to i64
  %93 = ptrtoint i8* %91 to i64
  %94 = sub i64 %92, %93
  %95 = sub i64 1024, %94
  store i64 %95, i64* %14, align 8
  %96 = load i32*, i32** %12, align 8
  %97 = load i32, i32* %3, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %3, align 4
  %102 = sub i32 %100, %101
  %103 = load i8*, i8** %5, align 8
  %104 = call i32 @wind_punycode_label_toascii(i32* %99, i32 %102, i8* %103, i64* %14)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %89
  %108 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %89
  %110 = load i64, i64* %14, align 8
  %111 = load i8*, i8** %5, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 %110
  store i8* %112, i8** %5, align 8
  %113 = load i8*, i8** %5, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %5, align 8
  store i8 46, i8* %113, align 1
  %115 = load i32, i32* %13, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %109
  %117 = load i32, i32* %3, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %3, align 4
  br label %62

119:                                              ; preds = %62
  %120 = load i8*, i8** %5, align 8
  store i8 0, i8* %120, align 1
  %121 = load i32*, i32** %12, align 8
  %122 = call i32 @free(i32* %121)
  %123 = load i8*, i8** %2, align 8
  %124 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %125 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %123, i8* %124)
  %126 = call i32 @memset(%struct.addrinfo* %7, i32 0, i32 16)
  %127 = load i32, i32* @AI_CANONNAME, align 4
  %128 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %7, i32 0, i32 1
  store i32 %127, i32* %128, align 8
  %129 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %130 = call i32 @getaddrinfo(i8* %129, i32* null, %struct.addrinfo* %7, %struct.addrinfo** %8)
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* %6, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %119
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @gai_strerror(i32 %134)
  %136 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %133, %119
  %138 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %139 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %140)
  %142 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %143 = call i32 @freeaddrinfo(%struct.addrinfo* %142)
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @wind_utf8ucs4(i8*, i32*, i64*) #1

declare dso_local i32 @wind_stringprep(i32*, i64, i32*, i64*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @is_separator(i32) #1

declare dso_local i32 @wind_punycode_label_toascii(i32*, i32, i8*, i64*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i32*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
